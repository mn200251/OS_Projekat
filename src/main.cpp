#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"

#include "../h/resource.hpp"

void userMain();

void test(void*)
{
    int i = 0;
    while(true)
    {
        printString("\ntest - ");
        printInt(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
        i++;
    }
}

void test2(void*)
{
    int i = 0;
    while(i < 100)
    {
        printString("\ntest2 - ");
        printInt(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();

        i++;
    }
}




_thread* globalThread1 = nullptr;
_thread* globalThread2 = nullptr;
//_thread* globalThread3 = nullptr;
//_thread* globalThread4 = nullptr;
//_thread* globalThread5 = nullptr;
//_thread* globalThread6 = nullptr;
_sem* empty;
_sem* full;

int buffer = 0;


void pong(void*);

void ping(void* arg)
{
    size_t num = (size_t)arg;
    printString("Ping: ");
    printInt(num);
    printString("\n");
    if(num > 30)
        return;
    exec(pong, reinterpret_cast<void *>((size_t) arg + 1));
}

void pong(void* arg)
{
    size_t num = (size_t)arg;
    printString("Pong: ");
    printInt(num);
    printString("\n");
    if(num > 30)
        return;
    exec(ping, reinterpret_cast<void *>((size_t) arg + 1));
}

size_t id = 1;
void consumer(void* n)
{
    size_t num = (size_t)n;

    printString("\n\nPre fork-a\n");
    int forkRetVal = fork();
    printString("forkRetVal: ");
    printInt(forkRetVal);
    printString("\n");

    num = id;
    id++;

    while(true)
    {
        if (sem_wait(full) < 0)
            return;

        int val = buffer;
        printString("Consumer ID: ");
        printInt(num);
        printString(" Value: ");
        printInt(val);
        printString("\n");
        sem_signal(empty);
    }
}


void producer(void* n)
{
    size_t num = (size_t)n;

    num = id;
    id++;

    int i = 1;
    while(true)
    {
        if (sem_wait(empty) < 0)
            return;

        buffer = i;
        i += 1 * 2 - 1;
        printString("Producer ID: ");
        printInt(num);
        printString(" Value: ");
        printInt(buffer);
        printString("\n");

        if (i > 20)
        {
            printString("CLOSING SEMAPHORE FULL!!! ");
            sem_close(full);
            break;
        }

        sem_signal(full);
    }
}

void prosliMain()
{
    // __putc('1');
    // __putc('\n');


    sem_open(&empty, 1);
    sem_open(&full, 0);
    thread_create(&globalThread1, producer, nullptr);
    thread_create(&globalThread2, consumer, (void*)1);
//    thread_create(&globalThread3, consumer, (void*)2);
//    thread_create(&globalThread3, consumer, (void*)3);
//    thread_create(&globalThread3, consumer, (void*)4);
//    thread_create(&globalThread3, producer, (void*)5);

    thread_join(globalThread1);
    thread_join(globalThread2);

//    thread_t handle2 = nullptr;
//    thread_t handle3 = nullptr;
//    thread_t handle4 = nullptr;
//    thread_t handle5 = nullptr;
//
//    thread_create(&handle2, workerBodyD, nullptr);
//    thread_create(&handle3, workerBodyB, nullptr);
//    thread_create(&handle4, workerBodyA, nullptr);
//    thread_create(&handle5, workerBodyC, nullptr);
//
//    thread_join(handle4);
//    printString("Prosao 1. join!\n");
//    thread_join(handle5);
//    printString("Prosao 2. join!\n");
//    thread_join(handle2);
//    printString("Prosao 3. join!\n");
//    thread_join(handle3);
//    printString("Prosao 4. join!\n");
//
//    printString("Finished!\n");
}


struct matStruct{
    int** mat;
    int m;
    int n;
    int targetN;
    int* retLocation;
};

void collumnSum(void* arg)
{
    matStruct* data = (matStruct*)arg;
    int s = 0;

    for(int i = 0; i < data->m; i++)
    {
        s += data->mat[i][data->targetN];
    }

    *data->retLocation = s;
    delete data;
}


void modifMatrica()
{
    printString("\nm = ");
    int m = (int)getc() - 48;
    printString("\nn = ");
    int n = (int)getc() - 48;
    printString("\n");

    int** mat = (int**)mem_alloc(sizeof(int*) * (m + 1));

    for(int i = 0; i < m + 1; i++)
        mat[i] = (int*)mem_alloc(sizeof(int) * (n));

    for(int i = 0; i < m; i++)
        for(int j = 0; j < n; j++)
            mat[i][j] = (int)getc() - 48;

    printString("\nMatrica: \n");
    for(int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printInt(mat[i][j]);
            printString(" ");
        }
        printString("\n");
    }

    _thread** handles = (_thread**)mem_alloc(sizeof(_thread*) * n);

    for (int i = 0; i < n; i++)
    {
        matStruct* arg = (matStruct*) mem_alloc(sizeof(matStruct));
        arg->mat = mat;
        arg->m = m;
        arg->n = n;
        arg->targetN = i;
        arg->retLocation = &mat[m][i];
        handles[i] = (_thread*) mem_alloc(sizeof(_thread));
        thread_create(&handles[i], collumnSum, arg);
    }

    int sum = 0;
    for (int i = 0; i < n; i++)
    {
        thread_join(handles[i]);
        delete handles[i];
        sum += mat[m][i];
    }

    printString("sum = ");
    printInt(sum);
    printString("\n");
}



_thread* threadKillSem;
_sem* killSem;

void threadKillSemFunction(void*)
{
    printString("threadKillFunction - Started waiting!\n");
    sem_wait(killSem);
    printString("threadKillFunction - Finished waiting!\n");
}



void modifKill()
{
    _thread* a1;
    _thread* a2;

    thread_create(&a1, test, nullptr);
    thread_create(&a2, test2, nullptr);

    int i = 0;
    while (i < 3)
    {
        thread_dispatch();
        i++;
    }
    int killRet;
    killRet = thread_kill(a1->myId);

    printString("\na1 killRet = ");
    printInt(killRet);

    killRet = thread_kill(a2->myId);
    printString("\na2 killRet = ");
    printInt(killRet);

    printString("\nKilled a1 and a2!\n");

    killRet = thread_kill(7);
    printString("\nthread not found killRet = ");
    printInt(killRet);
    printString("\n");


    sem_open(&killSem, 0);
    thread_create(&threadKillSem, threadKillSemFunction, nullptr);
    thread_dispatch();
    killRet = thread_kill(threadKillSem->myId);

    printString("\nthread on semaphore killRet = ");
    printInt(killRet);
    printString("\n");

    thread_kill(_thread::running->myId);

    printString("Error: Killed self!\n");
}

resource* myResource;
void resourceGiver(void*)
{
    while (true)
    {
        myResource->releaseResource(3);
        printString("Released 3 resource! Current balance = ");
        printInt(myResource->val);
        printString("\n");
        thread_dispatch();
    }
}

void resourceTaker(void*)
{
    while (true)
    {
        myResource->aquireResource(8);
        printString("Aquired 8 resource! Current balance = ");
        printInt(myResource->val);
        printString("\n");
        thread_dispatch();
    }
}

void modifResource()
{
    _thread* giver;
    _thread* taker;

    myResource = resource::createResource(10);

    thread_create(&giver, resourceGiver, nullptr);
    thread_create(&taker, resourceTaker, nullptr);

    printString("Resource test started!\n");
    thread_dispatch();

    int i = 0;
    while(i < 15)
    {
        thread_dispatch();
        i++;
    }

    thread_kill(giver->myId);
    thread_kill(taker->myId);
}


void mainWrapper(void*)
{
    //exec(ping, reinterpret_cast<void *>(1));
    // prosliMain();
    // userMain();
    // modifMatrica();
    // modifKill();
    modifResource();
}


void main()
{
    MemoryAllocator::initialise();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    uint64 sstatus = Riscv::r_sstatus();
    sstatus |= Riscv::SSTATUS_SIE;
    sstatus |= Riscv::SSTATUS_SPP;
    Riscv::ms_sstatus(sstatus);

    thread_t handle = nullptr;
    thread_t userMainHandle = nullptr;

    thread_create(&handle, nullptr, nullptr);
    _thread::running = handle;


    thread_create(&userMainHandle, mainWrapper, nullptr);

//    printString("\nMain Thread: ");
//    printInt((size_t)handle);
//    printString("\n");

//    Scheduler::readyThreadQueue.printAll();
//    printString("\nPre join-a\n\n");

    enterUserMode();
    thread_join(userMainHandle);
//    printString("\nPosle join-a\n\n");
//    Scheduler::readyThreadQueue.printAll();
}


