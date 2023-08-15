
#include "../h/scheduler.hpp"

List<thread_t> Scheduler::readyThreadQueue;

_thread *Scheduler::get()
{
    return *readyThreadQueue.removeFirst();
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(&ccb);
}