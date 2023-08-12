//
// Created by os on 8/12/23.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "../lib/hw.h"
#include "riscv.hpp"



typedef struct _thread
{
    void(*body)(void*);
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    bool finished;
    uint64 *stack;
    Context context;
    void* arg;
    uint64 timeSlice;


}thread_t;


static thread_t* running = nullptr;

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg,
        void* stack_space
);

void threadWrapper();

#endif //PROJECT_BASE_THREAD_HPP
