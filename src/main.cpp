#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

void userMain()
{
    __putc('1');
    __putc('\n');

    thread_t *handle2 = nullptr;
    thread_t *handle3 = nullptr;

    handle2 = (_thread**) mem_alloc(sizeof(_thread**));
    handle3 = (_thread**) mem_alloc(sizeof(_thread**));

    thread_create(handle2, workerBodyC, nullptr);
    thread_create(handle3, workerBodyD, nullptr);

    printString("Finished!\n");
}

void main(void*)
{
    MemoryAllocator::initialise();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    thread_t* handle = nullptr;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);

    int retVal = thread_create(handle, nullptr, nullptr);

//    printString("Main Thread handle: ");
//    printInteger((size_t)*handle);
//    printString("\n");

    _thread::running = *handle;

    printString("Main Thread return value: ");
    printInteger(retVal);
    printString("\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();

    // thread_exit();
}
