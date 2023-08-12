//
// Created by os on 8/9/23.
//

#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../h/MemoryAllocator.hpp"

void* mem_alloc (size_t size)
{
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    size_t blockNum = 0;

    if (totalSize % MEM_BLOCK_SIZE != 0)
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    size_t code = 0x0000000000000001UL;
    __asm__ volatile("ld a0, %0" : : "m" (code));

    __asm__ volatile("ld a1, %0" : : "m" (blockNum));

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


    return 0;
}
