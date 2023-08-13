
#include "../h/riscv.hpp"
#include "../h/TCB.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/thread.hpp"

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

    // retrieve stack pointer relative to saved registers
    void* SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        w_sepc(sepc);

        // mem_alloc
        if (a[0] == 0x0000000000000001UL)
        {
            // get the size argument
            size_t size = reinterpret_cast<size_t>(a[1]);

            size_t blockNum = MemoryAllocator::convert2Blocks(size);
            void* retVal = MemoryAllocator::mem_alloc(blockNum);

            // retVal should already be in a0 but just in case
            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
            // asm volatile("sd a0, 0x50(%0)" : : "r" (SP));
        }
        // mem_free
        else if (a[0] == 0x0000000000000002UL)
        {
            // get the ptr argument
            void* ptr = reinterpret_cast<void *>(a[1]);

            int retVal = MemoryAllocator::mem_free(ptr);

            // retVal should already be in a0 but just in case
            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
            // asm volatile("sd a0, 0x50(%0)" : : "r" (SP));
        }
        // thread_create
        else if (a[0] == 0x0000000000000011UL)
        {
            thread_t* handle = reinterpret_cast<thread_t *>(a[1]);
            void(*start_routine)(void*) = reinterpret_cast<void (*)(void *)>(a[2]);
            void* arg = reinterpret_cast<void *>(a[3]);
            void* stack_space = reinterpret_cast<void *>(a[4]);

            int retVal = thread_t::threadCreate(handle, start_routine, arg, stack_space);

            // retVal should already be in a0 but just in case
            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
        }
        // thread_exit
        else if (a[0] == 0x0000000000000012UL)
        {
            thread_t::running->finished = true;

            thread_t::threadDispatch();

            int retVal;

            // return error code if thread didn't exit
            asm volatile("mv %0, a0" : "=r" (retVal));
        }
        // thread_dispatch
        else if (a[0] == 0x0000000000000013UL)
        {
            // sepc and sstatus already saved
            // seps already added +4

            thread_t::running->timeSlice = 0;

            thread_t::threadDispatch();

            w_sstatus(sstatus);
            w_sepc(sepc);

            // nothing to return
        }
        else
        {
            int a = 1;
        }
    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        thread_t::running->timeSlice++;
        if (TCB::timeSliceCounter >= thread_t::running->timeSlice)
        {
            // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
            // uint64 volatile sepc = r_sepc() + 4;
            // uint64 volatile sstatus = r_sstatus();

            thread_t::running->timeSlice = 0;
            thread_t::threadDispatch();
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