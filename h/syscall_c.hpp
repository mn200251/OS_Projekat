

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../h/thread.hpp"

void* mem_alloc (size_t size);

int mem_free (void* ptr);


// class _thread;
// typedef _thread* thread_t;

// class TCB;
// typedef TCB* thread_t;

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

void thread_dispatch ();

int thread_exit ();

#endif //PROJECT_BASE_SYSCALL_C_HPP
