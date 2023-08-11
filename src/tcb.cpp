
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    TCB* newThread = (TCB*)MemoryAllocator::mem_alloc(sizeof(TCB));
    newThread->body = body;
    newThread->timeSlice = TIME_SLICE;
    newThread->finished = false;

    if (body != nullptr)
        newThread->stack = (uint64*) MemoryAllocator::mem_alloc(sizeof(uint64) * STACK_SIZE);
    else
        newThread->stack = nullptr;

    newThread->context.ra = (uint64) &threadWrapper,
    newThread->context.sp = *newThread->stack;

    if (body != nullptr)
        Scheduler::put(newThread);

    return newThread;
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}

TCB::~TCB()
{
    MemoryAllocator::mem_free((void*)this->stack);
    // delete[] stack;
}
