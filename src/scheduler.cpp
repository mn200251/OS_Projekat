//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/thread.hpp"

List<thread_t> Scheduler::readyThreadQueue;

thread_t *Scheduler::get()
{
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(thread_t *ccb)
{
    readyThreadQueue.addLast(ccb);
}