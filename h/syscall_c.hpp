//
// Created by os on 8/9/23.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"

void* mem_alloc (size_t size);

int mem_free (void* ptr);


class _thread;
typedef _thread* thread_t;
// class TCB;
// typedef TCB* thread_t;

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);



#endif //PROJECT_BASE_SYSCALL_C_HPP
