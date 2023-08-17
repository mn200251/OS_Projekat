//
// Created by os on 8/17/23.
//

#include "../h/sem.hpp"
#include "../h/scheduler.hpp"


int _sem::sem_open(_sem **handle, unsigned int t)
{



    return 0;
}


int _sem::close(_sem *handle)
{
    if (handle == nullptr) // error: sem is nullptr
        return -1;

    // remove all threads that are blocked
    while (handle->queue.peekFirst())
        Scheduler::put(handle->queue.removeFirst());

    MemoryAllocator::mem_free(handle);

    return 0;
}


int _sem::wait(sem_t id)
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

    if (!id) // that means that the sem closed
        return -2; // sem closed with thread waiting on it

    return 0;
}

int _sem::signal(sem_t id)
{
    if (id == nullptr) // id is nullptr
        return -1;

    // remove first if exists or increment val
    if (id->queue.peekFirst())
        Scheduler::put(id->queue.removeFirst());
    else
        id->val++;

    return 0;
}

