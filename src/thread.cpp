//
// Created by os on 8/12/23.
//

#include "../h/thread.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/scheduler.hpp"

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space)
{
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(thread_t));
    *handle = (thread_t*)MemoryAllocator::mem_alloc(blockNum);
    handle->finished = false;
    handle->timeSlice = DEFAULT_TIME_SLICE;
    handle->body = start_routine;

    if (start_routine != nullptr)
        handle->stack = (uint64*) stack_space;
    else
        handle->stack = nullptr;

    handle->context.ra = (uint64) &threadWrapper;

    if (handle->stack != nullptr) {
        handle->context.sp = (uint64) &handle->stack[DEFAULT_STACK_SIZE];

        // treba na stack staviti arg i pomeriti stack??

    }
    else
        handle->context.sp = 0;

    if (handle->body != nullptr)
        Scheduler::put(handle);


    return 0;
}

void threadWrapper(thread_t* handle)
{
    Riscv::popSppSpie();
    running->body(handle->arg);
    running->finished = true;
    TCB::yield();
}


