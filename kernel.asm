
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	c0813103          	ld	sp,-1016(sp) # 80005c08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0f1020ef          	jal	ra,8000290c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    csrw sscratch, sp
    80001084:	14011073          	csrw	sscratch,sp

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	39d000ef          	jal	ra,80001c24 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000108c:	00013003          	ld	zero,0(sp)
    80001090:	00813083          	ld	ra,8(sp)
    80001094:	01013103          	ld	sp,16(sp)
    80001098:	01813183          	ld	gp,24(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    80001108:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    sret
    80001110:	10200073          	sret
	...

0000000080001120 <contextSwitch>:
.global contextSwitch
.type contextSwitch, @function
contextSwitch:
    sd ra, 0 * 8(a0)
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001124:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001128:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000112c:	0085b103          	ld	sp,8(a1)

    80001130:	00008067          	ret

0000000080001134 <contextSwitchThreadEnded>:
.global contextSwitchThreadEnded
.type contextSwitchThreadEnded, @function
contextSwitchThreadEnded:
    ld ra, 0 * 8(a0)
    80001134:	00053083          	ld	ra,0(a0)
    ld sp, 1 * 8(a0)
    80001138:	00853103          	ld	sp,8(a0)

    8000113c:	00008067          	ret

0000000080001140 <_Z9mem_allocm>:
#include "../h/MemoryAllocator.hpp"
#include "../h/thread.hpp"
#include "../h/scheduler.hpp"

void* mem_alloc (size_t size)
{
    80001140:	fd010113          	addi	sp,sp,-48
    80001144:	02813423          	sd	s0,40(sp)
    80001148:	03010413          	addi	s0,sp,48
    8000114c:	fca43c23          	sd	a0,-40(s0)
    //size_t blockNum = MemoryAllocator::convert2Blocks(size);

    size_t code = 0x0000000000000001UL;
    80001150:	00100793          	li	a5,1
    80001154:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("ld a0, %0" : : "m" (code));
    80001158:	fe843503          	ld	a0,-24(s0)

    //__asm__ volatile("ld a1, %0" : : "m" (blockNum));
    __asm__ volatile("ld a1, %0" : : "m" (size));
    8000115c:	fd843583          	ld	a1,-40(s0)

    __asm__ volatile("ecall");
    80001160:	00000073          	ecall

    void* ptr;

    asm volatile("sd a0, %0" : "=m" (ptr));
    80001164:	fea43023          	sd	a0,-32(s0)
//    printString("mem_alloc: ");
//    printInteger(size_t(ptr));
//    printString("\n");

    return ptr;
}
    80001168:	fe043503          	ld	a0,-32(s0)
    8000116c:	02813403          	ld	s0,40(sp)
    80001170:	03010113          	addi	sp,sp,48
    80001174:	00008067          	ret

0000000080001178 <_Z8mem_freePv>:

int mem_free (void* ptr)
{
    80001178:	fd010113          	addi	sp,sp,-48
    8000117c:	02813423          	sd	s0,40(sp)
    80001180:	03010413          	addi	s0,sp,48
    80001184:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000002UL;
    80001188:	00200793          	li	a5,2
    8000118c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001190:	fe843503          	ld	a0,-24(s0)

    asm volatile("ld a1, %0" : : "m" (ptr));
    80001194:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001198:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    8000119c:	fea43223          	sd	a0,-28(s0)
//    printString("mem_free: ");
//    printInteger(val);
//    printString("\n");

    return val;
}
    800011a0:	fe442503          	lw	a0,-28(s0)
    800011a4:	02813403          	ld	s0,40(sp)
    800011a8:	03010113          	addi	sp,sp,48
    800011ac:	00008067          	ret

00000000800011b0 <_Z13thread_createPP7_threadPFvPvES2_>:


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
{
    800011b0:	fb010113          	addi	sp,sp,-80
    800011b4:	04113423          	sd	ra,72(sp)
    800011b8:	04813023          	sd	s0,64(sp)
    800011bc:	05010413          	addi	s0,sp,80
    800011c0:	fca43423          	sd	a0,-56(s0)
    800011c4:	fcb43023          	sd	a1,-64(s0)
    800011c8:	fac43c23          	sd	a2,-72(s0)
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800011cc:	00008537          	lui	a0,0x8
    800011d0:	00001097          	auipc	ra,0x1
    800011d4:	3f4080e7          	jalr	1012(ra) # 800025c4 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011d8:	00001097          	auipc	ra,0x1
    800011dc:	1fc080e7          	jalr	508(ra) # 800023d4 <_ZN15MemoryAllocator9mem_allocEm>
    800011e0:	fea43423          	sd	a0,-24(s0)
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);
//
//    blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread*));
//    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);

    size_t code = 0x0000000000000011UL;
    800011e4:	01100793          	li	a5,17
    800011e8:	fef43023          	sd	a5,-32(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800011ec:	fe043503          	ld	a0,-32(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    800011f0:	fc843583          	ld	a1,-56(s0)
    asm volatile("ld a2, %0" : : "m" (start_routine));
    800011f4:	fc043603          	ld	a2,-64(s0)
    asm volatile("ld a3, %0" : : "m" (arg));
    800011f8:	fb843683          	ld	a3,-72(s0)
    asm volatile("ld a4, %0" : : "m" (stack_space));
    800011fc:	fe843703          	ld	a4,-24(s0)

    asm volatile("ecall");
    80001200:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001204:	fca43e23          	sd	a0,-36(s0)
//    printString("\nnew thread: ");
//    printInteger((uint64) *handle);
//    printString("\n");

    return val;
}
    80001208:	fdc42503          	lw	a0,-36(s0)
    8000120c:	04813083          	ld	ra,72(sp)
    80001210:	04013403          	ld	s0,64(sp)
    80001214:	05010113          	addi	sp,sp,80
    80001218:	00008067          	ret

000000008000121c <_Z11thread_exitv>:

int thread_exit ()
{
    8000121c:	fe010113          	addi	sp,sp,-32
    80001220:	00813c23          	sd	s0,24(sp)
    80001224:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000012UL;
    80001228:	01200793          	li	a5,18
    8000122c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001230:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001234:	00000073          	ecall


    // if this code is executed -> error exiting thread
    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001238:	fea43223          	sd	a0,-28(s0)

    return val;
}
    8000123c:	fe442503          	lw	a0,-28(s0)
    80001240:	01813403          	ld	s0,24(sp)
    80001244:	02010113          	addi	sp,sp,32
    80001248:	00008067          	ret

000000008000124c <_Z15thread_dispatchv>:


void thread_dispatch ()
{
    8000124c:	fe010113          	addi	sp,sp,-32
    80001250:	00813c23          	sd	s0,24(sp)
    80001254:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000013UL;
    80001258:	01300793          	li	a5,19
    8000125c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001260:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001264:	00000073          	ecall
}
    80001268:	01813403          	ld	s0,24(sp)
    8000126c:	02010113          	addi	sp,sp,32
    80001270:	00008067          	ret

0000000080001274 <_Z11thread_joinP7_thread>:

void thread_join(_thread* handle)
{
    80001274:	fd010113          	addi	sp,sp,-48
    80001278:	02813423          	sd	s0,40(sp)
    8000127c:	03010413          	addi	s0,sp,48
    80001280:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000014UL;
    80001284:	01400793          	li	a5,20
    80001288:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    8000128c:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    80001290:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001294:	00000073          	ecall
}
    80001298:	02813403          	ld	s0,40(sp)
    8000129c:	03010113          	addi	sp,sp,48
    800012a0:	00008067          	ret

00000000800012a4 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init)
{
    800012a4:	fd010113          	addi	sp,sp,-48
    800012a8:	02813423          	sd	s0,40(sp)
    800012ac:	03010413          	addi	s0,sp,48
    800012b0:	fca43c23          	sd	a0,-40(s0)
    800012b4:	fcb42a23          	sw	a1,-44(s0)
    size_t code = 0x0000000000000021UL;
    800012b8:	02100793          	li	a5,33
    800012bc:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800012c0:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    800012c4:	fd843583          	ld	a1,-40(s0)
    asm volatile("ld a2, %0" : : "m" (init));
    800012c8:	fd443603          	ld	a2,-44(s0)

    asm volatile("ecall");
    800012cc:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800012d0:	fea43223          	sd	a0,-28(s0)

    return val;
}
    800012d4:	fe442503          	lw	a0,-28(s0)
    800012d8:	02813403          	ld	s0,40(sp)
    800012dc:	03010113          	addi	sp,sp,48
    800012e0:	00008067          	ret

00000000800012e4 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle)
{
    800012e4:	fd010113          	addi	sp,sp,-48
    800012e8:	02813423          	sd	s0,40(sp)
    800012ec:	03010413          	addi	s0,sp,48
    800012f0:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000022UL;
    800012f4:	02200793          	li	a5,34
    800012f8:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800012fc:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    80001300:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001304:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001308:	fea43223          	sd	a0,-28(s0)

    return val;
}
    8000130c:	fe442503          	lw	a0,-28(s0)
    80001310:	02813403          	ld	s0,40(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret

000000008000131c <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000131c:	fd010113          	addi	sp,sp,-48
    80001320:	02813423          	sd	s0,40(sp)
    80001324:	03010413          	addi	s0,sp,48
    80001328:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000023UL;
    8000132c:	02300793          	li	a5,35
    80001330:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001334:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (id));
    80001338:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    8000133c:	00000073          	ecall
//
//    asm volatile("sd a0, %0" : "=m" (val));
//
//    return val;

    return _thread::running->semWaitVal;
    80001340:	00005797          	auipc	a5,0x5
    80001344:	8b07b783          	ld	a5,-1872(a5) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001348:	0007b783          	ld	a5,0(a5)
}
    8000134c:	0387a503          	lw	a0,56(a5)
    80001350:	02813403          	ld	s0,40(sp)
    80001354:	03010113          	addi	sp,sp,48
    80001358:	00008067          	ret

000000008000135c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000135c:	fd010113          	addi	sp,sp,-48
    80001360:	02813423          	sd	s0,40(sp)
    80001364:	03010413          	addi	s0,sp,48
    80001368:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000024UL;
    8000136c:	02400793          	li	a5,36
    80001370:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001374:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (id));
    80001378:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    8000137c:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001380:	fea43223          	sd	a0,-28(s0)

    return val;
}
    80001384:	fe442503          	lw	a0,-28(s0)
    80001388:	02813403          	ld	s0,40(sp)
    8000138c:	03010113          	addi	sp,sp,48
    80001390:	00008067          	ret

0000000080001394 <_ZL9fibonaccim>:
        thread_dispatch();
    }
}

static uint64 fibonacci(uint64 n)
{
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00113c23          	sd	ra,24(sp)
    8000139c:	00813823          	sd	s0,16(sp)
    800013a0:	00913423          	sd	s1,8(sp)
    800013a4:	01213023          	sd	s2,0(sp)
    800013a8:	02010413          	addi	s0,sp,32
    800013ac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800013b0:	00100793          	li	a5,1
    800013b4:	02a7f863          	bgeu	a5,a0,800013e4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800013b8:	00a00793          	li	a5,10
    800013bc:	02f577b3          	remu	a5,a0,a5
    800013c0:	02078e63          	beqz	a5,800013fc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800013c4:	fff48513          	addi	a0,s1,-1
    800013c8:	00000097          	auipc	ra,0x0
    800013cc:	fcc080e7          	jalr	-52(ra) # 80001394 <_ZL9fibonaccim>
    800013d0:	00050913          	mv	s2,a0
    800013d4:	ffe48513          	addi	a0,s1,-2
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	fbc080e7          	jalr	-68(ra) # 80001394 <_ZL9fibonaccim>
    800013e0:	00a90533          	add	a0,s2,a0
}
    800013e4:	01813083          	ld	ra,24(sp)
    800013e8:	01013403          	ld	s0,16(sp)
    800013ec:	00813483          	ld	s1,8(sp)
    800013f0:	00013903          	ld	s2,0(sp)
    800013f4:	02010113          	addi	sp,sp,32
    800013f8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	e50080e7          	jalr	-432(ra) # 8000124c <_Z15thread_dispatchv>
    80001404:	fc1ff06f          	j	800013c4 <_ZL9fibonaccim+0x30>

0000000080001408 <_Z11workerBodyAPv>:
{
    80001408:	fe010113          	addi	sp,sp,-32
    8000140c:	00113c23          	sd	ra,24(sp)
    80001410:	00813823          	sd	s0,16(sp)
    80001414:	00913423          	sd	s1,8(sp)
    80001418:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000141c:	00000493          	li	s1,0
    80001420:	0380006f          	j	80001458 <_Z11workerBodyAPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001424:	00168693          	addi	a3,a3,1
    80001428:	000027b7          	lui	a5,0x2
    8000142c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001430:	00d7ee63          	bltu	a5,a3,8000144c <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001434:	00000713          	li	a4,0
    80001438:	000077b7          	lui	a5,0x7
    8000143c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001440:	fee7e2e3          	bltu	a5,a4,80001424 <_Z11workerBodyAPv+0x1c>
    80001444:	00170713          	addi	a4,a4,1
    80001448:	ff1ff06f          	j	80001438 <_Z11workerBodyAPv+0x30>
        thread_dispatch();
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	e00080e7          	jalr	-512(ra) # 8000124c <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10; i++)
    80001454:	00148493          	addi	s1,s1,1
    80001458:	00900793          	li	a5,9
    8000145c:	0297ec63          	bltu	a5,s1,80001494 <_Z11workerBodyAPv+0x8c>
        printString("A: i=");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bc050513          	addi	a0,a0,-1088 # 80005020 <CONSOLE_STATUS+0x10>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	190080e7          	jalr	400(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(i);
    80001470:	00048513          	mv	a0,s1
    80001474:	00001097          	auipc	ra,0x1
    80001478:	1f4080e7          	jalr	500(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	bc450513          	addi	a0,a0,-1084 # 80005040 <CONSOLE_STATUS+0x30>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	174080e7          	jalr	372(ra) # 800025f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000148c:	00000693          	li	a3,0
    80001490:	f99ff06f          	j	80001428 <_Z11workerBodyAPv+0x20>
}
    80001494:	01813083          	ld	ra,24(sp)
    80001498:	01013403          	ld	s0,16(sp)
    8000149c:	00813483          	ld	s1,8(sp)
    800014a0:	02010113          	addi	sp,sp,32
    800014a4:	00008067          	ret

00000000800014a8 <_Z11workerBodyBPv>:
{
    800014a8:	fe010113          	addi	sp,sp,-32
    800014ac:	00113c23          	sd	ra,24(sp)
    800014b0:	00813823          	sd	s0,16(sp)
    800014b4:	00913423          	sd	s1,8(sp)
    800014b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800014bc:	00000493          	li	s1,0
    800014c0:	0380006f          	j	800014f8 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    800014c4:	00168693          	addi	a3,a3,1
    800014c8:	000027b7          	lui	a5,0x2
    800014cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014d0:	00d7ee63          	bltu	a5,a3,800014ec <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800014d4:	00000713          	li	a4,0
    800014d8:	000077b7          	lui	a5,0x7
    800014dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014e0:	fee7e2e3          	bltu	a5,a4,800014c4 <_Z11workerBodyBPv+0x1c>
    800014e4:	00170713          	addi	a4,a4,1
    800014e8:	ff1ff06f          	j	800014d8 <_Z11workerBodyBPv+0x30>
        thread_dispatch();
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	d60080e7          	jalr	-672(ra) # 8000124c <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 16; i++)
    800014f4:	00148493          	addi	s1,s1,1
    800014f8:	00f00793          	li	a5,15
    800014fc:	0297ec63          	bltu	a5,s1,80001534 <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    80001500:	00004517          	auipc	a0,0x4
    80001504:	b2850513          	addi	a0,a0,-1240 # 80005028 <CONSOLE_STATUS+0x18>
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	0f0080e7          	jalr	240(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(i);
    80001510:	00048513          	mv	a0,s1
    80001514:	00001097          	auipc	ra,0x1
    80001518:	154080e7          	jalr	340(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    8000151c:	00004517          	auipc	a0,0x4
    80001520:	b2450513          	addi	a0,a0,-1244 # 80005040 <CONSOLE_STATUS+0x30>
    80001524:	00001097          	auipc	ra,0x1
    80001528:	0d4080e7          	jalr	212(ra) # 800025f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000152c:	00000693          	li	a3,0
    80001530:	f99ff06f          	j	800014c8 <_Z11workerBodyBPv+0x20>
}
    80001534:	01813083          	ld	ra,24(sp)
    80001538:	01013403          	ld	s0,16(sp)
    8000153c:	00813483          	ld	s1,8(sp)
    80001540:	02010113          	addi	sp,sp,32
    80001544:	00008067          	ret

0000000080001548 <_Z11workerBodyCPv>:


void workerBodyC(void*)
{
    80001548:	fe010113          	addi	sp,sp,-32
    8000154c:	00113c23          	sd	ra,24(sp)
    80001550:	00813823          	sd	s0,16(sp)
    80001554:	00913423          	sd	s1,8(sp)
    80001558:	01213023          	sd	s2,0(sp)
    8000155c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001560:	00000493          	li	s1,0
    80001564:	0400006f          	j	800015a4 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	ac850513          	addi	a0,a0,-1336 # 80005030 <CONSOLE_STATUS+0x20>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	088080e7          	jalr	136(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(i);
    80001578:	00048513          	mv	a0,s1
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	0ec080e7          	jalr	236(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    80001584:	00004517          	auipc	a0,0x4
    80001588:	abc50513          	addi	a0,a0,-1348 # 80005040 <CONSOLE_STATUS+0x30>
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	06c080e7          	jalr	108(ra) # 800025f8 <_Z11printStringPKc>
        thread_dispatch();
    80001594:	00000097          	auipc	ra,0x0
    80001598:	cb8080e7          	jalr	-840(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 3; i++)
    8000159c:	0014849b          	addiw	s1,s1,1
    800015a0:	0ff4f493          	andi	s1,s1,255
    800015a4:	00200793          	li	a5,2
    800015a8:	fc97f0e3          	bgeu	a5,s1,80001568 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    800015ac:	00004517          	auipc	a0,0x4
    800015b0:	a8c50513          	addi	a0,a0,-1396 # 80005038 <CONSOLE_STATUS+0x28>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	044080e7          	jalr	68(ra) # 800025f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800015bc:	00700313          	li	t1,7
    thread_dispatch();
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	c8c080e7          	jalr	-884(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800015c8:	00030913          	mv	s2,t1

    printString("C: t1=");
    800015cc:	00004517          	auipc	a0,0x4
    800015d0:	a7c50513          	addi	a0,a0,-1412 # 80005048 <CONSOLE_STATUS+0x38>
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	024080e7          	jalr	36(ra) # 800025f8 <_Z11printStringPKc>
    printInteger(t1);
    800015dc:	00090513          	mv	a0,s2
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	088080e7          	jalr	136(ra) # 80002668 <_Z12printIntegerm>
    printString("\n");
    800015e8:	00004517          	auipc	a0,0x4
    800015ec:	a5850513          	addi	a0,a0,-1448 # 80005040 <CONSOLE_STATUS+0x30>
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	008080e7          	jalr	8(ra) # 800025f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015f8:	00c00513          	li	a0,12
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	d98080e7          	jalr	-616(ra) # 80001394 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	a4850513          	addi	a0,a0,-1464 # 80005050 <CONSOLE_STATUS+0x40>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	fe8080e7          	jalr	-24(ra) # 800025f8 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	04c080e7          	jalr	76(ra) # 80002668 <_Z12printIntegerm>
    printString("\n");
    80001624:	00004517          	auipc	a0,0x4
    80001628:	a1c50513          	addi	a0,a0,-1508 # 80005040 <CONSOLE_STATUS+0x30>
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	fcc080e7          	jalr	-52(ra) # 800025f8 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyCPv+0x124>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	9f850513          	addi	a0,a0,-1544 # 80005030 <CONSOLE_STATUS+0x20>
    80001640:	00001097          	auipc	ra,0x1
    80001644:	fb8080e7          	jalr	-72(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	01c080e7          	jalr	28(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	9ec50513          	addi	a0,a0,-1556 # 80005040 <CONSOLE_STATUS+0x30>
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	f9c080e7          	jalr	-100(ra) # 800025f8 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001664:	0014849b          	addiw	s1,s1,1
    80001668:	0ff4f493          	andi	s1,s1,255
    8000166c:	00500793          	li	a5,5
    80001670:	fc97f4e3          	bgeu	a5,s1,80001638 <_Z11workerBodyCPv+0xf0>
    }
//    TCB::yield();
}
    80001674:	01813083          	ld	ra,24(sp)
    80001678:	01013403          	ld	s0,16(sp)
    8000167c:	00813483          	ld	s1,8(sp)
    80001680:	00013903          	ld	s2,0(sp)
    80001684:	02010113          	addi	sp,sp,32
    80001688:	00008067          	ret

000000008000168c <_Z11workerBodyDPv>:

void workerBodyD(void*)
{
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	01213023          	sd	s2,0(sp)
    800016a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016a4:	00a00493          	li	s1,10
    800016a8:	0400006f          	j	800016e8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800016ac:	00004517          	auipc	a0,0x4
    800016b0:	9b450513          	addi	a0,a0,-1612 # 80005060 <CONSOLE_STATUS+0x50>
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	f44080e7          	jalr	-188(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(i);
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	fa8080e7          	jalr	-88(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	97850513          	addi	a0,a0,-1672 # 80005040 <CONSOLE_STATUS+0x30>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	f28080e7          	jalr	-216(ra) # 800025f8 <_Z11printStringPKc>
        thread_dispatch();
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	b74080e7          	jalr	-1164(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 13; i++)
    800016e0:	0014849b          	addiw	s1,s1,1
    800016e4:	0ff4f493          	andi	s1,s1,255
    800016e8:	00c00793          	li	a5,12
    800016ec:	fc97f0e3          	bgeu	a5,s1,800016ac <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    800016f0:	00004517          	auipc	a0,0x4
    800016f4:	97850513          	addi	a0,a0,-1672 # 80005068 <CONSOLE_STATUS+0x58>
    800016f8:	00001097          	auipc	ra,0x1
    800016fc:	f00080e7          	jalr	-256(ra) # 800025f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001700:	00500313          	li	t1,5
    thread_dispatch();
    80001704:	00000097          	auipc	ra,0x0
    80001708:	b48080e7          	jalr	-1208(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000170c:	01000513          	li	a0,16
    80001710:	00000097          	auipc	ra,0x0
    80001714:	c84080e7          	jalr	-892(ra) # 80001394 <_ZL9fibonaccim>
    80001718:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000171c:	00004517          	auipc	a0,0x4
    80001720:	95c50513          	addi	a0,a0,-1700 # 80005078 <CONSOLE_STATUS+0x68>
    80001724:	00001097          	auipc	ra,0x1
    80001728:	ed4080e7          	jalr	-300(ra) # 800025f8 <_Z11printStringPKc>
    printInteger(result);
    8000172c:	00090513          	mv	a0,s2
    80001730:	00001097          	auipc	ra,0x1
    80001734:	f38080e7          	jalr	-200(ra) # 80002668 <_Z12printIntegerm>
    printString("\n");
    80001738:	00004517          	auipc	a0,0x4
    8000173c:	90850513          	addi	a0,a0,-1784 # 80005040 <CONSOLE_STATUS+0x30>
    80001740:	00001097          	auipc	ra,0x1
    80001744:	eb8080e7          	jalr	-328(ra) # 800025f8 <_Z11printStringPKc>
    80001748:	0400006f          	j	80001788 <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000174c:	00004517          	auipc	a0,0x4
    80001750:	91450513          	addi	a0,a0,-1772 # 80005060 <CONSOLE_STATUS+0x50>
    80001754:	00001097          	auipc	ra,0x1
    80001758:	ea4080e7          	jalr	-348(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(i);
    8000175c:	00048513          	mv	a0,s1
    80001760:	00001097          	auipc	ra,0x1
    80001764:	f08080e7          	jalr	-248(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    80001768:	00004517          	auipc	a0,0x4
    8000176c:	8d850513          	addi	a0,a0,-1832 # 80005040 <CONSOLE_STATUS+0x30>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	e88080e7          	jalr	-376(ra) # 800025f8 <_Z11printStringPKc>
        thread_dispatch();
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	ad4080e7          	jalr	-1324(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 16; i++)
    80001780:	0014849b          	addiw	s1,s1,1
    80001784:	0ff4f493          	andi	s1,s1,255
    80001788:	00f00793          	li	a5,15
    8000178c:	fc97f0e3          	bgeu	a5,s1,8000174c <_Z11workerBodyDPv+0xc0>
    }
//    TCB::yield();
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	00813483          	ld	s1,8(sp)
    8000179c:	00013903          	ld	s2,0(sp)
    800017a0:	02010113          	addi	sp,sp,32
    800017a4:	00008067          	ret

00000000800017a8 <_Z4testPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

void test(void*)
{
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00113423          	sd	ra,8(sp)
    800017b0:	00813023          	sd	s0,0(sp)
    800017b4:	01010413          	addi	s0,sp,16
    printString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
    800017b8:	00004517          	auipc	a0,0x4
    800017bc:	8d050513          	addi	a0,a0,-1840 # 80005088 <CONSOLE_STATUS+0x78>
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	e38080e7          	jalr	-456(ra) # 800025f8 <_Z11printStringPKc>
}
    800017c8:	00813083          	ld	ra,8(sp)
    800017cc:	00013403          	ld	s0,0(sp)
    800017d0:	01010113          	addi	sp,sp,16
    800017d4:	00008067          	ret

00000000800017d8 <_Z5test2Pv>:

void test2(void*)
{
    800017d8:	fe010113          	addi	sp,sp,-32
    800017dc:	00113c23          	sd	ra,24(sp)
    800017e0:	00813823          	sd	s0,16(sp)
    800017e4:	00913423          	sd	s1,8(sp)
    800017e8:	02010413          	addi	s0,sp,32
    int i = 0;
    800017ec:	00000493          	li	s1,0
    800017f0:	0100006f          	j	80001800 <_Z5test2Pv+0x28>
    while(i < 100)
    {
        printInteger(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	a58080e7          	jalr	-1448(ra) # 8000124c <_Z15thread_dispatchv>

        i++;
    800017fc:	0014849b          	addiw	s1,s1,1
    while(i < 100)
    80001800:	06300793          	li	a5,99
    80001804:	0297c863          	blt	a5,s1,80001834 <_Z5test2Pv+0x5c>
        printInteger(i);
    80001808:	00048513          	mv	a0,s1
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	e5c080e7          	jalr	-420(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    80001814:	00004517          	auipc	a0,0x4
    80001818:	82c50513          	addi	a0,a0,-2004 # 80005040 <CONSOLE_STATUS+0x30>
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	ddc080e7          	jalr	-548(ra) # 800025f8 <_Z11printStringPKc>
        if (i % 10 == 0)
    80001824:	00a00793          	li	a5,10
    80001828:	02f4e7bb          	remw	a5,s1,a5
    8000182c:	fc0798e3          	bnez	a5,800017fc <_Z5test2Pv+0x24>
    80001830:	fc5ff06f          	j	800017f4 <_Z5test2Pv+0x1c>
    }
}
    80001834:	01813083          	ld	ra,24(sp)
    80001838:	01013403          	ld	s0,16(sp)
    8000183c:	00813483          	ld	s1,8(sp)
    80001840:	02010113          	addi	sp,sp,32
    80001844:	00008067          	ret

0000000080001848 <_Z4fun1Pv>:
_sem* full;

int buffer = 0;

void fun1(void*)
{
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16

}
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_Z8consumerPv>:

void consumer(void* n)
{
    80001860:	fd010113          	addi	sp,sp,-48
    80001864:	02113423          	sd	ra,40(sp)
    80001868:	02813023          	sd	s0,32(sp)
    8000186c:	00913c23          	sd	s1,24(sp)
    80001870:	01213823          	sd	s2,16(sp)
    80001874:	01313423          	sd	s3,8(sp)
    80001878:	03010413          	addi	s0,sp,48
    8000187c:	00050993          	mv	s3,a0
    size_t num = (size_t)n;
    while(true)
    {
        int retVal = sem_wait(full);
    80001880:	00004517          	auipc	a0,0x4
    80001884:	40053503          	ld	a0,1024(a0) # 80005c80 <full>
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	a94080e7          	jalr	-1388(ra) # 8000131c <_Z8sem_waitP4_sem>
    80001890:	00050493          	mv	s1,a0
        if (retVal == -1) break;
    80001894:	fff00793          	li	a5,-1
    80001898:	08f50a63          	beq	a0,a5,8000192c <_Z8consumerPv+0xcc>
        printString("retVal: ");
    8000189c:	00004517          	auipc	a0,0x4
    800018a0:	81450513          	addi	a0,a0,-2028 # 800050b0 <CONSOLE_STATUS+0xa0>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	d54080e7          	jalr	-684(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(retVal);
    800018ac:	00048513          	mv	a0,s1
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	db8080e7          	jalr	-584(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    800018b8:	00003517          	auipc	a0,0x3
    800018bc:	78850513          	addi	a0,a0,1928 # 80005040 <CONSOLE_STATUS+0x30>
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	d38080e7          	jalr	-712(ra) # 800025f8 <_Z11printStringPKc>
        int val = buffer;
    800018c8:	00004497          	auipc	s1,0x4
    800018cc:	3b848493          	addi	s1,s1,952 # 80005c80 <full>
    800018d0:	0084a903          	lw	s2,8(s1)
        printString("Consumer ");
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	7ec50513          	addi	a0,a0,2028 # 800050c0 <CONSOLE_STATUS+0xb0>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	d1c080e7          	jalr	-740(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(num);
    800018e4:	00098513          	mv	a0,s3
    800018e8:	00001097          	auipc	ra,0x1
    800018ec:	d80080e7          	jalr	-640(ra) # 80002668 <_Z12printIntegerm>
        printString(" Value: ");
    800018f0:	00003517          	auipc	a0,0x3
    800018f4:	7e050513          	addi	a0,a0,2016 # 800050d0 <CONSOLE_STATUS+0xc0>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	d00080e7          	jalr	-768(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(val);
    80001900:	00090513          	mv	a0,s2
    80001904:	00001097          	auipc	ra,0x1
    80001908:	d64080e7          	jalr	-668(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    8000190c:	00003517          	auipc	a0,0x3
    80001910:	73450513          	addi	a0,a0,1844 # 80005040 <CONSOLE_STATUS+0x30>
    80001914:	00001097          	auipc	ra,0x1
    80001918:	ce4080e7          	jalr	-796(ra) # 800025f8 <_Z11printStringPKc>
        sem_signal(empty);
    8000191c:	0104b503          	ld	a0,16(s1)
    80001920:	00000097          	auipc	ra,0x0
    80001924:	a3c080e7          	jalr	-1476(ra) # 8000135c <_Z10sem_signalP4_sem>
    }
    80001928:	f59ff06f          	j	80001880 <_Z8consumerPv+0x20>
}
    8000192c:	02813083          	ld	ra,40(sp)
    80001930:	02013403          	ld	s0,32(sp)
    80001934:	01813483          	ld	s1,24(sp)
    80001938:	01013903          	ld	s2,16(sp)
    8000193c:	00813983          	ld	s3,8(sp)
    80001940:	03010113          	addi	sp,sp,48
    80001944:	00008067          	ret

0000000080001948 <_Z8producerPv>:


void producer(void* n)
{
    80001948:	fd010113          	addi	sp,sp,-48
    8000194c:	02113423          	sd	ra,40(sp)
    80001950:	02813023          	sd	s0,32(sp)
    80001954:	00913c23          	sd	s1,24(sp)
    80001958:	01213823          	sd	s2,16(sp)
    8000195c:	01313423          	sd	s3,8(sp)
    80001960:	03010413          	addi	s0,sp,48
    80001964:	00050993          	mv	s3,a0
    size_t num = (size_t)n;
    int i = 1;
    80001968:	00100493          	li	s1,1
    while(true)
    {
        sem_wait(empty);
    8000196c:	00004917          	auipc	s2,0x4
    80001970:	31490913          	addi	s2,s2,788 # 80005c80 <full>
    80001974:	01093503          	ld	a0,16(s2)
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	9a4080e7          	jalr	-1628(ra) # 8000131c <_Z8sem_waitP4_sem>
        buffer = i;
    80001980:	00992423          	sw	s1,8(s2)
        i += 1 * 2 - 1;
    80001984:	0014849b          	addiw	s1,s1,1
        printString("Producer ");
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	75850513          	addi	a0,a0,1880 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001990:	00001097          	auipc	ra,0x1
    80001994:	c68080e7          	jalr	-920(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(num);
    80001998:	00098513          	mv	a0,s3
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	ccc080e7          	jalr	-820(ra) # 80002668 <_Z12printIntegerm>
        printString(" Value: ");
    800019a4:	00003517          	auipc	a0,0x3
    800019a8:	72c50513          	addi	a0,a0,1836 # 800050d0 <CONSOLE_STATUS+0xc0>
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	c4c080e7          	jalr	-948(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(buffer);
    800019b4:	00892503          	lw	a0,8(s2)
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	cb0080e7          	jalr	-848(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	68050513          	addi	a0,a0,1664 # 80005040 <CONSOLE_STATUS+0x30>
    800019c8:	00001097          	auipc	ra,0x1
    800019cc:	c30080e7          	jalr	-976(ra) # 800025f8 <_Z11printStringPKc>

        if (i > 200)
    800019d0:	0c800793          	li	a5,200
    800019d4:	0097cc63          	blt	a5,s1,800019ec <_Z8producerPv+0xa4>
            printString("CLOSING SEMAPHORE FULL!!! ");
            sem_close(full);
            break;
        }

        sem_signal(full);
    800019d8:	00004517          	auipc	a0,0x4
    800019dc:	2a853503          	ld	a0,680(a0) # 80005c80 <full>
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	97c080e7          	jalr	-1668(ra) # 8000135c <_Z10sem_signalP4_sem>
        sem_wait(empty);
    800019e8:	f85ff06f          	j	8000196c <_Z8producerPv+0x24>
            printString("CLOSING SEMAPHORE FULL!!! ");
    800019ec:	00003517          	auipc	a0,0x3
    800019f0:	70450513          	addi	a0,a0,1796 # 800050f0 <CONSOLE_STATUS+0xe0>
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	c04080e7          	jalr	-1020(ra) # 800025f8 <_Z11printStringPKc>
            sem_close(full);
    800019fc:	00004517          	auipc	a0,0x4
    80001a00:	28453503          	ld	a0,644(a0) # 80005c80 <full>
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	8e0080e7          	jalr	-1824(ra) # 800012e4 <_Z9sem_closeP4_sem>
    }
}
    80001a0c:	02813083          	ld	ra,40(sp)
    80001a10:	02013403          	ld	s0,32(sp)
    80001a14:	01813483          	ld	s1,24(sp)
    80001a18:	01013903          	ld	s2,16(sp)
    80001a1c:	00813983          	ld	s3,8(sp)
    80001a20:	03010113          	addi	sp,sp,48
    80001a24:	00008067          	ret

0000000080001a28 <_Z8userMainv>:

void userMain()
{
    80001a28:	fd010113          	addi	sp,sp,-48
    80001a2c:	02113423          	sd	ra,40(sp)
    80001a30:	02813023          	sd	s0,32(sp)
    80001a34:	03010413          	addi	s0,sp,48
    __putc('1');
    80001a38:	03100513          	li	a0,49
    80001a3c:	00003097          	auipc	ra,0x3
    80001a40:	f90080e7          	jalr	-112(ra) # 800049cc <__putc>
    __putc('\n');
    80001a44:	00a00513          	li	a0,10
    80001a48:	00003097          	auipc	ra,0x3
    80001a4c:	f84080e7          	jalr	-124(ra) # 800049cc <__putc>
//    thread_create(&globalThread2, consumer, (void*)1);
//    thread_create(&globalThread3, consumer, (void*)2);
//
//    thread_join(globalThread1);

    thread_t handle2 = nullptr;
    80001a50:	fe043423          	sd	zero,-24(s0)
    thread_t handle3 = nullptr;
    80001a54:	fe043023          	sd	zero,-32(s0)
    thread_t handle4 = nullptr;
    80001a58:	fc043c23          	sd	zero,-40(s0)
    thread_t handle5 = nullptr;
    80001a5c:	fc043823          	sd	zero,-48(s0)

    thread_create(&handle2, workerBodyD, nullptr);
    80001a60:	00000613          	li	a2,0
    80001a64:	00004597          	auipc	a1,0x4
    80001a68:	1c45b583          	ld	a1,452(a1) # 80005c28 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001a6c:	fe840513          	addi	a0,s0,-24
    80001a70:	fffff097          	auipc	ra,0xfffff
    80001a74:	740080e7          	jalr	1856(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle3, workerBodyB, nullptr);
    80001a78:	00000613          	li	a2,0
    80001a7c:	00004597          	auipc	a1,0x4
    80001a80:	1a45b583          	ld	a1,420(a1) # 80005c20 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001a84:	fe040513          	addi	a0,s0,-32
    80001a88:	fffff097          	auipc	ra,0xfffff
    80001a8c:	728080e7          	jalr	1832(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle4, workerBodyA, nullptr);
    80001a90:	00000613          	li	a2,0
    80001a94:	00004597          	auipc	a1,0x4
    80001a98:	17c5b583          	ld	a1,380(a1) # 80005c10 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a9c:	fd840513          	addi	a0,s0,-40
    80001aa0:	fffff097          	auipc	ra,0xfffff
    80001aa4:	710080e7          	jalr	1808(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle5, workerBodyC, nullptr);
    80001aa8:	00000613          	li	a2,0
    80001aac:	00004597          	auipc	a1,0x4
    80001ab0:	14c5b583          	ld	a1,332(a1) # 80005bf8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ab4:	fd040513          	addi	a0,s0,-48
    80001ab8:	fffff097          	auipc	ra,0xfffff
    80001abc:	6f8080e7          	jalr	1784(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>

    thread_join(handle4);
    80001ac0:	fd843503          	ld	a0,-40(s0)
    80001ac4:	fffff097          	auipc	ra,0xfffff
    80001ac8:	7b0080e7          	jalr	1968(ra) # 80001274 <_Z11thread_joinP7_thread>
    printString("Prosao 1. join!\n");
    80001acc:	00003517          	auipc	a0,0x3
    80001ad0:	64450513          	addi	a0,a0,1604 # 80005110 <CONSOLE_STATUS+0x100>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	b24080e7          	jalr	-1244(ra) # 800025f8 <_Z11printStringPKc>
    thread_join(handle5);
    80001adc:	fd043503          	ld	a0,-48(s0)
    80001ae0:	fffff097          	auipc	ra,0xfffff
    80001ae4:	794080e7          	jalr	1940(ra) # 80001274 <_Z11thread_joinP7_thread>
    printString("Prosao 2. join!\n");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	64050513          	addi	a0,a0,1600 # 80005128 <CONSOLE_STATUS+0x118>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	b08080e7          	jalr	-1272(ra) # 800025f8 <_Z11printStringPKc>
    thread_join(handle2);
    80001af8:	fe843503          	ld	a0,-24(s0)
    80001afc:	fffff097          	auipc	ra,0xfffff
    80001b00:	778080e7          	jalr	1912(ra) # 80001274 <_Z11thread_joinP7_thread>
    printString("Prosao 3. join!\n");
    80001b04:	00003517          	auipc	a0,0x3
    80001b08:	63c50513          	addi	a0,a0,1596 # 80005140 <CONSOLE_STATUS+0x130>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	aec080e7          	jalr	-1300(ra) # 800025f8 <_Z11printStringPKc>
    thread_join(handle3);
    80001b14:	fe043503          	ld	a0,-32(s0)
    80001b18:	fffff097          	auipc	ra,0xfffff
    80001b1c:	75c080e7          	jalr	1884(ra) # 80001274 <_Z11thread_joinP7_thread>
    printString("Prosao 4. join!\n");
    80001b20:	00003517          	auipc	a0,0x3
    80001b24:	63850513          	addi	a0,a0,1592 # 80005158 <CONSOLE_STATUS+0x148>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	ad0080e7          	jalr	-1328(ra) # 800025f8 <_Z11printStringPKc>

    printString("Finished!\n");
    80001b30:	00003517          	auipc	a0,0x3
    80001b34:	64050513          	addi	a0,a0,1600 # 80005170 <CONSOLE_STATUS+0x160>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	ac0080e7          	jalr	-1344(ra) # 800025f8 <_Z11printStringPKc>
}
    80001b40:	02813083          	ld	ra,40(sp)
    80001b44:	02013403          	ld	s0,32(sp)
    80001b48:	03010113          	addi	sp,sp,48
    80001b4c:	00008067          	ret

0000000080001b50 <_Z15userMainWrapperPv>:

void userMainWrapper(void*)
{
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    userMain();
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	ec8080e7          	jalr	-312(ra) # 80001a28 <_Z8userMainv>
}
    80001b68:	00813083          	ld	ra,8(sp)
    80001b6c:	00013403          	ld	s0,0(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <main>:

void main(void*)
{
    80001b78:	fe010113          	addi	sp,sp,-32
    80001b7c:	00113c23          	sd	ra,24(sp)
    80001b80:	00813823          	sd	s0,16(sp)
    80001b84:	02010413          	addi	s0,sp,32
    MemoryAllocator::initialise();
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	7dc080e7          	jalr	2012(ra) # 80002364 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001b90:	00004797          	auipc	a5,0x4
    80001b94:	0707b783          	ld	a5,112(a5) # 80005c00 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001b98:	10579073          	csrw	stvec,a5
    thread_t handle = nullptr;
    80001b9c:	fe043423          	sd	zero,-24(s0)
    thread_t userMainHandle = nullptr;
    80001ba0:	fe043023          	sd	zero,-32(s0)

//    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);

    thread_create(&handle, nullptr, nullptr);
    80001ba4:	00000613          	li	a2,0
    80001ba8:	00000593          	li	a1,0
    80001bac:	fe840513          	addi	a0,s0,-24
    80001bb0:	fffff097          	auipc	ra,0xfffff
    80001bb4:	600080e7          	jalr	1536(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = handle;
    80001bb8:	00004797          	auipc	a5,0x4
    80001bbc:	0387b783          	ld	a5,56(a5) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001bc0:	fe843703          	ld	a4,-24(s0)
    80001bc4:	00e7b023          	sd	a4,0(a5)
    thread_create(&userMainHandle, userMainWrapper, nullptr);
    80001bc8:	00000613          	li	a2,0
    80001bcc:	00000597          	auipc	a1,0x0
    80001bd0:	f8458593          	addi	a1,a1,-124 # 80001b50 <_Z15userMainWrapperPv>
    80001bd4:	fe040513          	addi	a0,s0,-32
    80001bd8:	fffff097          	auipc	ra,0xfffff
    80001bdc:	5d8080e7          	jalr	1496(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001be0:	00200793          	li	a5,2
    80001be4:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_join(userMainHandle);
    80001be8:	fe043503          	ld	a0,-32(s0)
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	688080e7          	jalr	1672(ra) # 80001274 <_Z11thread_joinP7_thread>
}
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret

0000000080001c04 <_ZN5Riscv10popSppSpieEv>:
#include "../h/sem.hpp"

#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001c10:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001c14:	10200073          	sret
}
    80001c18:	00813403          	ld	s0,8(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001c24:	f7010113          	addi	sp,sp,-144
    80001c28:	08113423          	sd	ra,136(sp)
    80001c2c:	08813023          	sd	s0,128(sp)
    80001c30:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    80001c34:	faa43823          	sd	a0,-80(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    80001c38:	fab43c23          	sd	a1,-72(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    80001c3c:	fcc43023          	sd	a2,-64(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80001c40:	fcd43423          	sd	a3,-56(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80001c44:	fce43823          	sd	a4,-48(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    80001c48:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    80001c4c:	ff043023          	sd	a6,-32(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80001c50:	ff143423          	sd	a7,-24(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c54:	141027f3          	csrr	a5,sepc
    80001c58:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001c5c:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    80001c60:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c64:	100027f3          	csrr	a5,sstatus
    80001c68:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001c6c:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80001c70:	faf43023          	sd	a5,-96(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80001c74:	140027f3          	csrr	a5,sscratch
    80001c78:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c7c:	142027f3          	csrr	a5,scause
    80001c80:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001c84:	f7843783          	ld	a5,-136(s0)

    uint64 volatile scause = r_scause();
    80001c88:	f8f43823          	sd	a5,-112(s0)

//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001c8c:	f9043703          	ld	a4,-112(s0)
    80001c90:	00800793          	li	a5,8
    80001c94:	0af70063          	beq	a4,a5,80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    80001c98:	f9043703          	ld	a4,-112(s0)
    80001c9c:	00900793          	li	a5,9
    80001ca0:	08f70a63          	beq	a4,a5,80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    80001ca4:	f9043703          	ld	a4,-112(s0)
    80001ca8:	fff00793          	li	a5,-1
    80001cac:	03f79793          	slli	a5,a5,0x3f
    80001cb0:	00178793          	addi	a5,a5,1
    80001cb4:	24f70a63          	beq	a4,a5,80001f08 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        */
    }
    else if (scause == 0x8000000000000009UL)
    80001cb8:	f9043703          	ld	a4,-112(s0)
    80001cbc:	fff00793          	li	a5,-1
    80001cc0:	03f79793          	slli	a5,a5,0x3f
    80001cc4:	00978793          	addi	a5,a5,9
    80001cc8:	24f70663          	beq	a4,a5,80001f14 <_ZN5Riscv20handleSupervisorTrapEv+0x2f0>
        console_handler();

    }
    else
    {
        printString("Scause: ");
    80001ccc:	00003517          	auipc	a0,0x3
    80001cd0:	4b450513          	addi	a0,a0,1204 # 80005180 <CONSOLE_STATUS+0x170>
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	924080e7          	jalr	-1756(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(scause);
    80001cdc:	f9043503          	ld	a0,-112(s0)
    80001ce0:	00001097          	auipc	ra,0x1
    80001ce4:	988080e7          	jalr	-1656(ra) # 80002668 <_Z12printIntegerm>
        printString("\n");
    80001ce8:	00003517          	auipc	a0,0x3
    80001cec:	35850513          	addi	a0,a0,856 # 80005040 <CONSOLE_STATUS+0x30>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	908080e7          	jalr	-1784(ra) # 800025f8 <_Z11printStringPKc>
        printString("sepc = ");
    80001cf8:	00003517          	auipc	a0,0x3
    80001cfc:	49850513          	addi	a0,a0,1176 # 80005190 <CONSOLE_STATUS+0x180>
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	8f8080e7          	jalr	-1800(ra) # 800025f8 <_Z11printStringPKc>
        printInteger(sepc);
    80001d08:	fa843503          	ld	a0,-88(s0)
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	95c080e7          	jalr	-1700(ra) # 80002668 <_Z12printIntegerm>
        printString("\nUnexpected trap cause!\n");
    80001d14:	00003517          	auipc	a0,0x3
    80001d18:	48450513          	addi	a0,a0,1156 # 80005198 <CONSOLE_STATUS+0x188>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	8dc080e7          	jalr	-1828(ra) # 800025f8 <_Z11printStringPKc>
        // unexpected trap cause
    }
}
    80001d24:	08813083          	ld	ra,136(sp)
    80001d28:	08013403          	ld	s0,128(sp)
    80001d2c:	09010113          	addi	sp,sp,144
    80001d30:	00008067          	ret
        sepc = sepc + 4;
    80001d34:	fa843783          	ld	a5,-88(s0)
    80001d38:	00478793          	addi	a5,a5,4
    80001d3c:	faf43423          	sd	a5,-88(s0)
        w_sepc(sepc);
    80001d40:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d44:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    80001d48:	fb043783          	ld	a5,-80(s0)
    80001d4c:	00100713          	li	a4,1
    80001d50:	06e78463          	beq	a5,a4,80001db8 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
        else if (a[0] == 0x0000000000000002UL)
    80001d54:	00200713          	li	a4,2
    80001d58:	08e78263          	beq	a5,a4,80001ddc <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        else if (a[0] == 0x0000000000000011UL)
    80001d5c:	01100713          	li	a4,17
    80001d60:	08e78c63          	beq	a5,a4,80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
        else if (a[0] == 0x0000000000000012UL)
    80001d64:	01200713          	li	a4,18
    80001d68:	0ae78c63          	beq	a5,a4,80001e20 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        else if (a[0] == 0x0000000000000013UL)
    80001d6c:	01300713          	li	a4,19
    80001d70:	0ce78a63          	beq	a5,a4,80001e44 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
        else if (a[0] == 0x0000000000000014UL)
    80001d74:	01400713          	li	a4,20
    80001d78:	0ee78c63          	beq	a5,a4,80001e70 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
        else if (a[0] == 0x0000000000000021UL)
    80001d7c:	02100713          	li	a4,33
    80001d80:	12e78063          	beq	a5,a4,80001ea0 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
        else if (a[0] == 0x0000000000000022UL)
    80001d84:	02200713          	li	a4,34
    80001d88:	12e78c63          	beq	a5,a4,80001ec0 <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
        else if (a[0] == 0x0000000000000023UL)
    80001d8c:	02300713          	li	a4,35
    80001d90:	14e78663          	beq	a5,a4,80001edc <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
        else if (a[0] == 0x0000000000000024UL)
    80001d94:	02400713          	li	a4,36
    80001d98:	f8e796e3          	bne	a5,a4,80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            int retVal = _sem::semSignal(id);
    80001d9c:	fb843503          	ld	a0,-72(s0)
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	3f8080e7          	jalr	1016(ra) # 80002198 <_ZN4_sem9semSignalEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001da8:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001dac:	f9843783          	ld	a5,-104(s0)
    80001db0:	04a7b823          	sd	a0,80(a5)
    80001db4:	f71ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    80001db8:	fb843503          	ld	a0,-72(s0)
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	808080e7          	jalr	-2040(ra) # 800025c4 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	610080e7          	jalr	1552(ra) # 800023d4 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001dcc:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001dd0:	f9843783          	ld	a5,-104(s0)
    80001dd4:	04a7b823          	sd	a0,80(a5)
    80001dd8:	f4dff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            int retVal = MemoryAllocator::mem_free(ptr);
    80001ddc:	fb843503          	ld	a0,-72(s0)
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	71c080e7          	jalr	1820(ra) # 800024fc <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001de8:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001dec:	f9843783          	ld	a5,-104(s0)
    80001df0:	04a7b823          	sd	a0,80(a5)
    80001df4:	f31ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80001df8:	fd043683          	ld	a3,-48(s0)
    80001dfc:	fc843603          	ld	a2,-56(s0)
    80001e00:	fc043583          	ld	a1,-64(s0)
    80001e04:	fb843503          	ld	a0,-72(s0)
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	960080e7          	jalr	-1696(ra) # 80002768 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001e10:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001e14:	f9843783          	ld	a5,-104(s0)
    80001e18:	04a7b823          	sd	a0,80(a5)
    80001e1c:	f09ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            _thread::running->finished = true;
    80001e20:	00004797          	auipc	a5,0x4
    80001e24:	dd07b783          	ld	a5,-560(a5) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e28:	0007b783          	ld	a5,0(a5)
    80001e2c:	00100713          	li	a4,1
    80001e30:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	a34080e7          	jalr	-1484(ra) # 80002868 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001e3c:	00050793          	mv	a5,a0
    80001e40:	ee5ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            _thread::running->timeSlice = 0;
    80001e44:	00004797          	auipc	a5,0x4
    80001e48:	dac7b783          	ld	a5,-596(a5) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e4c:	0007b783          	ld	a5,0(a5)
    80001e50:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	a14080e7          	jalr	-1516(ra) # 80002868 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001e5c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e60:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001e64:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e68:	14179073          	csrw	sepc,a5
}
    80001e6c:	eb9ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            _thread* handle = reinterpret_cast<_thread*>(a[1]);
    80001e70:	fb843783          	ld	a5,-72(s0)
            if (!handle->finished)
    80001e74:	0087c703          	lbu	a4,8(a5)
    80001e78:	00070c63          	beqz	a4,80001e90 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
            w_sstatus(sstatus);
    80001e7c:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e80:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001e84:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e88:	14179073          	csrw	sepc,a5
}
    80001e8c:	e99ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                _sem::semWait(handle->semaphore);
    80001e90:	0407b503          	ld	a0,64(a5)
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	164080e7          	jalr	356(ra) # 80001ff8 <_ZN4_sem7semWaitEPS_>
    80001e9c:	fe1ff06f          	j	80001e7c <_ZN5Riscv20handleSupervisorTrapEv+0x258>
            int retVal = _sem::semOpen(handle, init);
    80001ea0:	fc042583          	lw	a1,-64(s0)
    80001ea4:	fb843503          	ld	a0,-72(s0)
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	078080e7          	jalr	120(ra) # 80001f20 <_ZN4_sem7semOpenEPPS_j>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001eb0:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001eb4:	f9843783          	ld	a5,-104(s0)
    80001eb8:	04a7b823          	sd	a0,80(a5)
    80001ebc:	e69ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            int retVal = _sem::semClose(handle);
    80001ec0:	fb843503          	ld	a0,-72(s0)
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	25c080e7          	jalr	604(ra) # 80002120 <_ZN4_sem8semCloseEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001ecc:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001ed0:	f9843783          	ld	a5,-104(s0)
    80001ed4:	04a7b823          	sd	a0,80(a5)
    80001ed8:	e4dff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            int retVal = _sem::semWait(id);
    80001edc:	fb843503          	ld	a0,-72(s0)
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	118080e7          	jalr	280(ra) # 80001ff8 <_ZN4_sem7semWaitEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001ee8:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001eec:	f9843783          	ld	a5,-104(s0)
    80001ef0:	04a7b823          	sd	a0,80(a5)
            w_sstatus(sstatus);
    80001ef4:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ef8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001efc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f00:	14179073          	csrw	sepc,a5
}
    80001f04:	e21ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001f08:	00200793          	li	a5,2
    80001f0c:	1447b073          	csrc	sip,a5
}
    80001f10:	e15ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        console_handler();
    80001f14:	00003097          	auipc	ra,0x3
    80001f18:	b2c080e7          	jalr	-1236(ra) # 80004a40 <console_handler>
    80001f1c:	e09ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x100>

0000000080001f20 <_ZN4_sem7semOpenEPPS_j>:
#include "../h/sem.hpp"
#include "../h/scheduler.hpp"


int _sem::semOpen(_sem **handle, unsigned init)
{
    80001f20:	fe010113          	addi	sp,sp,-32
    80001f24:	00113c23          	sd	ra,24(sp)
    80001f28:	00813823          	sd	s0,16(sp)
    80001f2c:	00913423          	sd	s1,8(sp)
    80001f30:	01213023          	sd	s2,0(sp)
    80001f34:	02010413          	addi	s0,sp,32
    80001f38:	00050493          	mv	s1,a0
    80001f3c:	00058913          	mv	s2,a1
    *handle = (_sem*)MemoryAllocator::mem_alloc(sizeof(_sem));
    80001f40:	01800513          	li	a0,24
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	490080e7          	jalr	1168(ra) # 800023d4 <_ZN15MemoryAllocator9mem_allocEm>
    80001f4c:	00a4b023          	sd	a0,0(s1)

    (*handle)->val = (int)init;
    80001f50:	01252823          	sw	s2,16(a0)
    (*handle)->head = nullptr;
    80001f54:	0004b783          	ld	a5,0(s1)
    80001f58:	0007b023          	sd	zero,0(a5)
    (*handle)->tail = nullptr;
    80001f5c:	0004b783          	ld	a5,0(s1)
    80001f60:	0007b423          	sd	zero,8(a5)

    return 0;
}
    80001f64:	00000513          	li	a0,0
    80001f68:	01813083          	ld	ra,24(sp)
    80001f6c:	01013403          	ld	s0,16(sp)
    80001f70:	00813483          	ld	s1,8(sp)
    80001f74:	00013903          	ld	s2,0(sp)
    80001f78:	02010113          	addi	sp,sp,32
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN4_sem7addLastEP7_thread>:

    return 0;
}

void _sem::addLast(_thread *t) {
    if (t == nullptr)
    80001f80:	06058a63          	beqz	a1,80001ff4 <_ZN4_sem7addLastEP7_thread+0x74>
void _sem::addLast(_thread *t) {
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	01213023          	sd	s2,0(sp)
    80001f98:	02010413          	addi	s0,sp,32
    80001f9c:	00050913          	mv	s2,a0
    80001fa0:	00058493          	mv	s1,a1
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001fa4:	01000513          	li	a0,16
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	61c080e7          	jalr	1564(ra) # 800025c4 <_ZN15MemoryAllocator14convert2BlocksEm>
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	424080e7          	jalr	1060(ra) # 800023d4 <_ZN15MemoryAllocator9mem_allocEm>

    elem->data = t;
    80001fb8:	00953023          	sd	s1,0(a0)
    elem->next = nullptr;
    80001fbc:	00053423          	sd	zero,8(a0)

    //Elem *elem = new Elem(t, nullptr);

    if (tail)
    80001fc0:	00893783          	ld	a5,8(s2)
    80001fc4:	02078263          	beqz	a5,80001fe8 <_ZN4_sem7addLastEP7_thread+0x68>
    {
        tail->next = elem;
    80001fc8:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80001fcc:	00a93423          	sd	a0,8(s2)
    }
    else
    {
        head = tail = elem;
    }
}
    80001fd0:	01813083          	ld	ra,24(sp)
    80001fd4:	01013403          	ld	s0,16(sp)
    80001fd8:	00813483          	ld	s1,8(sp)
    80001fdc:	00013903          	ld	s2,0(sp)
    80001fe0:	02010113          	addi	sp,sp,32
    80001fe4:	00008067          	ret
        head = tail = elem;
    80001fe8:	00a93423          	sd	a0,8(s2)
    80001fec:	00a93023          	sd	a0,0(s2)
    80001ff0:	fe1ff06f          	j	80001fd0 <_ZN4_sem7addLastEP7_thread+0x50>
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN4_sem7semWaitEPS_>:
    if (id == nullptr)
    80001ff8:	08050a63          	beqz	a0,8000208c <_ZN4_sem7semWaitEPS_+0x94>
{
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	02010413          	addi	s0,sp,32
    id->val--;
    80002010:	01052783          	lw	a5,16(a0)
    80002014:	fff7879b          	addiw	a5,a5,-1
    80002018:	00f52823          	sw	a5,16(a0)
    _thread* old = _thread::running;
    8000201c:	00004717          	auipc	a4,0x4
    80002020:	bd473703          	ld	a4,-1068(a4) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002024:	00073483          	ld	s1,0(a4)
    if (id->val < 0)
    80002028:	02079713          	slli	a4,a5,0x20
    8000202c:	04074863          	bltz	a4,8000207c <_ZN4_sem7semWaitEPS_+0x84>
        Scheduler::put(_thread::running);
    80002030:	00048513          	mv	a0,s1
    80002034:	00000097          	auipc	ra,0x0
    80002038:	288080e7          	jalr	648(ra) # 800022bc <_ZN9Scheduler3putEP7_thread>
    _thread::running = Scheduler::get();
    8000203c:	00000097          	auipc	ra,0x0
    80002040:	210080e7          	jalr	528(ra) # 8000224c <_ZN9Scheduler3getEv>
    80002044:	00004797          	auipc	a5,0x4
    80002048:	bac7b783          	ld	a5,-1108(a5) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000204c:	00a7b023          	sd	a0,0(a5)
    if (old != _thread::running)
    80002050:	04a48263          	beq	s1,a0,80002094 <_ZN4_sem7semWaitEPS_+0x9c>
        contextSwitch(&old->context, &_thread::running->context);
    80002054:	01850593          	addi	a1,a0,24
    80002058:	01848513          	addi	a0,s1,24
    8000205c:	fffff097          	auipc	ra,0xfffff
    80002060:	0c4080e7          	jalr	196(ra) # 80001120 <contextSwitch>
    return 0;
    80002064:	00000513          	li	a0,0
}
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	00813483          	ld	s1,8(sp)
    80002074:	02010113          	addi	sp,sp,32
    80002078:	00008067          	ret
        id->addLast(_thread::running);
    8000207c:	00048593          	mv	a1,s1
    80002080:	00000097          	auipc	ra,0x0
    80002084:	f00080e7          	jalr	-256(ra) # 80001f80 <_ZN4_sem7addLastEP7_thread>
    80002088:	fb5ff06f          	j	8000203c <_ZN4_sem7semWaitEPS_+0x44>
        return -1; // invalid id
    8000208c:	fff00513          	li	a0,-1
}
    80002090:	00008067          	ret
    return 0;
    80002094:	00000513          	li	a0,0
    80002098:	fd1ff06f          	j	80002068 <_ZN4_sem7semWaitEPS_+0x70>

000000008000209c <_ZN4_sem11removeFirstEv>:

_thread *_sem::removeFirst() {
    8000209c:	fe010113          	addi	sp,sp,-32
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00813823          	sd	s0,16(sp)
    800020a8:	00913423          	sd	s1,8(sp)
    800020ac:	02010413          	addi	s0,sp,32
    800020b0:	00050793          	mv	a5,a0
    if (head == nullptr) { return 0; }
    800020b4:	00053503          	ld	a0,0(a0)
    800020b8:	02050e63          	beqz	a0,800020f4 <_ZN4_sem11removeFirstEv+0x58>

    Elem *elem = head;
    head = head->next;
    800020bc:	00853703          	ld	a4,8(a0)
    800020c0:	00e7b023          	sd	a4,0(a5)
    if (head == nullptr) { tail = nullptr; }
    800020c4:	02070463          	beqz	a4,800020ec <_ZN4_sem11removeFirstEv+0x50>

    _thread* ret = elem->data;
    800020c8:	00053483          	ld	s1,0(a0)
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
            void* ptr = MemoryAllocator::mem_alloc(blockNum);
            return ptr;
        }
        void operator delete(void* ptr) {
            MemoryAllocator::mem_free(ptr);
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	430080e7          	jalr	1072(ra) # 800024fc <_ZN15MemoryAllocator8mem_freeEPv>
     delete elem;
    //MemoryAllocator::mem_free(elem);

    return ret;
}
    800020d4:	00048513          	mv	a0,s1
    800020d8:	01813083          	ld	ra,24(sp)
    800020dc:	01013403          	ld	s0,16(sp)
    800020e0:	00813483          	ld	s1,8(sp)
    800020e4:	02010113          	addi	sp,sp,32
    800020e8:	00008067          	ret
    if (head == nullptr) { tail = nullptr; }
    800020ec:	0007b423          	sd	zero,8(a5)
    800020f0:	fd9ff06f          	j	800020c8 <_ZN4_sem11removeFirstEv+0x2c>
    if (head == nullptr) { return 0; }
    800020f4:	00050493          	mv	s1,a0
    800020f8:	fddff06f          	j	800020d4 <_ZN4_sem11removeFirstEv+0x38>

00000000800020fc <_ZNK4_sem9peekFirstEv>:

_thread* _sem::peekFirst() const {
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813423          	sd	s0,8(sp)
    80002104:	01010413          	addi	s0,sp,16
    if (head == nullptr)
    80002108:	00053503          	ld	a0,0(a0)
    8000210c:	00050463          	beqz	a0,80002114 <_ZNK4_sem9peekFirstEv+0x18>
        return nullptr;

    return head->data;
    80002110:	00053503          	ld	a0,0(a0)
}
    80002114:	00813403          	ld	s0,8(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <_ZN4_sem8semCloseEPS_>:
{
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	02010413          	addi	s0,sp,32
    80002134:	00050493          	mv	s1,a0
    if (handle == nullptr) // error: sem is nullptr
    80002138:	04050c63          	beqz	a0,80002190 <_ZN4_sem8semCloseEPS_+0x70>
    while (handle->peekFirst())
    8000213c:	00048513          	mv	a0,s1
    80002140:	00000097          	auipc	ra,0x0
    80002144:	fbc080e7          	jalr	-68(ra) # 800020fc <_ZNK4_sem9peekFirstEv>
    80002148:	02050263          	beqz	a0,8000216c <_ZN4_sem8semCloseEPS_+0x4c>
        handle->peekFirst()->semWaitVal = -1;
    8000214c:	fff00793          	li	a5,-1
    80002150:	02f52c23          	sw	a5,56(a0)
        Scheduler::put(handle->removeFirst());
    80002154:	00048513          	mv	a0,s1
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f44080e7          	jalr	-188(ra) # 8000209c <_ZN4_sem11removeFirstEv>
    80002160:	00000097          	auipc	ra,0x0
    80002164:	15c080e7          	jalr	348(ra) # 800022bc <_ZN9Scheduler3putEP7_thread>
    while (handle->peekFirst())
    80002168:	fd5ff06f          	j	8000213c <_ZN4_sem8semCloseEPS_+0x1c>
    MemoryAllocator::mem_free(handle);
    8000216c:	00048513          	mv	a0,s1
    80002170:	00000097          	auipc	ra,0x0
    80002174:	38c080e7          	jalr	908(ra) # 800024fc <_ZN15MemoryAllocator8mem_freeEPv>
    return 0;
    80002178:	00000513          	li	a0,0
}
    8000217c:	01813083          	ld	ra,24(sp)
    80002180:	01013403          	ld	s0,16(sp)
    80002184:	00813483          	ld	s1,8(sp)
    80002188:	02010113          	addi	sp,sp,32
    8000218c:	00008067          	ret
        return -1;
    80002190:	fff00513          	li	a0,-1
    80002194:	fe9ff06f          	j	8000217c <_ZN4_sem8semCloseEPS_+0x5c>

0000000080002198 <_ZN4_sem9semSignalEPS_>:
    if (id == nullptr) // id is nullptr
    80002198:	06050663          	beqz	a0,80002204 <_ZN4_sem9semSignalEPS_+0x6c>
{
    8000219c:	fe010113          	addi	sp,sp,-32
    800021a0:	00113c23          	sd	ra,24(sp)
    800021a4:	00813823          	sd	s0,16(sp)
    800021a8:	00913423          	sd	s1,8(sp)
    800021ac:	02010413          	addi	s0,sp,32
    800021b0:	00050493          	mv	s1,a0
    if (id->peekFirst())
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	f48080e7          	jalr	-184(ra) # 800020fc <_ZNK4_sem9peekFirstEv>
    800021bc:	02050a63          	beqz	a0,800021f0 <_ZN4_sem9semSignalEPS_+0x58>
        id->peekFirst()->semWaitVal = 0;
    800021c0:	02052c23          	sw	zero,56(a0)
        Scheduler::put(id->removeFirst());
    800021c4:	00048513          	mv	a0,s1
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	ed4080e7          	jalr	-300(ra) # 8000209c <_ZN4_sem11removeFirstEv>
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	0ec080e7          	jalr	236(ra) # 800022bc <_ZN9Scheduler3putEP7_thread>
    return 0;
    800021d8:	00000513          	li	a0,0
}
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	02010113          	addi	sp,sp,32
    800021ec:	00008067          	ret
        id->val++;
    800021f0:	0104a783          	lw	a5,16(s1)
    800021f4:	0017879b          	addiw	a5,a5,1
    800021f8:	00f4a823          	sw	a5,16(s1)
    return 0;
    800021fc:	00000513          	li	a0,0
    80002200:	fddff06f          	j	800021dc <_ZN4_sem9semSignalEPS_+0x44>
        return -1;
    80002204:	fff00513          	li	a0,-1
}
    80002208:	00008067          	ret

000000008000220c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00813423          	sd	s0,8(sp)
    80002214:	01010413          	addi	s0,sp,16
    80002218:	00100793          	li	a5,1
    8000221c:	00f50863          	beq	a0,a5,8000222c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002220:	00813403          	ld	s0,8(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret
    8000222c:	000107b7          	lui	a5,0x10
    80002230:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002234:	fef596e3          	bne	a1,a5,80002220 <_Z41__static_initialization_and_destruction_0ii+0x14>

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

public:
    List() : head(0), tail(0) {}
    80002238:	00004797          	auipc	a5,0x4
    8000223c:	a7878793          	addi	a5,a5,-1416 # 80005cb0 <_ZN9Scheduler16readyThreadQueueE>
    80002240:	0007b023          	sd	zero,0(a5)
    80002244:	0007b423          	sd	zero,8(a5)
    80002248:	fd9ff06f          	j	80002220 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000224c <_ZN9Scheduler3getEv>:
{
    8000224c:	fe010113          	addi	sp,sp,-32
    80002250:	00113c23          	sd	ra,24(sp)
    80002254:	00813823          	sd	s0,16(sp)
    80002258:	00913423          	sd	s1,8(sp)
    8000225c:	02010413          	addi	s0,sp,32
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002260:	00004517          	auipc	a0,0x4
    80002264:	a5053503          	ld	a0,-1456(a0) # 80005cb0 <_ZN9Scheduler16readyThreadQueueE>
    80002268:	04050663          	beqz	a0,800022b4 <_ZN9Scheduler3getEv+0x68>
//            printString("\n");
//            printInteger((size_t)((uint8*)head)[i]);
//            printString(" ");
//        }
//        printString("\n");
        return head->data;
    8000226c:	00053483          	ld	s1,0(a0)
    if (readyThreadQueue.peekFirst() != 0)
    80002270:	02048063          	beqz	s1,80002290 <_ZN9Scheduler3getEv+0x44>
        head = head->next;
    80002274:	00853783          	ld	a5,8(a0)
    80002278:	00004717          	auipc	a4,0x4
    8000227c:	a2f73c23          	sd	a5,-1480(a4) # 80005cb0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002280:	02078463          	beqz	a5,800022a8 <_ZN9Scheduler3getEv+0x5c>
        T *ret = elem->data;
    80002284:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	274080e7          	jalr	628(ra) # 800024fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002290:	00048513          	mv	a0,s1
    80002294:	01813083          	ld	ra,24(sp)
    80002298:	01013403          	ld	s0,16(sp)
    8000229c:	00813483          	ld	s1,8(sp)
    800022a0:	02010113          	addi	sp,sp,32
    800022a4:	00008067          	ret
        if (!head) { tail = 0; }
    800022a8:	00004797          	auipc	a5,0x4
    800022ac:	a007b823          	sd	zero,-1520(a5) # 80005cb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800022b0:	fd5ff06f          	j	80002284 <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    800022b4:	00050493          	mv	s1,a0
    800022b8:	fd9ff06f          	j	80002290 <_ZN9Scheduler3getEv+0x44>

00000000800022bc <_ZN9Scheduler3putEP7_thread>:
{
    800022bc:	fe010113          	addi	sp,sp,-32
    800022c0:	00113c23          	sd	ra,24(sp)
    800022c4:	00813823          	sd	s0,16(sp)
    800022c8:	00913423          	sd	s1,8(sp)
    800022cc:	02010413          	addi	s0,sp,32
    800022d0:	00050493          	mv	s1,a0
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(List<T>::Elem));
    800022d4:	01000513          	li	a0,16
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	2ec080e7          	jalr	748(ra) # 800025c4 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	0f4080e7          	jalr	244(ra) # 800023d4 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    800022e8:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    800022ec:	00053423          	sd	zero,8(a0)
        if (tail != 0)
    800022f0:	00004797          	auipc	a5,0x4
    800022f4:	9c87b783          	ld	a5,-1592(a5) # 80005cb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800022f8:	02078263          	beqz	a5,8000231c <_ZN9Scheduler3putEP7_thread+0x60>
            tail->next = elem;
    800022fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002300:	00004797          	auipc	a5,0x4
    80002304:	9aa7bc23          	sd	a0,-1608(a5) # 80005cb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002308:	01813083          	ld	ra,24(sp)
    8000230c:	01013403          	ld	s0,16(sp)
    80002310:	00813483          	ld	s1,8(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret
            head = tail = elem;
    8000231c:	00004797          	auipc	a5,0x4
    80002320:	99478793          	addi	a5,a5,-1644 # 80005cb0 <_ZN9Scheduler16readyThreadQueueE>
    80002324:	00a7b423          	sd	a0,8(a5)
    80002328:	00a7b023          	sd	a0,0(a5)
    8000232c:	fddff06f          	j	80002308 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080002330 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    80002340:	000105b7          	lui	a1,0x10
    80002344:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002348:	00100513          	li	a0,1
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	ec0080e7          	jalr	-320(ra) # 8000220c <_Z41__static_initialization_and_destruction_0ii>
    80002354:	00813083          	ld	ra,8(sp)
    80002358:	00013403          	ld	s0,0(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80002370:	00004797          	auipc	a5,0x4
    80002374:	8787b783          	ld	a5,-1928(a5) # 80005be8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002378:	0007b703          	ld	a4,0(a5)
    8000237c:	fc077713          	andi	a4,a4,-64
    80002380:	04070613          	addi	a2,a4,64
    80002384:	00004797          	auipc	a5,0x4
    80002388:	93c78793          	addi	a5,a5,-1732 # 80005cc0 <_ZN15MemoryAllocator8memStartE>
    8000238c:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80002390:	00004697          	auipc	a3,0x4
    80002394:	8886b683          	ld	a3,-1912(a3) # 80005c18 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002398:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    8000239c:	fc06f693          	andi	a3,a3,-64
    800023a0:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    800023a4:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    800023a8:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    800023ac:	0107b683          	ld	a3,16(a5)
    800023b0:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    800023b4:	0087b703          	ld	a4,8(a5)
    800023b8:	0007b783          	ld	a5,0(a5)
    800023bc:	40f707b3          	sub	a5,a4,a5
    800023c0:	0067d793          	srli	a5,a5,0x6
    800023c4:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    if (size == 0)
    800023e0:	0a050463          	beqz	a0,80002488 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800023e4:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    800023e8:	00004697          	auipc	a3,0x4
    800023ec:	8e86b683          	ld	a3,-1816(a3) # 80005cd0 <_ZN15MemoryAllocator4headE>
    800023f0:	00068513          	mv	a0,a3

    while (curr != nullptr)
    800023f4:	04050e63          	beqz	a0,80002450 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    800023f8:	01053783          	ld	a5,16(a0)
    800023fc:	00e7fa63          	bgeu	a5,a4,80002410 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80002400:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80002404:	fea698e3          	bne	a3,a0,800023f4 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80002408:	00000513          	li	a0,0
    8000240c:	0440006f          	j	80002450 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    80002410:	40e787b3          	sub	a5,a5,a4
    80002414:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80002418:	02079263          	bnez	a5,8000243c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    8000241c:	04d50063          	beq	a0,a3,8000245c <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    80002420:	00053783          	ld	a5,0(a0)
    80002424:	04078463          	beqz	a5,8000246c <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80002428:	00853683          	ld	a3,8(a0)
    8000242c:	04068063          	beqz	a3,8000246c <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    80002430:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80002434:	00853683          	ld	a3,8(a0)
    80002438:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    8000243c:	01053783          	ld	a5,16(a0)
    80002440:	00679793          	slli	a5,a5,0x6
    80002444:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    80002448:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    8000244c:	00878513          	addi	a0,a5,8
}
    80002450:	00813403          	ld	s0,8(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    8000245c:	0006b783          	ld	a5,0(a3)
    80002460:	00004697          	auipc	a3,0x4
    80002464:	86f6b823          	sd	a5,-1936(a3) # 80005cd0 <_ZN15MemoryAllocator4headE>
    80002468:	fb9ff06f          	j	80002420 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    8000246c:	00853683          	ld	a3,8(a0)
    80002470:	00068663          	beqz	a3,8000247c <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80002474:	0006b023          	sd	zero,0(a3)
    80002478:	fc5ff06f          	j	8000243c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    8000247c:	fc0780e3          	beqz	a5,8000243c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80002480:	0007b423          	sd	zero,8(a5)
    80002484:	fb9ff06f          	j	8000243c <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80002488:	00000513          	li	a0,0
    8000248c:	fc5ff06f          	j	80002450 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080002490 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00813423          	sd	s0,8(sp)
    80002498:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    8000249c:	04050863          	beqz	a0,800024ec <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    800024a0:	00053783          	ld	a5,0(a0)
    800024a4:	04078863          	beqz	a5,800024f4 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    800024a8:	01053683          	ld	a3,16(a0)
    800024ac:	00669713          	slli	a4,a3,0x6
    800024b0:	00e50733          	add	a4,a0,a4
    800024b4:	00f70a63          	beq	a4,a5,800024c8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    800024b8:	00000513          	li	a0,0
    }
}
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret
        curr->size += curr->next->size;
    800024c8:	0107b703          	ld	a4,16(a5)
    800024cc:	00e686b3          	add	a3,a3,a4
    800024d0:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    800024d4:	0007b783          	ld	a5,0(a5)
    800024d8:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    800024dc:	00078463          	beqz	a5,800024e4 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    800024e0:	00a7b423          	sd	a0,8(a5)
        return 1;
    800024e4:	00100513          	li	a0,1
    800024e8:	fd5ff06f          	j	800024bc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    800024ec:	00000513          	li	a0,0
    800024f0:	fcdff06f          	j	800024bc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    800024f4:	00000513          	li	a0,0
    800024f8:	fc5ff06f          	j	800024bc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

00000000800024fc <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    800024fc:	0c050063          	beqz	a0,800025bc <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    80002500:	fe010113          	addi	sp,sp,-32
    80002504:	00113c23          	sd	ra,24(sp)
    80002508:	00813823          	sd	s0,16(sp)
    8000250c:	00913423          	sd	s1,8(sp)
    80002510:	02010413          	addi	s0,sp,32
    80002514:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80002518:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    8000251c:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80002520:	00003697          	auipc	a3,0x3
    80002524:	7b06b683          	ld	a3,1968(a3) # 80005cd0 <_ZN15MemoryAllocator4headE>
    80002528:	02068063          	beqz	a3,80002548 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    8000252c:	02d56263          	bltu	a0,a3,80002550 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80002530:	00068793          	mv	a5,a3
    80002534:	00078493          	mv	s1,a5
    80002538:	0007b783          	ld	a5,0(a5)
    8000253c:	00078c63          	beqz	a5,80002554 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002540:	fea7eae3          	bltu	a5,a0,80002534 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    80002544:	0100006f          	j	80002554 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    80002548:	00068493          	mv	s1,a3
    8000254c:	0080006f          	j	80002554 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002550:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80002554:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80002558:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    8000255c:	04048663          	beqz	s1,800025a8 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80002560:	0004b783          	ld	a5,0(s1)
    80002564:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80002568:	ff873783          	ld	a5,-8(a4)
    8000256c:	00078463          	beqz	a5,80002574 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002570:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80002574:	02048e63          	beqz	s1,800025b0 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80002578:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	f14080e7          	jalr	-236(ra) # 80002490 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80002584:	00048513          	mv	a0,s1
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	f08080e7          	jalr	-248(ra) # 80002490 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80002590:	00000513          	li	a0,0
}
    80002594:	01813083          	ld	ra,24(sp)
    80002598:	01013403          	ld	s0,16(sp)
    8000259c:	00813483          	ld	s1,8(sp)
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    800025a8:	fed73c23          	sd	a3,-8(a4)
    800025ac:	fbdff06f          	j	80002568 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    800025b0:	00003797          	auipc	a5,0x3
    800025b4:	72a7b023          	sd	a0,1824(a5) # 80005cd0 <_ZN15MemoryAllocator4headE>
    800025b8:	fc5ff06f          	j	8000257c <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    800025bc:	fff00513          	li	a0,-1
}
    800025c0:	00008067          	ret

00000000800025c4 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00813423          	sd	s0,8(sp)
    800025cc:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    800025d0:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    800025d4:	03f57793          	andi	a5,a0,63
    800025d8:	00078c63          	beqz	a5,800025f0 <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    800025dc:	00655513          	srli	a0,a0,0x6
    800025e0:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    800025e4:	00813403          	ld	s0,8(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    800025f0:	00655513          	srli	a0,a0,0x6
    return blockNum;
    800025f4:	ff1ff06f          	j	800025e4 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

00000000800025f8 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800025f8:	fd010113          	addi	sp,sp,-48
    800025fc:	02113423          	sd	ra,40(sp)
    80002600:	02813023          	sd	s0,32(sp)
    80002604:	00913c23          	sd	s1,24(sp)
    80002608:	01213823          	sd	s2,16(sp)
    8000260c:	03010413          	addi	s0,sp,48
    80002610:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002614:	100027f3          	csrr	a5,sstatus
    80002618:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000261c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002620:	00200793          	li	a5,2
    80002624:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002628:	0004c503          	lbu	a0,0(s1)
    8000262c:	00050a63          	beqz	a0,80002640 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002630:	00002097          	auipc	ra,0x2
    80002634:	39c080e7          	jalr	924(ra) # 800049cc <__putc>
        string++;
    80002638:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000263c:	fedff06f          	j	80002628 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002640:	0009091b          	sext.w	s2,s2
    80002644:	00297913          	andi	s2,s2,2
    80002648:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000264c:	10092073          	csrs	sstatus,s2
}
    80002650:	02813083          	ld	ra,40(sp)
    80002654:	02013403          	ld	s0,32(sp)
    80002658:	01813483          	ld	s1,24(sp)
    8000265c:	01013903          	ld	s2,16(sp)
    80002660:	03010113          	addi	sp,sp,48
    80002664:	00008067          	ret

0000000080002668 <_Z12printIntegerm>:


void printInteger(uint64 integer)
{
    80002668:	fc010113          	addi	sp,sp,-64
    8000266c:	02113c23          	sd	ra,56(sp)
    80002670:	02813823          	sd	s0,48(sp)
    80002674:	02913423          	sd	s1,40(sp)
    80002678:	03213023          	sd	s2,32(sp)
    8000267c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002680:	100027f3          	csrr	a5,sstatus
    80002684:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002688:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000268c:	00200793          	li	a5,2
    80002690:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002694:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002698:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000269c:	00a00613          	li	a2,10
    800026a0:	02c5773b          	remuw	a4,a0,a2
    800026a4:	02071693          	slli	a3,a4,0x20
    800026a8:	0206d693          	srli	a3,a3,0x20
    800026ac:	00003717          	auipc	a4,0x3
    800026b0:	b0c70713          	addi	a4,a4,-1268 # 800051b8 <_ZZ12printIntegermE6digits>
    800026b4:	00d70733          	add	a4,a4,a3
    800026b8:	00074703          	lbu	a4,0(a4)
    800026bc:	fe040693          	addi	a3,s0,-32
    800026c0:	009687b3          	add	a5,a3,s1
    800026c4:	0014849b          	addiw	s1,s1,1
    800026c8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800026cc:	0005071b          	sext.w	a4,a0
    800026d0:	02c5553b          	divuw	a0,a0,a2
    800026d4:	00900793          	li	a5,9
    800026d8:	fce7e2e3          	bltu	a5,a4,8000269c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800026dc:	fff4849b          	addiw	s1,s1,-1
    800026e0:	0004ce63          	bltz	s1,800026fc <_Z12printIntegerm+0x94>
    800026e4:	fe040793          	addi	a5,s0,-32
    800026e8:	009787b3          	add	a5,a5,s1
    800026ec:	ff07c503          	lbu	a0,-16(a5)
    800026f0:	00002097          	auipc	ra,0x2
    800026f4:	2dc080e7          	jalr	732(ra) # 800049cc <__putc>
    800026f8:	fe5ff06f          	j	800026dc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800026fc:	0009091b          	sext.w	s2,s2
    80002700:	00297913          	andi	s2,s2,2
    80002704:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002708:	10092073          	csrs	sstatus,s2
    8000270c:	03813083          	ld	ra,56(sp)
    80002710:	03013403          	ld	s0,48(sp)
    80002714:	02813483          	ld	s1,40(sp)
    80002718:	02013903          	ld	s2,32(sp)
    8000271c:	04010113          	addi	sp,sp,64
    80002720:	00008067          	ret

0000000080002724 <_ZN7_thread13threadWrapperEv>:
    return 0;
}


void _thread::threadWrapper()
{
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	4d0080e7          	jalr	1232(ra) # 80001c04 <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    8000273c:	00003797          	auipc	a5,0x3
    80002740:	59c7b783          	ld	a5,1436(a5) # 80005cd8 <_ZN7_thread7runningE>
    80002744:	0007b703          	ld	a4,0(a5)
    80002748:	0287b503          	ld	a0,40(a5)
    8000274c:	000700e7          	jalr	a4

    thread_exit();
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	acc080e7          	jalr	-1332(ra) # 8000121c <_Z11thread_exitv>
}
    80002758:	00813083          	ld	ra,8(sp)
    8000275c:	00013403          	ld	s0,0(sp)
    80002760:	01010113          	addi	sp,sp,16
    80002764:	00008067          	ret

0000000080002768 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80002768:	fd010113          	addi	sp,sp,-48
    8000276c:	02113423          	sd	ra,40(sp)
    80002770:	02813023          	sd	s0,32(sp)
    80002774:	00913c23          	sd	s1,24(sp)
    80002778:	01213823          	sd	s2,16(sp)
    8000277c:	01313423          	sd	s3,8(sp)
    80002780:	01413023          	sd	s4,0(sp)
    80002784:	03010413          	addi	s0,sp,48
    80002788:	00050493          	mv	s1,a0
    8000278c:	00058913          	mv	s2,a1
    80002790:	00060993          	mv	s3,a2
    80002794:	00068a13          	mv	s4,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80002798:	04800513          	li	a0,72
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	e28080e7          	jalr	-472(ra) # 800025c4 <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	c30080e7          	jalr	-976(ra) # 800023d4 <_ZN15MemoryAllocator9mem_allocEm>
    800027ac:	00a4b023          	sd	a0,0(s1)
    _sem::semOpen(&(*handle)->semaphore, 0);
    800027b0:	00000593          	li	a1,0
    800027b4:	04050513          	addi	a0,a0,64
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	768080e7          	jalr	1896(ra) # 80001f20 <_ZN4_sem7semOpenEPPS_j>
    (*handle)->semWaitVal = 0;
    800027c0:	0004b783          	ld	a5,0(s1)
    800027c4:	0207ac23          	sw	zero,56(a5)
    (*handle)->finished = false;
    800027c8:	0004b783          	ld	a5,0(s1)
    800027cc:	00078423          	sb	zero,8(a5)
    (*handle)->timeSlice = 0;
    800027d0:	0004b783          	ld	a5,0(s1)
    800027d4:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    800027d8:	0004b783          	ld	a5,0(s1)
    800027dc:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    800027e0:	0004b783          	ld	a5,0(s1)
    800027e4:	0337b423          	sd	s3,40(a5)
    if (start_routine != nullptr)
    800027e8:	06090663          	beqz	s2,80002854 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xec>
        (*handle)->stack = (uint64*) stack_space;
    800027ec:	0004b783          	ld	a5,0(s1)
    800027f0:	0147b823          	sd	s4,16(a5)
    if ((*handle)->stack != nullptr)
    800027f4:	0004b703          	ld	a4,0(s1)
    800027f8:	01073783          	ld	a5,16(a4)
    800027fc:	06078263          	beqz	a5,80002860 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xf8>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002800:	000086b7          	lui	a3,0x8
    80002804:	00d787b3          	add	a5,a5,a3
    80002808:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    8000280c:	0004b783          	ld	a5,0(s1)
    80002810:	00000717          	auipc	a4,0x0
    80002814:	f1470713          	addi	a4,a4,-236 # 80002724 <_ZN7_thread13threadWrapperEv>
    80002818:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    8000281c:	0004b503          	ld	a0,0(s1)
    80002820:	00053783          	ld	a5,0(a0)
    80002824:	00078663          	beqz	a5,80002830 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xc8>
        Scheduler::put(*handle);
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	a94080e7          	jalr	-1388(ra) # 800022bc <_ZN9Scheduler3putEP7_thread>
}
    80002830:	00000513          	li	a0,0
    80002834:	02813083          	ld	ra,40(sp)
    80002838:	02013403          	ld	s0,32(sp)
    8000283c:	01813483          	ld	s1,24(sp)
    80002840:	01013903          	ld	s2,16(sp)
    80002844:	00813983          	ld	s3,8(sp)
    80002848:	00013a03          	ld	s4,0(sp)
    8000284c:	03010113          	addi	sp,sp,48
    80002850:	00008067          	ret
        (*handle)->stack = nullptr;
    80002854:	0004b783          	ld	a5,0(s1)
    80002858:	0007b823          	sd	zero,16(a5)
    8000285c:	f99ff06f          	j	800027f4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x8c>
        (*handle)->context.sp = 0;
    80002860:	02073023          	sd	zero,32(a4)
    80002864:	fb9ff06f          	j	8000281c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xb4>

0000000080002868 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    80002868:	fe010113          	addi	sp,sp,-32
    8000286c:	00113c23          	sd	ra,24(sp)
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00913423          	sd	s1,8(sp)
    80002878:	02010413          	addi	s0,sp,32
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;
    8000287c:	00003497          	auipc	s1,0x3
    80002880:	45c4b483          	ld	s1,1116(s1) # 80005cd8 <_ZN7_thread7runningE>

    if (!old->finished)
    80002884:	0084c783          	lbu	a5,8(s1)
    80002888:	04079463          	bnez	a5,800028d0 <_ZN7_thread14threadDispatchEv+0x68>
    {
        Scheduler::put(old);
    8000288c:	00048513          	mv	a0,s1
    80002890:	00000097          	auipc	ra,0x0
    80002894:	a2c080e7          	jalr	-1492(ra) # 800022bc <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	9b4080e7          	jalr	-1612(ra) # 8000224c <_ZN9Scheduler3getEv>
    800028a0:	00003797          	auipc	a5,0x3
    800028a4:	42a7bc23          	sd	a0,1080(a5) # 80005cd8 <_ZN7_thread7runningE>
//        printInteger((uint64) old);
//        printString("\nnew running: ");
//        printInteger((uint64) _thread::running);
//        printString("\n");

        if(old != _thread::running)
    800028a8:	00a48a63          	beq	s1,a0,800028bc <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitch(&old->context, &_thread::running->context);
    800028ac:	01850593          	addi	a1,a0,24
    800028b0:	01848513          	addi	a0,s1,24
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	86c080e7          	jalr	-1940(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00008067          	ret
        _sem::semClose(_thread::running->semaphore);
    800028d0:	0404b503          	ld	a0,64(s1)
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	84c080e7          	jalr	-1972(ra) # 80002120 <_ZN4_sem8semCloseEPS_>
        MemoryAllocator::mem_free(old->stack);
    800028dc:	0104b503          	ld	a0,16(s1)
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	c1c080e7          	jalr	-996(ra) # 800024fc <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	964080e7          	jalr	-1692(ra) # 8000224c <_ZN9Scheduler3getEv>
    800028f0:	00003797          	auipc	a5,0x3
    800028f4:	3ea7b423          	sd	a0,1000(a5) # 80005cd8 <_ZN7_thread7runningE>
        if (_thread::running)
    800028f8:	fc0502e3          	beqz	a0,800028bc <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitchThreadEnded(&_thread::running->context);
    800028fc:	01850513          	addi	a0,a0,24
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	834080e7          	jalr	-1996(ra) # 80001134 <contextSwitchThreadEnded>
}
    80002908:	fb5ff06f          	j	800028bc <_ZN7_thread14threadDispatchEv+0x54>

000000008000290c <start>:
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
    80002918:	300027f3          	csrr	a5,mstatus
    8000291c:	ffffe737          	lui	a4,0xffffe
    80002920:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff78cf>
    80002924:	00e7f7b3          	and	a5,a5,a4
    80002928:	00001737          	lui	a4,0x1
    8000292c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002930:	00e7e7b3          	or	a5,a5,a4
    80002934:	30079073          	csrw	mstatus,a5
    80002938:	00000797          	auipc	a5,0x0
    8000293c:	16078793          	addi	a5,a5,352 # 80002a98 <system_main>
    80002940:	34179073          	csrw	mepc,a5
    80002944:	00000793          	li	a5,0
    80002948:	18079073          	csrw	satp,a5
    8000294c:	000107b7          	lui	a5,0x10
    80002950:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002954:	30279073          	csrw	medeleg,a5
    80002958:	30379073          	csrw	mideleg,a5
    8000295c:	104027f3          	csrr	a5,sie
    80002960:	2227e793          	ori	a5,a5,546
    80002964:	10479073          	csrw	sie,a5
    80002968:	fff00793          	li	a5,-1
    8000296c:	00a7d793          	srli	a5,a5,0xa
    80002970:	3b079073          	csrw	pmpaddr0,a5
    80002974:	00f00793          	li	a5,15
    80002978:	3a079073          	csrw	pmpcfg0,a5
    8000297c:	f14027f3          	csrr	a5,mhartid
    80002980:	0200c737          	lui	a4,0x200c
    80002984:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002988:	0007869b          	sext.w	a3,a5
    8000298c:	00269713          	slli	a4,a3,0x2
    80002990:	000f4637          	lui	a2,0xf4
    80002994:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002998:	00d70733          	add	a4,a4,a3
    8000299c:	0037979b          	slliw	a5,a5,0x3
    800029a0:	020046b7          	lui	a3,0x2004
    800029a4:	00d787b3          	add	a5,a5,a3
    800029a8:	00c585b3          	add	a1,a1,a2
    800029ac:	00371693          	slli	a3,a4,0x3
    800029b0:	00003717          	auipc	a4,0x3
    800029b4:	33070713          	addi	a4,a4,816 # 80005ce0 <timer_scratch>
    800029b8:	00b7b023          	sd	a1,0(a5)
    800029bc:	00d70733          	add	a4,a4,a3
    800029c0:	00f73c23          	sd	a5,24(a4)
    800029c4:	02c73023          	sd	a2,32(a4)
    800029c8:	34071073          	csrw	mscratch,a4
    800029cc:	00000797          	auipc	a5,0x0
    800029d0:	6e478793          	addi	a5,a5,1764 # 800030b0 <timervec>
    800029d4:	30579073          	csrw	mtvec,a5
    800029d8:	300027f3          	csrr	a5,mstatus
    800029dc:	0087e793          	ori	a5,a5,8
    800029e0:	30079073          	csrw	mstatus,a5
    800029e4:	304027f3          	csrr	a5,mie
    800029e8:	0807e793          	ori	a5,a5,128
    800029ec:	30479073          	csrw	mie,a5
    800029f0:	f14027f3          	csrr	a5,mhartid
    800029f4:	0007879b          	sext.w	a5,a5
    800029f8:	00078213          	mv	tp,a5
    800029fc:	30200073          	mret
    80002a00:	00813403          	ld	s0,8(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <timerinit>:
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813423          	sd	s0,8(sp)
    80002a14:	01010413          	addi	s0,sp,16
    80002a18:	f14027f3          	csrr	a5,mhartid
    80002a1c:	0200c737          	lui	a4,0x200c
    80002a20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a24:	0007869b          	sext.w	a3,a5
    80002a28:	00269713          	slli	a4,a3,0x2
    80002a2c:	000f4637          	lui	a2,0xf4
    80002a30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002a34:	00d70733          	add	a4,a4,a3
    80002a38:	0037979b          	slliw	a5,a5,0x3
    80002a3c:	020046b7          	lui	a3,0x2004
    80002a40:	00d787b3          	add	a5,a5,a3
    80002a44:	00c585b3          	add	a1,a1,a2
    80002a48:	00371693          	slli	a3,a4,0x3
    80002a4c:	00003717          	auipc	a4,0x3
    80002a50:	29470713          	addi	a4,a4,660 # 80005ce0 <timer_scratch>
    80002a54:	00b7b023          	sd	a1,0(a5)
    80002a58:	00d70733          	add	a4,a4,a3
    80002a5c:	00f73c23          	sd	a5,24(a4)
    80002a60:	02c73023          	sd	a2,32(a4)
    80002a64:	34071073          	csrw	mscratch,a4
    80002a68:	00000797          	auipc	a5,0x0
    80002a6c:	64878793          	addi	a5,a5,1608 # 800030b0 <timervec>
    80002a70:	30579073          	csrw	mtvec,a5
    80002a74:	300027f3          	csrr	a5,mstatus
    80002a78:	0087e793          	ori	a5,a5,8
    80002a7c:	30079073          	csrw	mstatus,a5
    80002a80:	304027f3          	csrr	a5,mie
    80002a84:	0807e793          	ori	a5,a5,128
    80002a88:	30479073          	csrw	mie,a5
    80002a8c:	00813403          	ld	s0,8(sp)
    80002a90:	01010113          	addi	sp,sp,16
    80002a94:	00008067          	ret

0000000080002a98 <system_main>:
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	00113c23          	sd	ra,24(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	0c4080e7          	jalr	196(ra) # 80002b70 <cpuid>
    80002ab4:	00003497          	auipc	s1,0x3
    80002ab8:	19c48493          	addi	s1,s1,412 # 80005c50 <started>
    80002abc:	02050263          	beqz	a0,80002ae0 <system_main+0x48>
    80002ac0:	0004a783          	lw	a5,0(s1)
    80002ac4:	0007879b          	sext.w	a5,a5
    80002ac8:	fe078ce3          	beqz	a5,80002ac0 <system_main+0x28>
    80002acc:	0ff0000f          	fence
    80002ad0:	00002517          	auipc	a0,0x2
    80002ad4:	72850513          	addi	a0,a0,1832 # 800051f8 <_ZZ12printIntegermE6digits+0x40>
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	a74080e7          	jalr	-1420(ra) # 8000354c <panic>
    80002ae0:	00001097          	auipc	ra,0x1
    80002ae4:	9c8080e7          	jalr	-1592(ra) # 800034a8 <consoleinit>
    80002ae8:	00001097          	auipc	ra,0x1
    80002aec:	154080e7          	jalr	340(ra) # 80003c3c <printfinit>
    80002af0:	00002517          	auipc	a0,0x2
    80002af4:	55050513          	addi	a0,a0,1360 # 80005040 <CONSOLE_STATUS+0x30>
    80002af8:	00001097          	auipc	ra,0x1
    80002afc:	ab0080e7          	jalr	-1360(ra) # 800035a8 <__printf>
    80002b00:	00002517          	auipc	a0,0x2
    80002b04:	6c850513          	addi	a0,a0,1736 # 800051c8 <_ZZ12printIntegermE6digits+0x10>
    80002b08:	00001097          	auipc	ra,0x1
    80002b0c:	aa0080e7          	jalr	-1376(ra) # 800035a8 <__printf>
    80002b10:	00002517          	auipc	a0,0x2
    80002b14:	53050513          	addi	a0,a0,1328 # 80005040 <CONSOLE_STATUS+0x30>
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	a90080e7          	jalr	-1392(ra) # 800035a8 <__printf>
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	4a8080e7          	jalr	1192(ra) # 80003fc8 <kinit>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	148080e7          	jalr	328(ra) # 80002c70 <trapinit>
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	16c080e7          	jalr	364(ra) # 80002c9c <trapinithart>
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	5b8080e7          	jalr	1464(ra) # 800030f0 <plicinit>
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	5d8080e7          	jalr	1496(ra) # 80003118 <plicinithart>
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	078080e7          	jalr	120(ra) # 80002bc0 <userinit>
    80002b50:	0ff0000f          	fence
    80002b54:	00100793          	li	a5,1
    80002b58:	00002517          	auipc	a0,0x2
    80002b5c:	68850513          	addi	a0,a0,1672 # 800051e0 <_ZZ12printIntegermE6digits+0x28>
    80002b60:	00f4a023          	sw	a5,0(s1)
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	a44080e7          	jalr	-1468(ra) # 800035a8 <__printf>
    80002b6c:	0000006f          	j	80002b6c <system_main+0xd4>

0000000080002b70 <cpuid>:
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    80002b7c:	00020513          	mv	a0,tp
    80002b80:	00813403          	ld	s0,8(sp)
    80002b84:	0005051b          	sext.w	a0,a0
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret

0000000080002b90 <mycpu>:
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00813423          	sd	s0,8(sp)
    80002b98:	01010413          	addi	s0,sp,16
    80002b9c:	00020793          	mv	a5,tp
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	0007879b          	sext.w	a5,a5
    80002ba8:	00779793          	slli	a5,a5,0x7
    80002bac:	00004517          	auipc	a0,0x4
    80002bb0:	16450513          	addi	a0,a0,356 # 80006d10 <cpus>
    80002bb4:	00f50533          	add	a0,a0,a5
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <userinit>:
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00813423          	sd	s0,8(sp)
    80002bc8:	01010413          	addi	s0,sp,16
    80002bcc:	00813403          	ld	s0,8(sp)
    80002bd0:	01010113          	addi	sp,sp,16
    80002bd4:	fffff317          	auipc	t1,0xfffff
    80002bd8:	fa430067          	jr	-92(t1) # 80001b78 <main>

0000000080002bdc <either_copyout>:
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813023          	sd	s0,0(sp)
    80002be4:	00113423          	sd	ra,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    80002bec:	02051663          	bnez	a0,80002c18 <either_copyout+0x3c>
    80002bf0:	00058513          	mv	a0,a1
    80002bf4:	00060593          	mv	a1,a2
    80002bf8:	0006861b          	sext.w	a2,a3
    80002bfc:	00002097          	auipc	ra,0x2
    80002c00:	c58080e7          	jalr	-936(ra) # 80004854 <__memmove>
    80002c04:	00813083          	ld	ra,8(sp)
    80002c08:	00013403          	ld	s0,0(sp)
    80002c0c:	00000513          	li	a0,0
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret
    80002c18:	00002517          	auipc	a0,0x2
    80002c1c:	60850513          	addi	a0,a0,1544 # 80005220 <_ZZ12printIntegermE6digits+0x68>
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	92c080e7          	jalr	-1748(ra) # 8000354c <panic>

0000000080002c28 <either_copyin>:
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00813023          	sd	s0,0(sp)
    80002c30:	00113423          	sd	ra,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
    80002c38:	02059463          	bnez	a1,80002c60 <either_copyin+0x38>
    80002c3c:	00060593          	mv	a1,a2
    80002c40:	0006861b          	sext.w	a2,a3
    80002c44:	00002097          	auipc	ra,0x2
    80002c48:	c10080e7          	jalr	-1008(ra) # 80004854 <__memmove>
    80002c4c:	00813083          	ld	ra,8(sp)
    80002c50:	00013403          	ld	s0,0(sp)
    80002c54:	00000513          	li	a0,0
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret
    80002c60:	00002517          	auipc	a0,0x2
    80002c64:	5e850513          	addi	a0,a0,1512 # 80005248 <_ZZ12printIntegermE6digits+0x90>
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	8e4080e7          	jalr	-1820(ra) # 8000354c <panic>

0000000080002c70 <trapinit>:
    80002c70:	ff010113          	addi	sp,sp,-16
    80002c74:	00813423          	sd	s0,8(sp)
    80002c78:	01010413          	addi	s0,sp,16
    80002c7c:	00813403          	ld	s0,8(sp)
    80002c80:	00002597          	auipc	a1,0x2
    80002c84:	5f058593          	addi	a1,a1,1520 # 80005270 <_ZZ12printIntegermE6digits+0xb8>
    80002c88:	00004517          	auipc	a0,0x4
    80002c8c:	10850513          	addi	a0,a0,264 # 80006d90 <tickslock>
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00001317          	auipc	t1,0x1
    80002c98:	5c430067          	jr	1476(t1) # 80004258 <initlock>

0000000080002c9c <trapinithart>:
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00813423          	sd	s0,8(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    80002ca8:	00000797          	auipc	a5,0x0
    80002cac:	2f878793          	addi	a5,a5,760 # 80002fa0 <kernelvec>
    80002cb0:	10579073          	csrw	stvec,a5
    80002cb4:	00813403          	ld	s0,8(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret

0000000080002cc0 <usertrap>:
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00813423          	sd	s0,8(sp)
    80002cc8:	01010413          	addi	s0,sp,16
    80002ccc:	00813403          	ld	s0,8(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <usertrapret>:
    80002cd8:	ff010113          	addi	sp,sp,-16
    80002cdc:	00813423          	sd	s0,8(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    80002ce4:	00813403          	ld	s0,8(sp)
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00008067          	ret

0000000080002cf0 <kerneltrap>:
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00813823          	sd	s0,16(sp)
    80002cf8:	00113c23          	sd	ra,24(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	02010413          	addi	s0,sp,32
    80002d04:	142025f3          	csrr	a1,scause
    80002d08:	100027f3          	csrr	a5,sstatus
    80002d0c:	0027f793          	andi	a5,a5,2
    80002d10:	10079c63          	bnez	a5,80002e28 <kerneltrap+0x138>
    80002d14:	142027f3          	csrr	a5,scause
    80002d18:	0207ce63          	bltz	a5,80002d54 <kerneltrap+0x64>
    80002d1c:	00002517          	auipc	a0,0x2
    80002d20:	59c50513          	addi	a0,a0,1436 # 800052b8 <_ZZ12printIntegermE6digits+0x100>
    80002d24:	00001097          	auipc	ra,0x1
    80002d28:	884080e7          	jalr	-1916(ra) # 800035a8 <__printf>
    80002d2c:	141025f3          	csrr	a1,sepc
    80002d30:	14302673          	csrr	a2,stval
    80002d34:	00002517          	auipc	a0,0x2
    80002d38:	59450513          	addi	a0,a0,1428 # 800052c8 <_ZZ12printIntegermE6digits+0x110>
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	86c080e7          	jalr	-1940(ra) # 800035a8 <__printf>
    80002d44:	00002517          	auipc	a0,0x2
    80002d48:	59c50513          	addi	a0,a0,1436 # 800052e0 <_ZZ12printIntegermE6digits+0x128>
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	800080e7          	jalr	-2048(ra) # 8000354c <panic>
    80002d54:	0ff7f713          	andi	a4,a5,255
    80002d58:	00900693          	li	a3,9
    80002d5c:	04d70063          	beq	a4,a3,80002d9c <kerneltrap+0xac>
    80002d60:	fff00713          	li	a4,-1
    80002d64:	03f71713          	slli	a4,a4,0x3f
    80002d68:	00170713          	addi	a4,a4,1
    80002d6c:	fae798e3          	bne	a5,a4,80002d1c <kerneltrap+0x2c>
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	e00080e7          	jalr	-512(ra) # 80002b70 <cpuid>
    80002d78:	06050663          	beqz	a0,80002de4 <kerneltrap+0xf4>
    80002d7c:	144027f3          	csrr	a5,sip
    80002d80:	ffd7f793          	andi	a5,a5,-3
    80002d84:	14479073          	csrw	sip,a5
    80002d88:	01813083          	ld	ra,24(sp)
    80002d8c:	01013403          	ld	s0,16(sp)
    80002d90:	00813483          	ld	s1,8(sp)
    80002d94:	02010113          	addi	sp,sp,32
    80002d98:	00008067          	ret
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	3c8080e7          	jalr	968(ra) # 80003164 <plic_claim>
    80002da4:	00a00793          	li	a5,10
    80002da8:	00050493          	mv	s1,a0
    80002dac:	06f50863          	beq	a0,a5,80002e1c <kerneltrap+0x12c>
    80002db0:	fc050ce3          	beqz	a0,80002d88 <kerneltrap+0x98>
    80002db4:	00050593          	mv	a1,a0
    80002db8:	00002517          	auipc	a0,0x2
    80002dbc:	4e050513          	addi	a0,a0,1248 # 80005298 <_ZZ12printIntegermE6digits+0xe0>
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	7e8080e7          	jalr	2024(ra) # 800035a8 <__printf>
    80002dc8:	01013403          	ld	s0,16(sp)
    80002dcc:	01813083          	ld	ra,24(sp)
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00813483          	ld	s1,8(sp)
    80002dd8:	02010113          	addi	sp,sp,32
    80002ddc:	00000317          	auipc	t1,0x0
    80002de0:	3c030067          	jr	960(t1) # 8000319c <plic_complete>
    80002de4:	00004517          	auipc	a0,0x4
    80002de8:	fac50513          	addi	a0,a0,-84 # 80006d90 <tickslock>
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	490080e7          	jalr	1168(ra) # 8000427c <acquire>
    80002df4:	00003717          	auipc	a4,0x3
    80002df8:	e6070713          	addi	a4,a4,-416 # 80005c54 <ticks>
    80002dfc:	00072783          	lw	a5,0(a4)
    80002e00:	00004517          	auipc	a0,0x4
    80002e04:	f9050513          	addi	a0,a0,-112 # 80006d90 <tickslock>
    80002e08:	0017879b          	addiw	a5,a5,1
    80002e0c:	00f72023          	sw	a5,0(a4)
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	538080e7          	jalr	1336(ra) # 80004348 <release>
    80002e18:	f65ff06f          	j	80002d7c <kerneltrap+0x8c>
    80002e1c:	00001097          	auipc	ra,0x1
    80002e20:	094080e7          	jalr	148(ra) # 80003eb0 <uartintr>
    80002e24:	fa5ff06f          	j	80002dc8 <kerneltrap+0xd8>
    80002e28:	00002517          	auipc	a0,0x2
    80002e2c:	45050513          	addi	a0,a0,1104 # 80005278 <_ZZ12printIntegermE6digits+0xc0>
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	71c080e7          	jalr	1820(ra) # 8000354c <panic>

0000000080002e38 <clockintr>:
    80002e38:	fe010113          	addi	sp,sp,-32
    80002e3c:	00813823          	sd	s0,16(sp)
    80002e40:	00913423          	sd	s1,8(sp)
    80002e44:	00113c23          	sd	ra,24(sp)
    80002e48:	02010413          	addi	s0,sp,32
    80002e4c:	00004497          	auipc	s1,0x4
    80002e50:	f4448493          	addi	s1,s1,-188 # 80006d90 <tickslock>
    80002e54:	00048513          	mv	a0,s1
    80002e58:	00001097          	auipc	ra,0x1
    80002e5c:	424080e7          	jalr	1060(ra) # 8000427c <acquire>
    80002e60:	00003717          	auipc	a4,0x3
    80002e64:	df470713          	addi	a4,a4,-524 # 80005c54 <ticks>
    80002e68:	00072783          	lw	a5,0(a4)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	01813083          	ld	ra,24(sp)
    80002e74:	00048513          	mv	a0,s1
    80002e78:	0017879b          	addiw	a5,a5,1
    80002e7c:	00813483          	ld	s1,8(sp)
    80002e80:	00f72023          	sw	a5,0(a4)
    80002e84:	02010113          	addi	sp,sp,32
    80002e88:	00001317          	auipc	t1,0x1
    80002e8c:	4c030067          	jr	1216(t1) # 80004348 <release>

0000000080002e90 <devintr>:
    80002e90:	142027f3          	csrr	a5,scause
    80002e94:	00000513          	li	a0,0
    80002e98:	0007c463          	bltz	a5,80002ea0 <devintr+0x10>
    80002e9c:	00008067          	ret
    80002ea0:	fe010113          	addi	sp,sp,-32
    80002ea4:	00813823          	sd	s0,16(sp)
    80002ea8:	00113c23          	sd	ra,24(sp)
    80002eac:	00913423          	sd	s1,8(sp)
    80002eb0:	02010413          	addi	s0,sp,32
    80002eb4:	0ff7f713          	andi	a4,a5,255
    80002eb8:	00900693          	li	a3,9
    80002ebc:	04d70c63          	beq	a4,a3,80002f14 <devintr+0x84>
    80002ec0:	fff00713          	li	a4,-1
    80002ec4:	03f71713          	slli	a4,a4,0x3f
    80002ec8:	00170713          	addi	a4,a4,1
    80002ecc:	00e78c63          	beq	a5,a4,80002ee4 <devintr+0x54>
    80002ed0:	01813083          	ld	ra,24(sp)
    80002ed4:	01013403          	ld	s0,16(sp)
    80002ed8:	00813483          	ld	s1,8(sp)
    80002edc:	02010113          	addi	sp,sp,32
    80002ee0:	00008067          	ret
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	c8c080e7          	jalr	-884(ra) # 80002b70 <cpuid>
    80002eec:	06050663          	beqz	a0,80002f58 <devintr+0xc8>
    80002ef0:	144027f3          	csrr	a5,sip
    80002ef4:	ffd7f793          	andi	a5,a5,-3
    80002ef8:	14479073          	csrw	sip,a5
    80002efc:	01813083          	ld	ra,24(sp)
    80002f00:	01013403          	ld	s0,16(sp)
    80002f04:	00813483          	ld	s1,8(sp)
    80002f08:	00200513          	li	a0,2
    80002f0c:	02010113          	addi	sp,sp,32
    80002f10:	00008067          	ret
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	250080e7          	jalr	592(ra) # 80003164 <plic_claim>
    80002f1c:	00a00793          	li	a5,10
    80002f20:	00050493          	mv	s1,a0
    80002f24:	06f50663          	beq	a0,a5,80002f90 <devintr+0x100>
    80002f28:	00100513          	li	a0,1
    80002f2c:	fa0482e3          	beqz	s1,80002ed0 <devintr+0x40>
    80002f30:	00048593          	mv	a1,s1
    80002f34:	00002517          	auipc	a0,0x2
    80002f38:	36450513          	addi	a0,a0,868 # 80005298 <_ZZ12printIntegermE6digits+0xe0>
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	66c080e7          	jalr	1644(ra) # 800035a8 <__printf>
    80002f44:	00048513          	mv	a0,s1
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	254080e7          	jalr	596(ra) # 8000319c <plic_complete>
    80002f50:	00100513          	li	a0,1
    80002f54:	f7dff06f          	j	80002ed0 <devintr+0x40>
    80002f58:	00004517          	auipc	a0,0x4
    80002f5c:	e3850513          	addi	a0,a0,-456 # 80006d90 <tickslock>
    80002f60:	00001097          	auipc	ra,0x1
    80002f64:	31c080e7          	jalr	796(ra) # 8000427c <acquire>
    80002f68:	00003717          	auipc	a4,0x3
    80002f6c:	cec70713          	addi	a4,a4,-788 # 80005c54 <ticks>
    80002f70:	00072783          	lw	a5,0(a4)
    80002f74:	00004517          	auipc	a0,0x4
    80002f78:	e1c50513          	addi	a0,a0,-484 # 80006d90 <tickslock>
    80002f7c:	0017879b          	addiw	a5,a5,1
    80002f80:	00f72023          	sw	a5,0(a4)
    80002f84:	00001097          	auipc	ra,0x1
    80002f88:	3c4080e7          	jalr	964(ra) # 80004348 <release>
    80002f8c:	f65ff06f          	j	80002ef0 <devintr+0x60>
    80002f90:	00001097          	auipc	ra,0x1
    80002f94:	f20080e7          	jalr	-224(ra) # 80003eb0 <uartintr>
    80002f98:	fadff06f          	j	80002f44 <devintr+0xb4>
    80002f9c:	0000                	unimp
	...

0000000080002fa0 <kernelvec>:
    80002fa0:	f0010113          	addi	sp,sp,-256
    80002fa4:	00113023          	sd	ra,0(sp)
    80002fa8:	00213423          	sd	sp,8(sp)
    80002fac:	00313823          	sd	gp,16(sp)
    80002fb0:	00413c23          	sd	tp,24(sp)
    80002fb4:	02513023          	sd	t0,32(sp)
    80002fb8:	02613423          	sd	t1,40(sp)
    80002fbc:	02713823          	sd	t2,48(sp)
    80002fc0:	02813c23          	sd	s0,56(sp)
    80002fc4:	04913023          	sd	s1,64(sp)
    80002fc8:	04a13423          	sd	a0,72(sp)
    80002fcc:	04b13823          	sd	a1,80(sp)
    80002fd0:	04c13c23          	sd	a2,88(sp)
    80002fd4:	06d13023          	sd	a3,96(sp)
    80002fd8:	06e13423          	sd	a4,104(sp)
    80002fdc:	06f13823          	sd	a5,112(sp)
    80002fe0:	07013c23          	sd	a6,120(sp)
    80002fe4:	09113023          	sd	a7,128(sp)
    80002fe8:	09213423          	sd	s2,136(sp)
    80002fec:	09313823          	sd	s3,144(sp)
    80002ff0:	09413c23          	sd	s4,152(sp)
    80002ff4:	0b513023          	sd	s5,160(sp)
    80002ff8:	0b613423          	sd	s6,168(sp)
    80002ffc:	0b713823          	sd	s7,176(sp)
    80003000:	0b813c23          	sd	s8,184(sp)
    80003004:	0d913023          	sd	s9,192(sp)
    80003008:	0da13423          	sd	s10,200(sp)
    8000300c:	0db13823          	sd	s11,208(sp)
    80003010:	0dc13c23          	sd	t3,216(sp)
    80003014:	0fd13023          	sd	t4,224(sp)
    80003018:	0fe13423          	sd	t5,232(sp)
    8000301c:	0ff13823          	sd	t6,240(sp)
    80003020:	cd1ff0ef          	jal	ra,80002cf0 <kerneltrap>
    80003024:	00013083          	ld	ra,0(sp)
    80003028:	00813103          	ld	sp,8(sp)
    8000302c:	01013183          	ld	gp,16(sp)
    80003030:	02013283          	ld	t0,32(sp)
    80003034:	02813303          	ld	t1,40(sp)
    80003038:	03013383          	ld	t2,48(sp)
    8000303c:	03813403          	ld	s0,56(sp)
    80003040:	04013483          	ld	s1,64(sp)
    80003044:	04813503          	ld	a0,72(sp)
    80003048:	05013583          	ld	a1,80(sp)
    8000304c:	05813603          	ld	a2,88(sp)
    80003050:	06013683          	ld	a3,96(sp)
    80003054:	06813703          	ld	a4,104(sp)
    80003058:	07013783          	ld	a5,112(sp)
    8000305c:	07813803          	ld	a6,120(sp)
    80003060:	08013883          	ld	a7,128(sp)
    80003064:	08813903          	ld	s2,136(sp)
    80003068:	09013983          	ld	s3,144(sp)
    8000306c:	09813a03          	ld	s4,152(sp)
    80003070:	0a013a83          	ld	s5,160(sp)
    80003074:	0a813b03          	ld	s6,168(sp)
    80003078:	0b013b83          	ld	s7,176(sp)
    8000307c:	0b813c03          	ld	s8,184(sp)
    80003080:	0c013c83          	ld	s9,192(sp)
    80003084:	0c813d03          	ld	s10,200(sp)
    80003088:	0d013d83          	ld	s11,208(sp)
    8000308c:	0d813e03          	ld	t3,216(sp)
    80003090:	0e013e83          	ld	t4,224(sp)
    80003094:	0e813f03          	ld	t5,232(sp)
    80003098:	0f013f83          	ld	t6,240(sp)
    8000309c:	10010113          	addi	sp,sp,256
    800030a0:	10200073          	sret
    800030a4:	00000013          	nop
    800030a8:	00000013          	nop
    800030ac:	00000013          	nop

00000000800030b0 <timervec>:
    800030b0:	34051573          	csrrw	a0,mscratch,a0
    800030b4:	00b53023          	sd	a1,0(a0)
    800030b8:	00c53423          	sd	a2,8(a0)
    800030bc:	00d53823          	sd	a3,16(a0)
    800030c0:	01853583          	ld	a1,24(a0)
    800030c4:	02053603          	ld	a2,32(a0)
    800030c8:	0005b683          	ld	a3,0(a1)
    800030cc:	00c686b3          	add	a3,a3,a2
    800030d0:	00d5b023          	sd	a3,0(a1)
    800030d4:	00200593          	li	a1,2
    800030d8:	14459073          	csrw	sip,a1
    800030dc:	01053683          	ld	a3,16(a0)
    800030e0:	00853603          	ld	a2,8(a0)
    800030e4:	00053583          	ld	a1,0(a0)
    800030e8:	34051573          	csrrw	a0,mscratch,a0
    800030ec:	30200073          	mret

00000000800030f0 <plicinit>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	0c0007b7          	lui	a5,0xc000
    80003104:	00100713          	li	a4,1
    80003108:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000310c:	00e7a223          	sw	a4,4(a5)
    80003110:	01010113          	addi	sp,sp,16
    80003114:	00008067          	ret

0000000080003118 <plicinithart>:
    80003118:	ff010113          	addi	sp,sp,-16
    8000311c:	00813023          	sd	s0,0(sp)
    80003120:	00113423          	sd	ra,8(sp)
    80003124:	01010413          	addi	s0,sp,16
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	a48080e7          	jalr	-1464(ra) # 80002b70 <cpuid>
    80003130:	0085171b          	slliw	a4,a0,0x8
    80003134:	0c0027b7          	lui	a5,0xc002
    80003138:	00e787b3          	add	a5,a5,a4
    8000313c:	40200713          	li	a4,1026
    80003140:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003144:	00813083          	ld	ra,8(sp)
    80003148:	00013403          	ld	s0,0(sp)
    8000314c:	00d5151b          	slliw	a0,a0,0xd
    80003150:	0c2017b7          	lui	a5,0xc201
    80003154:	00a78533          	add	a0,a5,a0
    80003158:	00052023          	sw	zero,0(a0)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <plic_claim>:
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00813023          	sd	s0,0(sp)
    8000316c:	00113423          	sd	ra,8(sp)
    80003170:	01010413          	addi	s0,sp,16
    80003174:	00000097          	auipc	ra,0x0
    80003178:	9fc080e7          	jalr	-1540(ra) # 80002b70 <cpuid>
    8000317c:	00813083          	ld	ra,8(sp)
    80003180:	00013403          	ld	s0,0(sp)
    80003184:	00d5151b          	slliw	a0,a0,0xd
    80003188:	0c2017b7          	lui	a5,0xc201
    8000318c:	00a78533          	add	a0,a5,a0
    80003190:	00452503          	lw	a0,4(a0)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <plic_complete>:
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00813823          	sd	s0,16(sp)
    800031a4:	00913423          	sd	s1,8(sp)
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	02010413          	addi	s0,sp,32
    800031b0:	00050493          	mv	s1,a0
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	9bc080e7          	jalr	-1604(ra) # 80002b70 <cpuid>
    800031bc:	01813083          	ld	ra,24(sp)
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	00d5179b          	slliw	a5,a0,0xd
    800031c8:	0c201737          	lui	a4,0xc201
    800031cc:	00f707b3          	add	a5,a4,a5
    800031d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	02010113          	addi	sp,sp,32
    800031dc:	00008067          	ret

00000000800031e0 <consolewrite>:
    800031e0:	fb010113          	addi	sp,sp,-80
    800031e4:	04813023          	sd	s0,64(sp)
    800031e8:	04113423          	sd	ra,72(sp)
    800031ec:	02913c23          	sd	s1,56(sp)
    800031f0:	03213823          	sd	s2,48(sp)
    800031f4:	03313423          	sd	s3,40(sp)
    800031f8:	03413023          	sd	s4,32(sp)
    800031fc:	01513c23          	sd	s5,24(sp)
    80003200:	05010413          	addi	s0,sp,80
    80003204:	06c05c63          	blez	a2,8000327c <consolewrite+0x9c>
    80003208:	00060993          	mv	s3,a2
    8000320c:	00050a13          	mv	s4,a0
    80003210:	00058493          	mv	s1,a1
    80003214:	00000913          	li	s2,0
    80003218:	fff00a93          	li	s5,-1
    8000321c:	01c0006f          	j	80003238 <consolewrite+0x58>
    80003220:	fbf44503          	lbu	a0,-65(s0)
    80003224:	0019091b          	addiw	s2,s2,1
    80003228:	00148493          	addi	s1,s1,1
    8000322c:	00001097          	auipc	ra,0x1
    80003230:	a9c080e7          	jalr	-1380(ra) # 80003cc8 <uartputc>
    80003234:	03298063          	beq	s3,s2,80003254 <consolewrite+0x74>
    80003238:	00048613          	mv	a2,s1
    8000323c:	00100693          	li	a3,1
    80003240:	000a0593          	mv	a1,s4
    80003244:	fbf40513          	addi	a0,s0,-65
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	9e0080e7          	jalr	-1568(ra) # 80002c28 <either_copyin>
    80003250:	fd5518e3          	bne	a0,s5,80003220 <consolewrite+0x40>
    80003254:	04813083          	ld	ra,72(sp)
    80003258:	04013403          	ld	s0,64(sp)
    8000325c:	03813483          	ld	s1,56(sp)
    80003260:	02813983          	ld	s3,40(sp)
    80003264:	02013a03          	ld	s4,32(sp)
    80003268:	01813a83          	ld	s5,24(sp)
    8000326c:	00090513          	mv	a0,s2
    80003270:	03013903          	ld	s2,48(sp)
    80003274:	05010113          	addi	sp,sp,80
    80003278:	00008067          	ret
    8000327c:	00000913          	li	s2,0
    80003280:	fd5ff06f          	j	80003254 <consolewrite+0x74>

0000000080003284 <consoleread>:
    80003284:	f9010113          	addi	sp,sp,-112
    80003288:	06813023          	sd	s0,96(sp)
    8000328c:	04913c23          	sd	s1,88(sp)
    80003290:	05213823          	sd	s2,80(sp)
    80003294:	05313423          	sd	s3,72(sp)
    80003298:	05413023          	sd	s4,64(sp)
    8000329c:	03513c23          	sd	s5,56(sp)
    800032a0:	03613823          	sd	s6,48(sp)
    800032a4:	03713423          	sd	s7,40(sp)
    800032a8:	03813023          	sd	s8,32(sp)
    800032ac:	06113423          	sd	ra,104(sp)
    800032b0:	01913c23          	sd	s9,24(sp)
    800032b4:	07010413          	addi	s0,sp,112
    800032b8:	00060b93          	mv	s7,a2
    800032bc:	00050913          	mv	s2,a0
    800032c0:	00058c13          	mv	s8,a1
    800032c4:	00060b1b          	sext.w	s6,a2
    800032c8:	00004497          	auipc	s1,0x4
    800032cc:	ae048493          	addi	s1,s1,-1312 # 80006da8 <cons>
    800032d0:	00400993          	li	s3,4
    800032d4:	fff00a13          	li	s4,-1
    800032d8:	00a00a93          	li	s5,10
    800032dc:	05705e63          	blez	s7,80003338 <consoleread+0xb4>
    800032e0:	09c4a703          	lw	a4,156(s1)
    800032e4:	0984a783          	lw	a5,152(s1)
    800032e8:	0007071b          	sext.w	a4,a4
    800032ec:	08e78463          	beq	a5,a4,80003374 <consoleread+0xf0>
    800032f0:	07f7f713          	andi	a4,a5,127
    800032f4:	00e48733          	add	a4,s1,a4
    800032f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800032fc:	0017869b          	addiw	a3,a5,1
    80003300:	08d4ac23          	sw	a3,152(s1)
    80003304:	00070c9b          	sext.w	s9,a4
    80003308:	0b370663          	beq	a4,s3,800033b4 <consoleread+0x130>
    8000330c:	00100693          	li	a3,1
    80003310:	f9f40613          	addi	a2,s0,-97
    80003314:	000c0593          	mv	a1,s8
    80003318:	00090513          	mv	a0,s2
    8000331c:	f8e40fa3          	sb	a4,-97(s0)
    80003320:	00000097          	auipc	ra,0x0
    80003324:	8bc080e7          	jalr	-1860(ra) # 80002bdc <either_copyout>
    80003328:	01450863          	beq	a0,s4,80003338 <consoleread+0xb4>
    8000332c:	001c0c13          	addi	s8,s8,1
    80003330:	fffb8b9b          	addiw	s7,s7,-1
    80003334:	fb5c94e3          	bne	s9,s5,800032dc <consoleread+0x58>
    80003338:	000b851b          	sext.w	a0,s7
    8000333c:	06813083          	ld	ra,104(sp)
    80003340:	06013403          	ld	s0,96(sp)
    80003344:	05813483          	ld	s1,88(sp)
    80003348:	05013903          	ld	s2,80(sp)
    8000334c:	04813983          	ld	s3,72(sp)
    80003350:	04013a03          	ld	s4,64(sp)
    80003354:	03813a83          	ld	s5,56(sp)
    80003358:	02813b83          	ld	s7,40(sp)
    8000335c:	02013c03          	ld	s8,32(sp)
    80003360:	01813c83          	ld	s9,24(sp)
    80003364:	40ab053b          	subw	a0,s6,a0
    80003368:	03013b03          	ld	s6,48(sp)
    8000336c:	07010113          	addi	sp,sp,112
    80003370:	00008067          	ret
    80003374:	00001097          	auipc	ra,0x1
    80003378:	1d8080e7          	jalr	472(ra) # 8000454c <push_on>
    8000337c:	0984a703          	lw	a4,152(s1)
    80003380:	09c4a783          	lw	a5,156(s1)
    80003384:	0007879b          	sext.w	a5,a5
    80003388:	fef70ce3          	beq	a4,a5,80003380 <consoleread+0xfc>
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	234080e7          	jalr	564(ra) # 800045c0 <pop_on>
    80003394:	0984a783          	lw	a5,152(s1)
    80003398:	07f7f713          	andi	a4,a5,127
    8000339c:	00e48733          	add	a4,s1,a4
    800033a0:	01874703          	lbu	a4,24(a4)
    800033a4:	0017869b          	addiw	a3,a5,1
    800033a8:	08d4ac23          	sw	a3,152(s1)
    800033ac:	00070c9b          	sext.w	s9,a4
    800033b0:	f5371ee3          	bne	a4,s3,8000330c <consoleread+0x88>
    800033b4:	000b851b          	sext.w	a0,s7
    800033b8:	f96bf2e3          	bgeu	s7,s6,8000333c <consoleread+0xb8>
    800033bc:	08f4ac23          	sw	a5,152(s1)
    800033c0:	f7dff06f          	j	8000333c <consoleread+0xb8>

00000000800033c4 <consputc>:
    800033c4:	10000793          	li	a5,256
    800033c8:	00f50663          	beq	a0,a5,800033d4 <consputc+0x10>
    800033cc:	00001317          	auipc	t1,0x1
    800033d0:	9f430067          	jr	-1548(t1) # 80003dc0 <uartputc_sync>
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00113423          	sd	ra,8(sp)
    800033dc:	00813023          	sd	s0,0(sp)
    800033e0:	01010413          	addi	s0,sp,16
    800033e4:	00800513          	li	a0,8
    800033e8:	00001097          	auipc	ra,0x1
    800033ec:	9d8080e7          	jalr	-1576(ra) # 80003dc0 <uartputc_sync>
    800033f0:	02000513          	li	a0,32
    800033f4:	00001097          	auipc	ra,0x1
    800033f8:	9cc080e7          	jalr	-1588(ra) # 80003dc0 <uartputc_sync>
    800033fc:	00013403          	ld	s0,0(sp)
    80003400:	00813083          	ld	ra,8(sp)
    80003404:	00800513          	li	a0,8
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00001317          	auipc	t1,0x1
    80003410:	9b430067          	jr	-1612(t1) # 80003dc0 <uartputc_sync>

0000000080003414 <consoleintr>:
    80003414:	fe010113          	addi	sp,sp,-32
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	00113c23          	sd	ra,24(sp)
    80003428:	02010413          	addi	s0,sp,32
    8000342c:	00004917          	auipc	s2,0x4
    80003430:	97c90913          	addi	s2,s2,-1668 # 80006da8 <cons>
    80003434:	00050493          	mv	s1,a0
    80003438:	00090513          	mv	a0,s2
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	e40080e7          	jalr	-448(ra) # 8000427c <acquire>
    80003444:	02048c63          	beqz	s1,8000347c <consoleintr+0x68>
    80003448:	0a092783          	lw	a5,160(s2)
    8000344c:	09892703          	lw	a4,152(s2)
    80003450:	07f00693          	li	a3,127
    80003454:	40e7873b          	subw	a4,a5,a4
    80003458:	02e6e263          	bltu	a3,a4,8000347c <consoleintr+0x68>
    8000345c:	00d00713          	li	a4,13
    80003460:	04e48063          	beq	s1,a4,800034a0 <consoleintr+0x8c>
    80003464:	07f7f713          	andi	a4,a5,127
    80003468:	00e90733          	add	a4,s2,a4
    8000346c:	0017879b          	addiw	a5,a5,1
    80003470:	0af92023          	sw	a5,160(s2)
    80003474:	00970c23          	sb	s1,24(a4)
    80003478:	08f92e23          	sw	a5,156(s2)
    8000347c:	01013403          	ld	s0,16(sp)
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	00813483          	ld	s1,8(sp)
    80003488:	00013903          	ld	s2,0(sp)
    8000348c:	00004517          	auipc	a0,0x4
    80003490:	91c50513          	addi	a0,a0,-1764 # 80006da8 <cons>
    80003494:	02010113          	addi	sp,sp,32
    80003498:	00001317          	auipc	t1,0x1
    8000349c:	eb030067          	jr	-336(t1) # 80004348 <release>
    800034a0:	00a00493          	li	s1,10
    800034a4:	fc1ff06f          	j	80003464 <consoleintr+0x50>

00000000800034a8 <consoleinit>:
    800034a8:	fe010113          	addi	sp,sp,-32
    800034ac:	00113c23          	sd	ra,24(sp)
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	02010413          	addi	s0,sp,32
    800034bc:	00004497          	auipc	s1,0x4
    800034c0:	8ec48493          	addi	s1,s1,-1812 # 80006da8 <cons>
    800034c4:	00048513          	mv	a0,s1
    800034c8:	00002597          	auipc	a1,0x2
    800034cc:	e2858593          	addi	a1,a1,-472 # 800052f0 <_ZZ12printIntegermE6digits+0x138>
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	d88080e7          	jalr	-632(ra) # 80004258 <initlock>
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	7ac080e7          	jalr	1964(ra) # 80003c84 <uartinit>
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00000797          	auipc	a5,0x0
    800034ec:	d9c78793          	addi	a5,a5,-612 # 80003284 <consoleread>
    800034f0:	0af4bc23          	sd	a5,184(s1)
    800034f4:	00000797          	auipc	a5,0x0
    800034f8:	cec78793          	addi	a5,a5,-788 # 800031e0 <consolewrite>
    800034fc:	0cf4b023          	sd	a5,192(s1)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret

000000008000350c <console_read>:
    8000350c:	ff010113          	addi	sp,sp,-16
    80003510:	00813423          	sd	s0,8(sp)
    80003514:	01010413          	addi	s0,sp,16
    80003518:	00813403          	ld	s0,8(sp)
    8000351c:	00004317          	auipc	t1,0x4
    80003520:	94433303          	ld	t1,-1724(t1) # 80006e60 <devsw+0x10>
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00030067          	jr	t1

000000008000352c <console_write>:
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00813423          	sd	s0,8(sp)
    80003534:	01010413          	addi	s0,sp,16
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	00004317          	auipc	t1,0x4
    80003540:	92c33303          	ld	t1,-1748(t1) # 80006e68 <devsw+0x18>
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00030067          	jr	t1

000000008000354c <panic>:
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00113c23          	sd	ra,24(sp)
    80003554:	00813823          	sd	s0,16(sp)
    80003558:	00913423          	sd	s1,8(sp)
    8000355c:	02010413          	addi	s0,sp,32
    80003560:	00050493          	mv	s1,a0
    80003564:	00002517          	auipc	a0,0x2
    80003568:	d9450513          	addi	a0,a0,-620 # 800052f8 <_ZZ12printIntegermE6digits+0x140>
    8000356c:	00004797          	auipc	a5,0x4
    80003570:	9807ae23          	sw	zero,-1636(a5) # 80006f08 <pr+0x18>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	034080e7          	jalr	52(ra) # 800035a8 <__printf>
    8000357c:	00048513          	mv	a0,s1
    80003580:	00000097          	auipc	ra,0x0
    80003584:	028080e7          	jalr	40(ra) # 800035a8 <__printf>
    80003588:	00002517          	auipc	a0,0x2
    8000358c:	ab850513          	addi	a0,a0,-1352 # 80005040 <CONSOLE_STATUS+0x30>
    80003590:	00000097          	auipc	ra,0x0
    80003594:	018080e7          	jalr	24(ra) # 800035a8 <__printf>
    80003598:	00100793          	li	a5,1
    8000359c:	00002717          	auipc	a4,0x2
    800035a0:	6af72e23          	sw	a5,1724(a4) # 80005c58 <panicked>
    800035a4:	0000006f          	j	800035a4 <panic+0x58>

00000000800035a8 <__printf>:
    800035a8:	f3010113          	addi	sp,sp,-208
    800035ac:	08813023          	sd	s0,128(sp)
    800035b0:	07313423          	sd	s3,104(sp)
    800035b4:	09010413          	addi	s0,sp,144
    800035b8:	05813023          	sd	s8,64(sp)
    800035bc:	08113423          	sd	ra,136(sp)
    800035c0:	06913c23          	sd	s1,120(sp)
    800035c4:	07213823          	sd	s2,112(sp)
    800035c8:	07413023          	sd	s4,96(sp)
    800035cc:	05513c23          	sd	s5,88(sp)
    800035d0:	05613823          	sd	s6,80(sp)
    800035d4:	05713423          	sd	s7,72(sp)
    800035d8:	03913c23          	sd	s9,56(sp)
    800035dc:	03a13823          	sd	s10,48(sp)
    800035e0:	03b13423          	sd	s11,40(sp)
    800035e4:	00004317          	auipc	t1,0x4
    800035e8:	90c30313          	addi	t1,t1,-1780 # 80006ef0 <pr>
    800035ec:	01832c03          	lw	s8,24(t1)
    800035f0:	00b43423          	sd	a1,8(s0)
    800035f4:	00c43823          	sd	a2,16(s0)
    800035f8:	00d43c23          	sd	a3,24(s0)
    800035fc:	02e43023          	sd	a4,32(s0)
    80003600:	02f43423          	sd	a5,40(s0)
    80003604:	03043823          	sd	a6,48(s0)
    80003608:	03143c23          	sd	a7,56(s0)
    8000360c:	00050993          	mv	s3,a0
    80003610:	4a0c1663          	bnez	s8,80003abc <__printf+0x514>
    80003614:	60098c63          	beqz	s3,80003c2c <__printf+0x684>
    80003618:	0009c503          	lbu	a0,0(s3)
    8000361c:	00840793          	addi	a5,s0,8
    80003620:	f6f43c23          	sd	a5,-136(s0)
    80003624:	00000493          	li	s1,0
    80003628:	22050063          	beqz	a0,80003848 <__printf+0x2a0>
    8000362c:	00002a37          	lui	s4,0x2
    80003630:	00018ab7          	lui	s5,0x18
    80003634:	000f4b37          	lui	s6,0xf4
    80003638:	00989bb7          	lui	s7,0x989
    8000363c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003640:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003644:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003648:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000364c:	00148c9b          	addiw	s9,s1,1
    80003650:	02500793          	li	a5,37
    80003654:	01998933          	add	s2,s3,s9
    80003658:	38f51263          	bne	a0,a5,800039dc <__printf+0x434>
    8000365c:	00094783          	lbu	a5,0(s2)
    80003660:	00078c9b          	sext.w	s9,a5
    80003664:	1e078263          	beqz	a5,80003848 <__printf+0x2a0>
    80003668:	0024849b          	addiw	s1,s1,2
    8000366c:	07000713          	li	a4,112
    80003670:	00998933          	add	s2,s3,s1
    80003674:	38e78a63          	beq	a5,a4,80003a08 <__printf+0x460>
    80003678:	20f76863          	bltu	a4,a5,80003888 <__printf+0x2e0>
    8000367c:	42a78863          	beq	a5,a0,80003aac <__printf+0x504>
    80003680:	06400713          	li	a4,100
    80003684:	40e79663          	bne	a5,a4,80003a90 <__printf+0x4e8>
    80003688:	f7843783          	ld	a5,-136(s0)
    8000368c:	0007a603          	lw	a2,0(a5)
    80003690:	00878793          	addi	a5,a5,8
    80003694:	f6f43c23          	sd	a5,-136(s0)
    80003698:	42064a63          	bltz	a2,80003acc <__printf+0x524>
    8000369c:	00a00713          	li	a4,10
    800036a0:	02e677bb          	remuw	a5,a2,a4
    800036a4:	00002d97          	auipc	s11,0x2
    800036a8:	c7cd8d93          	addi	s11,s11,-900 # 80005320 <digits>
    800036ac:	00900593          	li	a1,9
    800036b0:	0006051b          	sext.w	a0,a2
    800036b4:	00000c93          	li	s9,0
    800036b8:	02079793          	slli	a5,a5,0x20
    800036bc:	0207d793          	srli	a5,a5,0x20
    800036c0:	00fd87b3          	add	a5,s11,a5
    800036c4:	0007c783          	lbu	a5,0(a5)
    800036c8:	02e656bb          	divuw	a3,a2,a4
    800036cc:	f8f40023          	sb	a5,-128(s0)
    800036d0:	14c5d863          	bge	a1,a2,80003820 <__printf+0x278>
    800036d4:	06300593          	li	a1,99
    800036d8:	00100c93          	li	s9,1
    800036dc:	02e6f7bb          	remuw	a5,a3,a4
    800036e0:	02079793          	slli	a5,a5,0x20
    800036e4:	0207d793          	srli	a5,a5,0x20
    800036e8:	00fd87b3          	add	a5,s11,a5
    800036ec:	0007c783          	lbu	a5,0(a5)
    800036f0:	02e6d73b          	divuw	a4,a3,a4
    800036f4:	f8f400a3          	sb	a5,-127(s0)
    800036f8:	12a5f463          	bgeu	a1,a0,80003820 <__printf+0x278>
    800036fc:	00a00693          	li	a3,10
    80003700:	00900593          	li	a1,9
    80003704:	02d777bb          	remuw	a5,a4,a3
    80003708:	02079793          	slli	a5,a5,0x20
    8000370c:	0207d793          	srli	a5,a5,0x20
    80003710:	00fd87b3          	add	a5,s11,a5
    80003714:	0007c503          	lbu	a0,0(a5)
    80003718:	02d757bb          	divuw	a5,a4,a3
    8000371c:	f8a40123          	sb	a0,-126(s0)
    80003720:	48e5f263          	bgeu	a1,a4,80003ba4 <__printf+0x5fc>
    80003724:	06300513          	li	a0,99
    80003728:	02d7f5bb          	remuw	a1,a5,a3
    8000372c:	02059593          	slli	a1,a1,0x20
    80003730:	0205d593          	srli	a1,a1,0x20
    80003734:	00bd85b3          	add	a1,s11,a1
    80003738:	0005c583          	lbu	a1,0(a1)
    8000373c:	02d7d7bb          	divuw	a5,a5,a3
    80003740:	f8b401a3          	sb	a1,-125(s0)
    80003744:	48e57263          	bgeu	a0,a4,80003bc8 <__printf+0x620>
    80003748:	3e700513          	li	a0,999
    8000374c:	02d7f5bb          	remuw	a1,a5,a3
    80003750:	02059593          	slli	a1,a1,0x20
    80003754:	0205d593          	srli	a1,a1,0x20
    80003758:	00bd85b3          	add	a1,s11,a1
    8000375c:	0005c583          	lbu	a1,0(a1)
    80003760:	02d7d7bb          	divuw	a5,a5,a3
    80003764:	f8b40223          	sb	a1,-124(s0)
    80003768:	46e57663          	bgeu	a0,a4,80003bd4 <__printf+0x62c>
    8000376c:	02d7f5bb          	remuw	a1,a5,a3
    80003770:	02059593          	slli	a1,a1,0x20
    80003774:	0205d593          	srli	a1,a1,0x20
    80003778:	00bd85b3          	add	a1,s11,a1
    8000377c:	0005c583          	lbu	a1,0(a1)
    80003780:	02d7d7bb          	divuw	a5,a5,a3
    80003784:	f8b402a3          	sb	a1,-123(s0)
    80003788:	46ea7863          	bgeu	s4,a4,80003bf8 <__printf+0x650>
    8000378c:	02d7f5bb          	remuw	a1,a5,a3
    80003790:	02059593          	slli	a1,a1,0x20
    80003794:	0205d593          	srli	a1,a1,0x20
    80003798:	00bd85b3          	add	a1,s11,a1
    8000379c:	0005c583          	lbu	a1,0(a1)
    800037a0:	02d7d7bb          	divuw	a5,a5,a3
    800037a4:	f8b40323          	sb	a1,-122(s0)
    800037a8:	3eeaf863          	bgeu	s5,a4,80003b98 <__printf+0x5f0>
    800037ac:	02d7f5bb          	remuw	a1,a5,a3
    800037b0:	02059593          	slli	a1,a1,0x20
    800037b4:	0205d593          	srli	a1,a1,0x20
    800037b8:	00bd85b3          	add	a1,s11,a1
    800037bc:	0005c583          	lbu	a1,0(a1)
    800037c0:	02d7d7bb          	divuw	a5,a5,a3
    800037c4:	f8b403a3          	sb	a1,-121(s0)
    800037c8:	42eb7e63          	bgeu	s6,a4,80003c04 <__printf+0x65c>
    800037cc:	02d7f5bb          	remuw	a1,a5,a3
    800037d0:	02059593          	slli	a1,a1,0x20
    800037d4:	0205d593          	srli	a1,a1,0x20
    800037d8:	00bd85b3          	add	a1,s11,a1
    800037dc:	0005c583          	lbu	a1,0(a1)
    800037e0:	02d7d7bb          	divuw	a5,a5,a3
    800037e4:	f8b40423          	sb	a1,-120(s0)
    800037e8:	42ebfc63          	bgeu	s7,a4,80003c20 <__printf+0x678>
    800037ec:	02079793          	slli	a5,a5,0x20
    800037f0:	0207d793          	srli	a5,a5,0x20
    800037f4:	00fd8db3          	add	s11,s11,a5
    800037f8:	000dc703          	lbu	a4,0(s11)
    800037fc:	00a00793          	li	a5,10
    80003800:	00900c93          	li	s9,9
    80003804:	f8e404a3          	sb	a4,-119(s0)
    80003808:	00065c63          	bgez	a2,80003820 <__printf+0x278>
    8000380c:	f9040713          	addi	a4,s0,-112
    80003810:	00f70733          	add	a4,a4,a5
    80003814:	02d00693          	li	a3,45
    80003818:	fed70823          	sb	a3,-16(a4)
    8000381c:	00078c93          	mv	s9,a5
    80003820:	f8040793          	addi	a5,s0,-128
    80003824:	01978cb3          	add	s9,a5,s9
    80003828:	f7f40d13          	addi	s10,s0,-129
    8000382c:	000cc503          	lbu	a0,0(s9)
    80003830:	fffc8c93          	addi	s9,s9,-1
    80003834:	00000097          	auipc	ra,0x0
    80003838:	b90080e7          	jalr	-1136(ra) # 800033c4 <consputc>
    8000383c:	ffac98e3          	bne	s9,s10,8000382c <__printf+0x284>
    80003840:	00094503          	lbu	a0,0(s2)
    80003844:	e00514e3          	bnez	a0,8000364c <__printf+0xa4>
    80003848:	1a0c1663          	bnez	s8,800039f4 <__printf+0x44c>
    8000384c:	08813083          	ld	ra,136(sp)
    80003850:	08013403          	ld	s0,128(sp)
    80003854:	07813483          	ld	s1,120(sp)
    80003858:	07013903          	ld	s2,112(sp)
    8000385c:	06813983          	ld	s3,104(sp)
    80003860:	06013a03          	ld	s4,96(sp)
    80003864:	05813a83          	ld	s5,88(sp)
    80003868:	05013b03          	ld	s6,80(sp)
    8000386c:	04813b83          	ld	s7,72(sp)
    80003870:	04013c03          	ld	s8,64(sp)
    80003874:	03813c83          	ld	s9,56(sp)
    80003878:	03013d03          	ld	s10,48(sp)
    8000387c:	02813d83          	ld	s11,40(sp)
    80003880:	0d010113          	addi	sp,sp,208
    80003884:	00008067          	ret
    80003888:	07300713          	li	a4,115
    8000388c:	1ce78a63          	beq	a5,a4,80003a60 <__printf+0x4b8>
    80003890:	07800713          	li	a4,120
    80003894:	1ee79e63          	bne	a5,a4,80003a90 <__printf+0x4e8>
    80003898:	f7843783          	ld	a5,-136(s0)
    8000389c:	0007a703          	lw	a4,0(a5)
    800038a0:	00878793          	addi	a5,a5,8
    800038a4:	f6f43c23          	sd	a5,-136(s0)
    800038a8:	28074263          	bltz	a4,80003b2c <__printf+0x584>
    800038ac:	00002d97          	auipc	s11,0x2
    800038b0:	a74d8d93          	addi	s11,s11,-1420 # 80005320 <digits>
    800038b4:	00f77793          	andi	a5,a4,15
    800038b8:	00fd87b3          	add	a5,s11,a5
    800038bc:	0007c683          	lbu	a3,0(a5)
    800038c0:	00f00613          	li	a2,15
    800038c4:	0007079b          	sext.w	a5,a4
    800038c8:	f8d40023          	sb	a3,-128(s0)
    800038cc:	0047559b          	srliw	a1,a4,0x4
    800038d0:	0047569b          	srliw	a3,a4,0x4
    800038d4:	00000c93          	li	s9,0
    800038d8:	0ee65063          	bge	a2,a4,800039b8 <__printf+0x410>
    800038dc:	00f6f693          	andi	a3,a3,15
    800038e0:	00dd86b3          	add	a3,s11,a3
    800038e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800038e8:	0087d79b          	srliw	a5,a5,0x8
    800038ec:	00100c93          	li	s9,1
    800038f0:	f8d400a3          	sb	a3,-127(s0)
    800038f4:	0cb67263          	bgeu	a2,a1,800039b8 <__printf+0x410>
    800038f8:	00f7f693          	andi	a3,a5,15
    800038fc:	00dd86b3          	add	a3,s11,a3
    80003900:	0006c583          	lbu	a1,0(a3)
    80003904:	00f00613          	li	a2,15
    80003908:	0047d69b          	srliw	a3,a5,0x4
    8000390c:	f8b40123          	sb	a1,-126(s0)
    80003910:	0047d593          	srli	a1,a5,0x4
    80003914:	28f67e63          	bgeu	a2,a5,80003bb0 <__printf+0x608>
    80003918:	00f6f693          	andi	a3,a3,15
    8000391c:	00dd86b3          	add	a3,s11,a3
    80003920:	0006c503          	lbu	a0,0(a3)
    80003924:	0087d813          	srli	a6,a5,0x8
    80003928:	0087d69b          	srliw	a3,a5,0x8
    8000392c:	f8a401a3          	sb	a0,-125(s0)
    80003930:	28b67663          	bgeu	a2,a1,80003bbc <__printf+0x614>
    80003934:	00f6f693          	andi	a3,a3,15
    80003938:	00dd86b3          	add	a3,s11,a3
    8000393c:	0006c583          	lbu	a1,0(a3)
    80003940:	00c7d513          	srli	a0,a5,0xc
    80003944:	00c7d69b          	srliw	a3,a5,0xc
    80003948:	f8b40223          	sb	a1,-124(s0)
    8000394c:	29067a63          	bgeu	a2,a6,80003be0 <__printf+0x638>
    80003950:	00f6f693          	andi	a3,a3,15
    80003954:	00dd86b3          	add	a3,s11,a3
    80003958:	0006c583          	lbu	a1,0(a3)
    8000395c:	0107d813          	srli	a6,a5,0x10
    80003960:	0107d69b          	srliw	a3,a5,0x10
    80003964:	f8b402a3          	sb	a1,-123(s0)
    80003968:	28a67263          	bgeu	a2,a0,80003bec <__printf+0x644>
    8000396c:	00f6f693          	andi	a3,a3,15
    80003970:	00dd86b3          	add	a3,s11,a3
    80003974:	0006c683          	lbu	a3,0(a3)
    80003978:	0147d79b          	srliw	a5,a5,0x14
    8000397c:	f8d40323          	sb	a3,-122(s0)
    80003980:	21067663          	bgeu	a2,a6,80003b8c <__printf+0x5e4>
    80003984:	02079793          	slli	a5,a5,0x20
    80003988:	0207d793          	srli	a5,a5,0x20
    8000398c:	00fd8db3          	add	s11,s11,a5
    80003990:	000dc683          	lbu	a3,0(s11)
    80003994:	00800793          	li	a5,8
    80003998:	00700c93          	li	s9,7
    8000399c:	f8d403a3          	sb	a3,-121(s0)
    800039a0:	00075c63          	bgez	a4,800039b8 <__printf+0x410>
    800039a4:	f9040713          	addi	a4,s0,-112
    800039a8:	00f70733          	add	a4,a4,a5
    800039ac:	02d00693          	li	a3,45
    800039b0:	fed70823          	sb	a3,-16(a4)
    800039b4:	00078c93          	mv	s9,a5
    800039b8:	f8040793          	addi	a5,s0,-128
    800039bc:	01978cb3          	add	s9,a5,s9
    800039c0:	f7f40d13          	addi	s10,s0,-129
    800039c4:	000cc503          	lbu	a0,0(s9)
    800039c8:	fffc8c93          	addi	s9,s9,-1
    800039cc:	00000097          	auipc	ra,0x0
    800039d0:	9f8080e7          	jalr	-1544(ra) # 800033c4 <consputc>
    800039d4:	ff9d18e3          	bne	s10,s9,800039c4 <__printf+0x41c>
    800039d8:	0100006f          	j	800039e8 <__printf+0x440>
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	9e8080e7          	jalr	-1560(ra) # 800033c4 <consputc>
    800039e4:	000c8493          	mv	s1,s9
    800039e8:	00094503          	lbu	a0,0(s2)
    800039ec:	c60510e3          	bnez	a0,8000364c <__printf+0xa4>
    800039f0:	e40c0ee3          	beqz	s8,8000384c <__printf+0x2a4>
    800039f4:	00003517          	auipc	a0,0x3
    800039f8:	4fc50513          	addi	a0,a0,1276 # 80006ef0 <pr>
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	94c080e7          	jalr	-1716(ra) # 80004348 <release>
    80003a04:	e49ff06f          	j	8000384c <__printf+0x2a4>
    80003a08:	f7843783          	ld	a5,-136(s0)
    80003a0c:	03000513          	li	a0,48
    80003a10:	01000d13          	li	s10,16
    80003a14:	00878713          	addi	a4,a5,8
    80003a18:	0007bc83          	ld	s9,0(a5)
    80003a1c:	f6e43c23          	sd	a4,-136(s0)
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	9a4080e7          	jalr	-1628(ra) # 800033c4 <consputc>
    80003a28:	07800513          	li	a0,120
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	998080e7          	jalr	-1640(ra) # 800033c4 <consputc>
    80003a34:	00002d97          	auipc	s11,0x2
    80003a38:	8ecd8d93          	addi	s11,s11,-1812 # 80005320 <digits>
    80003a3c:	03ccd793          	srli	a5,s9,0x3c
    80003a40:	00fd87b3          	add	a5,s11,a5
    80003a44:	0007c503          	lbu	a0,0(a5)
    80003a48:	fffd0d1b          	addiw	s10,s10,-1
    80003a4c:	004c9c93          	slli	s9,s9,0x4
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	974080e7          	jalr	-1676(ra) # 800033c4 <consputc>
    80003a58:	fe0d12e3          	bnez	s10,80003a3c <__printf+0x494>
    80003a5c:	f8dff06f          	j	800039e8 <__printf+0x440>
    80003a60:	f7843783          	ld	a5,-136(s0)
    80003a64:	0007bc83          	ld	s9,0(a5)
    80003a68:	00878793          	addi	a5,a5,8
    80003a6c:	f6f43c23          	sd	a5,-136(s0)
    80003a70:	000c9a63          	bnez	s9,80003a84 <__printf+0x4dc>
    80003a74:	1080006f          	j	80003b7c <__printf+0x5d4>
    80003a78:	001c8c93          	addi	s9,s9,1
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	948080e7          	jalr	-1720(ra) # 800033c4 <consputc>
    80003a84:	000cc503          	lbu	a0,0(s9)
    80003a88:	fe0518e3          	bnez	a0,80003a78 <__printf+0x4d0>
    80003a8c:	f5dff06f          	j	800039e8 <__printf+0x440>
    80003a90:	02500513          	li	a0,37
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	930080e7          	jalr	-1744(ra) # 800033c4 <consputc>
    80003a9c:	000c8513          	mv	a0,s9
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	924080e7          	jalr	-1756(ra) # 800033c4 <consputc>
    80003aa8:	f41ff06f          	j	800039e8 <__printf+0x440>
    80003aac:	02500513          	li	a0,37
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	914080e7          	jalr	-1772(ra) # 800033c4 <consputc>
    80003ab8:	f31ff06f          	j	800039e8 <__printf+0x440>
    80003abc:	00030513          	mv	a0,t1
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	7bc080e7          	jalr	1980(ra) # 8000427c <acquire>
    80003ac8:	b4dff06f          	j	80003614 <__printf+0x6c>
    80003acc:	40c0053b          	negw	a0,a2
    80003ad0:	00a00713          	li	a4,10
    80003ad4:	02e576bb          	remuw	a3,a0,a4
    80003ad8:	00002d97          	auipc	s11,0x2
    80003adc:	848d8d93          	addi	s11,s11,-1976 # 80005320 <digits>
    80003ae0:	ff700593          	li	a1,-9
    80003ae4:	02069693          	slli	a3,a3,0x20
    80003ae8:	0206d693          	srli	a3,a3,0x20
    80003aec:	00dd86b3          	add	a3,s11,a3
    80003af0:	0006c683          	lbu	a3,0(a3)
    80003af4:	02e557bb          	divuw	a5,a0,a4
    80003af8:	f8d40023          	sb	a3,-128(s0)
    80003afc:	10b65e63          	bge	a2,a1,80003c18 <__printf+0x670>
    80003b00:	06300593          	li	a1,99
    80003b04:	02e7f6bb          	remuw	a3,a5,a4
    80003b08:	02069693          	slli	a3,a3,0x20
    80003b0c:	0206d693          	srli	a3,a3,0x20
    80003b10:	00dd86b3          	add	a3,s11,a3
    80003b14:	0006c683          	lbu	a3,0(a3)
    80003b18:	02e7d73b          	divuw	a4,a5,a4
    80003b1c:	00200793          	li	a5,2
    80003b20:	f8d400a3          	sb	a3,-127(s0)
    80003b24:	bca5ece3          	bltu	a1,a0,800036fc <__printf+0x154>
    80003b28:	ce5ff06f          	j	8000380c <__printf+0x264>
    80003b2c:	40e007bb          	negw	a5,a4
    80003b30:	00001d97          	auipc	s11,0x1
    80003b34:	7f0d8d93          	addi	s11,s11,2032 # 80005320 <digits>
    80003b38:	00f7f693          	andi	a3,a5,15
    80003b3c:	00dd86b3          	add	a3,s11,a3
    80003b40:	0006c583          	lbu	a1,0(a3)
    80003b44:	ff100613          	li	a2,-15
    80003b48:	0047d69b          	srliw	a3,a5,0x4
    80003b4c:	f8b40023          	sb	a1,-128(s0)
    80003b50:	0047d59b          	srliw	a1,a5,0x4
    80003b54:	0ac75e63          	bge	a4,a2,80003c10 <__printf+0x668>
    80003b58:	00f6f693          	andi	a3,a3,15
    80003b5c:	00dd86b3          	add	a3,s11,a3
    80003b60:	0006c603          	lbu	a2,0(a3)
    80003b64:	00f00693          	li	a3,15
    80003b68:	0087d79b          	srliw	a5,a5,0x8
    80003b6c:	f8c400a3          	sb	a2,-127(s0)
    80003b70:	d8b6e4e3          	bltu	a3,a1,800038f8 <__printf+0x350>
    80003b74:	00200793          	li	a5,2
    80003b78:	e2dff06f          	j	800039a4 <__printf+0x3fc>
    80003b7c:	00001c97          	auipc	s9,0x1
    80003b80:	784c8c93          	addi	s9,s9,1924 # 80005300 <_ZZ12printIntegermE6digits+0x148>
    80003b84:	02800513          	li	a0,40
    80003b88:	ef1ff06f          	j	80003a78 <__printf+0x4d0>
    80003b8c:	00700793          	li	a5,7
    80003b90:	00600c93          	li	s9,6
    80003b94:	e0dff06f          	j	800039a0 <__printf+0x3f8>
    80003b98:	00700793          	li	a5,7
    80003b9c:	00600c93          	li	s9,6
    80003ba0:	c69ff06f          	j	80003808 <__printf+0x260>
    80003ba4:	00300793          	li	a5,3
    80003ba8:	00200c93          	li	s9,2
    80003bac:	c5dff06f          	j	80003808 <__printf+0x260>
    80003bb0:	00300793          	li	a5,3
    80003bb4:	00200c93          	li	s9,2
    80003bb8:	de9ff06f          	j	800039a0 <__printf+0x3f8>
    80003bbc:	00400793          	li	a5,4
    80003bc0:	00300c93          	li	s9,3
    80003bc4:	dddff06f          	j	800039a0 <__printf+0x3f8>
    80003bc8:	00400793          	li	a5,4
    80003bcc:	00300c93          	li	s9,3
    80003bd0:	c39ff06f          	j	80003808 <__printf+0x260>
    80003bd4:	00500793          	li	a5,5
    80003bd8:	00400c93          	li	s9,4
    80003bdc:	c2dff06f          	j	80003808 <__printf+0x260>
    80003be0:	00500793          	li	a5,5
    80003be4:	00400c93          	li	s9,4
    80003be8:	db9ff06f          	j	800039a0 <__printf+0x3f8>
    80003bec:	00600793          	li	a5,6
    80003bf0:	00500c93          	li	s9,5
    80003bf4:	dadff06f          	j	800039a0 <__printf+0x3f8>
    80003bf8:	00600793          	li	a5,6
    80003bfc:	00500c93          	li	s9,5
    80003c00:	c09ff06f          	j	80003808 <__printf+0x260>
    80003c04:	00800793          	li	a5,8
    80003c08:	00700c93          	li	s9,7
    80003c0c:	bfdff06f          	j	80003808 <__printf+0x260>
    80003c10:	00100793          	li	a5,1
    80003c14:	d91ff06f          	j	800039a4 <__printf+0x3fc>
    80003c18:	00100793          	li	a5,1
    80003c1c:	bf1ff06f          	j	8000380c <__printf+0x264>
    80003c20:	00900793          	li	a5,9
    80003c24:	00800c93          	li	s9,8
    80003c28:	be1ff06f          	j	80003808 <__printf+0x260>
    80003c2c:	00001517          	auipc	a0,0x1
    80003c30:	6dc50513          	addi	a0,a0,1756 # 80005308 <_ZZ12printIntegermE6digits+0x150>
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	918080e7          	jalr	-1768(ra) # 8000354c <panic>

0000000080003c3c <printfinit>:
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00813823          	sd	s0,16(sp)
    80003c44:	00913423          	sd	s1,8(sp)
    80003c48:	00113c23          	sd	ra,24(sp)
    80003c4c:	02010413          	addi	s0,sp,32
    80003c50:	00003497          	auipc	s1,0x3
    80003c54:	2a048493          	addi	s1,s1,672 # 80006ef0 <pr>
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00001597          	auipc	a1,0x1
    80003c60:	6bc58593          	addi	a1,a1,1724 # 80005318 <_ZZ12printIntegermE6digits+0x160>
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	5f4080e7          	jalr	1524(ra) # 80004258 <initlock>
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	0004ac23          	sw	zero,24(s1)
    80003c78:	00813483          	ld	s1,8(sp)
    80003c7c:	02010113          	addi	sp,sp,32
    80003c80:	00008067          	ret

0000000080003c84 <uartinit>:
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813423          	sd	s0,8(sp)
    80003c8c:	01010413          	addi	s0,sp,16
    80003c90:	100007b7          	lui	a5,0x10000
    80003c94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003c98:	f8000713          	li	a4,-128
    80003c9c:	00e781a3          	sb	a4,3(a5)
    80003ca0:	00300713          	li	a4,3
    80003ca4:	00e78023          	sb	a4,0(a5)
    80003ca8:	000780a3          	sb	zero,1(a5)
    80003cac:	00e781a3          	sb	a4,3(a5)
    80003cb0:	00700693          	li	a3,7
    80003cb4:	00d78123          	sb	a3,2(a5)
    80003cb8:	00e780a3          	sb	a4,1(a5)
    80003cbc:	00813403          	ld	s0,8(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <uartputc>:
    80003cc8:	00002797          	auipc	a5,0x2
    80003ccc:	f907a783          	lw	a5,-112(a5) # 80005c58 <panicked>
    80003cd0:	00078463          	beqz	a5,80003cd8 <uartputc+0x10>
    80003cd4:	0000006f          	j	80003cd4 <uartputc+0xc>
    80003cd8:	fd010113          	addi	sp,sp,-48
    80003cdc:	02813023          	sd	s0,32(sp)
    80003ce0:	00913c23          	sd	s1,24(sp)
    80003ce4:	01213823          	sd	s2,16(sp)
    80003ce8:	01313423          	sd	s3,8(sp)
    80003cec:	02113423          	sd	ra,40(sp)
    80003cf0:	03010413          	addi	s0,sp,48
    80003cf4:	00002917          	auipc	s2,0x2
    80003cf8:	f6c90913          	addi	s2,s2,-148 # 80005c60 <uart_tx_r>
    80003cfc:	00093783          	ld	a5,0(s2)
    80003d00:	00002497          	auipc	s1,0x2
    80003d04:	f6848493          	addi	s1,s1,-152 # 80005c68 <uart_tx_w>
    80003d08:	0004b703          	ld	a4,0(s1)
    80003d0c:	02078693          	addi	a3,a5,32
    80003d10:	00050993          	mv	s3,a0
    80003d14:	02e69c63          	bne	a3,a4,80003d4c <uartputc+0x84>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	834080e7          	jalr	-1996(ra) # 8000454c <push_on>
    80003d20:	00093783          	ld	a5,0(s2)
    80003d24:	0004b703          	ld	a4,0(s1)
    80003d28:	02078793          	addi	a5,a5,32
    80003d2c:	00e79463          	bne	a5,a4,80003d34 <uartputc+0x6c>
    80003d30:	0000006f          	j	80003d30 <uartputc+0x68>
    80003d34:	00001097          	auipc	ra,0x1
    80003d38:	88c080e7          	jalr	-1908(ra) # 800045c0 <pop_on>
    80003d3c:	00093783          	ld	a5,0(s2)
    80003d40:	0004b703          	ld	a4,0(s1)
    80003d44:	02078693          	addi	a3,a5,32
    80003d48:	fce688e3          	beq	a3,a4,80003d18 <uartputc+0x50>
    80003d4c:	01f77693          	andi	a3,a4,31
    80003d50:	00003597          	auipc	a1,0x3
    80003d54:	1c058593          	addi	a1,a1,448 # 80006f10 <uart_tx_buf>
    80003d58:	00d586b3          	add	a3,a1,a3
    80003d5c:	00170713          	addi	a4,a4,1
    80003d60:	01368023          	sb	s3,0(a3)
    80003d64:	00e4b023          	sd	a4,0(s1)
    80003d68:	10000637          	lui	a2,0x10000
    80003d6c:	02f71063          	bne	a4,a5,80003d8c <uartputc+0xc4>
    80003d70:	0340006f          	j	80003da4 <uartputc+0xdc>
    80003d74:	00074703          	lbu	a4,0(a4)
    80003d78:	00f93023          	sd	a5,0(s2)
    80003d7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003d80:	00093783          	ld	a5,0(s2)
    80003d84:	0004b703          	ld	a4,0(s1)
    80003d88:	00f70e63          	beq	a4,a5,80003da4 <uartputc+0xdc>
    80003d8c:	00564683          	lbu	a3,5(a2)
    80003d90:	01f7f713          	andi	a4,a5,31
    80003d94:	00e58733          	add	a4,a1,a4
    80003d98:	0206f693          	andi	a3,a3,32
    80003d9c:	00178793          	addi	a5,a5,1
    80003da0:	fc069ae3          	bnez	a3,80003d74 <uartputc+0xac>
    80003da4:	02813083          	ld	ra,40(sp)
    80003da8:	02013403          	ld	s0,32(sp)
    80003dac:	01813483          	ld	s1,24(sp)
    80003db0:	01013903          	ld	s2,16(sp)
    80003db4:	00813983          	ld	s3,8(sp)
    80003db8:	03010113          	addi	sp,sp,48
    80003dbc:	00008067          	ret

0000000080003dc0 <uartputc_sync>:
    80003dc0:	ff010113          	addi	sp,sp,-16
    80003dc4:	00813423          	sd	s0,8(sp)
    80003dc8:	01010413          	addi	s0,sp,16
    80003dcc:	00002717          	auipc	a4,0x2
    80003dd0:	e8c72703          	lw	a4,-372(a4) # 80005c58 <panicked>
    80003dd4:	02071663          	bnez	a4,80003e00 <uartputc_sync+0x40>
    80003dd8:	00050793          	mv	a5,a0
    80003ddc:	100006b7          	lui	a3,0x10000
    80003de0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003de4:	02077713          	andi	a4,a4,32
    80003de8:	fe070ce3          	beqz	a4,80003de0 <uartputc_sync+0x20>
    80003dec:	0ff7f793          	andi	a5,a5,255
    80003df0:	00f68023          	sb	a5,0(a3)
    80003df4:	00813403          	ld	s0,8(sp)
    80003df8:	01010113          	addi	sp,sp,16
    80003dfc:	00008067          	ret
    80003e00:	0000006f          	j	80003e00 <uartputc_sync+0x40>

0000000080003e04 <uartstart>:
    80003e04:	ff010113          	addi	sp,sp,-16
    80003e08:	00813423          	sd	s0,8(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    80003e10:	00002617          	auipc	a2,0x2
    80003e14:	e5060613          	addi	a2,a2,-432 # 80005c60 <uart_tx_r>
    80003e18:	00002517          	auipc	a0,0x2
    80003e1c:	e5050513          	addi	a0,a0,-432 # 80005c68 <uart_tx_w>
    80003e20:	00063783          	ld	a5,0(a2)
    80003e24:	00053703          	ld	a4,0(a0)
    80003e28:	04f70263          	beq	a4,a5,80003e6c <uartstart+0x68>
    80003e2c:	100005b7          	lui	a1,0x10000
    80003e30:	00003817          	auipc	a6,0x3
    80003e34:	0e080813          	addi	a6,a6,224 # 80006f10 <uart_tx_buf>
    80003e38:	01c0006f          	j	80003e54 <uartstart+0x50>
    80003e3c:	0006c703          	lbu	a4,0(a3)
    80003e40:	00f63023          	sd	a5,0(a2)
    80003e44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e48:	00063783          	ld	a5,0(a2)
    80003e4c:	00053703          	ld	a4,0(a0)
    80003e50:	00f70e63          	beq	a4,a5,80003e6c <uartstart+0x68>
    80003e54:	01f7f713          	andi	a4,a5,31
    80003e58:	00e806b3          	add	a3,a6,a4
    80003e5c:	0055c703          	lbu	a4,5(a1)
    80003e60:	00178793          	addi	a5,a5,1
    80003e64:	02077713          	andi	a4,a4,32
    80003e68:	fc071ae3          	bnez	a4,80003e3c <uartstart+0x38>
    80003e6c:	00813403          	ld	s0,8(sp)
    80003e70:	01010113          	addi	sp,sp,16
    80003e74:	00008067          	ret

0000000080003e78 <uartgetc>:
    80003e78:	ff010113          	addi	sp,sp,-16
    80003e7c:	00813423          	sd	s0,8(sp)
    80003e80:	01010413          	addi	s0,sp,16
    80003e84:	10000737          	lui	a4,0x10000
    80003e88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003e8c:	0017f793          	andi	a5,a5,1
    80003e90:	00078c63          	beqz	a5,80003ea8 <uartgetc+0x30>
    80003e94:	00074503          	lbu	a0,0(a4)
    80003e98:	0ff57513          	andi	a0,a0,255
    80003e9c:	00813403          	ld	s0,8(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret
    80003ea8:	fff00513          	li	a0,-1
    80003eac:	ff1ff06f          	j	80003e9c <uartgetc+0x24>

0000000080003eb0 <uartintr>:
    80003eb0:	100007b7          	lui	a5,0x10000
    80003eb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003eb8:	0017f793          	andi	a5,a5,1
    80003ebc:	0a078463          	beqz	a5,80003f64 <uartintr+0xb4>
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	02010413          	addi	s0,sp,32
    80003ed4:	100004b7          	lui	s1,0x10000
    80003ed8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003edc:	0ff57513          	andi	a0,a0,255
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	534080e7          	jalr	1332(ra) # 80003414 <consoleintr>
    80003ee8:	0054c783          	lbu	a5,5(s1)
    80003eec:	0017f793          	andi	a5,a5,1
    80003ef0:	fe0794e3          	bnez	a5,80003ed8 <uartintr+0x28>
    80003ef4:	00002617          	auipc	a2,0x2
    80003ef8:	d6c60613          	addi	a2,a2,-660 # 80005c60 <uart_tx_r>
    80003efc:	00002517          	auipc	a0,0x2
    80003f00:	d6c50513          	addi	a0,a0,-660 # 80005c68 <uart_tx_w>
    80003f04:	00063783          	ld	a5,0(a2)
    80003f08:	00053703          	ld	a4,0(a0)
    80003f0c:	04f70263          	beq	a4,a5,80003f50 <uartintr+0xa0>
    80003f10:	100005b7          	lui	a1,0x10000
    80003f14:	00003817          	auipc	a6,0x3
    80003f18:	ffc80813          	addi	a6,a6,-4 # 80006f10 <uart_tx_buf>
    80003f1c:	01c0006f          	j	80003f38 <uartintr+0x88>
    80003f20:	0006c703          	lbu	a4,0(a3)
    80003f24:	00f63023          	sd	a5,0(a2)
    80003f28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f2c:	00063783          	ld	a5,0(a2)
    80003f30:	00053703          	ld	a4,0(a0)
    80003f34:	00f70e63          	beq	a4,a5,80003f50 <uartintr+0xa0>
    80003f38:	01f7f713          	andi	a4,a5,31
    80003f3c:	00e806b3          	add	a3,a6,a4
    80003f40:	0055c703          	lbu	a4,5(a1)
    80003f44:	00178793          	addi	a5,a5,1
    80003f48:	02077713          	andi	a4,a4,32
    80003f4c:	fc071ae3          	bnez	a4,80003f20 <uartintr+0x70>
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	00813483          	ld	s1,8(sp)
    80003f5c:	02010113          	addi	sp,sp,32
    80003f60:	00008067          	ret
    80003f64:	00002617          	auipc	a2,0x2
    80003f68:	cfc60613          	addi	a2,a2,-772 # 80005c60 <uart_tx_r>
    80003f6c:	00002517          	auipc	a0,0x2
    80003f70:	cfc50513          	addi	a0,a0,-772 # 80005c68 <uart_tx_w>
    80003f74:	00063783          	ld	a5,0(a2)
    80003f78:	00053703          	ld	a4,0(a0)
    80003f7c:	04f70263          	beq	a4,a5,80003fc0 <uartintr+0x110>
    80003f80:	100005b7          	lui	a1,0x10000
    80003f84:	00003817          	auipc	a6,0x3
    80003f88:	f8c80813          	addi	a6,a6,-116 # 80006f10 <uart_tx_buf>
    80003f8c:	01c0006f          	j	80003fa8 <uartintr+0xf8>
    80003f90:	0006c703          	lbu	a4,0(a3)
    80003f94:	00f63023          	sd	a5,0(a2)
    80003f98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f9c:	00063783          	ld	a5,0(a2)
    80003fa0:	00053703          	ld	a4,0(a0)
    80003fa4:	02f70063          	beq	a4,a5,80003fc4 <uartintr+0x114>
    80003fa8:	01f7f713          	andi	a4,a5,31
    80003fac:	00e806b3          	add	a3,a6,a4
    80003fb0:	0055c703          	lbu	a4,5(a1)
    80003fb4:	00178793          	addi	a5,a5,1
    80003fb8:	02077713          	andi	a4,a4,32
    80003fbc:	fc071ae3          	bnez	a4,80003f90 <uartintr+0xe0>
    80003fc0:	00008067          	ret
    80003fc4:	00008067          	ret

0000000080003fc8 <kinit>:
    80003fc8:	fc010113          	addi	sp,sp,-64
    80003fcc:	02913423          	sd	s1,40(sp)
    80003fd0:	fffff7b7          	lui	a5,0xfffff
    80003fd4:	00004497          	auipc	s1,0x4
    80003fd8:	f5b48493          	addi	s1,s1,-165 # 80007f2f <end+0xfff>
    80003fdc:	02813823          	sd	s0,48(sp)
    80003fe0:	01313c23          	sd	s3,24(sp)
    80003fe4:	00f4f4b3          	and	s1,s1,a5
    80003fe8:	02113c23          	sd	ra,56(sp)
    80003fec:	03213023          	sd	s2,32(sp)
    80003ff0:	01413823          	sd	s4,16(sp)
    80003ff4:	01513423          	sd	s5,8(sp)
    80003ff8:	04010413          	addi	s0,sp,64
    80003ffc:	000017b7          	lui	a5,0x1
    80004000:	01100993          	li	s3,17
    80004004:	00f487b3          	add	a5,s1,a5
    80004008:	01b99993          	slli	s3,s3,0x1b
    8000400c:	06f9e063          	bltu	s3,a5,8000406c <kinit+0xa4>
    80004010:	00003a97          	auipc	s5,0x3
    80004014:	f20a8a93          	addi	s5,s5,-224 # 80006f30 <end>
    80004018:	0754ec63          	bltu	s1,s5,80004090 <kinit+0xc8>
    8000401c:	0734fa63          	bgeu	s1,s3,80004090 <kinit+0xc8>
    80004020:	00088a37          	lui	s4,0x88
    80004024:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004028:	00002917          	auipc	s2,0x2
    8000402c:	c4890913          	addi	s2,s2,-952 # 80005c70 <kmem>
    80004030:	00ca1a13          	slli	s4,s4,0xc
    80004034:	0140006f          	j	80004048 <kinit+0x80>
    80004038:	000017b7          	lui	a5,0x1
    8000403c:	00f484b3          	add	s1,s1,a5
    80004040:	0554e863          	bltu	s1,s5,80004090 <kinit+0xc8>
    80004044:	0534f663          	bgeu	s1,s3,80004090 <kinit+0xc8>
    80004048:	00001637          	lui	a2,0x1
    8000404c:	00100593          	li	a1,1
    80004050:	00048513          	mv	a0,s1
    80004054:	00000097          	auipc	ra,0x0
    80004058:	5e4080e7          	jalr	1508(ra) # 80004638 <__memset>
    8000405c:	00093783          	ld	a5,0(s2)
    80004060:	00f4b023          	sd	a5,0(s1)
    80004064:	00993023          	sd	s1,0(s2)
    80004068:	fd4498e3          	bne	s1,s4,80004038 <kinit+0x70>
    8000406c:	03813083          	ld	ra,56(sp)
    80004070:	03013403          	ld	s0,48(sp)
    80004074:	02813483          	ld	s1,40(sp)
    80004078:	02013903          	ld	s2,32(sp)
    8000407c:	01813983          	ld	s3,24(sp)
    80004080:	01013a03          	ld	s4,16(sp)
    80004084:	00813a83          	ld	s5,8(sp)
    80004088:	04010113          	addi	sp,sp,64
    8000408c:	00008067          	ret
    80004090:	00001517          	auipc	a0,0x1
    80004094:	2a850513          	addi	a0,a0,680 # 80005338 <digits+0x18>
    80004098:	fffff097          	auipc	ra,0xfffff
    8000409c:	4b4080e7          	jalr	1204(ra) # 8000354c <panic>

00000000800040a0 <freerange>:
    800040a0:	fc010113          	addi	sp,sp,-64
    800040a4:	000017b7          	lui	a5,0x1
    800040a8:	02913423          	sd	s1,40(sp)
    800040ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800040b0:	009504b3          	add	s1,a0,s1
    800040b4:	fffff537          	lui	a0,0xfffff
    800040b8:	02813823          	sd	s0,48(sp)
    800040bc:	02113c23          	sd	ra,56(sp)
    800040c0:	03213023          	sd	s2,32(sp)
    800040c4:	01313c23          	sd	s3,24(sp)
    800040c8:	01413823          	sd	s4,16(sp)
    800040cc:	01513423          	sd	s5,8(sp)
    800040d0:	01613023          	sd	s6,0(sp)
    800040d4:	04010413          	addi	s0,sp,64
    800040d8:	00a4f4b3          	and	s1,s1,a0
    800040dc:	00f487b3          	add	a5,s1,a5
    800040e0:	06f5e463          	bltu	a1,a5,80004148 <freerange+0xa8>
    800040e4:	00003a97          	auipc	s5,0x3
    800040e8:	e4ca8a93          	addi	s5,s5,-436 # 80006f30 <end>
    800040ec:	0954e263          	bltu	s1,s5,80004170 <freerange+0xd0>
    800040f0:	01100993          	li	s3,17
    800040f4:	01b99993          	slli	s3,s3,0x1b
    800040f8:	0734fc63          	bgeu	s1,s3,80004170 <freerange+0xd0>
    800040fc:	00058a13          	mv	s4,a1
    80004100:	00002917          	auipc	s2,0x2
    80004104:	b7090913          	addi	s2,s2,-1168 # 80005c70 <kmem>
    80004108:	00002b37          	lui	s6,0x2
    8000410c:	0140006f          	j	80004120 <freerange+0x80>
    80004110:	000017b7          	lui	a5,0x1
    80004114:	00f484b3          	add	s1,s1,a5
    80004118:	0554ec63          	bltu	s1,s5,80004170 <freerange+0xd0>
    8000411c:	0534fa63          	bgeu	s1,s3,80004170 <freerange+0xd0>
    80004120:	00001637          	lui	a2,0x1
    80004124:	00100593          	li	a1,1
    80004128:	00048513          	mv	a0,s1
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	50c080e7          	jalr	1292(ra) # 80004638 <__memset>
    80004134:	00093703          	ld	a4,0(s2)
    80004138:	016487b3          	add	a5,s1,s6
    8000413c:	00e4b023          	sd	a4,0(s1)
    80004140:	00993023          	sd	s1,0(s2)
    80004144:	fcfa76e3          	bgeu	s4,a5,80004110 <freerange+0x70>
    80004148:	03813083          	ld	ra,56(sp)
    8000414c:	03013403          	ld	s0,48(sp)
    80004150:	02813483          	ld	s1,40(sp)
    80004154:	02013903          	ld	s2,32(sp)
    80004158:	01813983          	ld	s3,24(sp)
    8000415c:	01013a03          	ld	s4,16(sp)
    80004160:	00813a83          	ld	s5,8(sp)
    80004164:	00013b03          	ld	s6,0(sp)
    80004168:	04010113          	addi	sp,sp,64
    8000416c:	00008067          	ret
    80004170:	00001517          	auipc	a0,0x1
    80004174:	1c850513          	addi	a0,a0,456 # 80005338 <digits+0x18>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	3d4080e7          	jalr	980(ra) # 8000354c <panic>

0000000080004180 <kfree>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00813823          	sd	s0,16(sp)
    80004188:	00113c23          	sd	ra,24(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	02010413          	addi	s0,sp,32
    80004194:	03451793          	slli	a5,a0,0x34
    80004198:	04079c63          	bnez	a5,800041f0 <kfree+0x70>
    8000419c:	00003797          	auipc	a5,0x3
    800041a0:	d9478793          	addi	a5,a5,-620 # 80006f30 <end>
    800041a4:	00050493          	mv	s1,a0
    800041a8:	04f56463          	bltu	a0,a5,800041f0 <kfree+0x70>
    800041ac:	01100793          	li	a5,17
    800041b0:	01b79793          	slli	a5,a5,0x1b
    800041b4:	02f57e63          	bgeu	a0,a5,800041f0 <kfree+0x70>
    800041b8:	00001637          	lui	a2,0x1
    800041bc:	00100593          	li	a1,1
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	478080e7          	jalr	1144(ra) # 80004638 <__memset>
    800041c8:	00002797          	auipc	a5,0x2
    800041cc:	aa878793          	addi	a5,a5,-1368 # 80005c70 <kmem>
    800041d0:	0007b703          	ld	a4,0(a5)
    800041d4:	01813083          	ld	ra,24(sp)
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	00e4b023          	sd	a4,0(s1)
    800041e0:	0097b023          	sd	s1,0(a5)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret
    800041f0:	00001517          	auipc	a0,0x1
    800041f4:	14850513          	addi	a0,a0,328 # 80005338 <digits+0x18>
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	354080e7          	jalr	852(ra) # 8000354c <panic>

0000000080004200 <kalloc>:
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	00113c23          	sd	ra,24(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00002797          	auipc	a5,0x2
    80004218:	a5c78793          	addi	a5,a5,-1444 # 80005c70 <kmem>
    8000421c:	0007b483          	ld	s1,0(a5)
    80004220:	02048063          	beqz	s1,80004240 <kalloc+0x40>
    80004224:	0004b703          	ld	a4,0(s1)
    80004228:	00001637          	lui	a2,0x1
    8000422c:	00500593          	li	a1,5
    80004230:	00048513          	mv	a0,s1
    80004234:	00e7b023          	sd	a4,0(a5)
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	400080e7          	jalr	1024(ra) # 80004638 <__memset>
    80004240:	01813083          	ld	ra,24(sp)
    80004244:	01013403          	ld	s0,16(sp)
    80004248:	00048513          	mv	a0,s1
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret

0000000080004258 <initlock>:
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00813423          	sd	s0,8(sp)
    80004260:	01010413          	addi	s0,sp,16
    80004264:	00813403          	ld	s0,8(sp)
    80004268:	00b53423          	sd	a1,8(a0)
    8000426c:	00052023          	sw	zero,0(a0)
    80004270:	00053823          	sd	zero,16(a0)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret

000000008000427c <acquire>:
    8000427c:	fe010113          	addi	sp,sp,-32
    80004280:	00813823          	sd	s0,16(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	00113c23          	sd	ra,24(sp)
    8000428c:	01213023          	sd	s2,0(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	00050493          	mv	s1,a0
    80004298:	10002973          	csrr	s2,sstatus
    8000429c:	100027f3          	csrr	a5,sstatus
    800042a0:	ffd7f793          	andi	a5,a5,-3
    800042a4:	10079073          	csrw	sstatus,a5
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	8e8080e7          	jalr	-1816(ra) # 80002b90 <mycpu>
    800042b0:	07852783          	lw	a5,120(a0)
    800042b4:	06078e63          	beqz	a5,80004330 <acquire+0xb4>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	8d8080e7          	jalr	-1832(ra) # 80002b90 <mycpu>
    800042c0:	07852783          	lw	a5,120(a0)
    800042c4:	0004a703          	lw	a4,0(s1)
    800042c8:	0017879b          	addiw	a5,a5,1
    800042cc:	06f52c23          	sw	a5,120(a0)
    800042d0:	04071063          	bnez	a4,80004310 <acquire+0x94>
    800042d4:	00100713          	li	a4,1
    800042d8:	00070793          	mv	a5,a4
    800042dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800042e0:	0007879b          	sext.w	a5,a5
    800042e4:	fe079ae3          	bnez	a5,800042d8 <acquire+0x5c>
    800042e8:	0ff0000f          	fence
    800042ec:	fffff097          	auipc	ra,0xfffff
    800042f0:	8a4080e7          	jalr	-1884(ra) # 80002b90 <mycpu>
    800042f4:	01813083          	ld	ra,24(sp)
    800042f8:	01013403          	ld	s0,16(sp)
    800042fc:	00a4b823          	sd	a0,16(s1)
    80004300:	00013903          	ld	s2,0(sp)
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	02010113          	addi	sp,sp,32
    8000430c:	00008067          	ret
    80004310:	0104b903          	ld	s2,16(s1)
    80004314:	fffff097          	auipc	ra,0xfffff
    80004318:	87c080e7          	jalr	-1924(ra) # 80002b90 <mycpu>
    8000431c:	faa91ce3          	bne	s2,a0,800042d4 <acquire+0x58>
    80004320:	00001517          	auipc	a0,0x1
    80004324:	02050513          	addi	a0,a0,32 # 80005340 <digits+0x20>
    80004328:	fffff097          	auipc	ra,0xfffff
    8000432c:	224080e7          	jalr	548(ra) # 8000354c <panic>
    80004330:	00195913          	srli	s2,s2,0x1
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	85c080e7          	jalr	-1956(ra) # 80002b90 <mycpu>
    8000433c:	00197913          	andi	s2,s2,1
    80004340:	07252e23          	sw	s2,124(a0)
    80004344:	f75ff06f          	j	800042b8 <acquire+0x3c>

0000000080004348 <release>:
    80004348:	fe010113          	addi	sp,sp,-32
    8000434c:	00813823          	sd	s0,16(sp)
    80004350:	00113c23          	sd	ra,24(sp)
    80004354:	00913423          	sd	s1,8(sp)
    80004358:	01213023          	sd	s2,0(sp)
    8000435c:	02010413          	addi	s0,sp,32
    80004360:	00052783          	lw	a5,0(a0)
    80004364:	00079a63          	bnez	a5,80004378 <release+0x30>
    80004368:	00001517          	auipc	a0,0x1
    8000436c:	fe050513          	addi	a0,a0,-32 # 80005348 <digits+0x28>
    80004370:	fffff097          	auipc	ra,0xfffff
    80004374:	1dc080e7          	jalr	476(ra) # 8000354c <panic>
    80004378:	01053903          	ld	s2,16(a0)
    8000437c:	00050493          	mv	s1,a0
    80004380:	fffff097          	auipc	ra,0xfffff
    80004384:	810080e7          	jalr	-2032(ra) # 80002b90 <mycpu>
    80004388:	fea910e3          	bne	s2,a0,80004368 <release+0x20>
    8000438c:	0004b823          	sd	zero,16(s1)
    80004390:	0ff0000f          	fence
    80004394:	0f50000f          	fence	iorw,ow
    80004398:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	7f4080e7          	jalr	2036(ra) # 80002b90 <mycpu>
    800043a4:	100027f3          	csrr	a5,sstatus
    800043a8:	0027f793          	andi	a5,a5,2
    800043ac:	04079a63          	bnez	a5,80004400 <release+0xb8>
    800043b0:	07852783          	lw	a5,120(a0)
    800043b4:	02f05e63          	blez	a5,800043f0 <release+0xa8>
    800043b8:	fff7871b          	addiw	a4,a5,-1
    800043bc:	06e52c23          	sw	a4,120(a0)
    800043c0:	00071c63          	bnez	a4,800043d8 <release+0x90>
    800043c4:	07c52783          	lw	a5,124(a0)
    800043c8:	00078863          	beqz	a5,800043d8 <release+0x90>
    800043cc:	100027f3          	csrr	a5,sstatus
    800043d0:	0027e793          	ori	a5,a5,2
    800043d4:	10079073          	csrw	sstatus,a5
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	00013903          	ld	s2,0(sp)
    800043e8:	02010113          	addi	sp,sp,32
    800043ec:	00008067          	ret
    800043f0:	00001517          	auipc	a0,0x1
    800043f4:	f7850513          	addi	a0,a0,-136 # 80005368 <digits+0x48>
    800043f8:	fffff097          	auipc	ra,0xfffff
    800043fc:	154080e7          	jalr	340(ra) # 8000354c <panic>
    80004400:	00001517          	auipc	a0,0x1
    80004404:	f5050513          	addi	a0,a0,-176 # 80005350 <digits+0x30>
    80004408:	fffff097          	auipc	ra,0xfffff
    8000440c:	144080e7          	jalr	324(ra) # 8000354c <panic>

0000000080004410 <holding>:
    80004410:	00052783          	lw	a5,0(a0)
    80004414:	00079663          	bnez	a5,80004420 <holding+0x10>
    80004418:	00000513          	li	a0,0
    8000441c:	00008067          	ret
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	01053483          	ld	s1,16(a0)
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	758080e7          	jalr	1880(ra) # 80002b90 <mycpu>
    80004440:	01813083          	ld	ra,24(sp)
    80004444:	01013403          	ld	s0,16(sp)
    80004448:	40a48533          	sub	a0,s1,a0
    8000444c:	00153513          	seqz	a0,a0
    80004450:	00813483          	ld	s1,8(sp)
    80004454:	02010113          	addi	sp,sp,32
    80004458:	00008067          	ret

000000008000445c <push_off>:
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00113c23          	sd	ra,24(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	100024f3          	csrr	s1,sstatus
    80004474:	100027f3          	csrr	a5,sstatus
    80004478:	ffd7f793          	andi	a5,a5,-3
    8000447c:	10079073          	csrw	sstatus,a5
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	710080e7          	jalr	1808(ra) # 80002b90 <mycpu>
    80004488:	07852783          	lw	a5,120(a0)
    8000448c:	02078663          	beqz	a5,800044b8 <push_off+0x5c>
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	700080e7          	jalr	1792(ra) # 80002b90 <mycpu>
    80004498:	07852783          	lw	a5,120(a0)
    8000449c:	01813083          	ld	ra,24(sp)
    800044a0:	01013403          	ld	s0,16(sp)
    800044a4:	0017879b          	addiw	a5,a5,1
    800044a8:	06f52c23          	sw	a5,120(a0)
    800044ac:	00813483          	ld	s1,8(sp)
    800044b0:	02010113          	addi	sp,sp,32
    800044b4:	00008067          	ret
    800044b8:	0014d493          	srli	s1,s1,0x1
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	6d4080e7          	jalr	1748(ra) # 80002b90 <mycpu>
    800044c4:	0014f493          	andi	s1,s1,1
    800044c8:	06952e23          	sw	s1,124(a0)
    800044cc:	fc5ff06f          	j	80004490 <push_off+0x34>

00000000800044d0 <pop_off>:
    800044d0:	ff010113          	addi	sp,sp,-16
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	6b0080e7          	jalr	1712(ra) # 80002b90 <mycpu>
    800044e8:	100027f3          	csrr	a5,sstatus
    800044ec:	0027f793          	andi	a5,a5,2
    800044f0:	04079663          	bnez	a5,8000453c <pop_off+0x6c>
    800044f4:	07852783          	lw	a5,120(a0)
    800044f8:	02f05a63          	blez	a5,8000452c <pop_off+0x5c>
    800044fc:	fff7871b          	addiw	a4,a5,-1
    80004500:	06e52c23          	sw	a4,120(a0)
    80004504:	00071c63          	bnez	a4,8000451c <pop_off+0x4c>
    80004508:	07c52783          	lw	a5,124(a0)
    8000450c:	00078863          	beqz	a5,8000451c <pop_off+0x4c>
    80004510:	100027f3          	csrr	a5,sstatus
    80004514:	0027e793          	ori	a5,a5,2
    80004518:	10079073          	csrw	sstatus,a5
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret
    8000452c:	00001517          	auipc	a0,0x1
    80004530:	e3c50513          	addi	a0,a0,-452 # 80005368 <digits+0x48>
    80004534:	fffff097          	auipc	ra,0xfffff
    80004538:	018080e7          	jalr	24(ra) # 8000354c <panic>
    8000453c:	00001517          	auipc	a0,0x1
    80004540:	e1450513          	addi	a0,a0,-492 # 80005350 <digits+0x30>
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	008080e7          	jalr	8(ra) # 8000354c <panic>

000000008000454c <push_on>:
    8000454c:	fe010113          	addi	sp,sp,-32
    80004550:	00813823          	sd	s0,16(sp)
    80004554:	00113c23          	sd	ra,24(sp)
    80004558:	00913423          	sd	s1,8(sp)
    8000455c:	02010413          	addi	s0,sp,32
    80004560:	100024f3          	csrr	s1,sstatus
    80004564:	100027f3          	csrr	a5,sstatus
    80004568:	0027e793          	ori	a5,a5,2
    8000456c:	10079073          	csrw	sstatus,a5
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	620080e7          	jalr	1568(ra) # 80002b90 <mycpu>
    80004578:	07852783          	lw	a5,120(a0)
    8000457c:	02078663          	beqz	a5,800045a8 <push_on+0x5c>
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	610080e7          	jalr	1552(ra) # 80002b90 <mycpu>
    80004588:	07852783          	lw	a5,120(a0)
    8000458c:	01813083          	ld	ra,24(sp)
    80004590:	01013403          	ld	s0,16(sp)
    80004594:	0017879b          	addiw	a5,a5,1
    80004598:	06f52c23          	sw	a5,120(a0)
    8000459c:	00813483          	ld	s1,8(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret
    800045a8:	0014d493          	srli	s1,s1,0x1
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	5e4080e7          	jalr	1508(ra) # 80002b90 <mycpu>
    800045b4:	0014f493          	andi	s1,s1,1
    800045b8:	06952e23          	sw	s1,124(a0)
    800045bc:	fc5ff06f          	j	80004580 <push_on+0x34>

00000000800045c0 <pop_on>:
    800045c0:	ff010113          	addi	sp,sp,-16
    800045c4:	00813023          	sd	s0,0(sp)
    800045c8:	00113423          	sd	ra,8(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	5c0080e7          	jalr	1472(ra) # 80002b90 <mycpu>
    800045d8:	100027f3          	csrr	a5,sstatus
    800045dc:	0027f793          	andi	a5,a5,2
    800045e0:	04078463          	beqz	a5,80004628 <pop_on+0x68>
    800045e4:	07852783          	lw	a5,120(a0)
    800045e8:	02f05863          	blez	a5,80004618 <pop_on+0x58>
    800045ec:	fff7879b          	addiw	a5,a5,-1
    800045f0:	06f52c23          	sw	a5,120(a0)
    800045f4:	07853783          	ld	a5,120(a0)
    800045f8:	00079863          	bnez	a5,80004608 <pop_on+0x48>
    800045fc:	100027f3          	csrr	a5,sstatus
    80004600:	ffd7f793          	andi	a5,a5,-3
    80004604:	10079073          	csrw	sstatus,a5
    80004608:	00813083          	ld	ra,8(sp)
    8000460c:	00013403          	ld	s0,0(sp)
    80004610:	01010113          	addi	sp,sp,16
    80004614:	00008067          	ret
    80004618:	00001517          	auipc	a0,0x1
    8000461c:	d7850513          	addi	a0,a0,-648 # 80005390 <digits+0x70>
    80004620:	fffff097          	auipc	ra,0xfffff
    80004624:	f2c080e7          	jalr	-212(ra) # 8000354c <panic>
    80004628:	00001517          	auipc	a0,0x1
    8000462c:	d4850513          	addi	a0,a0,-696 # 80005370 <digits+0x50>
    80004630:	fffff097          	auipc	ra,0xfffff
    80004634:	f1c080e7          	jalr	-228(ra) # 8000354c <panic>

0000000080004638 <__memset>:
    80004638:	ff010113          	addi	sp,sp,-16
    8000463c:	00813423          	sd	s0,8(sp)
    80004640:	01010413          	addi	s0,sp,16
    80004644:	1a060e63          	beqz	a2,80004800 <__memset+0x1c8>
    80004648:	40a007b3          	neg	a5,a0
    8000464c:	0077f793          	andi	a5,a5,7
    80004650:	00778693          	addi	a3,a5,7
    80004654:	00b00813          	li	a6,11
    80004658:	0ff5f593          	andi	a1,a1,255
    8000465c:	fff6071b          	addiw	a4,a2,-1
    80004660:	1b06e663          	bltu	a3,a6,8000480c <__memset+0x1d4>
    80004664:	1cd76463          	bltu	a4,a3,8000482c <__memset+0x1f4>
    80004668:	1a078e63          	beqz	a5,80004824 <__memset+0x1ec>
    8000466c:	00b50023          	sb	a1,0(a0)
    80004670:	00100713          	li	a4,1
    80004674:	1ae78463          	beq	a5,a4,8000481c <__memset+0x1e4>
    80004678:	00b500a3          	sb	a1,1(a0)
    8000467c:	00200713          	li	a4,2
    80004680:	1ae78a63          	beq	a5,a4,80004834 <__memset+0x1fc>
    80004684:	00b50123          	sb	a1,2(a0)
    80004688:	00300713          	li	a4,3
    8000468c:	18e78463          	beq	a5,a4,80004814 <__memset+0x1dc>
    80004690:	00b501a3          	sb	a1,3(a0)
    80004694:	00400713          	li	a4,4
    80004698:	1ae78263          	beq	a5,a4,8000483c <__memset+0x204>
    8000469c:	00b50223          	sb	a1,4(a0)
    800046a0:	00500713          	li	a4,5
    800046a4:	1ae78063          	beq	a5,a4,80004844 <__memset+0x20c>
    800046a8:	00b502a3          	sb	a1,5(a0)
    800046ac:	00700713          	li	a4,7
    800046b0:	18e79e63          	bne	a5,a4,8000484c <__memset+0x214>
    800046b4:	00b50323          	sb	a1,6(a0)
    800046b8:	00700e93          	li	t4,7
    800046bc:	00859713          	slli	a4,a1,0x8
    800046c0:	00e5e733          	or	a4,a1,a4
    800046c4:	01059e13          	slli	t3,a1,0x10
    800046c8:	01c76e33          	or	t3,a4,t3
    800046cc:	01859313          	slli	t1,a1,0x18
    800046d0:	006e6333          	or	t1,t3,t1
    800046d4:	02059893          	slli	a7,a1,0x20
    800046d8:	40f60e3b          	subw	t3,a2,a5
    800046dc:	011368b3          	or	a7,t1,a7
    800046e0:	02859813          	slli	a6,a1,0x28
    800046e4:	0108e833          	or	a6,a7,a6
    800046e8:	03059693          	slli	a3,a1,0x30
    800046ec:	003e589b          	srliw	a7,t3,0x3
    800046f0:	00d866b3          	or	a3,a6,a3
    800046f4:	03859713          	slli	a4,a1,0x38
    800046f8:	00389813          	slli	a6,a7,0x3
    800046fc:	00f507b3          	add	a5,a0,a5
    80004700:	00e6e733          	or	a4,a3,a4
    80004704:	000e089b          	sext.w	a7,t3
    80004708:	00f806b3          	add	a3,a6,a5
    8000470c:	00e7b023          	sd	a4,0(a5)
    80004710:	00878793          	addi	a5,a5,8
    80004714:	fed79ce3          	bne	a5,a3,8000470c <__memset+0xd4>
    80004718:	ff8e7793          	andi	a5,t3,-8
    8000471c:	0007871b          	sext.w	a4,a5
    80004720:	01d787bb          	addw	a5,a5,t4
    80004724:	0ce88e63          	beq	a7,a4,80004800 <__memset+0x1c8>
    80004728:	00f50733          	add	a4,a0,a5
    8000472c:	00b70023          	sb	a1,0(a4)
    80004730:	0017871b          	addiw	a4,a5,1
    80004734:	0cc77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004738:	00e50733          	add	a4,a0,a4
    8000473c:	00b70023          	sb	a1,0(a4)
    80004740:	0027871b          	addiw	a4,a5,2
    80004744:	0ac77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004748:	00e50733          	add	a4,a0,a4
    8000474c:	00b70023          	sb	a1,0(a4)
    80004750:	0037871b          	addiw	a4,a5,3
    80004754:	0ac77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004758:	00e50733          	add	a4,a0,a4
    8000475c:	00b70023          	sb	a1,0(a4)
    80004760:	0047871b          	addiw	a4,a5,4
    80004764:	08c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004768:	00e50733          	add	a4,a0,a4
    8000476c:	00b70023          	sb	a1,0(a4)
    80004770:	0057871b          	addiw	a4,a5,5
    80004774:	08c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004778:	00e50733          	add	a4,a0,a4
    8000477c:	00b70023          	sb	a1,0(a4)
    80004780:	0067871b          	addiw	a4,a5,6
    80004784:	06c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004788:	00e50733          	add	a4,a0,a4
    8000478c:	00b70023          	sb	a1,0(a4)
    80004790:	0077871b          	addiw	a4,a5,7
    80004794:	06c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    80004798:	00e50733          	add	a4,a0,a4
    8000479c:	00b70023          	sb	a1,0(a4)
    800047a0:	0087871b          	addiw	a4,a5,8
    800047a4:	04c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047a8:	00e50733          	add	a4,a0,a4
    800047ac:	00b70023          	sb	a1,0(a4)
    800047b0:	0097871b          	addiw	a4,a5,9
    800047b4:	04c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047b8:	00e50733          	add	a4,a0,a4
    800047bc:	00b70023          	sb	a1,0(a4)
    800047c0:	00a7871b          	addiw	a4,a5,10
    800047c4:	02c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047c8:	00e50733          	add	a4,a0,a4
    800047cc:	00b70023          	sb	a1,0(a4)
    800047d0:	00b7871b          	addiw	a4,a5,11
    800047d4:	02c77663          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047d8:	00e50733          	add	a4,a0,a4
    800047dc:	00b70023          	sb	a1,0(a4)
    800047e0:	00c7871b          	addiw	a4,a5,12
    800047e4:	00c77e63          	bgeu	a4,a2,80004800 <__memset+0x1c8>
    800047e8:	00e50733          	add	a4,a0,a4
    800047ec:	00b70023          	sb	a1,0(a4)
    800047f0:	00d7879b          	addiw	a5,a5,13
    800047f4:	00c7f663          	bgeu	a5,a2,80004800 <__memset+0x1c8>
    800047f8:	00f507b3          	add	a5,a0,a5
    800047fc:	00b78023          	sb	a1,0(a5)
    80004800:	00813403          	ld	s0,8(sp)
    80004804:	01010113          	addi	sp,sp,16
    80004808:	00008067          	ret
    8000480c:	00b00693          	li	a3,11
    80004810:	e55ff06f          	j	80004664 <__memset+0x2c>
    80004814:	00300e93          	li	t4,3
    80004818:	ea5ff06f          	j	800046bc <__memset+0x84>
    8000481c:	00100e93          	li	t4,1
    80004820:	e9dff06f          	j	800046bc <__memset+0x84>
    80004824:	00000e93          	li	t4,0
    80004828:	e95ff06f          	j	800046bc <__memset+0x84>
    8000482c:	00000793          	li	a5,0
    80004830:	ef9ff06f          	j	80004728 <__memset+0xf0>
    80004834:	00200e93          	li	t4,2
    80004838:	e85ff06f          	j	800046bc <__memset+0x84>
    8000483c:	00400e93          	li	t4,4
    80004840:	e7dff06f          	j	800046bc <__memset+0x84>
    80004844:	00500e93          	li	t4,5
    80004848:	e75ff06f          	j	800046bc <__memset+0x84>
    8000484c:	00600e93          	li	t4,6
    80004850:	e6dff06f          	j	800046bc <__memset+0x84>

0000000080004854 <__memmove>:
    80004854:	ff010113          	addi	sp,sp,-16
    80004858:	00813423          	sd	s0,8(sp)
    8000485c:	01010413          	addi	s0,sp,16
    80004860:	0e060863          	beqz	a2,80004950 <__memmove+0xfc>
    80004864:	fff6069b          	addiw	a3,a2,-1
    80004868:	0006881b          	sext.w	a6,a3
    8000486c:	0ea5e863          	bltu	a1,a0,8000495c <__memmove+0x108>
    80004870:	00758713          	addi	a4,a1,7
    80004874:	00a5e7b3          	or	a5,a1,a0
    80004878:	40a70733          	sub	a4,a4,a0
    8000487c:	0077f793          	andi	a5,a5,7
    80004880:	00f73713          	sltiu	a4,a4,15
    80004884:	00174713          	xori	a4,a4,1
    80004888:	0017b793          	seqz	a5,a5
    8000488c:	00e7f7b3          	and	a5,a5,a4
    80004890:	10078863          	beqz	a5,800049a0 <__memmove+0x14c>
    80004894:	00900793          	li	a5,9
    80004898:	1107f463          	bgeu	a5,a6,800049a0 <__memmove+0x14c>
    8000489c:	0036581b          	srliw	a6,a2,0x3
    800048a0:	fff8081b          	addiw	a6,a6,-1
    800048a4:	02081813          	slli	a6,a6,0x20
    800048a8:	01d85893          	srli	a7,a6,0x1d
    800048ac:	00858813          	addi	a6,a1,8
    800048b0:	00058793          	mv	a5,a1
    800048b4:	00050713          	mv	a4,a0
    800048b8:	01088833          	add	a6,a7,a6
    800048bc:	0007b883          	ld	a7,0(a5)
    800048c0:	00878793          	addi	a5,a5,8
    800048c4:	00870713          	addi	a4,a4,8
    800048c8:	ff173c23          	sd	a7,-8(a4)
    800048cc:	ff0798e3          	bne	a5,a6,800048bc <__memmove+0x68>
    800048d0:	ff867713          	andi	a4,a2,-8
    800048d4:	02071793          	slli	a5,a4,0x20
    800048d8:	0207d793          	srli	a5,a5,0x20
    800048dc:	00f585b3          	add	a1,a1,a5
    800048e0:	40e686bb          	subw	a3,a3,a4
    800048e4:	00f507b3          	add	a5,a0,a5
    800048e8:	06e60463          	beq	a2,a4,80004950 <__memmove+0xfc>
    800048ec:	0005c703          	lbu	a4,0(a1)
    800048f0:	00e78023          	sb	a4,0(a5)
    800048f4:	04068e63          	beqz	a3,80004950 <__memmove+0xfc>
    800048f8:	0015c603          	lbu	a2,1(a1)
    800048fc:	00100713          	li	a4,1
    80004900:	00c780a3          	sb	a2,1(a5)
    80004904:	04e68663          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004908:	0025c603          	lbu	a2,2(a1)
    8000490c:	00200713          	li	a4,2
    80004910:	00c78123          	sb	a2,2(a5)
    80004914:	02e68e63          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004918:	0035c603          	lbu	a2,3(a1)
    8000491c:	00300713          	li	a4,3
    80004920:	00c781a3          	sb	a2,3(a5)
    80004924:	02e68663          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004928:	0045c603          	lbu	a2,4(a1)
    8000492c:	00400713          	li	a4,4
    80004930:	00c78223          	sb	a2,4(a5)
    80004934:	00e68e63          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004938:	0055c603          	lbu	a2,5(a1)
    8000493c:	00500713          	li	a4,5
    80004940:	00c782a3          	sb	a2,5(a5)
    80004944:	00e68663          	beq	a3,a4,80004950 <__memmove+0xfc>
    80004948:	0065c703          	lbu	a4,6(a1)
    8000494c:	00e78323          	sb	a4,6(a5)
    80004950:	00813403          	ld	s0,8(sp)
    80004954:	01010113          	addi	sp,sp,16
    80004958:	00008067          	ret
    8000495c:	02061713          	slli	a4,a2,0x20
    80004960:	02075713          	srli	a4,a4,0x20
    80004964:	00e587b3          	add	a5,a1,a4
    80004968:	f0f574e3          	bgeu	a0,a5,80004870 <__memmove+0x1c>
    8000496c:	02069613          	slli	a2,a3,0x20
    80004970:	02065613          	srli	a2,a2,0x20
    80004974:	fff64613          	not	a2,a2
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00c78633          	add	a2,a5,a2
    80004980:	fff7c683          	lbu	a3,-1(a5)
    80004984:	fff78793          	addi	a5,a5,-1
    80004988:	fff70713          	addi	a4,a4,-1
    8000498c:	00d70023          	sb	a3,0(a4)
    80004990:	fec798e3          	bne	a5,a2,80004980 <__memmove+0x12c>
    80004994:	00813403          	ld	s0,8(sp)
    80004998:	01010113          	addi	sp,sp,16
    8000499c:	00008067          	ret
    800049a0:	02069713          	slli	a4,a3,0x20
    800049a4:	02075713          	srli	a4,a4,0x20
    800049a8:	00170713          	addi	a4,a4,1
    800049ac:	00e50733          	add	a4,a0,a4
    800049b0:	00050793          	mv	a5,a0
    800049b4:	0005c683          	lbu	a3,0(a1)
    800049b8:	00178793          	addi	a5,a5,1
    800049bc:	00158593          	addi	a1,a1,1
    800049c0:	fed78fa3          	sb	a3,-1(a5)
    800049c4:	fee798e3          	bne	a5,a4,800049b4 <__memmove+0x160>
    800049c8:	f89ff06f          	j	80004950 <__memmove+0xfc>

00000000800049cc <__putc>:
    800049cc:	fe010113          	addi	sp,sp,-32
    800049d0:	00813823          	sd	s0,16(sp)
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	02010413          	addi	s0,sp,32
    800049dc:	00050793          	mv	a5,a0
    800049e0:	fef40593          	addi	a1,s0,-17
    800049e4:	00100613          	li	a2,1
    800049e8:	00000513          	li	a0,0
    800049ec:	fef407a3          	sb	a5,-17(s0)
    800049f0:	fffff097          	auipc	ra,0xfffff
    800049f4:	b3c080e7          	jalr	-1220(ra) # 8000352c <console_write>
    800049f8:	01813083          	ld	ra,24(sp)
    800049fc:	01013403          	ld	s0,16(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret

0000000080004a08 <__getc>:
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00813823          	sd	s0,16(sp)
    80004a10:	00113c23          	sd	ra,24(sp)
    80004a14:	02010413          	addi	s0,sp,32
    80004a18:	fe840593          	addi	a1,s0,-24
    80004a1c:	00100613          	li	a2,1
    80004a20:	00000513          	li	a0,0
    80004a24:	fffff097          	auipc	ra,0xfffff
    80004a28:	ae8080e7          	jalr	-1304(ra) # 8000350c <console_read>
    80004a2c:	fe844503          	lbu	a0,-24(s0)
    80004a30:	01813083          	ld	ra,24(sp)
    80004a34:	01013403          	ld	s0,16(sp)
    80004a38:	02010113          	addi	sp,sp,32
    80004a3c:	00008067          	ret

0000000080004a40 <console_handler>:
    80004a40:	fe010113          	addi	sp,sp,-32
    80004a44:	00813823          	sd	s0,16(sp)
    80004a48:	00113c23          	sd	ra,24(sp)
    80004a4c:	00913423          	sd	s1,8(sp)
    80004a50:	02010413          	addi	s0,sp,32
    80004a54:	14202773          	csrr	a4,scause
    80004a58:	100027f3          	csrr	a5,sstatus
    80004a5c:	0027f793          	andi	a5,a5,2
    80004a60:	06079e63          	bnez	a5,80004adc <console_handler+0x9c>
    80004a64:	00074c63          	bltz	a4,80004a7c <console_handler+0x3c>
    80004a68:	01813083          	ld	ra,24(sp)
    80004a6c:	01013403          	ld	s0,16(sp)
    80004a70:	00813483          	ld	s1,8(sp)
    80004a74:	02010113          	addi	sp,sp,32
    80004a78:	00008067          	ret
    80004a7c:	0ff77713          	andi	a4,a4,255
    80004a80:	00900793          	li	a5,9
    80004a84:	fef712e3          	bne	a4,a5,80004a68 <console_handler+0x28>
    80004a88:	ffffe097          	auipc	ra,0xffffe
    80004a8c:	6dc080e7          	jalr	1756(ra) # 80003164 <plic_claim>
    80004a90:	00a00793          	li	a5,10
    80004a94:	00050493          	mv	s1,a0
    80004a98:	02f50c63          	beq	a0,a5,80004ad0 <console_handler+0x90>
    80004a9c:	fc0506e3          	beqz	a0,80004a68 <console_handler+0x28>
    80004aa0:	00050593          	mv	a1,a0
    80004aa4:	00000517          	auipc	a0,0x0
    80004aa8:	7f450513          	addi	a0,a0,2036 # 80005298 <_ZZ12printIntegermE6digits+0xe0>
    80004aac:	fffff097          	auipc	ra,0xfffff
    80004ab0:	afc080e7          	jalr	-1284(ra) # 800035a8 <__printf>
    80004ab4:	01013403          	ld	s0,16(sp)
    80004ab8:	01813083          	ld	ra,24(sp)
    80004abc:	00048513          	mv	a0,s1
    80004ac0:	00813483          	ld	s1,8(sp)
    80004ac4:	02010113          	addi	sp,sp,32
    80004ac8:	ffffe317          	auipc	t1,0xffffe
    80004acc:	6d430067          	jr	1748(t1) # 8000319c <plic_complete>
    80004ad0:	fffff097          	auipc	ra,0xfffff
    80004ad4:	3e0080e7          	jalr	992(ra) # 80003eb0 <uartintr>
    80004ad8:	fddff06f          	j	80004ab4 <console_handler+0x74>
    80004adc:	00001517          	auipc	a0,0x1
    80004ae0:	8bc50513          	addi	a0,a0,-1860 # 80005398 <digits+0x78>
    80004ae4:	fffff097          	auipc	ra,0xfffff
    80004ae8:	a68080e7          	jalr	-1432(ra) # 8000354c <panic>
	...
