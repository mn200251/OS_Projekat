#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

#include "../h/TCB.hpp"
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
    MemoryAllocator::initialise();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    TCB* mainThread = TCB::createThread(nullptr);
    TCB::running = mainThread;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
}
