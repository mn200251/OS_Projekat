
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    asm volatile("sd a1, %0" : "=m" (a[1]));
    asm volatile("sd a2, %0" : "=m" (a[2]));
    asm volatile("sd a3, %0" : "=m" (a[3]));
    asm volatile("sd a4, %0" : "=m" (a[4]));
    asm volatile("sd a5, %0" : "=m" (a[5]));
    asm volatile("sd a6, %0" : "=m" (a[6]));
    asm volatile("sd a7, %0" : "=m" (a[7]));

    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        w_sepc(sepc);

        // mem_alloc
        if (a[0] == 0x0000000000000001UL)
        {
            // get the size argument
            size_t size = reinterpret_cast<size_t>(a[1]);

            void* retVal = MemoryAllocator::mem_alloc(size);

            // put the return value on the stack
            asm volatile("sd %0, 10 * 8(sp)" : : "r" (retVal));
        }
        // mem_free
        else if (a[0] == 0x0000000000000002UL)
        {
            // get the ptr argument
            void* ptr = reinterpret_cast<void *>(a[1]);

            int retVal = MemoryAllocator::mem_free(ptr);

            // put the return value on the stack
            asm volatile("sd %0, 10 * 8(sp)" : : "r" (retVal));
        }
        else
        {
            // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
            // uint64 volatile sepc = r_sepc() + 4;
            // uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            // w_sepc(sepc);
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