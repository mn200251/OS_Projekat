
#include "../h/scheduler.hpp"

List<_thread> Scheduler::readyThreadQueue;
int Scheduler::threadNum = 0;

_thread* Scheduler::get()
{
    if (readyThreadQueue.peekFirst() != 0) {
        threadNum--;
        return readyThreadQueue.removeFirst();
    }

    return nullptr;
}

void Scheduler::put(_thread *ccb)
{
    threadNum++;
    readyThreadQueue.addLast(ccb);
}
