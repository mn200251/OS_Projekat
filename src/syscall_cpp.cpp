//
// Created by os on 8/19/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"


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
        thread_create(&this->myHandle, body, arg);
    else
        this->myHandle = nullptr;
}

Thread::~Thread()
{
    if (this->myHandle)
        thread_exit();
}

int Thread::start()
{
    // kada nit zavrsi dealocirace se myHandle pa onda mozda moze da se pozove opet...
    if (this->myHandle == nullptr)
    {
        thread_create(&this->myHandle, &this->wrapper, nullptr);
        return 0;
    }

    return -1; // thread already started
}

void Thread::join()
{
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

}

void Thread::wrapper(void *)
{
    this->run();
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
