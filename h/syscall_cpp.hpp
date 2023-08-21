//
// Created by os on 8/18/23.
//


#ifndef syscall_cpp2
#define syscall_cpp2

#include "syscall_c.hpp"


void* operator new (size_t size);
void operator delete (void* ptr);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle = nullptr;
    void (*body)(void*); void* arg;
    static void wrapper(void*);
};


class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    _sem* myHandle;
};


class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};


class Console {
public:
    static char getc ();

    static void putc (char);
};


#endif

