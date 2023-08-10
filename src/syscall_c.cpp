//
// Created by os on 8/9/23.
//

#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

void* mem_alloc (size_t size)
{
    size_t code = 0x0000000000000001UL;
    __asm__ volatile("ld a0, %0" : : "m" (code));

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