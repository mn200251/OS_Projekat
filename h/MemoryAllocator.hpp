

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../test/printing.hpp"

typedef struct FreeMem{
    FreeMem* next;
    FreeMem* prev;
    size_t size;
}FreeMem;

typedef struct AllocatedMem{
    size_t blockNum;
}AllocatedMem;

class MemoryAllocator{
private:
    static void* memStart;
    static void* memEnd;
    static FreeMem* head;
    static int tryToJoin(FreeMem* curr);

public:
    static void initialise();
    static void* mem_alloc(size_t size);
    static int mem_free(void* ptr);
    static size_t convert2Blocks(size_t size);
};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP

