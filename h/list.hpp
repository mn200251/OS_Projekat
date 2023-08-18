

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_LIST_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_LIST_HPP

#include "MemoryAllocator.hpp"
#include "../h/print.hpp"

template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        // Elem *elem = new Elem(data, 0);
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(List<T>::Elem));
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);

        elem->data = data;
        elem->next = nullptr;

        if (tail != 0)
        {
            printInteger((size_t)tail->data);
            printString("\n");
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }

//        printString("\nSheduler.put(): ");
//        printInteger((uint64) *elem->data);
//        printString("\n");
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        // delete elem;
        MemoryAllocator::mem_free(elem);

//        printString("\nSheduler.get(): ");
//        printInteger((uint64) *ret);
//        printString("\n");

        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;

        //delete elem;
        MemoryAllocator::mem_free(elem);

        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    void printAll()
    {
        Elem* temp = head;
        printString("-----------------------------------------\n");
        printString("Print all threads in Scheduler:\n");
        while(temp)
        {
            printInteger((size_t)temp->data);
            printString("\n");

            temp = temp->next;
        }
        printString("-----------------------------------------\n");
    }
};





#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_LIST_HPP
