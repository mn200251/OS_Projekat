

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../h/thread.hpp"
#include "../h/sem.hpp"


void* mem_alloc(size_t size);

int mem_free(void* ptr);

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

void thread_dispatch();

int thread_exit();

void thread_join(_thread handle);

int sem_open(sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

#endif //PROJECT_BASE_SYSCALL_C_HPP

