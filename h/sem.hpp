//
// Created by os on 8/17/23.
//

#ifndef PROJECT_BASE_SEM_HPP
#define PROJECT_BASE_SEM_HPP

#include "list.hpp"
#include "thread.hpp"

struct _sem
{
    // List<_thread> queue;

    struct Elem{
        _thread* data;
        Elem* next;

        void* operator new(size_t size) {
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
            void* ptr = MemoryAllocator::mem_alloc(blockNum);
            return ptr;
        }
        void operator delete(void* ptr) {
            MemoryAllocator::mem_free(ptr);
        }

        Elem(_thread *data, Elem *next) : data(data), next(next) {}
    };
    Elem* head = nullptr;
    Elem* tail = nullptr;

    void addLast(_thread* t);
    _thread* removeFirst();
    _thread* peekFirst() const;

    int val;

    static int semOpen(_sem** handle, unsigned init);

    static int semWait(_sem* id);

    static int semSignal(_sem* id);

    static int semClose(_sem* handle);
};

typedef _sem* sem_t;





#endif //PROJECT_BASE_SEM_HPP
