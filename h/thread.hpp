//
// Created by os on 8/12/23.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "../lib/hw.h"
#include "riscv.hpp"


struct _thread
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

    static _thread* running;

    static int threadCreate (_thread** handle, void(*start_routine)(void*), void* arg, void* stack_space);

    static void threadWrapper();

    static void threadDispatch ();

};

typedef _thread* thread_t;

extern "C" void contextSwitch(_thread::Context *oldContext, _thread::Context *runningContext);

extern "C" void contextSwitchThreadEnded(_thread::Context *runningContext);




#endif //PROJECT_BASE_THREAD_HPP
