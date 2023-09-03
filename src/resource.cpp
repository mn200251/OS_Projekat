//
// Created by os on 8/31/23.
//

#include "../h/resource.hpp"


resource *resource::createResource(unsigned value)
{
    resource* newResource = (resource*) mem_alloc(sizeof(resource));
    newResource->val = value;
    sem_open(&newResource->semaphore,0);

    return newResource;
}


void resource::aquireResource(unsigned amount)
{
    // ako ima prvog onda cekaj
    if (this->semaphore->peekFirst())
    {
        _thread::running->resourceWant = amount;
        sem_wait(this->semaphore);
    }
    // ako nije dovoljno resursa blokiraj se
    else if (this->val < amount)
    {
        _thread::running->resourceWant = amount - this->val;
        this->val = 0;
        sem_wait(this->semaphore);
    }
    // jedina je nit i ima dovoljno resoursa
    else
        this->val -= amount;
}

void resource::releaseResource(unsigned amount)
{
    this->val += amount;

    while (this->semaphore->peekFirst() && this->val > 0)
    {
        _thread* firstThread = this->semaphore->peekFirst();

        // reducing by available amount
        if (this->val < firstThread->resourceWant)
        {
            firstThread->resourceWant = firstThread->resourceWant - this->val;
            this->val = 0;
        }
        // releasing thread
        else
        {
            this->val -= firstThread->resourceWant;
            firstThread->resourceWant = 0;
            sem_signal(this->semaphore);
        }
    }
}
