

#include "../h/MemoryAllocator.hpp"

#include "../lib/mem.h"
#include "../h/syscall_c.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    // return __mem_alloc(n);
    // return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    // return __mem_alloc(n);
    // return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    // __mem_free(p);
    // MemoryAllocator::mem_free(p);
    mem_free(p);
}

void operator delete[](void *p) noexcept
{
    // __mem_free(p);
    // MemoryAllocator::mem_free(p);
    mem_free(p);
}