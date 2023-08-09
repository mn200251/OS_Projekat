
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 a[8];
    asm volatile("csrr %0, a0" : "=r" (a[0]));
    asm volatile("csrr %0, a1" : "=r" (a[1]));
    asm volatile("csrr %0, a2" : "=r" (a[2]));
    asm volatile("csrr %0, a3" : "=r" (a[3]));
    asm volatile("csrr %0, a4" : "=r" (a[4]));
    asm volatile("csrr %0, a5" : "=r" (a[5]));
    asm volatile("csrr %0, a6" : "=r" (a[6]));
    asm volatile("csrr %0, a7" : "=r" (a[7]));

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // uint64 volatile sepc = r_sepc() + 4;
        // uint64 volatile sstatus = r_sstatus();

        // mem_alloc
        if (a[0] == 0x0000000000000001UL)
        {
            // get the size argument
            size_t size = reinterpret_cast<size_t>(a[1]);

            void* retVal = MemoryAllocator::mem_alloc(size);

            // put the return value on the stack
            asm volatile("csrw 10 * 8 (sp), %0" : : "r" (retVal));
        }
        // mem_free
        else if (a[1] == 0x0000000000000002UL)
        {
            // get the ptr argument
            void* ptr = reinterpret_cast<void *>(a[1]);

            int retVal = MemoryAllocator::mem_free(ptr);

            // put the return value on the stack
            asm volatile("csrw 10 * 8 (sp), %0" : : "r" (retVal));
        }
        else
        {
            // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        // w_sstatus(sstatus);
        // w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        // unexpected trap cause
    }
}