#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

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

    uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));

    uint64 volatile scause = r_scause();

//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");


    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        sepc = sepc + 4;
        w_sepc(sepc);

        // mem_alloc
        if (a[0] == 0x0000000000000001UL)
        {
            // get the size argument
            size_t size = reinterpret_cast<size_t>(a[1]);

            size_t blockNum = MemoryAllocator::convert2Blocks(size);
            void* retVal = MemoryAllocator::mem_alloc(blockNum);

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

            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);

            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
        }
        // thread_exit
        else if (a[0] == 0x0000000000000012UL)
        {
            _thread::running->finished = true;

            _thread::threadDispatch();

            // error if this runs!
            int retVal;

            // return error code if thread didn't exit
            asm volatile("mv %0, a0" : "=r" (retVal));
        }
        // thread_dispatch
        else if (a[0] == 0x0000000000000013UL)
        {
            // sepc and sstatus already saved
            // seps already added +4

            _thread::running->timeSlice = 0;

            _thread::threadDispatch();

            // printString("Dispatched!\n");

            w_sstatus(sstatus);
            w_sepc(sepc);

            // nothing to return
        }
        // thread_join
        else if (a[0] == 0x0000000000000014UL)
        {
            _thread* handle = reinterpret_cast<_thread*>(a[1]);

            if (!handle->finished)
                _sem::semWait(handle->semaphore);

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        // sem_open
        else if (a[0] == 0x0000000000000021UL)
        {
            _sem** handle = reinterpret_cast<_sem** >(a[1]);
            unsigned init = (unsigned)a[2];

            int retVal = _sem::semOpen(handle, init);

            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
        }
        // sem_close
        else if (a[0] == 0x0000000000000022UL)
        {
            _sem* handle = reinterpret_cast<_sem* >(a[1]);


            int retVal = _sem::semClose(handle);

            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
        }
        // sem_wait
        else if (a[0] == 0x0000000000000023UL)
        {
            _sem* id = reinterpret_cast<_sem* >(a[1]);

            int retVal = _sem::semWait(id);

            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));

            // restore sstatus and sepc because we are changing threads
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        // sem_signal
        else if (a[0] == 0x0000000000000024UL)
        {
            _sem* id = reinterpret_cast<_sem* >(a[1]);

            int retVal = _sem::semSignal(id);

            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
        }
        // enter user mode
        else if (a[0] == 0x0000000000000025UL)
        {
            size_t sstatus;
            asm volatile("csrr %0, sstatus" : "=r" (sstatus));
            sstatus &= ~0x100;
            asm volatile("csrw sstatus, %0" : : "r" (sstatus));
        }
        // enter system mode
        else if (a[0] == 0x0000000000000026UL)
        {
            size_t sstatus;
            asm volatile("csrr %0, sstatus" : "=r" (sstatus));
            sstatus |= 0x100;
            asm volatile("csrw sstatus, %0" : : "r" (sstatus));
        }
        // getc
        else if (a[0] == 0x0000000000000041UL)
        {
            uint64 retVal = __getc();

            asm volatile("mv %0, a0" : "=r" (retVal));

            // put the return value on the stack
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
        }
        // putc
        else if (a[0] == 0x0000000000000042UL)
        {
            char c = (char)a[1];

            __putc(c);
        }
        //////////////////////////////////////////////////////////////////////
        // fork()
        else if (a[0] == 0x0000000000000027UL)
        {
            _thread::threadFork();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if (a[0] == 0x0000000000000028UL)
        {
            // void(*start_routine)(void*) = reinterpret_cast<void (*)(void *)>(a[1]);
            // void* arg = (void*)a[2];

//            _thread::running->context.ra = (uint64)start_routine;
//            _thread::running->stack =
            // thread
        }
        else if (a[0] == 0x0000000000000029UL)
        {

        }
        ///////////////////////////////////////////////////////////////////////
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    {
        mc_sip(SIP_SSIP);
        /*
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)

        _thread::running->timeSlice++;
        if (_thread::running->timeSlice >= DEFAULT_TIME_SLICE)
        {
            // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
            // sepc = sepc + 4;

            _thread::running->timeSlice = 0;
            _thread::threadDispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        */
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        // printString("Keyboard interrupt!\n");
        console_handler();

    }
    else
    {
        // unexpected trap cause
        printString("\nUnexpected trap cause!\n");
        printString("Scause: ");
        printInt(scause);
        printString("\n");
        printString("sepc = ");
        printInt(sepc);
        while(1);
    }
}
