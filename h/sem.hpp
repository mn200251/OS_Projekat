//
// Created by os on 8/17/23.
//

#ifndef PROJECT_BASE_SEM_HPP
#define PROJECT_BASE_SEM_HPP

#include "list.hpp"
#include "thread.hpp"

struct _sem
{
    List<_thread> queue;

    int val;

    // bool deallocated = false;

    static int semOpen(_sem** handle, unsigned init);

    static int semWait(_sem* id);

    static int semSignal(_sem* id);

    static int semClose(_sem* handle);
};

typedef _sem* sem_t;





#endif //PROJECT_BASE_SEM_HPP
