

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../h/thread.hpp"
#include "../h/sem.hpp"

typedef _sem* sem_t;

void* mem_alloc(size_t size);

int mem_free(void* ptr);

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

void thread_dispatch();

int thread_exit();

void thread_join(_thread* handle);

int sem_open(sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

void enterUserMode();

typedef unsigned long time_t;
int time_sleep (time_t);

const int EOF = -1;
char getc ();

void putc (char c);

// modifikacije
int fork();

void execv1(void(*body)(void *), void* arg);

void exec(void(*body)(void *), void* arg);

int thread_kill(int threadId);

#endif //PROJECT_BASE_SYSCALL_C_HPP

