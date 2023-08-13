//
// Created by os on 8/12/23.
//

#include "../h/thread.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"


int thread_t::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(thread_t));
    handle = (thread_t*) MemoryAllocator::mem_alloc(blockNum);
    handle->finished = false;
    handle->timeSlice = DEFAULT_TIME_SLICE;
    handle->body = start_routine;

    if (start_routine != nullptr)
        handle->stack = (uint64*) stack_space;
    else
        handle->stack = nullptr;

    handle->context.ra = (uint64) &thread_t::threadWrapper;

    if (handle->stack != nullptr)
    {
        handle->context.sp = (uint64) &handle->stack[DEFAULT_STACK_SIZE];

        // move the stack by 1 position and put handle on stack
        // so that the wrapper function gets the argument when thread returns to it

        // first put the new SP in a0
        asm volatile("mv %0, a0" : "=r" (handle->context.sp));

        // we move it by 1 position
        asm volatile("addi a0, a0, -1");

        // we update the handle->context.sp value
        asm volatile("csrw %0, a0" : "=r" (handle->context.sp));

        // we put the handle argument on the stack for the wrapper function
        // first we put the argument in a1 and then on stack
        asm volatile("mv %0, a1" : "=r" (handle->arg));
        asm volatile("sd a1, 0(%0)" : : "r" (handle->context.sp));

}
    else
        handle->context.sp = 0;

    if (handle->body != nullptr)
        Scheduler::put(handle);

    return 0;
}

void thread_t::threadWrapper(thread_t* handle)
{
    Riscv::popSppSpie();

    thread_t::running->body(handle->arg);

    thread_exit();
}

void thread_t::threadDispatch ()
{
    thread_t *old = thread_t::running;
    if (!old->finished)
    {
        Scheduler::put(old);
    }
    thread_t::running = Scheduler::get();

    contextSwitch(&old->context, &thread_t::running->context);

    if(old->finished)
    {
        // remove threads that are waiting for this one to finish


        // thread finished -> dealloc the stack and thread
        MemoryAllocator::mem_free(old->stack);
        MemoryAllocator::mem_free(old);
    }
}

