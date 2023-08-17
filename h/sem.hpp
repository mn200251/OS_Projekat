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

    int val = 1;

    // bool deallocated = false;

    static int sem_open(_sem** handle, unsigned int t);

    static int wait(_sem* id);

    static int signal(_sem* id);

    static int close(_sem* handle);
};

typedef _sem* sem_t;





#endif //PROJECT_BASE_SEM_HPP
