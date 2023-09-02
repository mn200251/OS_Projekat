//
// Created by os on 8/12/23.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "../lib/hw.h"
#include "riscv.hpp"

struct _sem;

struct _thread
{
    void(*body)(void*);
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    bool started;
    bool finished;
    uint64 *stack;
    Context context;
    void* arg;
    uint64 timeSlice;
    int semWaitVal;
    _sem* semaphore;

    ///////////////
    // fork()
    int forkRetVal;
    static void threadFork();

    // exec
    static void threadExec();
    static void threadWrapperExec();

    // kill
    static int id;
    int myId;
    _sem* blockedOn;

    struct Elem {
        _thread *data;
        Elem *next;
    };
    static Elem* head;
    static Elem* tail;

    static void addLast(_thread* t);
    static _thread* search(int searchId);
    static int threadKill(int threadId);

    // resource
    unsigned resourceWant;
    //////////////////

    static _thread* running;

    static int threadCreate (_thread** handle, void(*start_routine)(void*), void* arg, void* stack_space);

    static void threadWrapper();

    static void threadDispatch ();

};

typedef _thread* thread_t;

extern "C" void contextSwitch(_thread::Context *oldContext, _thread::Context *runningContext);

extern "C" void contextSwitchThreadEnded(_thread::Context *runningContext);




#endif //PROJECT_BASE_THREAD_HPP
