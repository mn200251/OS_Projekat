//
// Created by os on 8/9/23.
//

#include "../h/syscall_c.hpp"
#include "../lib/console.h"


void* mem_alloc (size_t size)
{
    //size_t blockNum = MemoryAllocator::convert2Blocks(size);

    size_t code = 0x0000000000000001UL;
    __asm__ volatile("ld a0, %0" : : "m" (code));

    //__asm__ volatile("ld a1, %0" : : "m" (blockNum));
    __asm__ volatile("ld a1, %0" : : "m" (size));

    __asm__ volatile("ecall");

    void* ptr;

    asm volatile("sd a0, %0" : "=m" (ptr));

//    printString("mem_alloc: ");
//    printInteger(size_t(ptr));
//    printString("\n");

    return ptr;
}

int mem_free (void* ptr)
{
    size_t code = 0x0000000000000002UL;
    asm volatile("ld a0, %0" : : "m" (code));

    asm volatile("ld a1, %0" : : "m" (ptr));

    asm volatile("ecall");

    int val;

    asm volatile("sd a0, %0" : "=m" (val));

//    printString("mem_free: ");
//    printInteger(val);
//    printString("\n");

    return val;
}


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
{
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);

//    blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);
//
//    blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread*));
//    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);

    size_t code = 0x0000000000000011UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (handle));
    asm volatile("ld a2, %0" : : "m" (start_routine));
    asm volatile("ld a3, %0" : : "m" (arg));
    asm volatile("ld a4, %0" : : "m" (stack_space));

    asm volatile("ecall");

    int val;

    asm volatile("sd a0, %0" : "=m" (val));

    if (val < 0)
        return val;

//    printString("\nnew thread: ");
//    printInteger((uint64) *handle);
//    printString("\n");

    return val;
}

int thread_exit ()
{
    size_t code = 0x0000000000000012UL;
    asm volatile("ld a0, %0" : : "m" (code));

    asm volatile("ecall");


    // if this code is executed -> error exiting thread
    int val;

    asm volatile("sd a0, %0" : "=m" (val));

    return val;
}


void thread_dispatch ()
{
    size_t code = 0x0000000000000013UL;
    asm volatile("ld a0, %0" : : "m" (code));

    asm volatile("ecall");
}

void thread_join(_thread* handle)
{
    size_t code = 0x0000000000000014UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (handle));

    asm volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init)
{
    size_t code = 0x0000000000000021UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (handle));
    asm volatile("ld a2, %0" : : "m" (init));

    asm volatile("ecall");

    int val;

    asm volatile("sd a0, %0" : "=m" (val));

    return val;
}

int sem_close(sem_t handle)
{
    size_t code = 0x0000000000000022UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (handle));

    asm volatile("ecall");

    int val;

    asm volatile("sd a0, %0" : "=m" (val));

    return val;
}

int sem_wait(sem_t id)
{
    size_t code = 0x0000000000000023UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (id));

    asm volatile("ecall");

//    int val;
//
//    asm volatile("sd a0, %0" : "=m" (val));
//
//    return val;

    return _thread::running->semWaitVal;
}

int sem_signal(sem_t id)
{
    size_t code = 0x0000000000000024UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (id));

    asm volatile("ecall");

    int val;

    asm volatile("sd a0, %0" : "=m" (val));

    return val;
}




void enterUserMode()
{
    size_t code = 0x0000000000000025UL;
    asm volatile("ld a0, %0" : : "m" (code));

    asm volatile("ecall");
}

//void enterSysytemMode()
//{
//    size_t code = 0x0000000000000026UL;
//    asm volatile("ld a0, %0" : : "m" (code));
//
//    asm volatile("ecall");
//}

int time_sleep(time_t t) {
    return 0;
}

char getc() {
//    size_t code = 0x0000000000000041UL;
//    asm volatile("ld a0, %0" : : "m" (code));
//
//    asm volatile("ecall");
//
//    char val;
//
//    asm volatile("sd a0, %0" : "=m" (val));
//
//    return val

    // enterSysytemMode();
    // ne postoji enterSystemMode() funkcija kako bi se izbegao security breach
    // nego je ovde implementiran kod za nju direktno

    size_t code = 0x0000000000000026UL;
    asm volatile("ld a0, %0" : : "m" (code));

    asm volatile("ecall");

    char val = __getc();

    enterUserMode();

    return val;
}

void putc(char c) {
    size_t code = 0x0000000000000042UL;
    asm volatile("ld a0, %0" : : "m" (code));
    asm volatile("ld a1, %0" : : "m" (c));

    asm volatile("ecall");
}



