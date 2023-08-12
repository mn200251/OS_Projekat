//
// Created by os on 8/2/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"

void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    MemoryAllocator::head->next = nullptr;
    MemoryAllocator::head->prev = nullptr;
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;

    /*
    printInteger((size_t)MemoryAllocator::memStart);
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}

void *MemoryAllocator::mem_alloc(size_t size)
{
    if (size == 0)
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;

    while (curr != nullptr)
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
        {
            // Update the FreeMem segment, if it gets destroyed it doesn't matter
            curr->size -= blockNum;

            // Check if FreeMem is destroyed and update the linked list
            if (curr->size == 0)
            {
                if (curr == MemoryAllocator::head)
                {
                    MemoryAllocator::head = MemoryAllocator::head->next;
                }

                if (curr->next != nullptr && curr->prev != nullptr)
                {
                    curr->prev->next = curr->next;
                    curr->next->prev = curr->prev;
                }
                // curr->next == nullptr
                else if (curr->prev != nullptr)
                {
                    curr->prev->next = nullptr;
                }
                // curr->prev == nullptr
                else if (curr->next != nullptr)
                {
                    curr->next->prev = nullptr;
                }
            }

            // Address of the allocated memory
            // Behind the beginning address we must allocate AllocatedMem
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
            allocatedMem->blockNum = blockNum;
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));

            /*
            printString("malloc-------------------");
            printString("\n");
            printString("blockNum: ");
            printInteger((size_t)blockNum);
            printString("\n");
            printString("allocatedMem addr: ");
            printInteger((size_t)allocatedMem);
            printString("\n");
            printString("ptr addr: ");
            printInteger((size_t)ptr);
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
            break;
    }

    return nullptr;
}

int MemoryAllocator::mem_free(void* ptr)
{
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));

    size_t blockNum = allocatedMem->blockNum;

    // Get the FreeMem head and iterate to put the new FreeMem Segment
    size_t addr = (size_t)allocatedMem;
    FreeMem* curr = 0;
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    {
        curr = 0;
    }
    else
    {
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    }

    FreeMem* newSeg = (FreeMem*)addr;
    newSeg->size = blockNum;
    newSeg->prev = curr;
    if (curr) newSeg->next = curr->next;
    else newSeg->next = MemoryAllocator::head;
    if (newSeg->next) newSeg->next->prev = newSeg;
    if (curr) curr->next = newSeg;
    else MemoryAllocator::head = newSeg;

    // Try to merge with previous and next segment

    /*
    printString("free-------------------");
    printString("\n");
    printString("ptr addr: ");
    printInteger((size_t)ptr);
    printString("\n");
    printString("allocatedMem blockNum: ");
    printInteger((size_t)allocatedMem->blockNum);
    printString("\n");
    */

    MemoryAllocator::tryToJoin(newSeg);
    MemoryAllocator::tryToJoin(curr);

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    if (!curr) return 0;
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    {
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    }
}




