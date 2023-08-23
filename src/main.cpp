#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"

void userMain();

void test(void*)
{
    printString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
}

void test2(void*)
{
    int i = 0;
    while(i < 100)
    {
        printInt(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();

        i++;
    }
}




_thread* globalThread1 = nullptr;
_thread* globalThread2 = nullptr;
_thread* globalThread3 = nullptr;
_sem* empty;
_sem* full;

int buffer = 0;

void fun1(void*)
{

}

void consumer(void* n)
{
    size_t num = (size_t)n;
    while(true)
    {
        int retVal = sem_wait(full);
        if (retVal == -1) break;
        printString("retVal: ");
        printInt(retVal);
        printString("\n");
        int val = buffer;
        printString("Consumer ");
        printInt(num);
        printString(" Value: ");
        printInt(val);
        printString("\n");
        sem_signal(empty);
    }
}


void producer(void* n)
{
    size_t num = (size_t)n;
    int i = 1;
    while(true)
    {
        sem_wait(empty);
        buffer = i;
        i += 1 * 2 - 1;
        printString("Producer ");
        printInt(num);
        printString(" Value: ");
        printInt(buffer);
        printString("\n");

        if (i > 200)
        {
            printString("CLOSING SEMAPHORE FULL!!! ");
            sem_close(full);
            break;
        }

        sem_signal(full);
    }
}

void prosliMain()
{
    // __putc('1');
    // __putc('\n');


    sem_open(&empty, 1);
    sem_open(&full, 0);
    thread_create(&globalThread1, producer, nullptr);
    thread_create(&globalThread2, consumer, (void*)1);
    thread_create(&globalThread3, consumer, (void*)2);

    thread_join(globalThread1);

    thread_t handle2 = nullptr;
    thread_t handle3 = nullptr;
    thread_t handle4 = nullptr;
    thread_t handle5 = nullptr;

    thread_create(&handle2, workerBodyD, nullptr);
    thread_create(&handle3, workerBodyB, nullptr);
    thread_create(&handle4, workerBodyA, nullptr);
    thread_create(&handle5, workerBodyC, nullptr);

    thread_join(handle4);
    printString("Prosao 1. join!\n");
    thread_join(handle5);
    printString("Prosao 2. join!\n");
    thread_join(handle2);
    printString("Prosao 3. join!\n");
    thread_join(handle3);
    printString("Prosao 4. join!\n");

    printString("Finished!\n");
}

void mainWrapper(void*)
{
    userMain();
}


void main(void*)
{
    MemoryAllocator::initialise();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    uint64 sstatus = Riscv::r_sstatus();
    sstatus |= Riscv::SSTATUS_SIE;
    sstatus |= Riscv::SSTATUS_SPP;
    Riscv::ms_sstatus(sstatus);

    thread_t handle = nullptr;
    thread_t userMainHandle = nullptr;

    thread_create(&handle, nullptr, nullptr);
    _thread::running = handle;


    thread_create(&userMainHandle, mainWrapper, nullptr);

//    printString("\nMain Thread: ");
//    printInt((size_t)handle);
//    printString("\n");

//    Scheduler::readyThreadQueue.printAll();
//    printString("\nPre join-a\n\n");

    enterUserMode();
    thread_join(userMainHandle);
//    printString("\nPosle join-a\n\n");
//    Scheduler::readyThreadQueue.printAll();
}


