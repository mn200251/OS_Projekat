//
// Created by os on 8/12/23.
//

#include "../h/thread.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
#include "../h/list.hpp"
#include "../h/sem.hpp"

thread_t _thread::running = nullptr;


int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);

    int retVal = _sem::semOpen(&(*handle)->semaphore, 0);

    if (*handle == nullptr || retVal < 0)
        return -1;

    (*handle)->semWaitVal = 0;
    (*handle)->finished = false;
    (*handle)->timeSlice = 0;
    (*handle)->body = start_routine;
    (*handle)->arg = arg;

    if (start_routine != nullptr)
        (*handle)->stack = (uint64*) stack_space;
    else
        (*handle)->stack = nullptr;

    // (*handle)->context.ra = (uint64) &threadWrapper;

    if ((*handle)->stack != nullptr)
    {
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
        (*handle)->context.ra = (uint64) &threadWrapper;
    }
    else
    {
        // asm volatile("sd ra, %0" : "=m" ((*handle)->context.ra));
        // (*handle)->context.ra = (uint64) &threadWrapper;
        (*handle)->context.sp = 0;
    }

    if ((*handle)->body != nullptr)
        Scheduler::put(*handle);

//    printString("\nnew thread: ");
//    printInt((uint64) *handle);
//    printString("\n");

    return 0;
}


void _thread::threadWrapper()
{
    Riscv::popSppSpie();

    _thread::running->body(_thread::running->arg);

    thread_exit();
}

void _thread::threadDispatch ()
{
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;

    if (!old->finished)
    {
        Scheduler::put(old);
        _thread::running = Scheduler::get();

        if(old != _thread::running)
            contextSwitch(&old->context, &_thread::running->context);
    }
    else
    {
        // dealloc the sem and release all waiting threads
        _sem::semClose(_thread::running->semaphore);

        // thread finished -> dealloc the stack and thread
        MemoryAllocator::mem_free(old->stack);
        // MemoryAllocator::mem_free(old);
        // MemoryAllocator::mem_free(&old);

        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}


