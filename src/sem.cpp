//
// Created by os on 8/17/23.
//

#include "../h/sem.hpp"
#include "../h/scheduler.hpp"


int _sem::semOpen(_sem **handle, unsigned init)
{
    *handle = (_sem*)MemoryAllocator::mem_alloc(sizeof(_sem));

    (*handle)->val = (int)init;

    return 0;
}


int _sem::semClose(_sem *handle)
{
    if (handle == nullptr) // error: sem is nullptr
        return -1;

    // remove all threads that are blocked
    while (handle->queue.peekFirst())
    {
        handle->queue.peekFirst()->semWaitVal = -1;
        Scheduler::put(handle->queue.removeFirst());
    }

    MemoryAllocator::mem_free(handle);

    return 0;
}


int _sem::semWait(sem_t id)
{
    if (id == nullptr)
        return -1; // invalid id

    id->val--;

    _thread* old = _thread::running;

    if (id->val < 0)
        id->queue.addLast(_thread::running);
    else
        Scheduler::put(_thread::running);

    _thread::running = Scheduler::get();

    if (old != _thread::running)
        contextSwitch(&old->context, &_thread::running->context);

    return 0;
}

int _sem::semSignal(sem_t id)
{
    if (id == nullptr) // id is nullptr
        return -1;

    // remove first if exists or increment val
    if (id->queue.peekFirst())
    {
        id->queue.peekFirst()->semWaitVal = 0;
        Scheduler::put(id->queue.removeFirst());
    }
    else
        id->val++;

    return 0;
}

