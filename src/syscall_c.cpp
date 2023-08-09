//
// Created by os on 8/9/23.
//

#include "../h/syscall_c.hpp"

void* mem_alloc (size_t size)
{
    asm volatile("csrw sstatus, %0" : : "r" (size));

    asm volatile("ecall");

    void* ptr;

    asm volatile("csrw %0, x10" : "=r" (ptr));

    return ptr;
}

int mem_free (void* ptr)
{
    asm volatile("csrw sstatus, %0" : : "r" (ptr));

    asm volatile("ecall");

    int val;

    asm volatile("csrw %0, x10" : "=r" (val));

    return val;
}