

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "list.hpp"
#include "../h/thread.hpp"


class Scheduler
{
public:
    static List<_thread> readyThreadQueue;
    static int threadNum;

public:
    static _thread* get();

    static void put(_thread *ccb);

};



#endif //PROJECT_BASE_SCHEDULER_HPP

