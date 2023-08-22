//
// Created by os on 8/17/23.
//

#include "../h/sem.hpp"
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"
#include "../h/thread.hpp"

int _sem::semOpen(_sem **handle, unsigned init)
{
    *handle = (_sem*)MemoryAllocator::mem_alloc(sizeof(_sem));

    (*handle)->val = (int)init;
    (*handle)->head = nullptr;
    (*handle)->tail = nullptr;

    return 0;
}


int _sem::semClose(_sem *handle)
{
//    if (handle == nullptr) // error: sem is nullptr
//        return -1;

//    printString("\n****************\nSem Close - Closing sem!\n");
    // remove all threads that are blocked
    while (handle->peekFirst())
    {
//        printString("Removing thread!\n");
        handle->peekFirst()->semWaitVal = -1;
        Scheduler::put(handle->removeFirst());
    }
//    printString("\n****************\n");

    MemoryAllocator::mem_free(handle);

    return 0;
}


int _sem::semWait(_sem* id) {
//    if (id == nullptr)
//        return -1; // invalid id

    id->val--;

    _thread *old = _thread::running;

    if (id->val < 0)
    {
//        printString("\nSem Wait - Waiting on sem!\n");
        id->addLast(_thread::running);
    }
    else
        return 0;

     _thread::running = Scheduler::get();

//    if (!_thread::running)
//        printString("\n********************\nThread running is nullptr!\n");

    if (old != _thread::running)
        contextSwitch(&old->context, &_thread::running->context);

    return 0;
}

int _sem::semSignal(sem_t id)
{
//    if (id == nullptr) // id is nullptr
//        return -1;

    id->val++;
    // remove first if exists
    if (id->peekFirst())
    {
//        printString("\nSem signal!\n");
        id->peekFirst()->semWaitVal = 0;
        Scheduler::put(id->removeFirst());
    }

    return 0;
}

void _sem::addLast(_thread *t) {
    if (t == nullptr)
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);

    elem->data = t;
    elem->next = nullptr;

    //Elem *elem = new Elem(t, nullptr);

    if (tail)
    {
        tail->next = elem;
        tail = elem;
    }
    else
    {
        head = tail = elem;
    }
}

_thread *_sem::removeFirst() {
    if (head == nullptr) { return 0; }

    Elem *elem = head;
    head = head->next;
    if (head == nullptr) { tail = nullptr; }

    _thread* ret = elem->data;
    //delete elem;
    MemoryAllocator::mem_free(elem);

    return ret;
}

_thread* _sem::peekFirst() const {
    if (head == nullptr)
        return nullptr;

    return head->data;
}

