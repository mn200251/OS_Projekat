#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

void userMain()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    __putc('1');
    __putc('\n');

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyA);
    printString("ThreadA created\n");
    threads[2] = TCB::createThread(workerBodyB);
    printString("ThreadB created\n");
    threads[3] = TCB::createThread(workerBodyC);
    printString("ThreadC created\n");
    threads[4] = TCB::createThread(workerBodyD);
    printString("ThreadD created\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }
    printString("Finished\n");
}

void main()
{
    /*
    __putc('O');
    __putc('S');
    __putc('1');
    __putc('\n');
    __putc('\n');

    while(1)
    {
        char character = __getc();
        __putc(character + 30);
    }
    */

    MemoryAllocator::initialise();


    userMain();
}
