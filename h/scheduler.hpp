//
// Created by marko on 20.4.22..
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "list.hpp"
#include "../h/thread.hpp"

// class TCB;

class Scheduler
{
private:
    static List<thread_t> readyThreadQueue;

public:
    static thread_t *get();

    static void put(thread_t *ccb);

};

#endif //PROJECT_BASE_SCHEDULER_HPP
