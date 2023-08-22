//
// Created by os on 8/19/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

void* operator new (size_t size)
{
    return mem_alloc(size);
}

void operator delete (void* ptr)
{
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg)
{
    if (body != nullptr)
    {
        this->body = body;
        this->arg = arg;
        this->myHandle = nullptr;
    }
    else
    {
        Thread();
    }
}

Thread::~Thread()
{
//    if (this->myHandle)
//        thread_exit();
}

int Thread::start()
{
    if (this->body != nullptr)
    {
        int retVal = thread_create(&this->myHandle, this->body, this->arg);

        if (retVal < 0)
            return retVal;

        this->body = nullptr;
        this->arg = nullptr;
        return 0; // thread started successfully
    }

    return -3; // thread already started
}

void Thread::join()
{
    if (this->myHandle)
        thread_join(this->myHandle);
}

void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}

Thread::Thread()
{
    myHandle = nullptr;
    body = &wrapper;
    arg = this;
}

void Thread::wrapper(void* thread)
{
    Thread* t = static_cast<Thread *>(thread);
    t->run();
}


Semaphore::Semaphore(unsigned int init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
{
    sem_close(myHandle);
}

int Semaphore::wait()
{
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

char Console::getc() {
    return ::getc() ;
}

void Console::putc(char c) {
    ::putc(c);
}
