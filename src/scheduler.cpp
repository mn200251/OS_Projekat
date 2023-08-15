
#include "../h/scheduler.hpp"

List<thread_t> Scheduler::readyThreadQueue;

_thread *Scheduler::get()
{
    if (readyThreadQueue.peekFirst() != 0)
        return *readyThreadQueue.removeFirst();

    return nullptr;
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(&ccb);
}