#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

void userMain()
{
    __putc('1');
    __putc('\n');

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

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    TCB* mainThread = TCB::createThread(nullptr);
    TCB::running = mainThread;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
}
