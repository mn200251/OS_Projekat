//
// Created by os on 8/12/23.
//

#include "../h/thread.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
#include "../h/list.hpp"
#include "../h/sem.hpp"

thread_t _thread::running = nullptr;

/////////////////////////////
int _thread::id = 0;
_thread::Elem* _thread::head = nullptr;
_thread::Elem* _thread::tail = nullptr;
/////////////////////////////

int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space)
{

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);

    int retVal = _sem::semOpen(&(*handle)->semaphore, 0);

    if (*handle == nullptr || retVal < 0)
        return -1;

    (*handle)->semWaitVal = 0;
    (*handle)->finished = false;
    (*handle)->timeSlice = 0;
    (*handle)->body = start_routine;
    (*handle)->arg = arg;

    if (start_routine != nullptr)
        (*handle)->stack = (uint64*) stack_space;
    else
        (*handle)->stack = nullptr;

    // (*handle)->context.ra = (uint64) &threadWrapper;

    if ((*handle)->stack != nullptr)
    {
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
        (*handle)->context.ra = (uint64) &threadWrapper;
    }
    else
    {
        // asm volatile("sd ra, %0" : "=m" ((*handle)->context.ra));
        // (*handle)->context.ra = (uint64) &threadWrapper;
        (*handle)->context.sp = 0;
    }

    if ((*handle)->body != nullptr)
        Scheduler::put(*handle);

//    printString("\nnew thread: ");
//    printInt((uint64) *handle);
//    printString("\n");


    /////////////////////////////////
    (*handle)->myId = _thread::id++;
    _thread::addLast(*handle);

    (*handle)->blockedOn = nullptr;

    /////////////////////////////////

    return 0;
}


void _thread::threadWrapper()
{
    Riscv::popSppSpie();

    _thread::running->body(_thread::running->arg);

    thread_exit();
}

void _thread::threadWrapperExec()
{
    _thread::running->body(_thread::running->arg);

    thread_exit();
}

void _thread::threadDispatch ()
{
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;

    if (!old->finished)
    {
        Scheduler::put(old);
        _thread::running = Scheduler::get();

        if(old != _thread::running)
            contextSwitch(&old->context, &_thread::running->context);
    }
    else
    {
        // dealloc the sem and release all waiting threads
        _sem::semClose(_thread::running->semaphore);

        // thread finished -> dealloc the stack and thread
        MemoryAllocator::mem_free(old->stack);
        // MemoryAllocator::mem_free(old);
        // MemoryAllocator::mem_free(&old);

        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}

void _thread::threadFork()
{
    size_t blockNum2 = MemoryAllocator::convert2Blocks(sizeof(_thread));
    _thread* newHandle = (_thread *)(MemoryAllocator::mem_alloc(blockNum2));

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);

    threadCreate(&newHandle, _thread::running->body, _thread::running->arg, stack_space);

//    printString("\nsepc = ");
//    printInt(Riscv::r_sepc());
//    printString("\n");
    asm volatile ("csrr a0, sepc");
    asm volatile("sd a0, %0" : "=m" (newHandle->context.ra));
//    printString("\ncontext.ra = ");
//    printInt(newHandle->context.ra);
//    printString("\n");

    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
//    newHandle->context.sp = (uint64)newHandle->stack + _thread::running->context.sp - (uint64)_thread::running->stack;

//    printString("\ncontext.sp1 = ");
//    printInt(newHandle->context.sp);
//    printString("\n");

      // newHandle->context.sp = (uint64)newHandle->stack + *(uint64*)SP - (uint64)_thread::running->stack;


//
//    printString("\ncontext.sp2 = ");
//    printInt(newHandle->context.sp);
//    printString("\n");

    // copy stack
    uint64* startAddrOld = _thread::running->stack;
    uint64* startAddrNew = newHandle->stack;

    size_t i = 0;
    while (i < DEFAULT_STACK_SIZE)
    {
        *(startAddrNew+i) = *(startAddrOld+i);
        i++;
    }
    //

    _thread::running->forkRetVal = newHandle->myId; // 1 - thread parent
    newHandle->forkRetVal = 0; // 0 - child

    Scheduler::put(newHandle);

//    newHandle->context.sp = (uint64)newHandle->stack + _thread::running->context.sp - (uint64)_thread::running->stack;
//    _thread* old = _thread::running;
//    _thread::running = newHandle;
//    Scheduler::put(old);
//    contextSwitch(&old->context, &_thread::running->context);
//    asm volatile("sret");
}


void _thread::threadExec()
{
    MemoryAllocator::mem_free(_thread::running->stack);

    size_t blockNum2 = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    _thread::running->stack = (uint64*)MemoryAllocator::mem_alloc(blockNum2);

    _thread::running->context.sp = (uint64) &(_thread::running->stack[DEFAULT_STACK_SIZE]);
}


void _thread::addLast(_thread *t)
{
    if (t == nullptr)
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);

    elem->data = t;
    elem->next = nullptr;

    if (_thread::tail)
    {
        _thread::tail->next = elem;
        _thread::tail = elem;
    }
    else
    {
        _thread::head = _thread::tail = elem;
    }
}

_thread *_thread::search(int searchId)
{
    Elem* temp = _thread::head;

    while(temp)
    {
        if (temp->data->myId == searchId)
            return temp->data;

        temp = temp->next;
    }

    return nullptr;
}

int _thread::threadKill(int threadId)
{
    // current thread kills its self
    if (_thread::running->myId == threadId)
    {
        _thread::running->finished = true;
        _thread::threadDispatch();
    }

    _thread* targetThread = search(threadId);

    // thread with that id doesn't exist
    if (targetThread == nullptr)
        return -1;

    // thread already finished
    if (targetThread->finished)
        return -2;

    // thread blocked on semaphore
    if (targetThread->blockedOn != nullptr)
    {
        // sem val is -3 --> 3 threads waiting
        int numThreads = 0 - targetThread->blockedOn->val;

        // ne zovemo direktno semafor signal i wait da ne bi nit izgubila procesor
        // i promenila kontekst -> zato moramo rucno da inkrementiramo semafor val
        for (int i = 0; i < numThreads; i++)
        {
            _thread* curr = targetThread->blockedOn->removeFirst();
            if(curr->myId == threadId)
                curr->finished = true;
            else
                targetThread->blockedOn->addLast(curr);
        }
        // target thread is removed so we increment val by 1
        targetThread->blockedOn->val++;
        return 0;
    }
    // thread is in scheduler
    else
    {
        int threadNumber = Scheduler::threadNum;

        for (int i = 0; i < threadNumber; i++)
        {
            _thread* curr = Scheduler::get();
            if (curr->myId == threadId)
                curr->finished = true;
            else
                Scheduler::put(curr);
        }
    }

    // dealloc the targetThread


    // error
    return 0;
}




