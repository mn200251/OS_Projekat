#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

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
//    thread_t* handle = nullptr;
//    int retVal = thread_create(handle, nullptr, nullptr);
//    _thread::running = *handle;
//
//    printString("Main Thread return value: ");
//    printInteger(retVal);
//    printString("\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();

    thread_exit();
}
