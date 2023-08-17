
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9f813103          	ld	sp,-1544(sp) # 800059f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	574020ef          	jal	ra,80002590 <start>

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
    80001088:	135000ef          	jal	ra,800019bc <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011d4:	094080e7          	jalr	148(ra) # 80002264 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011d8:	00001097          	auipc	ra,0x1
    800011dc:	e9c080e7          	jalr	-356(ra) # 80002074 <_ZN15MemoryAllocator9mem_allocEm>
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

0000000080001274 <_Z11thread_join7_thread>:

void thread_join(_thread handle)
{
    80001274:	fe010113          	addi	sp,sp,-32
    80001278:	00813c23          	sd	s0,24(sp)
    8000127c:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000014UL;
    80001280:	01400793          	li	a5,20
    80001284:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001288:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    8000128c:	00053583          	ld	a1,0(a0) # 8000 <_entry-0x7fff8000>

    asm volatile("ecall");
    80001290:	00000073          	ecall
}
    80001294:	01813403          	ld	s0,24(sp)
    80001298:	02010113          	addi	sp,sp,32
    8000129c:	00008067          	ret

00000000800012a0 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init)
{
    800012a0:	fd010113          	addi	sp,sp,-48
    800012a4:	02813423          	sd	s0,40(sp)
    800012a8:	03010413          	addi	s0,sp,48
    800012ac:	fca43c23          	sd	a0,-40(s0)
    800012b0:	fcb42a23          	sw	a1,-44(s0)
    size_t code = 0x0000000000000021UL;
    800012b4:	02100793          	li	a5,33
    800012b8:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800012bc:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    800012c0:	fd843583          	ld	a1,-40(s0)
    asm volatile("ld a2, %0" : : "m" (init));
    800012c4:	fd443603          	ld	a2,-44(s0)

    asm volatile("ecall");
    800012c8:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800012cc:	fea43223          	sd	a0,-28(s0)

    return val;
}
    800012d0:	fe442503          	lw	a0,-28(s0)
    800012d4:	02813403          	ld	s0,40(sp)
    800012d8:	03010113          	addi	sp,sp,48
    800012dc:	00008067          	ret

00000000800012e0 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle)
{
    800012e0:	fd010113          	addi	sp,sp,-48
    800012e4:	02813423          	sd	s0,40(sp)
    800012e8:	03010413          	addi	s0,sp,48
    800012ec:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000022UL;
    800012f0:	02200793          	li	a5,34
    800012f4:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800012f8:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    800012fc:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001300:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001304:	fea43223          	sd	a0,-28(s0)

    return val;
}
    80001308:	fe442503          	lw	a0,-28(s0)
    8000130c:	02813403          	ld	s0,40(sp)
    80001310:	03010113          	addi	sp,sp,48
    80001314:	00008067          	ret

0000000080001318 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80001318:	fd010113          	addi	sp,sp,-48
    8000131c:	02813423          	sd	s0,40(sp)
    80001320:	03010413          	addi	s0,sp,48
    80001324:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000023UL;
    80001328:	02300793          	li	a5,35
    8000132c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001330:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (id));
    80001334:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001338:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    8000133c:	fea43223          	sd	a0,-28(s0)

    return val;
}
    80001340:	fe442503          	lw	a0,-28(s0)
    80001344:	02813403          	ld	s0,40(sp)
    80001348:	03010113          	addi	sp,sp,48
    8000134c:	00008067          	ret

0000000080001350 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    80001350:	fd010113          	addi	sp,sp,-48
    80001354:	02813423          	sd	s0,40(sp)
    80001358:	03010413          	addi	s0,sp,48
    8000135c:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000024UL;
    80001360:	02400793          	li	a5,36
    80001364:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001368:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (id));
    8000136c:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001370:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001374:	fea43223          	sd	a0,-28(s0)

    return val;
}
    80001378:	fe442503          	lw	a0,-28(s0)
    8000137c:	02813403          	ld	s0,40(sp)
    80001380:	03010113          	addi	sp,sp,48
    80001384:	00008067          	ret

0000000080001388 <_ZL9fibonaccim>:
        thread_dispatch();
    }
}

static uint64 fibonacci(uint64 n)
{
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	00913423          	sd	s1,8(sp)
    80001398:	01213023          	sd	s2,0(sp)
    8000139c:	02010413          	addi	s0,sp,32
    800013a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800013a4:	00100793          	li	a5,1
    800013a8:	02a7f863          	bgeu	a5,a0,800013d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800013ac:	00a00793          	li	a5,10
    800013b0:	02f577b3          	remu	a5,a0,a5
    800013b4:	02078e63          	beqz	a5,800013f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800013b8:	fff48513          	addi	a0,s1,-1
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	fcc080e7          	jalr	-52(ra) # 80001388 <_ZL9fibonaccim>
    800013c4:	00050913          	mv	s2,a0
    800013c8:	ffe48513          	addi	a0,s1,-2
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	fbc080e7          	jalr	-68(ra) # 80001388 <_ZL9fibonaccim>
    800013d4:	00a90533          	add	a0,s2,a0
}
    800013d8:	01813083          	ld	ra,24(sp)
    800013dc:	01013403          	ld	s0,16(sp)
    800013e0:	00813483          	ld	s1,8(sp)
    800013e4:	00013903          	ld	s2,0(sp)
    800013e8:	02010113          	addi	sp,sp,32
    800013ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	e5c080e7          	jalr	-420(ra) # 8000124c <_Z15thread_dispatchv>
    800013f8:	fc1ff06f          	j	800013b8 <_ZL9fibonaccim+0x30>

00000000800013fc <_Z11workerBodyAPv>:
{
    800013fc:	fe010113          	addi	sp,sp,-32
    80001400:	00113c23          	sd	ra,24(sp)
    80001404:	00813823          	sd	s0,16(sp)
    80001408:	00913423          	sd	s1,8(sp)
    8000140c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001410:	00000493          	li	s1,0
    80001414:	0380006f          	j	8000144c <_Z11workerBodyAPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001418:	00168693          	addi	a3,a3,1
    8000141c:	000027b7          	lui	a5,0x2
    80001420:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001424:	00d7ee63          	bltu	a5,a3,80001440 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001428:	00000713          	li	a4,0
    8000142c:	000077b7          	lui	a5,0x7
    80001430:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001434:	fee7e2e3          	bltu	a5,a4,80001418 <_Z11workerBodyAPv+0x1c>
    80001438:	00170713          	addi	a4,a4,1
    8000143c:	ff1ff06f          	j	8000142c <_Z11workerBodyAPv+0x30>
        thread_dispatch();
    80001440:	00000097          	auipc	ra,0x0
    80001444:	e0c080e7          	jalr	-500(ra) # 8000124c <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10; i++)
    80001448:	00148493          	addi	s1,s1,1
    8000144c:	00900793          	li	a5,9
    80001450:	0297ec63          	bltu	a5,s1,80001488 <_Z11workerBodyAPv+0x8c>
        printString("A: i=");
    80001454:	00004517          	auipc	a0,0x4
    80001458:	bcc50513          	addi	a0,a0,-1076 # 80005020 <CONSOLE_STATUS+0x10>
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	e3c080e7          	jalr	-452(ra) # 80002298 <_Z11printStringPKc>
        printInteger(i);
    80001464:	00048513          	mv	a0,s1
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	ea0080e7          	jalr	-352(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    80001470:	00004517          	auipc	a0,0x4
    80001474:	bd050513          	addi	a0,a0,-1072 # 80005040 <CONSOLE_STATUS+0x30>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	e20080e7          	jalr	-480(ra) # 80002298 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001480:	00000693          	li	a3,0
    80001484:	f99ff06f          	j	8000141c <_Z11workerBodyAPv+0x20>
}
    80001488:	01813083          	ld	ra,24(sp)
    8000148c:	01013403          	ld	s0,16(sp)
    80001490:	00813483          	ld	s1,8(sp)
    80001494:	02010113          	addi	sp,sp,32
    80001498:	00008067          	ret

000000008000149c <_Z11workerBodyBPv>:
{
    8000149c:	fe010113          	addi	sp,sp,-32
    800014a0:	00113c23          	sd	ra,24(sp)
    800014a4:	00813823          	sd	s0,16(sp)
    800014a8:	00913423          	sd	s1,8(sp)
    800014ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800014b0:	00000493          	li	s1,0
    800014b4:	0380006f          	j	800014ec <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    800014b8:	00168693          	addi	a3,a3,1
    800014bc:	000027b7          	lui	a5,0x2
    800014c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014c4:	00d7ee63          	bltu	a5,a3,800014e0 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800014c8:	00000713          	li	a4,0
    800014cc:	000077b7          	lui	a5,0x7
    800014d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014d4:	fee7e2e3          	bltu	a5,a4,800014b8 <_Z11workerBodyBPv+0x1c>
    800014d8:	00170713          	addi	a4,a4,1
    800014dc:	ff1ff06f          	j	800014cc <_Z11workerBodyBPv+0x30>
        thread_dispatch();
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	d6c080e7          	jalr	-660(ra) # 8000124c <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 16; i++)
    800014e8:	00148493          	addi	s1,s1,1
    800014ec:	00f00793          	li	a5,15
    800014f0:	0297ec63          	bltu	a5,s1,80001528 <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	b3450513          	addi	a0,a0,-1228 # 80005028 <CONSOLE_STATUS+0x18>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	d9c080e7          	jalr	-612(ra) # 80002298 <_Z11printStringPKc>
        printInteger(i);
    80001504:	00048513          	mv	a0,s1
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	e00080e7          	jalr	-512(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	b3050513          	addi	a0,a0,-1232 # 80005040 <CONSOLE_STATUS+0x30>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	d80080e7          	jalr	-640(ra) # 80002298 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001520:	00000693          	li	a3,0
    80001524:	f99ff06f          	j	800014bc <_Z11workerBodyBPv+0x20>
}
    80001528:	01813083          	ld	ra,24(sp)
    8000152c:	01013403          	ld	s0,16(sp)
    80001530:	00813483          	ld	s1,8(sp)
    80001534:	02010113          	addi	sp,sp,32
    80001538:	00008067          	ret

000000008000153c <_Z11workerBodyCPv>:


void workerBodyC(void*)
{
    8000153c:	fe010113          	addi	sp,sp,-32
    80001540:	00113c23          	sd	ra,24(sp)
    80001544:	00813823          	sd	s0,16(sp)
    80001548:	00913423          	sd	s1,8(sp)
    8000154c:	01213023          	sd	s2,0(sp)
    80001550:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001554:	00000493          	li	s1,0
    80001558:	0400006f          	j	80001598 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	ad450513          	addi	a0,a0,-1324 # 80005030 <CONSOLE_STATUS+0x20>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	d34080e7          	jalr	-716(ra) # 80002298 <_Z11printStringPKc>
        printInteger(i);
    8000156c:	00048513          	mv	a0,s1
    80001570:	00001097          	auipc	ra,0x1
    80001574:	d98080e7          	jalr	-616(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	ac850513          	addi	a0,a0,-1336 # 80005040 <CONSOLE_STATUS+0x30>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	d18080e7          	jalr	-744(ra) # 80002298 <_Z11printStringPKc>
        thread_dispatch();
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	cc4080e7          	jalr	-828(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 3; i++)
    80001590:	0014849b          	addiw	s1,s1,1
    80001594:	0ff4f493          	andi	s1,s1,255
    80001598:	00200793          	li	a5,2
    8000159c:	fc97f0e3          	bgeu	a5,s1,8000155c <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	a9850513          	addi	a0,a0,-1384 # 80005038 <CONSOLE_STATUS+0x28>
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	cf0080e7          	jalr	-784(ra) # 80002298 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800015b0:	00700313          	li	t1,7
    thread_dispatch();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c98080e7          	jalr	-872(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800015bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	a8850513          	addi	a0,a0,-1400 # 80005048 <CONSOLE_STATUS+0x38>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	cd0080e7          	jalr	-816(ra) # 80002298 <_Z11printStringPKc>
    printInteger(t1);
    800015d0:	00090513          	mv	a0,s2
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	d34080e7          	jalr	-716(ra) # 80002308 <_Z12printIntegerm>
    printString("\n");
    800015dc:	00004517          	auipc	a0,0x4
    800015e0:	a6450513          	addi	a0,a0,-1436 # 80005040 <CONSOLE_STATUS+0x30>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	cb4080e7          	jalr	-844(ra) # 80002298 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015ec:	00c00513          	li	a0,12
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	d98080e7          	jalr	-616(ra) # 80001388 <_ZL9fibonaccim>
    800015f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800015fc:	00004517          	auipc	a0,0x4
    80001600:	a5450513          	addi	a0,a0,-1452 # 80005050 <CONSOLE_STATUS+0x40>
    80001604:	00001097          	auipc	ra,0x1
    80001608:	c94080e7          	jalr	-876(ra) # 80002298 <_Z11printStringPKc>
    printInteger(result);
    8000160c:	00090513          	mv	a0,s2
    80001610:	00001097          	auipc	ra,0x1
    80001614:	cf8080e7          	jalr	-776(ra) # 80002308 <_Z12printIntegerm>
    printString("\n");
    80001618:	00004517          	auipc	a0,0x4
    8000161c:	a2850513          	addi	a0,a0,-1496 # 80005040 <CONSOLE_STATUS+0x30>
    80001620:	00001097          	auipc	ra,0x1
    80001624:	c78080e7          	jalr	-904(ra) # 80002298 <_Z11printStringPKc>
    80001628:	0380006f          	j	80001660 <_Z11workerBodyCPv+0x124>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000162c:	00004517          	auipc	a0,0x4
    80001630:	a0450513          	addi	a0,a0,-1532 # 80005030 <CONSOLE_STATUS+0x20>
    80001634:	00001097          	auipc	ra,0x1
    80001638:	c64080e7          	jalr	-924(ra) # 80002298 <_Z11printStringPKc>
        printInteger(i);
    8000163c:	00048513          	mv	a0,s1
    80001640:	00001097          	auipc	ra,0x1
    80001644:	cc8080e7          	jalr	-824(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    80001648:	00004517          	auipc	a0,0x4
    8000164c:	9f850513          	addi	a0,a0,-1544 # 80005040 <CONSOLE_STATUS+0x30>
    80001650:	00001097          	auipc	ra,0x1
    80001654:	c48080e7          	jalr	-952(ra) # 80002298 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001658:	0014849b          	addiw	s1,s1,1
    8000165c:	0ff4f493          	andi	s1,s1,255
    80001660:	00500793          	li	a5,5
    80001664:	fc97f4e3          	bgeu	a5,s1,8000162c <_Z11workerBodyCPv+0xf0>
    }
//    TCB::yield();
}
    80001668:	01813083          	ld	ra,24(sp)
    8000166c:	01013403          	ld	s0,16(sp)
    80001670:	00813483          	ld	s1,8(sp)
    80001674:	00013903          	ld	s2,0(sp)
    80001678:	02010113          	addi	sp,sp,32
    8000167c:	00008067          	ret

0000000080001680 <_Z11workerBodyDPv>:

void workerBodyD(void*)
{
    80001680:	fe010113          	addi	sp,sp,-32
    80001684:	00113c23          	sd	ra,24(sp)
    80001688:	00813823          	sd	s0,16(sp)
    8000168c:	00913423          	sd	s1,8(sp)
    80001690:	01213023          	sd	s2,0(sp)
    80001694:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001698:	00a00493          	li	s1,10
    8000169c:	0400006f          	j	800016dc <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800016a0:	00004517          	auipc	a0,0x4
    800016a4:	9c050513          	addi	a0,a0,-1600 # 80005060 <CONSOLE_STATUS+0x50>
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	bf0080e7          	jalr	-1040(ra) # 80002298 <_Z11printStringPKc>
        printInteger(i);
    800016b0:	00048513          	mv	a0,s1
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	c54080e7          	jalr	-940(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    800016bc:	00004517          	auipc	a0,0x4
    800016c0:	98450513          	addi	a0,a0,-1660 # 80005040 <CONSOLE_STATUS+0x30>
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	bd4080e7          	jalr	-1068(ra) # 80002298 <_Z11printStringPKc>
        thread_dispatch();
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	b80080e7          	jalr	-1152(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 13; i++)
    800016d4:	0014849b          	addiw	s1,s1,1
    800016d8:	0ff4f493          	andi	s1,s1,255
    800016dc:	00c00793          	li	a5,12
    800016e0:	fc97f0e3          	bgeu	a5,s1,800016a0 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    800016e4:	00004517          	auipc	a0,0x4
    800016e8:	98450513          	addi	a0,a0,-1660 # 80005068 <CONSOLE_STATUS+0x58>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	bac080e7          	jalr	-1108(ra) # 80002298 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800016f4:	00500313          	li	t1,5
    thread_dispatch();
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	b54080e7          	jalr	-1196(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001700:	01000513          	li	a0,16
    80001704:	00000097          	auipc	ra,0x0
    80001708:	c84080e7          	jalr	-892(ra) # 80001388 <_ZL9fibonaccim>
    8000170c:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001710:	00004517          	auipc	a0,0x4
    80001714:	96850513          	addi	a0,a0,-1688 # 80005078 <CONSOLE_STATUS+0x68>
    80001718:	00001097          	auipc	ra,0x1
    8000171c:	b80080e7          	jalr	-1152(ra) # 80002298 <_Z11printStringPKc>
    printInteger(result);
    80001720:	00090513          	mv	a0,s2
    80001724:	00001097          	auipc	ra,0x1
    80001728:	be4080e7          	jalr	-1052(ra) # 80002308 <_Z12printIntegerm>
    printString("\n");
    8000172c:	00004517          	auipc	a0,0x4
    80001730:	91450513          	addi	a0,a0,-1772 # 80005040 <CONSOLE_STATUS+0x30>
    80001734:	00001097          	auipc	ra,0x1
    80001738:	b64080e7          	jalr	-1180(ra) # 80002298 <_Z11printStringPKc>
    8000173c:	0400006f          	j	8000177c <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001740:	00004517          	auipc	a0,0x4
    80001744:	92050513          	addi	a0,a0,-1760 # 80005060 <CONSOLE_STATUS+0x50>
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	b50080e7          	jalr	-1200(ra) # 80002298 <_Z11printStringPKc>
        printInteger(i);
    80001750:	00048513          	mv	a0,s1
    80001754:	00001097          	auipc	ra,0x1
    80001758:	bb4080e7          	jalr	-1100(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    8000175c:	00004517          	auipc	a0,0x4
    80001760:	8e450513          	addi	a0,a0,-1820 # 80005040 <CONSOLE_STATUS+0x30>
    80001764:	00001097          	auipc	ra,0x1
    80001768:	b34080e7          	jalr	-1228(ra) # 80002298 <_Z11printStringPKc>
        thread_dispatch();
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	ae0080e7          	jalr	-1312(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 16; i++)
    80001774:	0014849b          	addiw	s1,s1,1
    80001778:	0ff4f493          	andi	s1,s1,255
    8000177c:	00f00793          	li	a5,15
    80001780:	fc97f0e3          	bgeu	a5,s1,80001740 <_Z11workerBodyDPv+0xc0>
    }
//    TCB::yield();
    80001784:	01813083          	ld	ra,24(sp)
    80001788:	01013403          	ld	s0,16(sp)
    8000178c:	00813483          	ld	s1,8(sp)
    80001790:	00013903          	ld	s2,0(sp)
    80001794:	02010113          	addi	sp,sp,32
    80001798:	00008067          	ret

000000008000179c <_Z4testPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

void test(void*)
{
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
    printString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	8dc50513          	addi	a0,a0,-1828 # 80005088 <CONSOLE_STATUS+0x78>
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	ae4080e7          	jalr	-1308(ra) # 80002298 <_Z11printStringPKc>
}
    800017bc:	00813083          	ld	ra,8(sp)
    800017c0:	00013403          	ld	s0,0(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <_Z5test2Pv>:

void test2(void*)
{
    800017cc:	fe010113          	addi	sp,sp,-32
    800017d0:	00113c23          	sd	ra,24(sp)
    800017d4:	00813823          	sd	s0,16(sp)
    800017d8:	00913423          	sd	s1,8(sp)
    800017dc:	02010413          	addi	s0,sp,32
    int i = 0;
    800017e0:	00000493          	li	s1,0
    800017e4:	0100006f          	j	800017f4 <_Z5test2Pv+0x28>
    while(i < 100)
    {
        printInteger(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	a64080e7          	jalr	-1436(ra) # 8000124c <_Z15thread_dispatchv>

        i++;
    800017f0:	0014849b          	addiw	s1,s1,1
    while(i < 100)
    800017f4:	06300793          	li	a5,99
    800017f8:	0297c863          	blt	a5,s1,80001828 <_Z5test2Pv+0x5c>
        printInteger(i);
    800017fc:	00048513          	mv	a0,s1
    80001800:	00001097          	auipc	ra,0x1
    80001804:	b08080e7          	jalr	-1272(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    80001808:	00004517          	auipc	a0,0x4
    8000180c:	83850513          	addi	a0,a0,-1992 # 80005040 <CONSOLE_STATUS+0x30>
    80001810:	00001097          	auipc	ra,0x1
    80001814:	a88080e7          	jalr	-1400(ra) # 80002298 <_Z11printStringPKc>
        if (i % 10 == 0)
    80001818:	00a00793          	li	a5,10
    8000181c:	02f4e7bb          	remw	a5,s1,a5
    80001820:	fc0798e3          	bnez	a5,800017f0 <_Z5test2Pv+0x24>
    80001824:	fc5ff06f          	j	800017e8 <_Z5test2Pv+0x1c>
    }
}
    80001828:	01813083          	ld	ra,24(sp)
    8000182c:	01013403          	ld	s0,16(sp)
    80001830:	00813483          	ld	s1,8(sp)
    80001834:	02010113          	addi	sp,sp,32
    80001838:	00008067          	ret

000000008000183c <_Z8userMainv>:

void userMain()
{
    8000183c:	fd010113          	addi	sp,sp,-48
    80001840:	02113423          	sd	ra,40(sp)
    80001844:	02813023          	sd	s0,32(sp)
    80001848:	03010413          	addi	s0,sp,48
    __putc('1');
    8000184c:	03100513          	li	a0,49
    80001850:	00003097          	auipc	ra,0x3
    80001854:	dfc080e7          	jalr	-516(ra) # 8000464c <__putc>
    __putc('\n');
    80001858:	00a00513          	li	a0,10
    8000185c:	00003097          	auipc	ra,0x3
    80001860:	df0080e7          	jalr	-528(ra) # 8000464c <__putc>

    thread_t handle2 = nullptr;
    80001864:	fe043423          	sd	zero,-24(s0)
    thread_t handle3 = nullptr;
    80001868:	fe043023          	sd	zero,-32(s0)
    thread_t handle4 = nullptr;
    8000186c:	fc043c23          	sd	zero,-40(s0)
    thread_t handle5 = nullptr;
    80001870:	fc043823          	sd	zero,-48(s0)

    // handle2 = (_thread**) mem_alloc(sizeof(_thread*));
    // handle3 = (_thread**) mem_alloc(sizeof(_thread*));

    thread_create(&handle2, workerBodyA, nullptr);
    80001874:	00000613          	li	a2,0
    80001878:	00004597          	auipc	a1,0x4
    8000187c:	1885b583          	ld	a1,392(a1) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001880:	fe840513          	addi	a0,s0,-24
    80001884:	00000097          	auipc	ra,0x0
    80001888:	92c080e7          	jalr	-1748(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle3, workerBodyB, nullptr);
    8000188c:	00000613          	li	a2,0
    80001890:	00004597          	auipc	a1,0x4
    80001894:	1805b583          	ld	a1,384(a1) # 80005a10 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001898:	fe040513          	addi	a0,s0,-32
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	914080e7          	jalr	-1772(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle4, workerBodyC, nullptr);
    800018a4:	00000613          	li	a2,0
    800018a8:	00004597          	auipc	a1,0x4
    800018ac:	1405b583          	ld	a1,320(a1) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018b0:	fd840513          	addi	a0,s0,-40
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	8fc080e7          	jalr	-1796(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle5, workerBodyD, nullptr);
    800018bc:	00000613          	li	a2,0
    800018c0:	00004597          	auipc	a1,0x4
    800018c4:	1585b583          	ld	a1,344(a1) # 80005a18 <_GLOBAL_OFFSET_TABLE_+0x48>
    800018c8:	fd040513          	addi	a0,s0,-48
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	8e4080e7          	jalr	-1820(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    800018d4:	00c0006f          	j	800018e0 <_Z8userMainv+0xa4>

    while(!handle2->finished || !handle3->finished || !handle4->finished || !handle5->finished)
        thread_dispatch();
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	974080e7          	jalr	-1676(ra) # 8000124c <_Z15thread_dispatchv>
    while(!handle2->finished || !handle3->finished || !handle4->finished || !handle5->finished)
    800018e0:	fe843783          	ld	a5,-24(s0)
    800018e4:	0087c783          	lbu	a5,8(a5)
    800018e8:	fe0788e3          	beqz	a5,800018d8 <_Z8userMainv+0x9c>
    800018ec:	fe043783          	ld	a5,-32(s0)
    800018f0:	0087c783          	lbu	a5,8(a5)
    800018f4:	fe0782e3          	beqz	a5,800018d8 <_Z8userMainv+0x9c>
    800018f8:	fd843783          	ld	a5,-40(s0)
    800018fc:	0087c783          	lbu	a5,8(a5)
    80001900:	fc078ce3          	beqz	a5,800018d8 <_Z8userMainv+0x9c>
    80001904:	fd043783          	ld	a5,-48(s0)
    80001908:	0087c783          	lbu	a5,8(a5)
    8000190c:	fc0786e3          	beqz	a5,800018d8 <_Z8userMainv+0x9c>

    printString("Finished!\n");
    80001910:	00003517          	auipc	a0,0x3
    80001914:	7a050513          	addi	a0,a0,1952 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	980080e7          	jalr	-1664(ra) # 80002298 <_Z11printStringPKc>
}
    80001920:	02813083          	ld	ra,40(sp)
    80001924:	02013403          	ld	s0,32(sp)
    80001928:	03010113          	addi	sp,sp,48
    8000192c:	00008067          	ret

0000000080001930 <main>:



void main(void*)
{
    80001930:	fe010113          	addi	sp,sp,-32
    80001934:	00113c23          	sd	ra,24(sp)
    80001938:	00813823          	sd	s0,16(sp)
    8000193c:	02010413          	addi	s0,sp,32
    MemoryAllocator::initialise();
    80001940:	00000097          	auipc	ra,0x0
    80001944:	6c4080e7          	jalr	1732(ra) # 80002004 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001948:	00004797          	auipc	a5,0x4
    8000194c:	0a87b783          	ld	a5,168(a5) # 800059f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001950:	10579073          	csrw	stvec,a5
    thread_t handle = nullptr;
    80001954:	fe043423          	sd	zero,-24(s0)

//    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);

    thread_create(&handle, nullptr, nullptr);
    80001958:	00000613          	li	a2,0
    8000195c:	00000593          	li	a1,0
    80001960:	fe840513          	addi	a0,s0,-24
    80001964:	00000097          	auipc	ra,0x0
    80001968:	84c080e7          	jalr	-1972(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>

//    printString("Main Thread handle: ");
//    printInteger((size_t)*handle);
//    printString("\n");

    _thread::running = handle;
    8000196c:	00004797          	auipc	a5,0x4
    80001970:	0747b783          	ld	a5,116(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001974:	fe843703          	ld	a4,-24(s0)
    80001978:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000197c:	00200793          	li	a5,2
    80001980:	1007a073          	csrs	sstatus,a5
//    printInteger(retVal);
//    printString("\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    80001984:	00000097          	auipc	ra,0x0
    80001988:	eb8080e7          	jalr	-328(ra) # 8000183c <_Z8userMainv>

    // thread_exit();
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	02010113          	addi	sp,sp,32
    80001998:	00008067          	ret

000000008000199c <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"

#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00813423          	sd	s0,8(sp)
    800019a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800019a8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800019ac:	10200073          	sret
}
    800019b0:	00813403          	ld	s0,8(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800019bc:	f7010113          	addi	sp,sp,-144
    800019c0:	08113423          	sd	ra,136(sp)
    800019c4:	08813023          	sd	s0,128(sp)
    800019c8:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    800019cc:	faa43823          	sd	a0,-80(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    800019d0:	fab43c23          	sd	a1,-72(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    800019d4:	fcc43023          	sd	a2,-64(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    800019d8:	fcd43423          	sd	a3,-56(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    800019dc:	fce43823          	sd	a4,-48(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    800019e0:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    800019e4:	ff043023          	sd	a6,-32(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    800019e8:	ff143423          	sd	a7,-24(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800019ec:	141027f3          	csrr	a5,sepc
    800019f0:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800019f4:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    800019f8:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019fc:	100027f3          	csrr	a5,sstatus
    80001a00:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001a04:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80001a08:	faf43023          	sd	a5,-96(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80001a0c:	140027f3          	csrr	a5,sscratch
    80001a10:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a14:	142027f3          	csrr	a5,scause
    80001a18:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001a1c:	f7843783          	ld	a5,-136(s0)

    uint64 volatile scause = r_scause();
    80001a20:	f8f43823          	sd	a5,-112(s0)

//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001a24:	f9043703          	ld	a4,-112(s0)
    80001a28:	00800793          	li	a5,8
    80001a2c:	08f70863          	beq	a4,a5,80001abc <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    80001a30:	f9043703          	ld	a4,-112(s0)
    80001a34:	00900793          	li	a5,9
    80001a38:	08f70263          	beq	a4,a5,80001abc <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    80001a3c:	f9043703          	ld	a4,-112(s0)
    80001a40:	fff00793          	li	a5,-1
    80001a44:	03f79793          	slli	a5,a5,0x3f
    80001a48:	00178793          	addi	a5,a5,1
    80001a4c:	20f70263          	beq	a4,a5,80001c50 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        */
    }
    else if (scause == 0x8000000000000009UL)
    80001a50:	f9043703          	ld	a4,-112(s0)
    80001a54:	fff00793          	li	a5,-1
    80001a58:	03f79793          	slli	a5,a5,0x3f
    80001a5c:	00978793          	addi	a5,a5,9
    80001a60:	1ef70e63          	beq	a4,a5,80001c5c <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
        console_handler();

    }
    else
    {
        printInteger(scause);
    80001a64:	f9043503          	ld	a0,-112(s0)
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	8a0080e7          	jalr	-1888(ra) # 80002308 <_Z12printIntegerm>
        printString("\n");
    80001a70:	00003517          	auipc	a0,0x3
    80001a74:	5d050513          	addi	a0,a0,1488 # 80005040 <CONSOLE_STATUS+0x30>
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	820080e7          	jalr	-2016(ra) # 80002298 <_Z11printStringPKc>
        printString("sepc = ");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	64050513          	addi	a0,a0,1600 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	810080e7          	jalr	-2032(ra) # 80002298 <_Z11printStringPKc>
        printInteger(sepc);
    80001a90:	fa843503          	ld	a0,-88(s0)
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	874080e7          	jalr	-1932(ra) # 80002308 <_Z12printIntegerm>
        printString("\nUnexpected trap cause!\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	62c50513          	addi	a0,a0,1580 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	7f4080e7          	jalr	2036(ra) # 80002298 <_Z11printStringPKc>
        // unexpected trap cause
    }
}
    80001aac:	08813083          	ld	ra,136(sp)
    80001ab0:	08013403          	ld	s0,128(sp)
    80001ab4:	09010113          	addi	sp,sp,144
    80001ab8:	00008067          	ret
        sepc = sepc + 4;
    80001abc:	fa843783          	ld	a5,-88(s0)
    80001ac0:	00478793          	addi	a5,a5,4
    80001ac4:	faf43423          	sd	a5,-88(s0)
        w_sepc(sepc);
    80001ac8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001acc:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    80001ad0:	fb043783          	ld	a5,-80(s0)
    80001ad4:	00100713          	li	a4,1
    80001ad8:	06e78463          	beq	a5,a4,80001b40 <_ZN5Riscv20handleSupervisorTrapEv+0x184>
        else if (a[0] == 0x0000000000000002UL)
    80001adc:	00200713          	li	a4,2
    80001ae0:	08e78263          	beq	a5,a4,80001b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
        else if (a[0] == 0x0000000000000011UL)
    80001ae4:	01100713          	li	a4,17
    80001ae8:	08e78c63          	beq	a5,a4,80001b80 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
        else if (a[0] == 0x0000000000000012UL)
    80001aec:	01200713          	li	a4,18
    80001af0:	0ae78c63          	beq	a5,a4,80001ba8 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
        else if (a[0] == 0x0000000000000013UL)
    80001af4:	01300713          	li	a4,19
    80001af8:	0ce78a63          	beq	a5,a4,80001bcc <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        else if (a[0] == 0x0000000000000014UL)
    80001afc:	01400713          	li	a4,20
    80001b00:	fae786e3          	beq	a5,a4,80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        else if (a[0] == 0x0000000000000021UL)
    80001b04:	02100713          	li	a4,33
    80001b08:	0ee78863          	beq	a5,a4,80001bf8 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
        else if (a[0] == 0x0000000000000022UL)
    80001b0c:	02200713          	li	a4,34
    80001b10:	10e78463          	beq	a5,a4,80001c18 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
        else if (a[0] == 0x0000000000000023UL)
    80001b14:	02300713          	li	a4,35
    80001b18:	10e78e63          	beq	a5,a4,80001c34 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
        else if (a[0] == 0x0000000000000024UL)
    80001b1c:	02400713          	li	a4,36
    80001b20:	f8e796e3          	bne	a5,a4,80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _sem::semSignal(id);
    80001b24:	fb843503          	ld	a0,-72(s0)
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	2f8080e7          	jalr	760(ra) # 80001e20 <_ZN4_sem9semSignalEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001b30:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001b34:	f9843783          	ld	a5,-104(s0)
    80001b38:	04a7b823          	sd	a0,80(a5)
    80001b3c:	f71ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    80001b40:	fb843503          	ld	a0,-72(s0)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	720080e7          	jalr	1824(ra) # 80002264 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	528080e7          	jalr	1320(ra) # 80002074 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001b54:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001b58:	f9843783          	ld	a5,-104(s0)
    80001b5c:	04a7b823          	sd	a0,80(a5)
    80001b60:	f4dff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = MemoryAllocator::mem_free(ptr);
    80001b64:	fb843503          	ld	a0,-72(s0)
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	634080e7          	jalr	1588(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001b70:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001b74:	f9843783          	ld	a5,-104(s0)
    80001b78:	04a7b823          	sd	a0,80(a5)
    80001b7c:	f31ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80001b80:	fd043683          	ld	a3,-48(s0)
    80001b84:	fc843603          	ld	a2,-56(s0)
    80001b88:	fc043583          	ld	a1,-64(s0)
    80001b8c:	fb843503          	ld	a0,-72(s0)
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	878080e7          	jalr	-1928(ra) # 80002408 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001b98:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001b9c:	f9843783          	ld	a5,-104(s0)
    80001ba0:	04a7b823          	sd	a0,80(a5)
    80001ba4:	f09ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->finished = true;
    80001ba8:	00004797          	auipc	a5,0x4
    80001bac:	e387b783          	ld	a5,-456(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001bb0:	0007b783          	ld	a5,0(a5)
    80001bb4:	00100713          	li	a4,1
    80001bb8:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    80001bbc:	00001097          	auipc	ra,0x1
    80001bc0:	930080e7          	jalr	-1744(ra) # 800024ec <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001bc4:	00050793          	mv	a5,a0
    80001bc8:	ee5ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->timeSlice = 0;
    80001bcc:	00004797          	auipc	a5,0x4
    80001bd0:	e147b783          	ld	a5,-492(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001bd4:	0007b783          	ld	a5,0(a5)
    80001bd8:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	910080e7          	jalr	-1776(ra) # 800024ec <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001be4:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001be8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001bec:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bf0:	14179073          	csrw	sepc,a5
}
    80001bf4:	eb9ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _sem::semOpen(handle, init);
    80001bf8:	fc042583          	lw	a1,-64(s0)
    80001bfc:	fb843503          	ld	a0,-72(s0)
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	068080e7          	jalr	104(ra) # 80001c68 <_ZN4_sem7semOpenEPPS_j>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001c08:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001c0c:	f9843783          	ld	a5,-104(s0)
    80001c10:	04a7b823          	sd	a0,80(a5)
    80001c14:	e99ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _sem::semClose(handle);
    80001c18:	fb843503          	ld	a0,-72(s0)
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	09c080e7          	jalr	156(ra) # 80001cb8 <_ZN4_sem8semCloseEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001c24:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001c28:	f9843783          	ld	a5,-104(s0)
    80001c2c:	04a7b823          	sd	a0,80(a5)
    80001c30:	e7dff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _sem::semWait(id);
    80001c34:	fb843503          	ld	a0,-72(s0)
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	10c080e7          	jalr	268(ra) # 80001d44 <_ZN4_sem7semWaitEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001c40:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001c44:	f9843783          	ld	a5,-104(s0)
    80001c48:	04a7b823          	sd	a0,80(a5)
    80001c4c:	e61ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c50:	00200793          	li	a5,2
    80001c54:	1447b073          	csrc	sip,a5
}
    80001c58:	e55ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        console_handler();
    80001c5c:	00003097          	auipc	ra,0x3
    80001c60:	a64080e7          	jalr	-1436(ra) # 800046c0 <console_handler>
    80001c64:	e49ff06f          	j	80001aac <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080001c68 <_ZN4_sem7semOpenEPPS_j>:
#include "../h/sem.hpp"
#include "../h/scheduler.hpp"


int _sem::semOpen(_sem **handle, unsigned init)
{
    80001c68:	fe010113          	addi	sp,sp,-32
    80001c6c:	00113c23          	sd	ra,24(sp)
    80001c70:	00813823          	sd	s0,16(sp)
    80001c74:	00913423          	sd	s1,8(sp)
    80001c78:	01213023          	sd	s2,0(sp)
    80001c7c:	02010413          	addi	s0,sp,32
    80001c80:	00050913          	mv	s2,a0
    80001c84:	00058493          	mv	s1,a1
    *handle = (_sem*)MemoryAllocator::mem_alloc(sizeof(_sem));
    80001c88:	01800513          	li	a0,24
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	3e8080e7          	jalr	1000(ra) # 80002074 <_ZN15MemoryAllocator9mem_allocEm>
    80001c94:	00a93023          	sd	a0,0(s2)

    (*handle)->val = (int)init;
    80001c98:	00952823          	sw	s1,16(a0)

    return 0;
}
    80001c9c:	00000513          	li	a0,0
    80001ca0:	01813083          	ld	ra,24(sp)
    80001ca4:	01013403          	ld	s0,16(sp)
    80001ca8:	00813483          	ld	s1,8(sp)
    80001cac:	00013903          	ld	s2,0(sp)
    80001cb0:	02010113          	addi	sp,sp,32
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZN4_sem8semCloseEPS_>:


int _sem::semClose(_sem *handle)
{
    80001cb8:	fe010113          	addi	sp,sp,-32
    80001cbc:	00113c23          	sd	ra,24(sp)
    80001cc0:	00813823          	sd	s0,16(sp)
    80001cc4:	00913423          	sd	s1,8(sp)
    80001cc8:	01213023          	sd	s2,0(sp)
    80001ccc:	02010413          	addi	s0,sp,32
    80001cd0:	00050493          	mv	s1,a0
    if (handle == nullptr) // error: sem is nullptr
    80001cd4:	02051463          	bnez	a0,80001cfc <_ZN4_sem8semCloseEPS_+0x44>
        return -1;
    80001cd8:	fff00513          	li	a0,-1
    80001cdc:	0500006f          	j	80001d2c <_ZN4_sem8semCloseEPS_+0x74>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001ce0:	0004b423          	sd	zero,8(s1)

        T *ret = elem->data;
    80001ce4:	00053903          	ld	s2,0(a0)
        // delete elem;
        MemoryAllocator::mem_free(elem);
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	4b4080e7          	jalr	1204(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>

    // remove all threads that are blocked
    while (handle->queue.peekFirst())
        Scheduler::put(handle->queue.removeFirst());
    80001cf0:	00090513          	mv	a0,s2
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	268080e7          	jalr	616(ra) # 80001f5c <_ZN9Scheduler3putEP7_thread>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001cfc:	0004b503          	ld	a0,0(s1)
    80001d00:	00050e63          	beqz	a0,80001d1c <_ZN4_sem8semCloseEPS_+0x64>
        return head->data;
    80001d04:	00053783          	ld	a5,0(a0)
    while (handle->queue.peekFirst())
    80001d08:	00078a63          	beqz	a5,80001d1c <_ZN4_sem8semCloseEPS_+0x64>
        head = head->next;
    80001d0c:	00853783          	ld	a5,8(a0)
    80001d10:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80001d14:	fc0798e3          	bnez	a5,80001ce4 <_ZN4_sem8semCloseEPS_+0x2c>
    80001d18:	fc9ff06f          	j	80001ce0 <_ZN4_sem8semCloseEPS_+0x28>

    MemoryAllocator::mem_free(handle);
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	47c080e7          	jalr	1148(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>

    return 0;
    80001d28:	00000513          	li	a0,0
}
    80001d2c:	01813083          	ld	ra,24(sp)
    80001d30:	01013403          	ld	s0,16(sp)
    80001d34:	00813483          	ld	s1,8(sp)
    80001d38:	00013903          	ld	s2,0(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret

0000000080001d44 <_ZN4_sem7semWaitEPS_>:


int _sem::semWait(sem_t id)
{
    if (id == nullptr)
    80001d44:	0c050663          	beqz	a0,80001e10 <_ZN4_sem7semWaitEPS_+0xcc>
{
    80001d48:	fe010113          	addi	sp,sp,-32
    80001d4c:	00113c23          	sd	ra,24(sp)
    80001d50:	00813823          	sd	s0,16(sp)
    80001d54:	00913423          	sd	s1,8(sp)
    80001d58:	01213023          	sd	s2,0(sp)
    80001d5c:	02010413          	addi	s0,sp,32
    80001d60:	00050493          	mv	s1,a0
        return -1; // invalid id

    id->val--;
    80001d64:	01052783          	lw	a5,16(a0)
    80001d68:	fff7879b          	addiw	a5,a5,-1
    80001d6c:	00f52823          	sw	a5,16(a0)

    _thread* old = _thread::running;
    80001d70:	00004717          	auipc	a4,0x4
    80001d74:	c7073703          	ld	a4,-912(a4) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d78:	00073903          	ld	s2,0(a4)

    if (id->val < 0)
    80001d7c:	02079713          	slli	a4,a5,0x20
    80001d80:	04074a63          	bltz	a4,80001dd4 <_ZN4_sem7semWaitEPS_+0x90>
        id->queue.addLast(_thread::running);
    else
        Scheduler::put(_thread::running);
    80001d84:	00090513          	mv	a0,s2
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	1d4080e7          	jalr	468(ra) # 80001f5c <_ZN9Scheduler3putEP7_thread>

    _thread::running = Scheduler::get();
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	15c080e7          	jalr	348(ra) # 80001eec <_ZN9Scheduler3getEv>
    80001d98:	00004797          	auipc	a5,0x4
    80001d9c:	c487b783          	ld	a5,-952(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001da0:	00a7b023          	sd	a0,0(a5)

    if (old != _thread::running)
    80001da4:	06a90a63          	beq	s2,a0,80001e18 <_ZN4_sem7semWaitEPS_+0xd4>
        contextSwitch(&old->context, &_thread::running->context);
    80001da8:	01850593          	addi	a1,a0,24
    80001dac:	01890513          	addi	a0,s2,24
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	370080e7          	jalr	880(ra) # 80001120 <contextSwitch>

    if (!id) // that means that the sem closed
        return -2; // sem closed with thread waiting on it

    return 0;
    80001db8:	00000513          	li	a0,0
}
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	00013903          	ld	s2,0(sp)
    80001dcc:	02010113          	addi	sp,sp,32
    80001dd0:	00008067          	ret
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001dd4:	01000513          	li	a0,16
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	48c080e7          	jalr	1164(ra) # 80002264 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	294080e7          	jalr	660(ra) # 80002074 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001de8:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    80001dec:	00053423          	sd	zero,8(a0)
        if (tail)
    80001df0:	0084b783          	ld	a5,8(s1)
    80001df4:	00078863          	beqz	a5,80001e04 <_ZN4_sem7semWaitEPS_+0xc0>
            tail->next = elem;
    80001df8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001dfc:	00a4b423          	sd	a0,8(s1)
    80001e00:	f91ff06f          	j	80001d90 <_ZN4_sem7semWaitEPS_+0x4c>
            head = tail = elem;
    80001e04:	00a4b423          	sd	a0,8(s1)
    80001e08:	00a4b023          	sd	a0,0(s1)
    }
    80001e0c:	f85ff06f          	j	80001d90 <_ZN4_sem7semWaitEPS_+0x4c>
        return -1; // invalid id
    80001e10:	fff00513          	li	a0,-1
}
    80001e14:	00008067          	ret
    return 0;
    80001e18:	00000513          	li	a0,0
    80001e1c:	fa1ff06f          	j	80001dbc <_ZN4_sem7semWaitEPS_+0x78>

0000000080001e20 <_ZN4_sem9semSignalEPS_>:

int _sem::semSignal(sem_t id)
{
    if (id == nullptr) // id is nullptr
    80001e20:	08050263          	beqz	a0,80001ea4 <_ZN4_sem9semSignalEPS_+0x84>
    80001e24:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001e28:	00053503          	ld	a0,0(a0)
    80001e2c:	06050263          	beqz	a0,80001e90 <_ZN4_sem9semSignalEPS_+0x70>
        return head->data;
    80001e30:	00053703          	ld	a4,0(a0)
        return -1;

    // remove first if exists or increment val
    if (id->queue.peekFirst())
    80001e34:	04070e63          	beqz	a4,80001e90 <_ZN4_sem9semSignalEPS_+0x70>
{
    80001e38:	fe010113          	addi	sp,sp,-32
    80001e3c:	00113c23          	sd	ra,24(sp)
    80001e40:	00813823          	sd	s0,16(sp)
    80001e44:	00913423          	sd	s1,8(sp)
    80001e48:	02010413          	addi	s0,sp,32
        head = head->next;
    80001e4c:	00853703          	ld	a4,8(a0)
    80001e50:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80001e54:	02070a63          	beqz	a4,80001e88 <_ZN4_sem9semSignalEPS_+0x68>
        T *ret = elem->data;
    80001e58:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	340080e7          	jalr	832(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>
        Scheduler::put(id->queue.removeFirst());
    80001e64:	00048513          	mv	a0,s1
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	0f4080e7          	jalr	244(ra) # 80001f5c <_ZN9Scheduler3putEP7_thread>
    else
        id->val++;

    return 0;
    80001e70:	00000513          	li	a0,0
}
    80001e74:	01813083          	ld	ra,24(sp)
    80001e78:	01013403          	ld	s0,16(sp)
    80001e7c:	00813483          	ld	s1,8(sp)
    80001e80:	02010113          	addi	sp,sp,32
    80001e84:	00008067          	ret
        if (!head) { tail = 0; }
    80001e88:	0007b423          	sd	zero,8(a5)
    80001e8c:	fcdff06f          	j	80001e58 <_ZN4_sem9semSignalEPS_+0x38>
        id->val++;
    80001e90:	0107a703          	lw	a4,16(a5)
    80001e94:	0017071b          	addiw	a4,a4,1
    80001e98:	00e7a823          	sw	a4,16(a5)
    return 0;
    80001e9c:	00000513          	li	a0,0
    80001ea0:	00008067          	ret
        return -1;
    80001ea4:	fff00513          	li	a0,-1
}
    80001ea8:	00008067          	ret

0000000080001eac <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813423          	sd	s0,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00100793          	li	a5,1
    80001ebc:	00f50863          	beq	a0,a5,80001ecc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ec0:	00813403          	ld	s0,8(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret
    80001ecc:	000107b7          	lui	a5,0x10
    80001ed0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ed4:	fef596e3          	bne	a1,a5,80001ec0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	b9878793          	addi	a5,a5,-1128 # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
    80001ee0:	0007b023          	sd	zero,0(a5)
    80001ee4:	0007b423          	sd	zero,8(a5)
    80001ee8:	fd9ff06f          	j	80001ec0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001eec <_ZN9Scheduler3getEv>:
{
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	00913423          	sd	s1,8(sp)
    80001efc:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001f00:	00004517          	auipc	a0,0x4
    80001f04:	b7053503          	ld	a0,-1168(a0) # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
    80001f08:	04050663          	beqz	a0,80001f54 <_ZN9Scheduler3getEv+0x68>
        return head->data;
    80001f0c:	00053483          	ld	s1,0(a0)
    if (readyThreadQueue.peekFirst() != 0)
    80001f10:	02048063          	beqz	s1,80001f30 <_ZN9Scheduler3getEv+0x44>
        head = head->next;
    80001f14:	00853783          	ld	a5,8(a0)
    80001f18:	00004717          	auipc	a4,0x4
    80001f1c:	b4f73c23          	sd	a5,-1192(a4) # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001f20:	02078463          	beqz	a5,80001f48 <_ZN9Scheduler3getEv+0x5c>
        T *ret = elem->data;
    80001f24:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	274080e7          	jalr	628(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001f30:	00048513          	mv	a0,s1
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	02010113          	addi	sp,sp,32
    80001f44:	00008067          	ret
        if (!head) { tail = 0; }
    80001f48:	00004797          	auipc	a5,0x4
    80001f4c:	b207b823          	sd	zero,-1232(a5) # 80005a78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f50:	fd5ff06f          	j	80001f24 <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    80001f54:	00050493          	mv	s1,a0
    80001f58:	fd9ff06f          	j	80001f30 <_ZN9Scheduler3getEv+0x44>

0000000080001f5c <_ZN9Scheduler3putEP7_thread>:
{
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00113c23          	sd	ra,24(sp)
    80001f64:	00813823          	sd	s0,16(sp)
    80001f68:	00913423          	sd	s1,8(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00050493          	mv	s1,a0
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001f74:	01000513          	li	a0,16
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	2ec080e7          	jalr	748(ra) # 80002264 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	0f4080e7          	jalr	244(ra) # 80002074 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001f88:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80001f8c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001f90:	00004797          	auipc	a5,0x4
    80001f94:	ae87b783          	ld	a5,-1304(a5) # 80005a78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f98:	02078263          	beqz	a5,80001fbc <_ZN9Scheduler3putEP7_thread+0x60>
            tail->next = elem;
    80001f9c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001fa0:	00004797          	auipc	a5,0x4
    80001fa4:	aca7bc23          	sd	a0,-1320(a5) # 80005a78 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret
            head = tail = elem;
    80001fbc:	00004797          	auipc	a5,0x4
    80001fc0:	ab478793          	addi	a5,a5,-1356 # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
    80001fc4:	00a7b423          	sd	a0,8(a5)
    80001fc8:	00a7b023          	sd	a0,0(a5)
    80001fcc:	fddff06f          	j	80001fa8 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080001fd0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    80001fe0:	000105b7          	lui	a1,0x10
    80001fe4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001fe8:	00100513          	li	a0,1
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	ec0080e7          	jalr	-320(ra) # 80001eac <_Z41__static_initialization_and_destruction_0ii>
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80002010:	00004797          	auipc	a5,0x4
    80002014:	9c87b783          	ld	a5,-1592(a5) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002018:	0007b703          	ld	a4,0(a5)
    8000201c:	fc077713          	andi	a4,a4,-64
    80002020:	04070613          	addi	a2,a4,64
    80002024:	00004797          	auipc	a5,0x4
    80002028:	a5c78793          	addi	a5,a5,-1444 # 80005a80 <_ZN15MemoryAllocator8memStartE>
    8000202c:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80002030:	00004697          	auipc	a3,0x4
    80002034:	9d86b683          	ld	a3,-1576(a3) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002038:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    8000203c:	fc06f693          	andi	a3,a3,-64
    80002040:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80002044:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80002048:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    8000204c:	0107b683          	ld	a3,16(a5)
    80002050:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80002054:	0087b703          	ld	a4,8(a5)
    80002058:	0007b783          	ld	a5,0(a5)
    8000205c:	40f707b3          	sub	a5,a4,a5
    80002060:	0067d793          	srli	a5,a5,0x6
    80002064:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00813423          	sd	s0,8(sp)
    8000207c:	01010413          	addi	s0,sp,16
    if (size == 0)
    80002080:	0a050463          	beqz	a0,80002128 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002084:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80002088:	00004697          	auipc	a3,0x4
    8000208c:	a086b683          	ld	a3,-1528(a3) # 80005a90 <_ZN15MemoryAllocator4headE>
    80002090:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80002094:	04050e63          	beqz	a0,800020f0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80002098:	01053783          	ld	a5,16(a0)
    8000209c:	00e7fa63          	bgeu	a5,a4,800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    800020a0:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    800020a4:	fea698e3          	bne	a3,a0,80002094 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    800020a8:	00000513          	li	a0,0
    800020ac:	0440006f          	j	800020f0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    800020b0:	40e787b3          	sub	a5,a5,a4
    800020b4:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    800020b8:	02079263          	bnez	a5,800020dc <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    800020bc:	04d50063          	beq	a0,a3,800020fc <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    800020c0:	00053783          	ld	a5,0(a0)
    800020c4:	04078463          	beqz	a5,8000210c <_ZN15MemoryAllocator9mem_allocEm+0x98>
    800020c8:	00853683          	ld	a3,8(a0)
    800020cc:	04068063          	beqz	a3,8000210c <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    800020d0:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    800020d4:	00853683          	ld	a3,8(a0)
    800020d8:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    800020dc:	01053783          	ld	a5,16(a0)
    800020e0:	00679793          	slli	a5,a5,0x6
    800020e4:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    800020e8:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    800020ec:	00878513          	addi	a0,a5,8
}
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    800020fc:	0006b783          	ld	a5,0(a3)
    80002100:	00004697          	auipc	a3,0x4
    80002104:	98f6b823          	sd	a5,-1648(a3) # 80005a90 <_ZN15MemoryAllocator4headE>
    80002108:	fb9ff06f          	j	800020c0 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    8000210c:	00853683          	ld	a3,8(a0)
    80002110:	00068663          	beqz	a3,8000211c <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80002114:	0006b023          	sd	zero,0(a3)
    80002118:	fc5ff06f          	j	800020dc <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    8000211c:	fc0780e3          	beqz	a5,800020dc <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80002120:	0007b423          	sd	zero,8(a5)
    80002124:	fb9ff06f          	j	800020dc <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80002128:	00000513          	li	a0,0
    8000212c:	fc5ff06f          	j	800020f0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080002130 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00813423          	sd	s0,8(sp)
    80002138:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    8000213c:	04050863          	beqz	a0,8000218c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80002140:	00053783          	ld	a5,0(a0)
    80002144:	04078863          	beqz	a5,80002194 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80002148:	01053683          	ld	a3,16(a0)
    8000214c:	00669713          	slli	a4,a3,0x6
    80002150:	00e50733          	add	a4,a0,a4
    80002154:	00f70a63          	beq	a4,a5,80002168 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80002158:	00000513          	li	a0,0
    }
}
    8000215c:	00813403          	ld	s0,8(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret
        curr->size += curr->next->size;
    80002168:	0107b703          	ld	a4,16(a5)
    8000216c:	00e686b3          	add	a3,a3,a4
    80002170:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80002174:	0007b783          	ld	a5,0(a5)
    80002178:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    8000217c:	00078463          	beqz	a5,80002184 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80002180:	00a7b423          	sd	a0,8(a5)
        return 1;
    80002184:	00100513          	li	a0,1
    80002188:	fd5ff06f          	j	8000215c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    8000218c:	00000513          	li	a0,0
    80002190:	fcdff06f          	j	8000215c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80002194:	00000513          	li	a0,0
    80002198:	fc5ff06f          	j	8000215c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

000000008000219c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    8000219c:	0c050063          	beqz	a0,8000225c <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
    800021b4:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    800021b8:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    800021bc:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    800021c0:	00004697          	auipc	a3,0x4
    800021c4:	8d06b683          	ld	a3,-1840(a3) # 80005a90 <_ZN15MemoryAllocator4headE>
    800021c8:	02068063          	beqz	a3,800021e8 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    800021cc:	02d56263          	bltu	a0,a3,800021f0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    800021d0:	00068793          	mv	a5,a3
    800021d4:	00078493          	mv	s1,a5
    800021d8:	0007b783          	ld	a5,0(a5)
    800021dc:	00078c63          	beqz	a5,800021f4 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800021e0:	fea7eae3          	bltu	a5,a0,800021d4 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    800021e4:	0100006f          	j	800021f4 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    800021e8:	00068493          	mv	s1,a3
    800021ec:	0080006f          	j	800021f4 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800021f0:	00000493          	li	s1,0
    newSeg->size = blockNum;
    800021f4:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    800021f8:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    800021fc:	04048663          	beqz	s1,80002248 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80002200:	0004b783          	ld	a5,0(s1)
    80002204:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80002208:	ff873783          	ld	a5,-8(a4)
    8000220c:	00078463          	beqz	a5,80002214 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002210:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80002214:	02048e63          	beqz	s1,80002250 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80002218:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	f14080e7          	jalr	-236(ra) # 80002130 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80002224:	00048513          	mv	a0,s1
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	f08080e7          	jalr	-248(ra) # 80002130 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80002230:	00000513          	li	a0,0
}
    80002234:	01813083          	ld	ra,24(sp)
    80002238:	01013403          	ld	s0,16(sp)
    8000223c:	00813483          	ld	s1,8(sp)
    80002240:	02010113          	addi	sp,sp,32
    80002244:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80002248:	fed73c23          	sd	a3,-8(a4)
    8000224c:	fbdff06f          	j	80002208 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    80002250:	00004797          	auipc	a5,0x4
    80002254:	84a7b023          	sd	a0,-1984(a5) # 80005a90 <_ZN15MemoryAllocator4headE>
    80002258:	fc5ff06f          	j	8000221c <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    8000225c:	fff00513          	li	a0,-1
}
    80002260:	00008067          	ret

0000000080002264 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80002270:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80002274:	03f57793          	andi	a5,a0,63
    80002278:	00078c63          	beqz	a5,80002290 <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    8000227c:	00655513          	srli	a0,a0,0x6
    80002280:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80002290:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80002294:	ff1ff06f          	j	80002284 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080002298 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002298:	fd010113          	addi	sp,sp,-48
    8000229c:	02113423          	sd	ra,40(sp)
    800022a0:	02813023          	sd	s0,32(sp)
    800022a4:	00913c23          	sd	s1,24(sp)
    800022a8:	01213823          	sd	s2,16(sp)
    800022ac:	03010413          	addi	s0,sp,48
    800022b0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022b4:	100027f3          	csrr	a5,sstatus
    800022b8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800022bc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022c0:	00200793          	li	a5,2
    800022c4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800022c8:	0004c503          	lbu	a0,0(s1)
    800022cc:	00050a63          	beqz	a0,800022e0 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800022d0:	00002097          	auipc	ra,0x2
    800022d4:	37c080e7          	jalr	892(ra) # 8000464c <__putc>
        string++;
    800022d8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800022dc:	fedff06f          	j	800022c8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800022e0:	0009091b          	sext.w	s2,s2
    800022e4:	00297913          	andi	s2,s2,2
    800022e8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800022ec:	10092073          	csrs	sstatus,s2
}
    800022f0:	02813083          	ld	ra,40(sp)
    800022f4:	02013403          	ld	s0,32(sp)
    800022f8:	01813483          	ld	s1,24(sp)
    800022fc:	01013903          	ld	s2,16(sp)
    80002300:	03010113          	addi	sp,sp,48
    80002304:	00008067          	ret

0000000080002308 <_Z12printIntegerm>:


void printInteger(uint64 integer)
{
    80002308:	fc010113          	addi	sp,sp,-64
    8000230c:	02113c23          	sd	ra,56(sp)
    80002310:	02813823          	sd	s0,48(sp)
    80002314:	02913423          	sd	s1,40(sp)
    80002318:	03213023          	sd	s2,32(sp)
    8000231c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002320:	100027f3          	csrr	a5,sstatus
    80002324:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002328:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000232c:	00200793          	li	a5,2
    80002330:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002334:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002338:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000233c:	00a00613          	li	a2,10
    80002340:	02c5773b          	remuw	a4,a0,a2
    80002344:	02071693          	slli	a3,a4,0x20
    80002348:	0206d693          	srli	a3,a3,0x20
    8000234c:	00003717          	auipc	a4,0x3
    80002350:	d9c70713          	addi	a4,a4,-612 # 800050e8 <_ZZ12printIntegermE6digits>
    80002354:	00d70733          	add	a4,a4,a3
    80002358:	00074703          	lbu	a4,0(a4)
    8000235c:	fe040693          	addi	a3,s0,-32
    80002360:	009687b3          	add	a5,a3,s1
    80002364:	0014849b          	addiw	s1,s1,1
    80002368:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000236c:	0005071b          	sext.w	a4,a0
    80002370:	02c5553b          	divuw	a0,a0,a2
    80002374:	00900793          	li	a5,9
    80002378:	fce7e2e3          	bltu	a5,a4,8000233c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000237c:	fff4849b          	addiw	s1,s1,-1
    80002380:	0004ce63          	bltz	s1,8000239c <_Z12printIntegerm+0x94>
    80002384:	fe040793          	addi	a5,s0,-32
    80002388:	009787b3          	add	a5,a5,s1
    8000238c:	ff07c503          	lbu	a0,-16(a5)
    80002390:	00002097          	auipc	ra,0x2
    80002394:	2bc080e7          	jalr	700(ra) # 8000464c <__putc>
    80002398:	fe5ff06f          	j	8000237c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000239c:	0009091b          	sext.w	s2,s2
    800023a0:	00297913          	andi	s2,s2,2
    800023a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800023a8:	10092073          	csrs	sstatus,s2
    800023ac:	03813083          	ld	ra,56(sp)
    800023b0:	03013403          	ld	s0,48(sp)
    800023b4:	02813483          	ld	s1,40(sp)
    800023b8:	02013903          	ld	s2,32(sp)
    800023bc:	04010113          	addi	sp,sp,64
    800023c0:	00008067          	ret

00000000800023c4 <_ZN7_thread13threadWrapperEv>:
    return 0;
}


void _thread::threadWrapper()
{
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00113423          	sd	ra,8(sp)
    800023cc:	00813023          	sd	s0,0(sp)
    800023d0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	5c8080e7          	jalr	1480(ra) # 8000199c <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    800023dc:	00003797          	auipc	a5,0x3
    800023e0:	6bc7b783          	ld	a5,1724(a5) # 80005a98 <_ZN7_thread7runningE>
    800023e4:	0007b703          	ld	a4,0(a5)
    800023e8:	0287b503          	ld	a0,40(a5)
    800023ec:	000700e7          	jalr	a4

    thread_exit();
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	e2c080e7          	jalr	-468(ra) # 8000121c <_Z11thread_exitv>
}
    800023f8:	00813083          	ld	ra,8(sp)
    800023fc:	00013403          	ld	s0,0(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80002408:	fd010113          	addi	sp,sp,-48
    8000240c:	02113423          	sd	ra,40(sp)
    80002410:	02813023          	sd	s0,32(sp)
    80002414:	00913c23          	sd	s1,24(sp)
    80002418:	01213823          	sd	s2,16(sp)
    8000241c:	01313423          	sd	s3,8(sp)
    80002420:	01413023          	sd	s4,0(sp)
    80002424:	03010413          	addi	s0,sp,48
    80002428:	00050493          	mv	s1,a0
    8000242c:	00058913          	mv	s2,a1
    80002430:	00060993          	mv	s3,a2
    80002434:	00068a13          	mv	s4,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80002438:	03800513          	li	a0,56
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	e28080e7          	jalr	-472(ra) # 80002264 <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    80002444:	00000097          	auipc	ra,0x0
    80002448:	c30080e7          	jalr	-976(ra) # 80002074 <_ZN15MemoryAllocator9mem_allocEm>
    8000244c:	00a4b023          	sd	a0,0(s1)
    (*handle)->finished = false;
    80002450:	00050423          	sb	zero,8(a0)
    (*handle)->timeSlice = 0;
    80002454:	0004b783          	ld	a5,0(s1)
    80002458:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    8000245c:	0004b783          	ld	a5,0(s1)
    80002460:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    80002464:	0004b783          	ld	a5,0(s1)
    80002468:	0337b423          	sd	s3,40(a5)
    if (start_routine != nullptr)
    8000246c:	06090663          	beqz	s2,800024d8 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd0>
        (*handle)->stack = (uint64*) stack_space;
    80002470:	0004b783          	ld	a5,0(s1)
    80002474:	0147b823          	sd	s4,16(a5)
    if ((*handle)->stack != nullptr)
    80002478:	0004b703          	ld	a4,0(s1)
    8000247c:	01073783          	ld	a5,16(a4)
    80002480:	06078263          	beqz	a5,800024e4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xdc>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002484:	000086b7          	lui	a3,0x8
    80002488:	00d787b3          	add	a5,a5,a3
    8000248c:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    80002490:	0004b783          	ld	a5,0(s1)
    80002494:	00000717          	auipc	a4,0x0
    80002498:	f3070713          	addi	a4,a4,-208 # 800023c4 <_ZN7_thread13threadWrapperEv>
    8000249c:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    800024a0:	0004b503          	ld	a0,0(s1)
    800024a4:	00053783          	ld	a5,0(a0)
    800024a8:	00078663          	beqz	a5,800024b4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xac>
        Scheduler::put(*handle);
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	ab0080e7          	jalr	-1360(ra) # 80001f5c <_ZN9Scheduler3putEP7_thread>
}
    800024b4:	00000513          	li	a0,0
    800024b8:	02813083          	ld	ra,40(sp)
    800024bc:	02013403          	ld	s0,32(sp)
    800024c0:	01813483          	ld	s1,24(sp)
    800024c4:	01013903          	ld	s2,16(sp)
    800024c8:	00813983          	ld	s3,8(sp)
    800024cc:	00013a03          	ld	s4,0(sp)
    800024d0:	03010113          	addi	sp,sp,48
    800024d4:	00008067          	ret
        (*handle)->stack = nullptr;
    800024d8:	0004b783          	ld	a5,0(s1)
    800024dc:	0007b823          	sd	zero,16(a5)
    800024e0:	f99ff06f          	j	80002478 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x70>
        (*handle)->context.sp = 0;
    800024e4:	02073023          	sd	zero,32(a4)
    800024e8:	fb9ff06f          	j	800024a0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x98>

00000000800024ec <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    800024ec:	fe010113          	addi	sp,sp,-32
    800024f0:	00113c23          	sd	ra,24(sp)
    800024f4:	00813823          	sd	s0,16(sp)
    800024f8:	00913423          	sd	s1,8(sp)
    800024fc:	02010413          	addi	s0,sp,32
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;
    80002500:	00003497          	auipc	s1,0x3
    80002504:	5984b483          	ld	s1,1432(s1) # 80005a98 <_ZN7_thread7runningE>

    if (!old->finished)
    80002508:	0084c783          	lbu	a5,8(s1)
    8000250c:	04079463          	bnez	a5,80002554 <_ZN7_thread14threadDispatchEv+0x68>
    {
        Scheduler::put(old);
    80002510:	00048513          	mv	a0,s1
    80002514:	00000097          	auipc	ra,0x0
    80002518:	a48080e7          	jalr	-1464(ra) # 80001f5c <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	9d0080e7          	jalr	-1584(ra) # 80001eec <_ZN9Scheduler3getEv>
    80002524:	00003797          	auipc	a5,0x3
    80002528:	56a7ba23          	sd	a0,1396(a5) # 80005a98 <_ZN7_thread7runningE>
//        printInteger((uint64) old);
//        printString("\nnew running: ");
//        printInteger((uint64) _thread::running);
//        printString("\n");

        if(old != _thread::running)
    8000252c:	00a48a63          	beq	s1,a0,80002540 <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitch(&old->context, &_thread::running->context);
    80002530:	01850593          	addi	a1,a0,24
    80002534:	01848513          	addi	a0,s1,24
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	be8080e7          	jalr	-1048(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    80002540:	01813083          	ld	ra,24(sp)
    80002544:	01013403          	ld	s0,16(sp)
    80002548:	00813483          	ld	s1,8(sp)
    8000254c:	02010113          	addi	sp,sp,32
    80002550:	00008067          	ret
        MemoryAllocator::mem_free(old->stack);
    80002554:	0104b503          	ld	a0,16(s1)
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	c44080e7          	jalr	-956(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    80002560:	00048513          	mv	a0,s1
    80002564:	00000097          	auipc	ra,0x0
    80002568:	c38080e7          	jalr	-968(ra) # 8000219c <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	980080e7          	jalr	-1664(ra) # 80001eec <_ZN9Scheduler3getEv>
    80002574:	00003797          	auipc	a5,0x3
    80002578:	52a7b223          	sd	a0,1316(a5) # 80005a98 <_ZN7_thread7runningE>
        if (_thread::running)
    8000257c:	fc0502e3          	beqz	a0,80002540 <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitchThreadEnded(&_thread::running->context);
    80002580:	01850513          	addi	a0,a0,24
    80002584:	fffff097          	auipc	ra,0xfffff
    80002588:	bb0080e7          	jalr	-1104(ra) # 80001134 <contextSwitchThreadEnded>
}
    8000258c:	fb5ff06f          	j	80002540 <_ZN7_thread14threadDispatchEv+0x54>

0000000080002590 <start>:
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00813423          	sd	s0,8(sp)
    80002598:	01010413          	addi	s0,sp,16
    8000259c:	300027f3          	csrr	a5,mstatus
    800025a0:	ffffe737          	lui	a4,0xffffe
    800025a4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b0f>
    800025a8:	00e7f7b3          	and	a5,a5,a4
    800025ac:	00001737          	lui	a4,0x1
    800025b0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800025b4:	00e7e7b3          	or	a5,a5,a4
    800025b8:	30079073          	csrw	mstatus,a5
    800025bc:	00000797          	auipc	a5,0x0
    800025c0:	16078793          	addi	a5,a5,352 # 8000271c <system_main>
    800025c4:	34179073          	csrw	mepc,a5
    800025c8:	00000793          	li	a5,0
    800025cc:	18079073          	csrw	satp,a5
    800025d0:	000107b7          	lui	a5,0x10
    800025d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800025d8:	30279073          	csrw	medeleg,a5
    800025dc:	30379073          	csrw	mideleg,a5
    800025e0:	104027f3          	csrr	a5,sie
    800025e4:	2227e793          	ori	a5,a5,546
    800025e8:	10479073          	csrw	sie,a5
    800025ec:	fff00793          	li	a5,-1
    800025f0:	00a7d793          	srli	a5,a5,0xa
    800025f4:	3b079073          	csrw	pmpaddr0,a5
    800025f8:	00f00793          	li	a5,15
    800025fc:	3a079073          	csrw	pmpcfg0,a5
    80002600:	f14027f3          	csrr	a5,mhartid
    80002604:	0200c737          	lui	a4,0x200c
    80002608:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000260c:	0007869b          	sext.w	a3,a5
    80002610:	00269713          	slli	a4,a3,0x2
    80002614:	000f4637          	lui	a2,0xf4
    80002618:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000261c:	00d70733          	add	a4,a4,a3
    80002620:	0037979b          	slliw	a5,a5,0x3
    80002624:	020046b7          	lui	a3,0x2004
    80002628:	00d787b3          	add	a5,a5,a3
    8000262c:	00c585b3          	add	a1,a1,a2
    80002630:	00371693          	slli	a3,a4,0x3
    80002634:	00003717          	auipc	a4,0x3
    80002638:	46c70713          	addi	a4,a4,1132 # 80005aa0 <timer_scratch>
    8000263c:	00b7b023          	sd	a1,0(a5)
    80002640:	00d70733          	add	a4,a4,a3
    80002644:	00f73c23          	sd	a5,24(a4)
    80002648:	02c73023          	sd	a2,32(a4)
    8000264c:	34071073          	csrw	mscratch,a4
    80002650:	00000797          	auipc	a5,0x0
    80002654:	6e078793          	addi	a5,a5,1760 # 80002d30 <timervec>
    80002658:	30579073          	csrw	mtvec,a5
    8000265c:	300027f3          	csrr	a5,mstatus
    80002660:	0087e793          	ori	a5,a5,8
    80002664:	30079073          	csrw	mstatus,a5
    80002668:	304027f3          	csrr	a5,mie
    8000266c:	0807e793          	ori	a5,a5,128
    80002670:	30479073          	csrw	mie,a5
    80002674:	f14027f3          	csrr	a5,mhartid
    80002678:	0007879b          	sext.w	a5,a5
    8000267c:	00078213          	mv	tp,a5
    80002680:	30200073          	mret
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <timerinit>:
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00813423          	sd	s0,8(sp)
    80002698:	01010413          	addi	s0,sp,16
    8000269c:	f14027f3          	csrr	a5,mhartid
    800026a0:	0200c737          	lui	a4,0x200c
    800026a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800026a8:	0007869b          	sext.w	a3,a5
    800026ac:	00269713          	slli	a4,a3,0x2
    800026b0:	000f4637          	lui	a2,0xf4
    800026b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800026b8:	00d70733          	add	a4,a4,a3
    800026bc:	0037979b          	slliw	a5,a5,0x3
    800026c0:	020046b7          	lui	a3,0x2004
    800026c4:	00d787b3          	add	a5,a5,a3
    800026c8:	00c585b3          	add	a1,a1,a2
    800026cc:	00371693          	slli	a3,a4,0x3
    800026d0:	00003717          	auipc	a4,0x3
    800026d4:	3d070713          	addi	a4,a4,976 # 80005aa0 <timer_scratch>
    800026d8:	00b7b023          	sd	a1,0(a5)
    800026dc:	00d70733          	add	a4,a4,a3
    800026e0:	00f73c23          	sd	a5,24(a4)
    800026e4:	02c73023          	sd	a2,32(a4)
    800026e8:	34071073          	csrw	mscratch,a4
    800026ec:	00000797          	auipc	a5,0x0
    800026f0:	64478793          	addi	a5,a5,1604 # 80002d30 <timervec>
    800026f4:	30579073          	csrw	mtvec,a5
    800026f8:	300027f3          	csrr	a5,mstatus
    800026fc:	0087e793          	ori	a5,a5,8
    80002700:	30079073          	csrw	mstatus,a5
    80002704:	304027f3          	csrr	a5,mie
    80002708:	0807e793          	ori	a5,a5,128
    8000270c:	30479073          	csrw	mie,a5
    80002710:	00813403          	ld	s0,8(sp)
    80002714:	01010113          	addi	sp,sp,16
    80002718:	00008067          	ret

000000008000271c <system_main>:
    8000271c:	fe010113          	addi	sp,sp,-32
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	02010413          	addi	s0,sp,32
    80002730:	00000097          	auipc	ra,0x0
    80002734:	0c4080e7          	jalr	196(ra) # 800027f4 <cpuid>
    80002738:	00003497          	auipc	s1,0x3
    8000273c:	30848493          	addi	s1,s1,776 # 80005a40 <started>
    80002740:	02050263          	beqz	a0,80002764 <system_main+0x48>
    80002744:	0004a783          	lw	a5,0(s1)
    80002748:	0007879b          	sext.w	a5,a5
    8000274c:	fe078ce3          	beqz	a5,80002744 <system_main+0x28>
    80002750:	0ff0000f          	fence
    80002754:	00003517          	auipc	a0,0x3
    80002758:	9d450513          	addi	a0,a0,-1580 # 80005128 <_ZZ12printIntegermE6digits+0x40>
    8000275c:	00001097          	auipc	ra,0x1
    80002760:	a70080e7          	jalr	-1424(ra) # 800031cc <panic>
    80002764:	00001097          	auipc	ra,0x1
    80002768:	9c4080e7          	jalr	-1596(ra) # 80003128 <consoleinit>
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	150080e7          	jalr	336(ra) # 800038bc <printfinit>
    80002774:	00003517          	auipc	a0,0x3
    80002778:	8cc50513          	addi	a0,a0,-1844 # 80005040 <CONSOLE_STATUS+0x30>
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	aac080e7          	jalr	-1364(ra) # 80003228 <__printf>
    80002784:	00003517          	auipc	a0,0x3
    80002788:	97450513          	addi	a0,a0,-1676 # 800050f8 <_ZZ12printIntegermE6digits+0x10>
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	a9c080e7          	jalr	-1380(ra) # 80003228 <__printf>
    80002794:	00003517          	auipc	a0,0x3
    80002798:	8ac50513          	addi	a0,a0,-1876 # 80005040 <CONSOLE_STATUS+0x30>
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	a8c080e7          	jalr	-1396(ra) # 80003228 <__printf>
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	4a4080e7          	jalr	1188(ra) # 80003c48 <kinit>
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	148080e7          	jalr	328(ra) # 800028f4 <trapinit>
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	16c080e7          	jalr	364(ra) # 80002920 <trapinithart>
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	5b4080e7          	jalr	1460(ra) # 80002d70 <plicinit>
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	5d4080e7          	jalr	1492(ra) # 80002d98 <plicinithart>
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	078080e7          	jalr	120(ra) # 80002844 <userinit>
    800027d4:	0ff0000f          	fence
    800027d8:	00100793          	li	a5,1
    800027dc:	00003517          	auipc	a0,0x3
    800027e0:	93450513          	addi	a0,a0,-1740 # 80005110 <_ZZ12printIntegermE6digits+0x28>
    800027e4:	00f4a023          	sw	a5,0(s1)
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	a40080e7          	jalr	-1472(ra) # 80003228 <__printf>
    800027f0:	0000006f          	j	800027f0 <system_main+0xd4>

00000000800027f4 <cpuid>:
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00813423          	sd	s0,8(sp)
    800027fc:	01010413          	addi	s0,sp,16
    80002800:	00020513          	mv	a0,tp
    80002804:	00813403          	ld	s0,8(sp)
    80002808:	0005051b          	sext.w	a0,a0
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <mycpu>:
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00813423          	sd	s0,8(sp)
    8000281c:	01010413          	addi	s0,sp,16
    80002820:	00020793          	mv	a5,tp
    80002824:	00813403          	ld	s0,8(sp)
    80002828:	0007879b          	sext.w	a5,a5
    8000282c:	00779793          	slli	a5,a5,0x7
    80002830:	00004517          	auipc	a0,0x4
    80002834:	2a050513          	addi	a0,a0,672 # 80006ad0 <cpus>
    80002838:	00f50533          	add	a0,a0,a5
    8000283c:	01010113          	addi	sp,sp,16
    80002840:	00008067          	ret

0000000080002844 <userinit>:
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00813423          	sd	s0,8(sp)
    8000284c:	01010413          	addi	s0,sp,16
    80002850:	00813403          	ld	s0,8(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	fffff317          	auipc	t1,0xfffff
    8000285c:	0d830067          	jr	216(t1) # 80001930 <main>

0000000080002860 <either_copyout>:
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00813023          	sd	s0,0(sp)
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	01010413          	addi	s0,sp,16
    80002870:	02051663          	bnez	a0,8000289c <either_copyout+0x3c>
    80002874:	00058513          	mv	a0,a1
    80002878:	00060593          	mv	a1,a2
    8000287c:	0006861b          	sext.w	a2,a3
    80002880:	00002097          	auipc	ra,0x2
    80002884:	c54080e7          	jalr	-940(ra) # 800044d4 <__memmove>
    80002888:	00813083          	ld	ra,8(sp)
    8000288c:	00013403          	ld	s0,0(sp)
    80002890:	00000513          	li	a0,0
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret
    8000289c:	00003517          	auipc	a0,0x3
    800028a0:	8b450513          	addi	a0,a0,-1868 # 80005150 <_ZZ12printIntegermE6digits+0x68>
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	928080e7          	jalr	-1752(ra) # 800031cc <panic>

00000000800028ac <either_copyin>:
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	00113423          	sd	ra,8(sp)
    800028b8:	01010413          	addi	s0,sp,16
    800028bc:	02059463          	bnez	a1,800028e4 <either_copyin+0x38>
    800028c0:	00060593          	mv	a1,a2
    800028c4:	0006861b          	sext.w	a2,a3
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	c0c080e7          	jalr	-1012(ra) # 800044d4 <__memmove>
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	00000513          	li	a0,0
    800028dc:	01010113          	addi	sp,sp,16
    800028e0:	00008067          	ret
    800028e4:	00003517          	auipc	a0,0x3
    800028e8:	89450513          	addi	a0,a0,-1900 # 80005178 <_ZZ12printIntegermE6digits+0x90>
    800028ec:	00001097          	auipc	ra,0x1
    800028f0:	8e0080e7          	jalr	-1824(ra) # 800031cc <panic>

00000000800028f4 <trapinit>:
    800028f4:	ff010113          	addi	sp,sp,-16
    800028f8:	00813423          	sd	s0,8(sp)
    800028fc:	01010413          	addi	s0,sp,16
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	00003597          	auipc	a1,0x3
    80002908:	89c58593          	addi	a1,a1,-1892 # 800051a0 <_ZZ12printIntegermE6digits+0xb8>
    8000290c:	00004517          	auipc	a0,0x4
    80002910:	24450513          	addi	a0,a0,580 # 80006b50 <tickslock>
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00001317          	auipc	t1,0x1
    8000291c:	5c030067          	jr	1472(t1) # 80003ed8 <initlock>

0000000080002920 <trapinithart>:
    80002920:	ff010113          	addi	sp,sp,-16
    80002924:	00813423          	sd	s0,8(sp)
    80002928:	01010413          	addi	s0,sp,16
    8000292c:	00000797          	auipc	a5,0x0
    80002930:	2f478793          	addi	a5,a5,756 # 80002c20 <kernelvec>
    80002934:	10579073          	csrw	stvec,a5
    80002938:	00813403          	ld	s0,8(sp)
    8000293c:	01010113          	addi	sp,sp,16
    80002940:	00008067          	ret

0000000080002944 <usertrap>:
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00813423          	sd	s0,8(sp)
    8000294c:	01010413          	addi	s0,sp,16
    80002950:	00813403          	ld	s0,8(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <usertrapret>:
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    80002968:	00813403          	ld	s0,8(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <kerneltrap>:
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00813823          	sd	s0,16(sp)
    8000297c:	00113c23          	sd	ra,24(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	02010413          	addi	s0,sp,32
    80002988:	142025f3          	csrr	a1,scause
    8000298c:	100027f3          	csrr	a5,sstatus
    80002990:	0027f793          	andi	a5,a5,2
    80002994:	10079c63          	bnez	a5,80002aac <kerneltrap+0x138>
    80002998:	142027f3          	csrr	a5,scause
    8000299c:	0207ce63          	bltz	a5,800029d8 <kerneltrap+0x64>
    800029a0:	00003517          	auipc	a0,0x3
    800029a4:	84850513          	addi	a0,a0,-1976 # 800051e8 <_ZZ12printIntegermE6digits+0x100>
    800029a8:	00001097          	auipc	ra,0x1
    800029ac:	880080e7          	jalr	-1920(ra) # 80003228 <__printf>
    800029b0:	141025f3          	csrr	a1,sepc
    800029b4:	14302673          	csrr	a2,stval
    800029b8:	00003517          	auipc	a0,0x3
    800029bc:	84050513          	addi	a0,a0,-1984 # 800051f8 <_ZZ12printIntegermE6digits+0x110>
    800029c0:	00001097          	auipc	ra,0x1
    800029c4:	868080e7          	jalr	-1944(ra) # 80003228 <__printf>
    800029c8:	00003517          	auipc	a0,0x3
    800029cc:	84850513          	addi	a0,a0,-1976 # 80005210 <_ZZ12printIntegermE6digits+0x128>
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	7fc080e7          	jalr	2044(ra) # 800031cc <panic>
    800029d8:	0ff7f713          	andi	a4,a5,255
    800029dc:	00900693          	li	a3,9
    800029e0:	04d70063          	beq	a4,a3,80002a20 <kerneltrap+0xac>
    800029e4:	fff00713          	li	a4,-1
    800029e8:	03f71713          	slli	a4,a4,0x3f
    800029ec:	00170713          	addi	a4,a4,1
    800029f0:	fae798e3          	bne	a5,a4,800029a0 <kerneltrap+0x2c>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	e00080e7          	jalr	-512(ra) # 800027f4 <cpuid>
    800029fc:	06050663          	beqz	a0,80002a68 <kerneltrap+0xf4>
    80002a00:	144027f3          	csrr	a5,sip
    80002a04:	ffd7f793          	andi	a5,a5,-3
    80002a08:	14479073          	csrw	sip,a5
    80002a0c:	01813083          	ld	ra,24(sp)
    80002a10:	01013403          	ld	s0,16(sp)
    80002a14:	00813483          	ld	s1,8(sp)
    80002a18:	02010113          	addi	sp,sp,32
    80002a1c:	00008067          	ret
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	3c4080e7          	jalr	964(ra) # 80002de4 <plic_claim>
    80002a28:	00a00793          	li	a5,10
    80002a2c:	00050493          	mv	s1,a0
    80002a30:	06f50863          	beq	a0,a5,80002aa0 <kerneltrap+0x12c>
    80002a34:	fc050ce3          	beqz	a0,80002a0c <kerneltrap+0x98>
    80002a38:	00050593          	mv	a1,a0
    80002a3c:	00002517          	auipc	a0,0x2
    80002a40:	78c50513          	addi	a0,a0,1932 # 800051c8 <_ZZ12printIntegermE6digits+0xe0>
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	7e4080e7          	jalr	2020(ra) # 80003228 <__printf>
    80002a4c:	01013403          	ld	s0,16(sp)
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	00048513          	mv	a0,s1
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00000317          	auipc	t1,0x0
    80002a64:	3bc30067          	jr	956(t1) # 80002e1c <plic_complete>
    80002a68:	00004517          	auipc	a0,0x4
    80002a6c:	0e850513          	addi	a0,a0,232 # 80006b50 <tickslock>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	48c080e7          	jalr	1164(ra) # 80003efc <acquire>
    80002a78:	00003717          	auipc	a4,0x3
    80002a7c:	fcc70713          	addi	a4,a4,-52 # 80005a44 <ticks>
    80002a80:	00072783          	lw	a5,0(a4)
    80002a84:	00004517          	auipc	a0,0x4
    80002a88:	0cc50513          	addi	a0,a0,204 # 80006b50 <tickslock>
    80002a8c:	0017879b          	addiw	a5,a5,1
    80002a90:	00f72023          	sw	a5,0(a4)
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	534080e7          	jalr	1332(ra) # 80003fc8 <release>
    80002a9c:	f65ff06f          	j	80002a00 <kerneltrap+0x8c>
    80002aa0:	00001097          	auipc	ra,0x1
    80002aa4:	090080e7          	jalr	144(ra) # 80003b30 <uartintr>
    80002aa8:	fa5ff06f          	j	80002a4c <kerneltrap+0xd8>
    80002aac:	00002517          	auipc	a0,0x2
    80002ab0:	6fc50513          	addi	a0,a0,1788 # 800051a8 <_ZZ12printIntegermE6digits+0xc0>
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	718080e7          	jalr	1816(ra) # 800031cc <panic>

0000000080002abc <clockintr>:
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	02010413          	addi	s0,sp,32
    80002ad0:	00004497          	auipc	s1,0x4
    80002ad4:	08048493          	addi	s1,s1,128 # 80006b50 <tickslock>
    80002ad8:	00048513          	mv	a0,s1
    80002adc:	00001097          	auipc	ra,0x1
    80002ae0:	420080e7          	jalr	1056(ra) # 80003efc <acquire>
    80002ae4:	00003717          	auipc	a4,0x3
    80002ae8:	f6070713          	addi	a4,a4,-160 # 80005a44 <ticks>
    80002aec:	00072783          	lw	a5,0(a4)
    80002af0:	01013403          	ld	s0,16(sp)
    80002af4:	01813083          	ld	ra,24(sp)
    80002af8:	00048513          	mv	a0,s1
    80002afc:	0017879b          	addiw	a5,a5,1
    80002b00:	00813483          	ld	s1,8(sp)
    80002b04:	00f72023          	sw	a5,0(a4)
    80002b08:	02010113          	addi	sp,sp,32
    80002b0c:	00001317          	auipc	t1,0x1
    80002b10:	4bc30067          	jr	1212(t1) # 80003fc8 <release>

0000000080002b14 <devintr>:
    80002b14:	142027f3          	csrr	a5,scause
    80002b18:	00000513          	li	a0,0
    80002b1c:	0007c463          	bltz	a5,80002b24 <devintr+0x10>
    80002b20:	00008067          	ret
    80002b24:	fe010113          	addi	sp,sp,-32
    80002b28:	00813823          	sd	s0,16(sp)
    80002b2c:	00113c23          	sd	ra,24(sp)
    80002b30:	00913423          	sd	s1,8(sp)
    80002b34:	02010413          	addi	s0,sp,32
    80002b38:	0ff7f713          	andi	a4,a5,255
    80002b3c:	00900693          	li	a3,9
    80002b40:	04d70c63          	beq	a4,a3,80002b98 <devintr+0x84>
    80002b44:	fff00713          	li	a4,-1
    80002b48:	03f71713          	slli	a4,a4,0x3f
    80002b4c:	00170713          	addi	a4,a4,1
    80002b50:	00e78c63          	beq	a5,a4,80002b68 <devintr+0x54>
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	01013403          	ld	s0,16(sp)
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	02010113          	addi	sp,sp,32
    80002b64:	00008067          	ret
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	c8c080e7          	jalr	-884(ra) # 800027f4 <cpuid>
    80002b70:	06050663          	beqz	a0,80002bdc <devintr+0xc8>
    80002b74:	144027f3          	csrr	a5,sip
    80002b78:	ffd7f793          	andi	a5,a5,-3
    80002b7c:	14479073          	csrw	sip,a5
    80002b80:	01813083          	ld	ra,24(sp)
    80002b84:	01013403          	ld	s0,16(sp)
    80002b88:	00813483          	ld	s1,8(sp)
    80002b8c:	00200513          	li	a0,2
    80002b90:	02010113          	addi	sp,sp,32
    80002b94:	00008067          	ret
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	24c080e7          	jalr	588(ra) # 80002de4 <plic_claim>
    80002ba0:	00a00793          	li	a5,10
    80002ba4:	00050493          	mv	s1,a0
    80002ba8:	06f50663          	beq	a0,a5,80002c14 <devintr+0x100>
    80002bac:	00100513          	li	a0,1
    80002bb0:	fa0482e3          	beqz	s1,80002b54 <devintr+0x40>
    80002bb4:	00048593          	mv	a1,s1
    80002bb8:	00002517          	auipc	a0,0x2
    80002bbc:	61050513          	addi	a0,a0,1552 # 800051c8 <_ZZ12printIntegermE6digits+0xe0>
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	668080e7          	jalr	1640(ra) # 80003228 <__printf>
    80002bc8:	00048513          	mv	a0,s1
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	250080e7          	jalr	592(ra) # 80002e1c <plic_complete>
    80002bd4:	00100513          	li	a0,1
    80002bd8:	f7dff06f          	j	80002b54 <devintr+0x40>
    80002bdc:	00004517          	auipc	a0,0x4
    80002be0:	f7450513          	addi	a0,a0,-140 # 80006b50 <tickslock>
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	318080e7          	jalr	792(ra) # 80003efc <acquire>
    80002bec:	00003717          	auipc	a4,0x3
    80002bf0:	e5870713          	addi	a4,a4,-424 # 80005a44 <ticks>
    80002bf4:	00072783          	lw	a5,0(a4)
    80002bf8:	00004517          	auipc	a0,0x4
    80002bfc:	f5850513          	addi	a0,a0,-168 # 80006b50 <tickslock>
    80002c00:	0017879b          	addiw	a5,a5,1
    80002c04:	00f72023          	sw	a5,0(a4)
    80002c08:	00001097          	auipc	ra,0x1
    80002c0c:	3c0080e7          	jalr	960(ra) # 80003fc8 <release>
    80002c10:	f65ff06f          	j	80002b74 <devintr+0x60>
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	f1c080e7          	jalr	-228(ra) # 80003b30 <uartintr>
    80002c1c:	fadff06f          	j	80002bc8 <devintr+0xb4>

0000000080002c20 <kernelvec>:
    80002c20:	f0010113          	addi	sp,sp,-256
    80002c24:	00113023          	sd	ra,0(sp)
    80002c28:	00213423          	sd	sp,8(sp)
    80002c2c:	00313823          	sd	gp,16(sp)
    80002c30:	00413c23          	sd	tp,24(sp)
    80002c34:	02513023          	sd	t0,32(sp)
    80002c38:	02613423          	sd	t1,40(sp)
    80002c3c:	02713823          	sd	t2,48(sp)
    80002c40:	02813c23          	sd	s0,56(sp)
    80002c44:	04913023          	sd	s1,64(sp)
    80002c48:	04a13423          	sd	a0,72(sp)
    80002c4c:	04b13823          	sd	a1,80(sp)
    80002c50:	04c13c23          	sd	a2,88(sp)
    80002c54:	06d13023          	sd	a3,96(sp)
    80002c58:	06e13423          	sd	a4,104(sp)
    80002c5c:	06f13823          	sd	a5,112(sp)
    80002c60:	07013c23          	sd	a6,120(sp)
    80002c64:	09113023          	sd	a7,128(sp)
    80002c68:	09213423          	sd	s2,136(sp)
    80002c6c:	09313823          	sd	s3,144(sp)
    80002c70:	09413c23          	sd	s4,152(sp)
    80002c74:	0b513023          	sd	s5,160(sp)
    80002c78:	0b613423          	sd	s6,168(sp)
    80002c7c:	0b713823          	sd	s7,176(sp)
    80002c80:	0b813c23          	sd	s8,184(sp)
    80002c84:	0d913023          	sd	s9,192(sp)
    80002c88:	0da13423          	sd	s10,200(sp)
    80002c8c:	0db13823          	sd	s11,208(sp)
    80002c90:	0dc13c23          	sd	t3,216(sp)
    80002c94:	0fd13023          	sd	t4,224(sp)
    80002c98:	0fe13423          	sd	t5,232(sp)
    80002c9c:	0ff13823          	sd	t6,240(sp)
    80002ca0:	cd5ff0ef          	jal	ra,80002974 <kerneltrap>
    80002ca4:	00013083          	ld	ra,0(sp)
    80002ca8:	00813103          	ld	sp,8(sp)
    80002cac:	01013183          	ld	gp,16(sp)
    80002cb0:	02013283          	ld	t0,32(sp)
    80002cb4:	02813303          	ld	t1,40(sp)
    80002cb8:	03013383          	ld	t2,48(sp)
    80002cbc:	03813403          	ld	s0,56(sp)
    80002cc0:	04013483          	ld	s1,64(sp)
    80002cc4:	04813503          	ld	a0,72(sp)
    80002cc8:	05013583          	ld	a1,80(sp)
    80002ccc:	05813603          	ld	a2,88(sp)
    80002cd0:	06013683          	ld	a3,96(sp)
    80002cd4:	06813703          	ld	a4,104(sp)
    80002cd8:	07013783          	ld	a5,112(sp)
    80002cdc:	07813803          	ld	a6,120(sp)
    80002ce0:	08013883          	ld	a7,128(sp)
    80002ce4:	08813903          	ld	s2,136(sp)
    80002ce8:	09013983          	ld	s3,144(sp)
    80002cec:	09813a03          	ld	s4,152(sp)
    80002cf0:	0a013a83          	ld	s5,160(sp)
    80002cf4:	0a813b03          	ld	s6,168(sp)
    80002cf8:	0b013b83          	ld	s7,176(sp)
    80002cfc:	0b813c03          	ld	s8,184(sp)
    80002d00:	0c013c83          	ld	s9,192(sp)
    80002d04:	0c813d03          	ld	s10,200(sp)
    80002d08:	0d013d83          	ld	s11,208(sp)
    80002d0c:	0d813e03          	ld	t3,216(sp)
    80002d10:	0e013e83          	ld	t4,224(sp)
    80002d14:	0e813f03          	ld	t5,232(sp)
    80002d18:	0f013f83          	ld	t6,240(sp)
    80002d1c:	10010113          	addi	sp,sp,256
    80002d20:	10200073          	sret
    80002d24:	00000013          	nop
    80002d28:	00000013          	nop
    80002d2c:	00000013          	nop

0000000080002d30 <timervec>:
    80002d30:	34051573          	csrrw	a0,mscratch,a0
    80002d34:	00b53023          	sd	a1,0(a0)
    80002d38:	00c53423          	sd	a2,8(a0)
    80002d3c:	00d53823          	sd	a3,16(a0)
    80002d40:	01853583          	ld	a1,24(a0)
    80002d44:	02053603          	ld	a2,32(a0)
    80002d48:	0005b683          	ld	a3,0(a1)
    80002d4c:	00c686b3          	add	a3,a3,a2
    80002d50:	00d5b023          	sd	a3,0(a1)
    80002d54:	00200593          	li	a1,2
    80002d58:	14459073          	csrw	sip,a1
    80002d5c:	01053683          	ld	a3,16(a0)
    80002d60:	00853603          	ld	a2,8(a0)
    80002d64:	00053583          	ld	a1,0(a0)
    80002d68:	34051573          	csrrw	a0,mscratch,a0
    80002d6c:	30200073          	mret

0000000080002d70 <plicinit>:
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
    80002d7c:	00813403          	ld	s0,8(sp)
    80002d80:	0c0007b7          	lui	a5,0xc000
    80002d84:	00100713          	li	a4,1
    80002d88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002d8c:	00e7a223          	sw	a4,4(a5)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <plicinithart>:
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00813023          	sd	s0,0(sp)
    80002da0:	00113423          	sd	ra,8(sp)
    80002da4:	01010413          	addi	s0,sp,16
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	a4c080e7          	jalr	-1460(ra) # 800027f4 <cpuid>
    80002db0:	0085171b          	slliw	a4,a0,0x8
    80002db4:	0c0027b7          	lui	a5,0xc002
    80002db8:	00e787b3          	add	a5,a5,a4
    80002dbc:	40200713          	li	a4,1026
    80002dc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002dc4:	00813083          	ld	ra,8(sp)
    80002dc8:	00013403          	ld	s0,0(sp)
    80002dcc:	00d5151b          	slliw	a0,a0,0xd
    80002dd0:	0c2017b7          	lui	a5,0xc201
    80002dd4:	00a78533          	add	a0,a5,a0
    80002dd8:	00052023          	sw	zero,0(a0)
    80002ddc:	01010113          	addi	sp,sp,16
    80002de0:	00008067          	ret

0000000080002de4 <plic_claim>:
    80002de4:	ff010113          	addi	sp,sp,-16
    80002de8:	00813023          	sd	s0,0(sp)
    80002dec:	00113423          	sd	ra,8(sp)
    80002df0:	01010413          	addi	s0,sp,16
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	a00080e7          	jalr	-1536(ra) # 800027f4 <cpuid>
    80002dfc:	00813083          	ld	ra,8(sp)
    80002e00:	00013403          	ld	s0,0(sp)
    80002e04:	00d5151b          	slliw	a0,a0,0xd
    80002e08:	0c2017b7          	lui	a5,0xc201
    80002e0c:	00a78533          	add	a0,a5,a0
    80002e10:	00452503          	lw	a0,4(a0)
    80002e14:	01010113          	addi	sp,sp,16
    80002e18:	00008067          	ret

0000000080002e1c <plic_complete>:
    80002e1c:	fe010113          	addi	sp,sp,-32
    80002e20:	00813823          	sd	s0,16(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	00113c23          	sd	ra,24(sp)
    80002e2c:	02010413          	addi	s0,sp,32
    80002e30:	00050493          	mv	s1,a0
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	9c0080e7          	jalr	-1600(ra) # 800027f4 <cpuid>
    80002e3c:	01813083          	ld	ra,24(sp)
    80002e40:	01013403          	ld	s0,16(sp)
    80002e44:	00d5179b          	slliw	a5,a0,0xd
    80002e48:	0c201737          	lui	a4,0xc201
    80002e4c:	00f707b3          	add	a5,a4,a5
    80002e50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002e54:	00813483          	ld	s1,8(sp)
    80002e58:	02010113          	addi	sp,sp,32
    80002e5c:	00008067          	ret

0000000080002e60 <consolewrite>:
    80002e60:	fb010113          	addi	sp,sp,-80
    80002e64:	04813023          	sd	s0,64(sp)
    80002e68:	04113423          	sd	ra,72(sp)
    80002e6c:	02913c23          	sd	s1,56(sp)
    80002e70:	03213823          	sd	s2,48(sp)
    80002e74:	03313423          	sd	s3,40(sp)
    80002e78:	03413023          	sd	s4,32(sp)
    80002e7c:	01513c23          	sd	s5,24(sp)
    80002e80:	05010413          	addi	s0,sp,80
    80002e84:	06c05c63          	blez	a2,80002efc <consolewrite+0x9c>
    80002e88:	00060993          	mv	s3,a2
    80002e8c:	00050a13          	mv	s4,a0
    80002e90:	00058493          	mv	s1,a1
    80002e94:	00000913          	li	s2,0
    80002e98:	fff00a93          	li	s5,-1
    80002e9c:	01c0006f          	j	80002eb8 <consolewrite+0x58>
    80002ea0:	fbf44503          	lbu	a0,-65(s0)
    80002ea4:	0019091b          	addiw	s2,s2,1
    80002ea8:	00148493          	addi	s1,s1,1
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	a9c080e7          	jalr	-1380(ra) # 80003948 <uartputc>
    80002eb4:	03298063          	beq	s3,s2,80002ed4 <consolewrite+0x74>
    80002eb8:	00048613          	mv	a2,s1
    80002ebc:	00100693          	li	a3,1
    80002ec0:	000a0593          	mv	a1,s4
    80002ec4:	fbf40513          	addi	a0,s0,-65
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	9e4080e7          	jalr	-1564(ra) # 800028ac <either_copyin>
    80002ed0:	fd5518e3          	bne	a0,s5,80002ea0 <consolewrite+0x40>
    80002ed4:	04813083          	ld	ra,72(sp)
    80002ed8:	04013403          	ld	s0,64(sp)
    80002edc:	03813483          	ld	s1,56(sp)
    80002ee0:	02813983          	ld	s3,40(sp)
    80002ee4:	02013a03          	ld	s4,32(sp)
    80002ee8:	01813a83          	ld	s5,24(sp)
    80002eec:	00090513          	mv	a0,s2
    80002ef0:	03013903          	ld	s2,48(sp)
    80002ef4:	05010113          	addi	sp,sp,80
    80002ef8:	00008067          	ret
    80002efc:	00000913          	li	s2,0
    80002f00:	fd5ff06f          	j	80002ed4 <consolewrite+0x74>

0000000080002f04 <consoleread>:
    80002f04:	f9010113          	addi	sp,sp,-112
    80002f08:	06813023          	sd	s0,96(sp)
    80002f0c:	04913c23          	sd	s1,88(sp)
    80002f10:	05213823          	sd	s2,80(sp)
    80002f14:	05313423          	sd	s3,72(sp)
    80002f18:	05413023          	sd	s4,64(sp)
    80002f1c:	03513c23          	sd	s5,56(sp)
    80002f20:	03613823          	sd	s6,48(sp)
    80002f24:	03713423          	sd	s7,40(sp)
    80002f28:	03813023          	sd	s8,32(sp)
    80002f2c:	06113423          	sd	ra,104(sp)
    80002f30:	01913c23          	sd	s9,24(sp)
    80002f34:	07010413          	addi	s0,sp,112
    80002f38:	00060b93          	mv	s7,a2
    80002f3c:	00050913          	mv	s2,a0
    80002f40:	00058c13          	mv	s8,a1
    80002f44:	00060b1b          	sext.w	s6,a2
    80002f48:	00004497          	auipc	s1,0x4
    80002f4c:	c2048493          	addi	s1,s1,-992 # 80006b68 <cons>
    80002f50:	00400993          	li	s3,4
    80002f54:	fff00a13          	li	s4,-1
    80002f58:	00a00a93          	li	s5,10
    80002f5c:	05705e63          	blez	s7,80002fb8 <consoleread+0xb4>
    80002f60:	09c4a703          	lw	a4,156(s1)
    80002f64:	0984a783          	lw	a5,152(s1)
    80002f68:	0007071b          	sext.w	a4,a4
    80002f6c:	08e78463          	beq	a5,a4,80002ff4 <consoleread+0xf0>
    80002f70:	07f7f713          	andi	a4,a5,127
    80002f74:	00e48733          	add	a4,s1,a4
    80002f78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002f7c:	0017869b          	addiw	a3,a5,1
    80002f80:	08d4ac23          	sw	a3,152(s1)
    80002f84:	00070c9b          	sext.w	s9,a4
    80002f88:	0b370663          	beq	a4,s3,80003034 <consoleread+0x130>
    80002f8c:	00100693          	li	a3,1
    80002f90:	f9f40613          	addi	a2,s0,-97
    80002f94:	000c0593          	mv	a1,s8
    80002f98:	00090513          	mv	a0,s2
    80002f9c:	f8e40fa3          	sb	a4,-97(s0)
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	8c0080e7          	jalr	-1856(ra) # 80002860 <either_copyout>
    80002fa8:	01450863          	beq	a0,s4,80002fb8 <consoleread+0xb4>
    80002fac:	001c0c13          	addi	s8,s8,1
    80002fb0:	fffb8b9b          	addiw	s7,s7,-1
    80002fb4:	fb5c94e3          	bne	s9,s5,80002f5c <consoleread+0x58>
    80002fb8:	000b851b          	sext.w	a0,s7
    80002fbc:	06813083          	ld	ra,104(sp)
    80002fc0:	06013403          	ld	s0,96(sp)
    80002fc4:	05813483          	ld	s1,88(sp)
    80002fc8:	05013903          	ld	s2,80(sp)
    80002fcc:	04813983          	ld	s3,72(sp)
    80002fd0:	04013a03          	ld	s4,64(sp)
    80002fd4:	03813a83          	ld	s5,56(sp)
    80002fd8:	02813b83          	ld	s7,40(sp)
    80002fdc:	02013c03          	ld	s8,32(sp)
    80002fe0:	01813c83          	ld	s9,24(sp)
    80002fe4:	40ab053b          	subw	a0,s6,a0
    80002fe8:	03013b03          	ld	s6,48(sp)
    80002fec:	07010113          	addi	sp,sp,112
    80002ff0:	00008067          	ret
    80002ff4:	00001097          	auipc	ra,0x1
    80002ff8:	1d8080e7          	jalr	472(ra) # 800041cc <push_on>
    80002ffc:	0984a703          	lw	a4,152(s1)
    80003000:	09c4a783          	lw	a5,156(s1)
    80003004:	0007879b          	sext.w	a5,a5
    80003008:	fef70ce3          	beq	a4,a5,80003000 <consoleread+0xfc>
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	234080e7          	jalr	564(ra) # 80004240 <pop_on>
    80003014:	0984a783          	lw	a5,152(s1)
    80003018:	07f7f713          	andi	a4,a5,127
    8000301c:	00e48733          	add	a4,s1,a4
    80003020:	01874703          	lbu	a4,24(a4)
    80003024:	0017869b          	addiw	a3,a5,1
    80003028:	08d4ac23          	sw	a3,152(s1)
    8000302c:	00070c9b          	sext.w	s9,a4
    80003030:	f5371ee3          	bne	a4,s3,80002f8c <consoleread+0x88>
    80003034:	000b851b          	sext.w	a0,s7
    80003038:	f96bf2e3          	bgeu	s7,s6,80002fbc <consoleread+0xb8>
    8000303c:	08f4ac23          	sw	a5,152(s1)
    80003040:	f7dff06f          	j	80002fbc <consoleread+0xb8>

0000000080003044 <consputc>:
    80003044:	10000793          	li	a5,256
    80003048:	00f50663          	beq	a0,a5,80003054 <consputc+0x10>
    8000304c:	00001317          	auipc	t1,0x1
    80003050:	9f430067          	jr	-1548(t1) # 80003a40 <uartputc_sync>
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00113423          	sd	ra,8(sp)
    8000305c:	00813023          	sd	s0,0(sp)
    80003060:	01010413          	addi	s0,sp,16
    80003064:	00800513          	li	a0,8
    80003068:	00001097          	auipc	ra,0x1
    8000306c:	9d8080e7          	jalr	-1576(ra) # 80003a40 <uartputc_sync>
    80003070:	02000513          	li	a0,32
    80003074:	00001097          	auipc	ra,0x1
    80003078:	9cc080e7          	jalr	-1588(ra) # 80003a40 <uartputc_sync>
    8000307c:	00013403          	ld	s0,0(sp)
    80003080:	00813083          	ld	ra,8(sp)
    80003084:	00800513          	li	a0,8
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00001317          	auipc	t1,0x1
    80003090:	9b430067          	jr	-1612(t1) # 80003a40 <uartputc_sync>

0000000080003094 <consoleintr>:
    80003094:	fe010113          	addi	sp,sp,-32
    80003098:	00813823          	sd	s0,16(sp)
    8000309c:	00913423          	sd	s1,8(sp)
    800030a0:	01213023          	sd	s2,0(sp)
    800030a4:	00113c23          	sd	ra,24(sp)
    800030a8:	02010413          	addi	s0,sp,32
    800030ac:	00004917          	auipc	s2,0x4
    800030b0:	abc90913          	addi	s2,s2,-1348 # 80006b68 <cons>
    800030b4:	00050493          	mv	s1,a0
    800030b8:	00090513          	mv	a0,s2
    800030bc:	00001097          	auipc	ra,0x1
    800030c0:	e40080e7          	jalr	-448(ra) # 80003efc <acquire>
    800030c4:	02048c63          	beqz	s1,800030fc <consoleintr+0x68>
    800030c8:	0a092783          	lw	a5,160(s2)
    800030cc:	09892703          	lw	a4,152(s2)
    800030d0:	07f00693          	li	a3,127
    800030d4:	40e7873b          	subw	a4,a5,a4
    800030d8:	02e6e263          	bltu	a3,a4,800030fc <consoleintr+0x68>
    800030dc:	00d00713          	li	a4,13
    800030e0:	04e48063          	beq	s1,a4,80003120 <consoleintr+0x8c>
    800030e4:	07f7f713          	andi	a4,a5,127
    800030e8:	00e90733          	add	a4,s2,a4
    800030ec:	0017879b          	addiw	a5,a5,1
    800030f0:	0af92023          	sw	a5,160(s2)
    800030f4:	00970c23          	sb	s1,24(a4)
    800030f8:	08f92e23          	sw	a5,156(s2)
    800030fc:	01013403          	ld	s0,16(sp)
    80003100:	01813083          	ld	ra,24(sp)
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	00013903          	ld	s2,0(sp)
    8000310c:	00004517          	auipc	a0,0x4
    80003110:	a5c50513          	addi	a0,a0,-1444 # 80006b68 <cons>
    80003114:	02010113          	addi	sp,sp,32
    80003118:	00001317          	auipc	t1,0x1
    8000311c:	eb030067          	jr	-336(t1) # 80003fc8 <release>
    80003120:	00a00493          	li	s1,10
    80003124:	fc1ff06f          	j	800030e4 <consoleintr+0x50>

0000000080003128 <consoleinit>:
    80003128:	fe010113          	addi	sp,sp,-32
    8000312c:	00113c23          	sd	ra,24(sp)
    80003130:	00813823          	sd	s0,16(sp)
    80003134:	00913423          	sd	s1,8(sp)
    80003138:	02010413          	addi	s0,sp,32
    8000313c:	00004497          	auipc	s1,0x4
    80003140:	a2c48493          	addi	s1,s1,-1492 # 80006b68 <cons>
    80003144:	00048513          	mv	a0,s1
    80003148:	00002597          	auipc	a1,0x2
    8000314c:	0d858593          	addi	a1,a1,216 # 80005220 <_ZZ12printIntegermE6digits+0x138>
    80003150:	00001097          	auipc	ra,0x1
    80003154:	d88080e7          	jalr	-632(ra) # 80003ed8 <initlock>
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	7ac080e7          	jalr	1964(ra) # 80003904 <uartinit>
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	00000797          	auipc	a5,0x0
    8000316c:	d9c78793          	addi	a5,a5,-612 # 80002f04 <consoleread>
    80003170:	0af4bc23          	sd	a5,184(s1)
    80003174:	00000797          	auipc	a5,0x0
    80003178:	cec78793          	addi	a5,a5,-788 # 80002e60 <consolewrite>
    8000317c:	0cf4b023          	sd	a5,192(s1)
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	02010113          	addi	sp,sp,32
    80003188:	00008067          	ret

000000008000318c <console_read>:
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	00004317          	auipc	t1,0x4
    800031a0:	a8433303          	ld	t1,-1404(t1) # 80006c20 <devsw+0x10>
    800031a4:	01010113          	addi	sp,sp,16
    800031a8:	00030067          	jr	t1

00000000800031ac <console_write>:
    800031ac:	ff010113          	addi	sp,sp,-16
    800031b0:	00813423          	sd	s0,8(sp)
    800031b4:	01010413          	addi	s0,sp,16
    800031b8:	00813403          	ld	s0,8(sp)
    800031bc:	00004317          	auipc	t1,0x4
    800031c0:	a6c33303          	ld	t1,-1428(t1) # 80006c28 <devsw+0x18>
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00030067          	jr	t1

00000000800031cc <panic>:
    800031cc:	fe010113          	addi	sp,sp,-32
    800031d0:	00113c23          	sd	ra,24(sp)
    800031d4:	00813823          	sd	s0,16(sp)
    800031d8:	00913423          	sd	s1,8(sp)
    800031dc:	02010413          	addi	s0,sp,32
    800031e0:	00050493          	mv	s1,a0
    800031e4:	00002517          	auipc	a0,0x2
    800031e8:	04450513          	addi	a0,a0,68 # 80005228 <_ZZ12printIntegermE6digits+0x140>
    800031ec:	00004797          	auipc	a5,0x4
    800031f0:	ac07ae23          	sw	zero,-1316(a5) # 80006cc8 <pr+0x18>
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	034080e7          	jalr	52(ra) # 80003228 <__printf>
    800031fc:	00048513          	mv	a0,s1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	028080e7          	jalr	40(ra) # 80003228 <__printf>
    80003208:	00002517          	auipc	a0,0x2
    8000320c:	e3850513          	addi	a0,a0,-456 # 80005040 <CONSOLE_STATUS+0x30>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	018080e7          	jalr	24(ra) # 80003228 <__printf>
    80003218:	00100793          	li	a5,1
    8000321c:	00003717          	auipc	a4,0x3
    80003220:	82f72623          	sw	a5,-2004(a4) # 80005a48 <panicked>
    80003224:	0000006f          	j	80003224 <panic+0x58>

0000000080003228 <__printf>:
    80003228:	f3010113          	addi	sp,sp,-208
    8000322c:	08813023          	sd	s0,128(sp)
    80003230:	07313423          	sd	s3,104(sp)
    80003234:	09010413          	addi	s0,sp,144
    80003238:	05813023          	sd	s8,64(sp)
    8000323c:	08113423          	sd	ra,136(sp)
    80003240:	06913c23          	sd	s1,120(sp)
    80003244:	07213823          	sd	s2,112(sp)
    80003248:	07413023          	sd	s4,96(sp)
    8000324c:	05513c23          	sd	s5,88(sp)
    80003250:	05613823          	sd	s6,80(sp)
    80003254:	05713423          	sd	s7,72(sp)
    80003258:	03913c23          	sd	s9,56(sp)
    8000325c:	03a13823          	sd	s10,48(sp)
    80003260:	03b13423          	sd	s11,40(sp)
    80003264:	00004317          	auipc	t1,0x4
    80003268:	a4c30313          	addi	t1,t1,-1460 # 80006cb0 <pr>
    8000326c:	01832c03          	lw	s8,24(t1)
    80003270:	00b43423          	sd	a1,8(s0)
    80003274:	00c43823          	sd	a2,16(s0)
    80003278:	00d43c23          	sd	a3,24(s0)
    8000327c:	02e43023          	sd	a4,32(s0)
    80003280:	02f43423          	sd	a5,40(s0)
    80003284:	03043823          	sd	a6,48(s0)
    80003288:	03143c23          	sd	a7,56(s0)
    8000328c:	00050993          	mv	s3,a0
    80003290:	4a0c1663          	bnez	s8,8000373c <__printf+0x514>
    80003294:	60098c63          	beqz	s3,800038ac <__printf+0x684>
    80003298:	0009c503          	lbu	a0,0(s3)
    8000329c:	00840793          	addi	a5,s0,8
    800032a0:	f6f43c23          	sd	a5,-136(s0)
    800032a4:	00000493          	li	s1,0
    800032a8:	22050063          	beqz	a0,800034c8 <__printf+0x2a0>
    800032ac:	00002a37          	lui	s4,0x2
    800032b0:	00018ab7          	lui	s5,0x18
    800032b4:	000f4b37          	lui	s6,0xf4
    800032b8:	00989bb7          	lui	s7,0x989
    800032bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800032c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800032c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800032c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800032cc:	00148c9b          	addiw	s9,s1,1
    800032d0:	02500793          	li	a5,37
    800032d4:	01998933          	add	s2,s3,s9
    800032d8:	38f51263          	bne	a0,a5,8000365c <__printf+0x434>
    800032dc:	00094783          	lbu	a5,0(s2)
    800032e0:	00078c9b          	sext.w	s9,a5
    800032e4:	1e078263          	beqz	a5,800034c8 <__printf+0x2a0>
    800032e8:	0024849b          	addiw	s1,s1,2
    800032ec:	07000713          	li	a4,112
    800032f0:	00998933          	add	s2,s3,s1
    800032f4:	38e78a63          	beq	a5,a4,80003688 <__printf+0x460>
    800032f8:	20f76863          	bltu	a4,a5,80003508 <__printf+0x2e0>
    800032fc:	42a78863          	beq	a5,a0,8000372c <__printf+0x504>
    80003300:	06400713          	li	a4,100
    80003304:	40e79663          	bne	a5,a4,80003710 <__printf+0x4e8>
    80003308:	f7843783          	ld	a5,-136(s0)
    8000330c:	0007a603          	lw	a2,0(a5)
    80003310:	00878793          	addi	a5,a5,8
    80003314:	f6f43c23          	sd	a5,-136(s0)
    80003318:	42064a63          	bltz	a2,8000374c <__printf+0x524>
    8000331c:	00a00713          	li	a4,10
    80003320:	02e677bb          	remuw	a5,a2,a4
    80003324:	00002d97          	auipc	s11,0x2
    80003328:	f2cd8d93          	addi	s11,s11,-212 # 80005250 <digits>
    8000332c:	00900593          	li	a1,9
    80003330:	0006051b          	sext.w	a0,a2
    80003334:	00000c93          	li	s9,0
    80003338:	02079793          	slli	a5,a5,0x20
    8000333c:	0207d793          	srli	a5,a5,0x20
    80003340:	00fd87b3          	add	a5,s11,a5
    80003344:	0007c783          	lbu	a5,0(a5)
    80003348:	02e656bb          	divuw	a3,a2,a4
    8000334c:	f8f40023          	sb	a5,-128(s0)
    80003350:	14c5d863          	bge	a1,a2,800034a0 <__printf+0x278>
    80003354:	06300593          	li	a1,99
    80003358:	00100c93          	li	s9,1
    8000335c:	02e6f7bb          	remuw	a5,a3,a4
    80003360:	02079793          	slli	a5,a5,0x20
    80003364:	0207d793          	srli	a5,a5,0x20
    80003368:	00fd87b3          	add	a5,s11,a5
    8000336c:	0007c783          	lbu	a5,0(a5)
    80003370:	02e6d73b          	divuw	a4,a3,a4
    80003374:	f8f400a3          	sb	a5,-127(s0)
    80003378:	12a5f463          	bgeu	a1,a0,800034a0 <__printf+0x278>
    8000337c:	00a00693          	li	a3,10
    80003380:	00900593          	li	a1,9
    80003384:	02d777bb          	remuw	a5,a4,a3
    80003388:	02079793          	slli	a5,a5,0x20
    8000338c:	0207d793          	srli	a5,a5,0x20
    80003390:	00fd87b3          	add	a5,s11,a5
    80003394:	0007c503          	lbu	a0,0(a5)
    80003398:	02d757bb          	divuw	a5,a4,a3
    8000339c:	f8a40123          	sb	a0,-126(s0)
    800033a0:	48e5f263          	bgeu	a1,a4,80003824 <__printf+0x5fc>
    800033a4:	06300513          	li	a0,99
    800033a8:	02d7f5bb          	remuw	a1,a5,a3
    800033ac:	02059593          	slli	a1,a1,0x20
    800033b0:	0205d593          	srli	a1,a1,0x20
    800033b4:	00bd85b3          	add	a1,s11,a1
    800033b8:	0005c583          	lbu	a1,0(a1)
    800033bc:	02d7d7bb          	divuw	a5,a5,a3
    800033c0:	f8b401a3          	sb	a1,-125(s0)
    800033c4:	48e57263          	bgeu	a0,a4,80003848 <__printf+0x620>
    800033c8:	3e700513          	li	a0,999
    800033cc:	02d7f5bb          	remuw	a1,a5,a3
    800033d0:	02059593          	slli	a1,a1,0x20
    800033d4:	0205d593          	srli	a1,a1,0x20
    800033d8:	00bd85b3          	add	a1,s11,a1
    800033dc:	0005c583          	lbu	a1,0(a1)
    800033e0:	02d7d7bb          	divuw	a5,a5,a3
    800033e4:	f8b40223          	sb	a1,-124(s0)
    800033e8:	46e57663          	bgeu	a0,a4,80003854 <__printf+0x62c>
    800033ec:	02d7f5bb          	remuw	a1,a5,a3
    800033f0:	02059593          	slli	a1,a1,0x20
    800033f4:	0205d593          	srli	a1,a1,0x20
    800033f8:	00bd85b3          	add	a1,s11,a1
    800033fc:	0005c583          	lbu	a1,0(a1)
    80003400:	02d7d7bb          	divuw	a5,a5,a3
    80003404:	f8b402a3          	sb	a1,-123(s0)
    80003408:	46ea7863          	bgeu	s4,a4,80003878 <__printf+0x650>
    8000340c:	02d7f5bb          	remuw	a1,a5,a3
    80003410:	02059593          	slli	a1,a1,0x20
    80003414:	0205d593          	srli	a1,a1,0x20
    80003418:	00bd85b3          	add	a1,s11,a1
    8000341c:	0005c583          	lbu	a1,0(a1)
    80003420:	02d7d7bb          	divuw	a5,a5,a3
    80003424:	f8b40323          	sb	a1,-122(s0)
    80003428:	3eeaf863          	bgeu	s5,a4,80003818 <__printf+0x5f0>
    8000342c:	02d7f5bb          	remuw	a1,a5,a3
    80003430:	02059593          	slli	a1,a1,0x20
    80003434:	0205d593          	srli	a1,a1,0x20
    80003438:	00bd85b3          	add	a1,s11,a1
    8000343c:	0005c583          	lbu	a1,0(a1)
    80003440:	02d7d7bb          	divuw	a5,a5,a3
    80003444:	f8b403a3          	sb	a1,-121(s0)
    80003448:	42eb7e63          	bgeu	s6,a4,80003884 <__printf+0x65c>
    8000344c:	02d7f5bb          	remuw	a1,a5,a3
    80003450:	02059593          	slli	a1,a1,0x20
    80003454:	0205d593          	srli	a1,a1,0x20
    80003458:	00bd85b3          	add	a1,s11,a1
    8000345c:	0005c583          	lbu	a1,0(a1)
    80003460:	02d7d7bb          	divuw	a5,a5,a3
    80003464:	f8b40423          	sb	a1,-120(s0)
    80003468:	42ebfc63          	bgeu	s7,a4,800038a0 <__printf+0x678>
    8000346c:	02079793          	slli	a5,a5,0x20
    80003470:	0207d793          	srli	a5,a5,0x20
    80003474:	00fd8db3          	add	s11,s11,a5
    80003478:	000dc703          	lbu	a4,0(s11)
    8000347c:	00a00793          	li	a5,10
    80003480:	00900c93          	li	s9,9
    80003484:	f8e404a3          	sb	a4,-119(s0)
    80003488:	00065c63          	bgez	a2,800034a0 <__printf+0x278>
    8000348c:	f9040713          	addi	a4,s0,-112
    80003490:	00f70733          	add	a4,a4,a5
    80003494:	02d00693          	li	a3,45
    80003498:	fed70823          	sb	a3,-16(a4)
    8000349c:	00078c93          	mv	s9,a5
    800034a0:	f8040793          	addi	a5,s0,-128
    800034a4:	01978cb3          	add	s9,a5,s9
    800034a8:	f7f40d13          	addi	s10,s0,-129
    800034ac:	000cc503          	lbu	a0,0(s9)
    800034b0:	fffc8c93          	addi	s9,s9,-1
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	b90080e7          	jalr	-1136(ra) # 80003044 <consputc>
    800034bc:	ffac98e3          	bne	s9,s10,800034ac <__printf+0x284>
    800034c0:	00094503          	lbu	a0,0(s2)
    800034c4:	e00514e3          	bnez	a0,800032cc <__printf+0xa4>
    800034c8:	1a0c1663          	bnez	s8,80003674 <__printf+0x44c>
    800034cc:	08813083          	ld	ra,136(sp)
    800034d0:	08013403          	ld	s0,128(sp)
    800034d4:	07813483          	ld	s1,120(sp)
    800034d8:	07013903          	ld	s2,112(sp)
    800034dc:	06813983          	ld	s3,104(sp)
    800034e0:	06013a03          	ld	s4,96(sp)
    800034e4:	05813a83          	ld	s5,88(sp)
    800034e8:	05013b03          	ld	s6,80(sp)
    800034ec:	04813b83          	ld	s7,72(sp)
    800034f0:	04013c03          	ld	s8,64(sp)
    800034f4:	03813c83          	ld	s9,56(sp)
    800034f8:	03013d03          	ld	s10,48(sp)
    800034fc:	02813d83          	ld	s11,40(sp)
    80003500:	0d010113          	addi	sp,sp,208
    80003504:	00008067          	ret
    80003508:	07300713          	li	a4,115
    8000350c:	1ce78a63          	beq	a5,a4,800036e0 <__printf+0x4b8>
    80003510:	07800713          	li	a4,120
    80003514:	1ee79e63          	bne	a5,a4,80003710 <__printf+0x4e8>
    80003518:	f7843783          	ld	a5,-136(s0)
    8000351c:	0007a703          	lw	a4,0(a5)
    80003520:	00878793          	addi	a5,a5,8
    80003524:	f6f43c23          	sd	a5,-136(s0)
    80003528:	28074263          	bltz	a4,800037ac <__printf+0x584>
    8000352c:	00002d97          	auipc	s11,0x2
    80003530:	d24d8d93          	addi	s11,s11,-732 # 80005250 <digits>
    80003534:	00f77793          	andi	a5,a4,15
    80003538:	00fd87b3          	add	a5,s11,a5
    8000353c:	0007c683          	lbu	a3,0(a5)
    80003540:	00f00613          	li	a2,15
    80003544:	0007079b          	sext.w	a5,a4
    80003548:	f8d40023          	sb	a3,-128(s0)
    8000354c:	0047559b          	srliw	a1,a4,0x4
    80003550:	0047569b          	srliw	a3,a4,0x4
    80003554:	00000c93          	li	s9,0
    80003558:	0ee65063          	bge	a2,a4,80003638 <__printf+0x410>
    8000355c:	00f6f693          	andi	a3,a3,15
    80003560:	00dd86b3          	add	a3,s11,a3
    80003564:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003568:	0087d79b          	srliw	a5,a5,0x8
    8000356c:	00100c93          	li	s9,1
    80003570:	f8d400a3          	sb	a3,-127(s0)
    80003574:	0cb67263          	bgeu	a2,a1,80003638 <__printf+0x410>
    80003578:	00f7f693          	andi	a3,a5,15
    8000357c:	00dd86b3          	add	a3,s11,a3
    80003580:	0006c583          	lbu	a1,0(a3)
    80003584:	00f00613          	li	a2,15
    80003588:	0047d69b          	srliw	a3,a5,0x4
    8000358c:	f8b40123          	sb	a1,-126(s0)
    80003590:	0047d593          	srli	a1,a5,0x4
    80003594:	28f67e63          	bgeu	a2,a5,80003830 <__printf+0x608>
    80003598:	00f6f693          	andi	a3,a3,15
    8000359c:	00dd86b3          	add	a3,s11,a3
    800035a0:	0006c503          	lbu	a0,0(a3)
    800035a4:	0087d813          	srli	a6,a5,0x8
    800035a8:	0087d69b          	srliw	a3,a5,0x8
    800035ac:	f8a401a3          	sb	a0,-125(s0)
    800035b0:	28b67663          	bgeu	a2,a1,8000383c <__printf+0x614>
    800035b4:	00f6f693          	andi	a3,a3,15
    800035b8:	00dd86b3          	add	a3,s11,a3
    800035bc:	0006c583          	lbu	a1,0(a3)
    800035c0:	00c7d513          	srli	a0,a5,0xc
    800035c4:	00c7d69b          	srliw	a3,a5,0xc
    800035c8:	f8b40223          	sb	a1,-124(s0)
    800035cc:	29067a63          	bgeu	a2,a6,80003860 <__printf+0x638>
    800035d0:	00f6f693          	andi	a3,a3,15
    800035d4:	00dd86b3          	add	a3,s11,a3
    800035d8:	0006c583          	lbu	a1,0(a3)
    800035dc:	0107d813          	srli	a6,a5,0x10
    800035e0:	0107d69b          	srliw	a3,a5,0x10
    800035e4:	f8b402a3          	sb	a1,-123(s0)
    800035e8:	28a67263          	bgeu	a2,a0,8000386c <__printf+0x644>
    800035ec:	00f6f693          	andi	a3,a3,15
    800035f0:	00dd86b3          	add	a3,s11,a3
    800035f4:	0006c683          	lbu	a3,0(a3)
    800035f8:	0147d79b          	srliw	a5,a5,0x14
    800035fc:	f8d40323          	sb	a3,-122(s0)
    80003600:	21067663          	bgeu	a2,a6,8000380c <__printf+0x5e4>
    80003604:	02079793          	slli	a5,a5,0x20
    80003608:	0207d793          	srli	a5,a5,0x20
    8000360c:	00fd8db3          	add	s11,s11,a5
    80003610:	000dc683          	lbu	a3,0(s11)
    80003614:	00800793          	li	a5,8
    80003618:	00700c93          	li	s9,7
    8000361c:	f8d403a3          	sb	a3,-121(s0)
    80003620:	00075c63          	bgez	a4,80003638 <__printf+0x410>
    80003624:	f9040713          	addi	a4,s0,-112
    80003628:	00f70733          	add	a4,a4,a5
    8000362c:	02d00693          	li	a3,45
    80003630:	fed70823          	sb	a3,-16(a4)
    80003634:	00078c93          	mv	s9,a5
    80003638:	f8040793          	addi	a5,s0,-128
    8000363c:	01978cb3          	add	s9,a5,s9
    80003640:	f7f40d13          	addi	s10,s0,-129
    80003644:	000cc503          	lbu	a0,0(s9)
    80003648:	fffc8c93          	addi	s9,s9,-1
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	9f8080e7          	jalr	-1544(ra) # 80003044 <consputc>
    80003654:	ff9d18e3          	bne	s10,s9,80003644 <__printf+0x41c>
    80003658:	0100006f          	j	80003668 <__printf+0x440>
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	9e8080e7          	jalr	-1560(ra) # 80003044 <consputc>
    80003664:	000c8493          	mv	s1,s9
    80003668:	00094503          	lbu	a0,0(s2)
    8000366c:	c60510e3          	bnez	a0,800032cc <__printf+0xa4>
    80003670:	e40c0ee3          	beqz	s8,800034cc <__printf+0x2a4>
    80003674:	00003517          	auipc	a0,0x3
    80003678:	63c50513          	addi	a0,a0,1596 # 80006cb0 <pr>
    8000367c:	00001097          	auipc	ra,0x1
    80003680:	94c080e7          	jalr	-1716(ra) # 80003fc8 <release>
    80003684:	e49ff06f          	j	800034cc <__printf+0x2a4>
    80003688:	f7843783          	ld	a5,-136(s0)
    8000368c:	03000513          	li	a0,48
    80003690:	01000d13          	li	s10,16
    80003694:	00878713          	addi	a4,a5,8
    80003698:	0007bc83          	ld	s9,0(a5)
    8000369c:	f6e43c23          	sd	a4,-136(s0)
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	9a4080e7          	jalr	-1628(ra) # 80003044 <consputc>
    800036a8:	07800513          	li	a0,120
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	998080e7          	jalr	-1640(ra) # 80003044 <consputc>
    800036b4:	00002d97          	auipc	s11,0x2
    800036b8:	b9cd8d93          	addi	s11,s11,-1124 # 80005250 <digits>
    800036bc:	03ccd793          	srli	a5,s9,0x3c
    800036c0:	00fd87b3          	add	a5,s11,a5
    800036c4:	0007c503          	lbu	a0,0(a5)
    800036c8:	fffd0d1b          	addiw	s10,s10,-1
    800036cc:	004c9c93          	slli	s9,s9,0x4
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	974080e7          	jalr	-1676(ra) # 80003044 <consputc>
    800036d8:	fe0d12e3          	bnez	s10,800036bc <__printf+0x494>
    800036dc:	f8dff06f          	j	80003668 <__printf+0x440>
    800036e0:	f7843783          	ld	a5,-136(s0)
    800036e4:	0007bc83          	ld	s9,0(a5)
    800036e8:	00878793          	addi	a5,a5,8
    800036ec:	f6f43c23          	sd	a5,-136(s0)
    800036f0:	000c9a63          	bnez	s9,80003704 <__printf+0x4dc>
    800036f4:	1080006f          	j	800037fc <__printf+0x5d4>
    800036f8:	001c8c93          	addi	s9,s9,1
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	948080e7          	jalr	-1720(ra) # 80003044 <consputc>
    80003704:	000cc503          	lbu	a0,0(s9)
    80003708:	fe0518e3          	bnez	a0,800036f8 <__printf+0x4d0>
    8000370c:	f5dff06f          	j	80003668 <__printf+0x440>
    80003710:	02500513          	li	a0,37
    80003714:	00000097          	auipc	ra,0x0
    80003718:	930080e7          	jalr	-1744(ra) # 80003044 <consputc>
    8000371c:	000c8513          	mv	a0,s9
    80003720:	00000097          	auipc	ra,0x0
    80003724:	924080e7          	jalr	-1756(ra) # 80003044 <consputc>
    80003728:	f41ff06f          	j	80003668 <__printf+0x440>
    8000372c:	02500513          	li	a0,37
    80003730:	00000097          	auipc	ra,0x0
    80003734:	914080e7          	jalr	-1772(ra) # 80003044 <consputc>
    80003738:	f31ff06f          	j	80003668 <__printf+0x440>
    8000373c:	00030513          	mv	a0,t1
    80003740:	00000097          	auipc	ra,0x0
    80003744:	7bc080e7          	jalr	1980(ra) # 80003efc <acquire>
    80003748:	b4dff06f          	j	80003294 <__printf+0x6c>
    8000374c:	40c0053b          	negw	a0,a2
    80003750:	00a00713          	li	a4,10
    80003754:	02e576bb          	remuw	a3,a0,a4
    80003758:	00002d97          	auipc	s11,0x2
    8000375c:	af8d8d93          	addi	s11,s11,-1288 # 80005250 <digits>
    80003760:	ff700593          	li	a1,-9
    80003764:	02069693          	slli	a3,a3,0x20
    80003768:	0206d693          	srli	a3,a3,0x20
    8000376c:	00dd86b3          	add	a3,s11,a3
    80003770:	0006c683          	lbu	a3,0(a3)
    80003774:	02e557bb          	divuw	a5,a0,a4
    80003778:	f8d40023          	sb	a3,-128(s0)
    8000377c:	10b65e63          	bge	a2,a1,80003898 <__printf+0x670>
    80003780:	06300593          	li	a1,99
    80003784:	02e7f6bb          	remuw	a3,a5,a4
    80003788:	02069693          	slli	a3,a3,0x20
    8000378c:	0206d693          	srli	a3,a3,0x20
    80003790:	00dd86b3          	add	a3,s11,a3
    80003794:	0006c683          	lbu	a3,0(a3)
    80003798:	02e7d73b          	divuw	a4,a5,a4
    8000379c:	00200793          	li	a5,2
    800037a0:	f8d400a3          	sb	a3,-127(s0)
    800037a4:	bca5ece3          	bltu	a1,a0,8000337c <__printf+0x154>
    800037a8:	ce5ff06f          	j	8000348c <__printf+0x264>
    800037ac:	40e007bb          	negw	a5,a4
    800037b0:	00002d97          	auipc	s11,0x2
    800037b4:	aa0d8d93          	addi	s11,s11,-1376 # 80005250 <digits>
    800037b8:	00f7f693          	andi	a3,a5,15
    800037bc:	00dd86b3          	add	a3,s11,a3
    800037c0:	0006c583          	lbu	a1,0(a3)
    800037c4:	ff100613          	li	a2,-15
    800037c8:	0047d69b          	srliw	a3,a5,0x4
    800037cc:	f8b40023          	sb	a1,-128(s0)
    800037d0:	0047d59b          	srliw	a1,a5,0x4
    800037d4:	0ac75e63          	bge	a4,a2,80003890 <__printf+0x668>
    800037d8:	00f6f693          	andi	a3,a3,15
    800037dc:	00dd86b3          	add	a3,s11,a3
    800037e0:	0006c603          	lbu	a2,0(a3)
    800037e4:	00f00693          	li	a3,15
    800037e8:	0087d79b          	srliw	a5,a5,0x8
    800037ec:	f8c400a3          	sb	a2,-127(s0)
    800037f0:	d8b6e4e3          	bltu	a3,a1,80003578 <__printf+0x350>
    800037f4:	00200793          	li	a5,2
    800037f8:	e2dff06f          	j	80003624 <__printf+0x3fc>
    800037fc:	00002c97          	auipc	s9,0x2
    80003800:	a34c8c93          	addi	s9,s9,-1484 # 80005230 <_ZZ12printIntegermE6digits+0x148>
    80003804:	02800513          	li	a0,40
    80003808:	ef1ff06f          	j	800036f8 <__printf+0x4d0>
    8000380c:	00700793          	li	a5,7
    80003810:	00600c93          	li	s9,6
    80003814:	e0dff06f          	j	80003620 <__printf+0x3f8>
    80003818:	00700793          	li	a5,7
    8000381c:	00600c93          	li	s9,6
    80003820:	c69ff06f          	j	80003488 <__printf+0x260>
    80003824:	00300793          	li	a5,3
    80003828:	00200c93          	li	s9,2
    8000382c:	c5dff06f          	j	80003488 <__printf+0x260>
    80003830:	00300793          	li	a5,3
    80003834:	00200c93          	li	s9,2
    80003838:	de9ff06f          	j	80003620 <__printf+0x3f8>
    8000383c:	00400793          	li	a5,4
    80003840:	00300c93          	li	s9,3
    80003844:	dddff06f          	j	80003620 <__printf+0x3f8>
    80003848:	00400793          	li	a5,4
    8000384c:	00300c93          	li	s9,3
    80003850:	c39ff06f          	j	80003488 <__printf+0x260>
    80003854:	00500793          	li	a5,5
    80003858:	00400c93          	li	s9,4
    8000385c:	c2dff06f          	j	80003488 <__printf+0x260>
    80003860:	00500793          	li	a5,5
    80003864:	00400c93          	li	s9,4
    80003868:	db9ff06f          	j	80003620 <__printf+0x3f8>
    8000386c:	00600793          	li	a5,6
    80003870:	00500c93          	li	s9,5
    80003874:	dadff06f          	j	80003620 <__printf+0x3f8>
    80003878:	00600793          	li	a5,6
    8000387c:	00500c93          	li	s9,5
    80003880:	c09ff06f          	j	80003488 <__printf+0x260>
    80003884:	00800793          	li	a5,8
    80003888:	00700c93          	li	s9,7
    8000388c:	bfdff06f          	j	80003488 <__printf+0x260>
    80003890:	00100793          	li	a5,1
    80003894:	d91ff06f          	j	80003624 <__printf+0x3fc>
    80003898:	00100793          	li	a5,1
    8000389c:	bf1ff06f          	j	8000348c <__printf+0x264>
    800038a0:	00900793          	li	a5,9
    800038a4:	00800c93          	li	s9,8
    800038a8:	be1ff06f          	j	80003488 <__printf+0x260>
    800038ac:	00002517          	auipc	a0,0x2
    800038b0:	98c50513          	addi	a0,a0,-1652 # 80005238 <_ZZ12printIntegermE6digits+0x150>
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	918080e7          	jalr	-1768(ra) # 800031cc <panic>

00000000800038bc <printfinit>:
    800038bc:	fe010113          	addi	sp,sp,-32
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	02010413          	addi	s0,sp,32
    800038d0:	00003497          	auipc	s1,0x3
    800038d4:	3e048493          	addi	s1,s1,992 # 80006cb0 <pr>
    800038d8:	00048513          	mv	a0,s1
    800038dc:	00002597          	auipc	a1,0x2
    800038e0:	96c58593          	addi	a1,a1,-1684 # 80005248 <_ZZ12printIntegermE6digits+0x160>
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	5f4080e7          	jalr	1524(ra) # 80003ed8 <initlock>
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	0004ac23          	sw	zero,24(s1)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <uartinit>:
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00813423          	sd	s0,8(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	100007b7          	lui	a5,0x10000
    80003914:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003918:	f8000713          	li	a4,-128
    8000391c:	00e781a3          	sb	a4,3(a5)
    80003920:	00300713          	li	a4,3
    80003924:	00e78023          	sb	a4,0(a5)
    80003928:	000780a3          	sb	zero,1(a5)
    8000392c:	00e781a3          	sb	a4,3(a5)
    80003930:	00700693          	li	a3,7
    80003934:	00d78123          	sb	a3,2(a5)
    80003938:	00e780a3          	sb	a4,1(a5)
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret

0000000080003948 <uartputc>:
    80003948:	00002797          	auipc	a5,0x2
    8000394c:	1007a783          	lw	a5,256(a5) # 80005a48 <panicked>
    80003950:	00078463          	beqz	a5,80003958 <uartputc+0x10>
    80003954:	0000006f          	j	80003954 <uartputc+0xc>
    80003958:	fd010113          	addi	sp,sp,-48
    8000395c:	02813023          	sd	s0,32(sp)
    80003960:	00913c23          	sd	s1,24(sp)
    80003964:	01213823          	sd	s2,16(sp)
    80003968:	01313423          	sd	s3,8(sp)
    8000396c:	02113423          	sd	ra,40(sp)
    80003970:	03010413          	addi	s0,sp,48
    80003974:	00002917          	auipc	s2,0x2
    80003978:	0dc90913          	addi	s2,s2,220 # 80005a50 <uart_tx_r>
    8000397c:	00093783          	ld	a5,0(s2)
    80003980:	00002497          	auipc	s1,0x2
    80003984:	0d848493          	addi	s1,s1,216 # 80005a58 <uart_tx_w>
    80003988:	0004b703          	ld	a4,0(s1)
    8000398c:	02078693          	addi	a3,a5,32
    80003990:	00050993          	mv	s3,a0
    80003994:	02e69c63          	bne	a3,a4,800039cc <uartputc+0x84>
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	834080e7          	jalr	-1996(ra) # 800041cc <push_on>
    800039a0:	00093783          	ld	a5,0(s2)
    800039a4:	0004b703          	ld	a4,0(s1)
    800039a8:	02078793          	addi	a5,a5,32
    800039ac:	00e79463          	bne	a5,a4,800039b4 <uartputc+0x6c>
    800039b0:	0000006f          	j	800039b0 <uartputc+0x68>
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	88c080e7          	jalr	-1908(ra) # 80004240 <pop_on>
    800039bc:	00093783          	ld	a5,0(s2)
    800039c0:	0004b703          	ld	a4,0(s1)
    800039c4:	02078693          	addi	a3,a5,32
    800039c8:	fce688e3          	beq	a3,a4,80003998 <uartputc+0x50>
    800039cc:	01f77693          	andi	a3,a4,31
    800039d0:	00003597          	auipc	a1,0x3
    800039d4:	30058593          	addi	a1,a1,768 # 80006cd0 <uart_tx_buf>
    800039d8:	00d586b3          	add	a3,a1,a3
    800039dc:	00170713          	addi	a4,a4,1
    800039e0:	01368023          	sb	s3,0(a3)
    800039e4:	00e4b023          	sd	a4,0(s1)
    800039e8:	10000637          	lui	a2,0x10000
    800039ec:	02f71063          	bne	a4,a5,80003a0c <uartputc+0xc4>
    800039f0:	0340006f          	j	80003a24 <uartputc+0xdc>
    800039f4:	00074703          	lbu	a4,0(a4)
    800039f8:	00f93023          	sd	a5,0(s2)
    800039fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003a00:	00093783          	ld	a5,0(s2)
    80003a04:	0004b703          	ld	a4,0(s1)
    80003a08:	00f70e63          	beq	a4,a5,80003a24 <uartputc+0xdc>
    80003a0c:	00564683          	lbu	a3,5(a2)
    80003a10:	01f7f713          	andi	a4,a5,31
    80003a14:	00e58733          	add	a4,a1,a4
    80003a18:	0206f693          	andi	a3,a3,32
    80003a1c:	00178793          	addi	a5,a5,1
    80003a20:	fc069ae3          	bnez	a3,800039f4 <uartputc+0xac>
    80003a24:	02813083          	ld	ra,40(sp)
    80003a28:	02013403          	ld	s0,32(sp)
    80003a2c:	01813483          	ld	s1,24(sp)
    80003a30:	01013903          	ld	s2,16(sp)
    80003a34:	00813983          	ld	s3,8(sp)
    80003a38:	03010113          	addi	sp,sp,48
    80003a3c:	00008067          	ret

0000000080003a40 <uartputc_sync>:
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00813423          	sd	s0,8(sp)
    80003a48:	01010413          	addi	s0,sp,16
    80003a4c:	00002717          	auipc	a4,0x2
    80003a50:	ffc72703          	lw	a4,-4(a4) # 80005a48 <panicked>
    80003a54:	02071663          	bnez	a4,80003a80 <uartputc_sync+0x40>
    80003a58:	00050793          	mv	a5,a0
    80003a5c:	100006b7          	lui	a3,0x10000
    80003a60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003a64:	02077713          	andi	a4,a4,32
    80003a68:	fe070ce3          	beqz	a4,80003a60 <uartputc_sync+0x20>
    80003a6c:	0ff7f793          	andi	a5,a5,255
    80003a70:	00f68023          	sb	a5,0(a3)
    80003a74:	00813403          	ld	s0,8(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret
    80003a80:	0000006f          	j	80003a80 <uartputc_sync+0x40>

0000000080003a84 <uartstart>:
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00813423          	sd	s0,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    80003a90:	00002617          	auipc	a2,0x2
    80003a94:	fc060613          	addi	a2,a2,-64 # 80005a50 <uart_tx_r>
    80003a98:	00002517          	auipc	a0,0x2
    80003a9c:	fc050513          	addi	a0,a0,-64 # 80005a58 <uart_tx_w>
    80003aa0:	00063783          	ld	a5,0(a2)
    80003aa4:	00053703          	ld	a4,0(a0)
    80003aa8:	04f70263          	beq	a4,a5,80003aec <uartstart+0x68>
    80003aac:	100005b7          	lui	a1,0x10000
    80003ab0:	00003817          	auipc	a6,0x3
    80003ab4:	22080813          	addi	a6,a6,544 # 80006cd0 <uart_tx_buf>
    80003ab8:	01c0006f          	j	80003ad4 <uartstart+0x50>
    80003abc:	0006c703          	lbu	a4,0(a3)
    80003ac0:	00f63023          	sd	a5,0(a2)
    80003ac4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003ac8:	00063783          	ld	a5,0(a2)
    80003acc:	00053703          	ld	a4,0(a0)
    80003ad0:	00f70e63          	beq	a4,a5,80003aec <uartstart+0x68>
    80003ad4:	01f7f713          	andi	a4,a5,31
    80003ad8:	00e806b3          	add	a3,a6,a4
    80003adc:	0055c703          	lbu	a4,5(a1)
    80003ae0:	00178793          	addi	a5,a5,1
    80003ae4:	02077713          	andi	a4,a4,32
    80003ae8:	fc071ae3          	bnez	a4,80003abc <uartstart+0x38>
    80003aec:	00813403          	ld	s0,8(sp)
    80003af0:	01010113          	addi	sp,sp,16
    80003af4:	00008067          	ret

0000000080003af8 <uartgetc>:
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00813423          	sd	s0,8(sp)
    80003b00:	01010413          	addi	s0,sp,16
    80003b04:	10000737          	lui	a4,0x10000
    80003b08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003b0c:	0017f793          	andi	a5,a5,1
    80003b10:	00078c63          	beqz	a5,80003b28 <uartgetc+0x30>
    80003b14:	00074503          	lbu	a0,0(a4)
    80003b18:	0ff57513          	andi	a0,a0,255
    80003b1c:	00813403          	ld	s0,8(sp)
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret
    80003b28:	fff00513          	li	a0,-1
    80003b2c:	ff1ff06f          	j	80003b1c <uartgetc+0x24>

0000000080003b30 <uartintr>:
    80003b30:	100007b7          	lui	a5,0x10000
    80003b34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003b38:	0017f793          	andi	a5,a5,1
    80003b3c:	0a078463          	beqz	a5,80003be4 <uartintr+0xb4>
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	100004b7          	lui	s1,0x10000
    80003b58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003b5c:	0ff57513          	andi	a0,a0,255
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	534080e7          	jalr	1332(ra) # 80003094 <consoleintr>
    80003b68:	0054c783          	lbu	a5,5(s1)
    80003b6c:	0017f793          	andi	a5,a5,1
    80003b70:	fe0794e3          	bnez	a5,80003b58 <uartintr+0x28>
    80003b74:	00002617          	auipc	a2,0x2
    80003b78:	edc60613          	addi	a2,a2,-292 # 80005a50 <uart_tx_r>
    80003b7c:	00002517          	auipc	a0,0x2
    80003b80:	edc50513          	addi	a0,a0,-292 # 80005a58 <uart_tx_w>
    80003b84:	00063783          	ld	a5,0(a2)
    80003b88:	00053703          	ld	a4,0(a0)
    80003b8c:	04f70263          	beq	a4,a5,80003bd0 <uartintr+0xa0>
    80003b90:	100005b7          	lui	a1,0x10000
    80003b94:	00003817          	auipc	a6,0x3
    80003b98:	13c80813          	addi	a6,a6,316 # 80006cd0 <uart_tx_buf>
    80003b9c:	01c0006f          	j	80003bb8 <uartintr+0x88>
    80003ba0:	0006c703          	lbu	a4,0(a3)
    80003ba4:	00f63023          	sd	a5,0(a2)
    80003ba8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003bac:	00063783          	ld	a5,0(a2)
    80003bb0:	00053703          	ld	a4,0(a0)
    80003bb4:	00f70e63          	beq	a4,a5,80003bd0 <uartintr+0xa0>
    80003bb8:	01f7f713          	andi	a4,a5,31
    80003bbc:	00e806b3          	add	a3,a6,a4
    80003bc0:	0055c703          	lbu	a4,5(a1)
    80003bc4:	00178793          	addi	a5,a5,1
    80003bc8:	02077713          	andi	a4,a4,32
    80003bcc:	fc071ae3          	bnez	a4,80003ba0 <uartintr+0x70>
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	00813483          	ld	s1,8(sp)
    80003bdc:	02010113          	addi	sp,sp,32
    80003be0:	00008067          	ret
    80003be4:	00002617          	auipc	a2,0x2
    80003be8:	e6c60613          	addi	a2,a2,-404 # 80005a50 <uart_tx_r>
    80003bec:	00002517          	auipc	a0,0x2
    80003bf0:	e6c50513          	addi	a0,a0,-404 # 80005a58 <uart_tx_w>
    80003bf4:	00063783          	ld	a5,0(a2)
    80003bf8:	00053703          	ld	a4,0(a0)
    80003bfc:	04f70263          	beq	a4,a5,80003c40 <uartintr+0x110>
    80003c00:	100005b7          	lui	a1,0x10000
    80003c04:	00003817          	auipc	a6,0x3
    80003c08:	0cc80813          	addi	a6,a6,204 # 80006cd0 <uart_tx_buf>
    80003c0c:	01c0006f          	j	80003c28 <uartintr+0xf8>
    80003c10:	0006c703          	lbu	a4,0(a3)
    80003c14:	00f63023          	sd	a5,0(a2)
    80003c18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c1c:	00063783          	ld	a5,0(a2)
    80003c20:	00053703          	ld	a4,0(a0)
    80003c24:	02f70063          	beq	a4,a5,80003c44 <uartintr+0x114>
    80003c28:	01f7f713          	andi	a4,a5,31
    80003c2c:	00e806b3          	add	a3,a6,a4
    80003c30:	0055c703          	lbu	a4,5(a1)
    80003c34:	00178793          	addi	a5,a5,1
    80003c38:	02077713          	andi	a4,a4,32
    80003c3c:	fc071ae3          	bnez	a4,80003c10 <uartintr+0xe0>
    80003c40:	00008067          	ret
    80003c44:	00008067          	ret

0000000080003c48 <kinit>:
    80003c48:	fc010113          	addi	sp,sp,-64
    80003c4c:	02913423          	sd	s1,40(sp)
    80003c50:	fffff7b7          	lui	a5,0xfffff
    80003c54:	00004497          	auipc	s1,0x4
    80003c58:	09b48493          	addi	s1,s1,155 # 80007cef <end+0xfff>
    80003c5c:	02813823          	sd	s0,48(sp)
    80003c60:	01313c23          	sd	s3,24(sp)
    80003c64:	00f4f4b3          	and	s1,s1,a5
    80003c68:	02113c23          	sd	ra,56(sp)
    80003c6c:	03213023          	sd	s2,32(sp)
    80003c70:	01413823          	sd	s4,16(sp)
    80003c74:	01513423          	sd	s5,8(sp)
    80003c78:	04010413          	addi	s0,sp,64
    80003c7c:	000017b7          	lui	a5,0x1
    80003c80:	01100993          	li	s3,17
    80003c84:	00f487b3          	add	a5,s1,a5
    80003c88:	01b99993          	slli	s3,s3,0x1b
    80003c8c:	06f9e063          	bltu	s3,a5,80003cec <kinit+0xa4>
    80003c90:	00003a97          	auipc	s5,0x3
    80003c94:	060a8a93          	addi	s5,s5,96 # 80006cf0 <end>
    80003c98:	0754ec63          	bltu	s1,s5,80003d10 <kinit+0xc8>
    80003c9c:	0734fa63          	bgeu	s1,s3,80003d10 <kinit+0xc8>
    80003ca0:	00088a37          	lui	s4,0x88
    80003ca4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ca8:	00002917          	auipc	s2,0x2
    80003cac:	db890913          	addi	s2,s2,-584 # 80005a60 <kmem>
    80003cb0:	00ca1a13          	slli	s4,s4,0xc
    80003cb4:	0140006f          	j	80003cc8 <kinit+0x80>
    80003cb8:	000017b7          	lui	a5,0x1
    80003cbc:	00f484b3          	add	s1,s1,a5
    80003cc0:	0554e863          	bltu	s1,s5,80003d10 <kinit+0xc8>
    80003cc4:	0534f663          	bgeu	s1,s3,80003d10 <kinit+0xc8>
    80003cc8:	00001637          	lui	a2,0x1
    80003ccc:	00100593          	li	a1,1
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	5e4080e7          	jalr	1508(ra) # 800042b8 <__memset>
    80003cdc:	00093783          	ld	a5,0(s2)
    80003ce0:	00f4b023          	sd	a5,0(s1)
    80003ce4:	00993023          	sd	s1,0(s2)
    80003ce8:	fd4498e3          	bne	s1,s4,80003cb8 <kinit+0x70>
    80003cec:	03813083          	ld	ra,56(sp)
    80003cf0:	03013403          	ld	s0,48(sp)
    80003cf4:	02813483          	ld	s1,40(sp)
    80003cf8:	02013903          	ld	s2,32(sp)
    80003cfc:	01813983          	ld	s3,24(sp)
    80003d00:	01013a03          	ld	s4,16(sp)
    80003d04:	00813a83          	ld	s5,8(sp)
    80003d08:	04010113          	addi	sp,sp,64
    80003d0c:	00008067          	ret
    80003d10:	00001517          	auipc	a0,0x1
    80003d14:	55850513          	addi	a0,a0,1368 # 80005268 <digits+0x18>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	4b4080e7          	jalr	1204(ra) # 800031cc <panic>

0000000080003d20 <freerange>:
    80003d20:	fc010113          	addi	sp,sp,-64
    80003d24:	000017b7          	lui	a5,0x1
    80003d28:	02913423          	sd	s1,40(sp)
    80003d2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003d30:	009504b3          	add	s1,a0,s1
    80003d34:	fffff537          	lui	a0,0xfffff
    80003d38:	02813823          	sd	s0,48(sp)
    80003d3c:	02113c23          	sd	ra,56(sp)
    80003d40:	03213023          	sd	s2,32(sp)
    80003d44:	01313c23          	sd	s3,24(sp)
    80003d48:	01413823          	sd	s4,16(sp)
    80003d4c:	01513423          	sd	s5,8(sp)
    80003d50:	01613023          	sd	s6,0(sp)
    80003d54:	04010413          	addi	s0,sp,64
    80003d58:	00a4f4b3          	and	s1,s1,a0
    80003d5c:	00f487b3          	add	a5,s1,a5
    80003d60:	06f5e463          	bltu	a1,a5,80003dc8 <freerange+0xa8>
    80003d64:	00003a97          	auipc	s5,0x3
    80003d68:	f8ca8a93          	addi	s5,s5,-116 # 80006cf0 <end>
    80003d6c:	0954e263          	bltu	s1,s5,80003df0 <freerange+0xd0>
    80003d70:	01100993          	li	s3,17
    80003d74:	01b99993          	slli	s3,s3,0x1b
    80003d78:	0734fc63          	bgeu	s1,s3,80003df0 <freerange+0xd0>
    80003d7c:	00058a13          	mv	s4,a1
    80003d80:	00002917          	auipc	s2,0x2
    80003d84:	ce090913          	addi	s2,s2,-800 # 80005a60 <kmem>
    80003d88:	00002b37          	lui	s6,0x2
    80003d8c:	0140006f          	j	80003da0 <freerange+0x80>
    80003d90:	000017b7          	lui	a5,0x1
    80003d94:	00f484b3          	add	s1,s1,a5
    80003d98:	0554ec63          	bltu	s1,s5,80003df0 <freerange+0xd0>
    80003d9c:	0534fa63          	bgeu	s1,s3,80003df0 <freerange+0xd0>
    80003da0:	00001637          	lui	a2,0x1
    80003da4:	00100593          	li	a1,1
    80003da8:	00048513          	mv	a0,s1
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	50c080e7          	jalr	1292(ra) # 800042b8 <__memset>
    80003db4:	00093703          	ld	a4,0(s2)
    80003db8:	016487b3          	add	a5,s1,s6
    80003dbc:	00e4b023          	sd	a4,0(s1)
    80003dc0:	00993023          	sd	s1,0(s2)
    80003dc4:	fcfa76e3          	bgeu	s4,a5,80003d90 <freerange+0x70>
    80003dc8:	03813083          	ld	ra,56(sp)
    80003dcc:	03013403          	ld	s0,48(sp)
    80003dd0:	02813483          	ld	s1,40(sp)
    80003dd4:	02013903          	ld	s2,32(sp)
    80003dd8:	01813983          	ld	s3,24(sp)
    80003ddc:	01013a03          	ld	s4,16(sp)
    80003de0:	00813a83          	ld	s5,8(sp)
    80003de4:	00013b03          	ld	s6,0(sp)
    80003de8:	04010113          	addi	sp,sp,64
    80003dec:	00008067          	ret
    80003df0:	00001517          	auipc	a0,0x1
    80003df4:	47850513          	addi	a0,a0,1144 # 80005268 <digits+0x18>
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	3d4080e7          	jalr	980(ra) # 800031cc <panic>

0000000080003e00 <kfree>:
    80003e00:	fe010113          	addi	sp,sp,-32
    80003e04:	00813823          	sd	s0,16(sp)
    80003e08:	00113c23          	sd	ra,24(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	02010413          	addi	s0,sp,32
    80003e14:	03451793          	slli	a5,a0,0x34
    80003e18:	04079c63          	bnez	a5,80003e70 <kfree+0x70>
    80003e1c:	00003797          	auipc	a5,0x3
    80003e20:	ed478793          	addi	a5,a5,-300 # 80006cf0 <end>
    80003e24:	00050493          	mv	s1,a0
    80003e28:	04f56463          	bltu	a0,a5,80003e70 <kfree+0x70>
    80003e2c:	01100793          	li	a5,17
    80003e30:	01b79793          	slli	a5,a5,0x1b
    80003e34:	02f57e63          	bgeu	a0,a5,80003e70 <kfree+0x70>
    80003e38:	00001637          	lui	a2,0x1
    80003e3c:	00100593          	li	a1,1
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	478080e7          	jalr	1144(ra) # 800042b8 <__memset>
    80003e48:	00002797          	auipc	a5,0x2
    80003e4c:	c1878793          	addi	a5,a5,-1000 # 80005a60 <kmem>
    80003e50:	0007b703          	ld	a4,0(a5)
    80003e54:	01813083          	ld	ra,24(sp)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	00e4b023          	sd	a4,0(s1)
    80003e60:	0097b023          	sd	s1,0(a5)
    80003e64:	00813483          	ld	s1,8(sp)
    80003e68:	02010113          	addi	sp,sp,32
    80003e6c:	00008067          	ret
    80003e70:	00001517          	auipc	a0,0x1
    80003e74:	3f850513          	addi	a0,a0,1016 # 80005268 <digits+0x18>
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	354080e7          	jalr	852(ra) # 800031cc <panic>

0000000080003e80 <kalloc>:
    80003e80:	fe010113          	addi	sp,sp,-32
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	02010413          	addi	s0,sp,32
    80003e94:	00002797          	auipc	a5,0x2
    80003e98:	bcc78793          	addi	a5,a5,-1076 # 80005a60 <kmem>
    80003e9c:	0007b483          	ld	s1,0(a5)
    80003ea0:	02048063          	beqz	s1,80003ec0 <kalloc+0x40>
    80003ea4:	0004b703          	ld	a4,0(s1)
    80003ea8:	00001637          	lui	a2,0x1
    80003eac:	00500593          	li	a1,5
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	00e7b023          	sd	a4,0(a5)
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	400080e7          	jalr	1024(ra) # 800042b8 <__memset>
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	00813483          	ld	s1,8(sp)
    80003ed0:	02010113          	addi	sp,sp,32
    80003ed4:	00008067          	ret

0000000080003ed8 <initlock>:
    80003ed8:	ff010113          	addi	sp,sp,-16
    80003edc:	00813423          	sd	s0,8(sp)
    80003ee0:	01010413          	addi	s0,sp,16
    80003ee4:	00813403          	ld	s0,8(sp)
    80003ee8:	00b53423          	sd	a1,8(a0)
    80003eec:	00052023          	sw	zero,0(a0)
    80003ef0:	00053823          	sd	zero,16(a0)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret

0000000080003efc <acquire>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00913423          	sd	s1,8(sp)
    80003f08:	00113c23          	sd	ra,24(sp)
    80003f0c:	01213023          	sd	s2,0(sp)
    80003f10:	02010413          	addi	s0,sp,32
    80003f14:	00050493          	mv	s1,a0
    80003f18:	10002973          	csrr	s2,sstatus
    80003f1c:	100027f3          	csrr	a5,sstatus
    80003f20:	ffd7f793          	andi	a5,a5,-3
    80003f24:	10079073          	csrw	sstatus,a5
    80003f28:	fffff097          	auipc	ra,0xfffff
    80003f2c:	8ec080e7          	jalr	-1812(ra) # 80002814 <mycpu>
    80003f30:	07852783          	lw	a5,120(a0)
    80003f34:	06078e63          	beqz	a5,80003fb0 <acquire+0xb4>
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	8dc080e7          	jalr	-1828(ra) # 80002814 <mycpu>
    80003f40:	07852783          	lw	a5,120(a0)
    80003f44:	0004a703          	lw	a4,0(s1)
    80003f48:	0017879b          	addiw	a5,a5,1
    80003f4c:	06f52c23          	sw	a5,120(a0)
    80003f50:	04071063          	bnez	a4,80003f90 <acquire+0x94>
    80003f54:	00100713          	li	a4,1
    80003f58:	00070793          	mv	a5,a4
    80003f5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003f60:	0007879b          	sext.w	a5,a5
    80003f64:	fe079ae3          	bnez	a5,80003f58 <acquire+0x5c>
    80003f68:	0ff0000f          	fence
    80003f6c:	fffff097          	auipc	ra,0xfffff
    80003f70:	8a8080e7          	jalr	-1880(ra) # 80002814 <mycpu>
    80003f74:	01813083          	ld	ra,24(sp)
    80003f78:	01013403          	ld	s0,16(sp)
    80003f7c:	00a4b823          	sd	a0,16(s1)
    80003f80:	00013903          	ld	s2,0(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	02010113          	addi	sp,sp,32
    80003f8c:	00008067          	ret
    80003f90:	0104b903          	ld	s2,16(s1)
    80003f94:	fffff097          	auipc	ra,0xfffff
    80003f98:	880080e7          	jalr	-1920(ra) # 80002814 <mycpu>
    80003f9c:	faa91ce3          	bne	s2,a0,80003f54 <acquire+0x58>
    80003fa0:	00001517          	auipc	a0,0x1
    80003fa4:	2d050513          	addi	a0,a0,720 # 80005270 <digits+0x20>
    80003fa8:	fffff097          	auipc	ra,0xfffff
    80003fac:	224080e7          	jalr	548(ra) # 800031cc <panic>
    80003fb0:	00195913          	srli	s2,s2,0x1
    80003fb4:	fffff097          	auipc	ra,0xfffff
    80003fb8:	860080e7          	jalr	-1952(ra) # 80002814 <mycpu>
    80003fbc:	00197913          	andi	s2,s2,1
    80003fc0:	07252e23          	sw	s2,124(a0)
    80003fc4:	f75ff06f          	j	80003f38 <acquire+0x3c>

0000000080003fc8 <release>:
    80003fc8:	fe010113          	addi	sp,sp,-32
    80003fcc:	00813823          	sd	s0,16(sp)
    80003fd0:	00113c23          	sd	ra,24(sp)
    80003fd4:	00913423          	sd	s1,8(sp)
    80003fd8:	01213023          	sd	s2,0(sp)
    80003fdc:	02010413          	addi	s0,sp,32
    80003fe0:	00052783          	lw	a5,0(a0)
    80003fe4:	00079a63          	bnez	a5,80003ff8 <release+0x30>
    80003fe8:	00001517          	auipc	a0,0x1
    80003fec:	29050513          	addi	a0,a0,656 # 80005278 <digits+0x28>
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	1dc080e7          	jalr	476(ra) # 800031cc <panic>
    80003ff8:	01053903          	ld	s2,16(a0)
    80003ffc:	00050493          	mv	s1,a0
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	814080e7          	jalr	-2028(ra) # 80002814 <mycpu>
    80004008:	fea910e3          	bne	s2,a0,80003fe8 <release+0x20>
    8000400c:	0004b823          	sd	zero,16(s1)
    80004010:	0ff0000f          	fence
    80004014:	0f50000f          	fence	iorw,ow
    80004018:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	7f8080e7          	jalr	2040(ra) # 80002814 <mycpu>
    80004024:	100027f3          	csrr	a5,sstatus
    80004028:	0027f793          	andi	a5,a5,2
    8000402c:	04079a63          	bnez	a5,80004080 <release+0xb8>
    80004030:	07852783          	lw	a5,120(a0)
    80004034:	02f05e63          	blez	a5,80004070 <release+0xa8>
    80004038:	fff7871b          	addiw	a4,a5,-1
    8000403c:	06e52c23          	sw	a4,120(a0)
    80004040:	00071c63          	bnez	a4,80004058 <release+0x90>
    80004044:	07c52783          	lw	a5,124(a0)
    80004048:	00078863          	beqz	a5,80004058 <release+0x90>
    8000404c:	100027f3          	csrr	a5,sstatus
    80004050:	0027e793          	ori	a5,a5,2
    80004054:	10079073          	csrw	sstatus,a5
    80004058:	01813083          	ld	ra,24(sp)
    8000405c:	01013403          	ld	s0,16(sp)
    80004060:	00813483          	ld	s1,8(sp)
    80004064:	00013903          	ld	s2,0(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret
    80004070:	00001517          	auipc	a0,0x1
    80004074:	22850513          	addi	a0,a0,552 # 80005298 <digits+0x48>
    80004078:	fffff097          	auipc	ra,0xfffff
    8000407c:	154080e7          	jalr	340(ra) # 800031cc <panic>
    80004080:	00001517          	auipc	a0,0x1
    80004084:	20050513          	addi	a0,a0,512 # 80005280 <digits+0x30>
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	144080e7          	jalr	324(ra) # 800031cc <panic>

0000000080004090 <holding>:
    80004090:	00052783          	lw	a5,0(a0)
    80004094:	00079663          	bnez	a5,800040a0 <holding+0x10>
    80004098:	00000513          	li	a0,0
    8000409c:	00008067          	ret
    800040a0:	fe010113          	addi	sp,sp,-32
    800040a4:	00813823          	sd	s0,16(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	02010413          	addi	s0,sp,32
    800040b4:	01053483          	ld	s1,16(a0)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	75c080e7          	jalr	1884(ra) # 80002814 <mycpu>
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	40a48533          	sub	a0,s1,a0
    800040cc:	00153513          	seqz	a0,a0
    800040d0:	00813483          	ld	s1,8(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret

00000000800040dc <push_off>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00813823          	sd	s0,16(sp)
    800040e4:	00113c23          	sd	ra,24(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	100024f3          	csrr	s1,sstatus
    800040f4:	100027f3          	csrr	a5,sstatus
    800040f8:	ffd7f793          	andi	a5,a5,-3
    800040fc:	10079073          	csrw	sstatus,a5
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	714080e7          	jalr	1812(ra) # 80002814 <mycpu>
    80004108:	07852783          	lw	a5,120(a0)
    8000410c:	02078663          	beqz	a5,80004138 <push_off+0x5c>
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	704080e7          	jalr	1796(ra) # 80002814 <mycpu>
    80004118:	07852783          	lw	a5,120(a0)
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	01013403          	ld	s0,16(sp)
    80004124:	0017879b          	addiw	a5,a5,1
    80004128:	06f52c23          	sw	a5,120(a0)
    8000412c:	00813483          	ld	s1,8(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret
    80004138:	0014d493          	srli	s1,s1,0x1
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	6d8080e7          	jalr	1752(ra) # 80002814 <mycpu>
    80004144:	0014f493          	andi	s1,s1,1
    80004148:	06952e23          	sw	s1,124(a0)
    8000414c:	fc5ff06f          	j	80004110 <push_off+0x34>

0000000080004150 <pop_off>:
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	00113423          	sd	ra,8(sp)
    8000415c:	01010413          	addi	s0,sp,16
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	6b4080e7          	jalr	1716(ra) # 80002814 <mycpu>
    80004168:	100027f3          	csrr	a5,sstatus
    8000416c:	0027f793          	andi	a5,a5,2
    80004170:	04079663          	bnez	a5,800041bc <pop_off+0x6c>
    80004174:	07852783          	lw	a5,120(a0)
    80004178:	02f05a63          	blez	a5,800041ac <pop_off+0x5c>
    8000417c:	fff7871b          	addiw	a4,a5,-1
    80004180:	06e52c23          	sw	a4,120(a0)
    80004184:	00071c63          	bnez	a4,8000419c <pop_off+0x4c>
    80004188:	07c52783          	lw	a5,124(a0)
    8000418c:	00078863          	beqz	a5,8000419c <pop_off+0x4c>
    80004190:	100027f3          	csrr	a5,sstatus
    80004194:	0027e793          	ori	a5,a5,2
    80004198:	10079073          	csrw	sstatus,a5
    8000419c:	00813083          	ld	ra,8(sp)
    800041a0:	00013403          	ld	s0,0(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret
    800041ac:	00001517          	auipc	a0,0x1
    800041b0:	0ec50513          	addi	a0,a0,236 # 80005298 <digits+0x48>
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	018080e7          	jalr	24(ra) # 800031cc <panic>
    800041bc:	00001517          	auipc	a0,0x1
    800041c0:	0c450513          	addi	a0,a0,196 # 80005280 <digits+0x30>
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	008080e7          	jalr	8(ra) # 800031cc <panic>

00000000800041cc <push_on>:
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	00913423          	sd	s1,8(sp)
    800041dc:	02010413          	addi	s0,sp,32
    800041e0:	100024f3          	csrr	s1,sstatus
    800041e4:	100027f3          	csrr	a5,sstatus
    800041e8:	0027e793          	ori	a5,a5,2
    800041ec:	10079073          	csrw	sstatus,a5
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	624080e7          	jalr	1572(ra) # 80002814 <mycpu>
    800041f8:	07852783          	lw	a5,120(a0)
    800041fc:	02078663          	beqz	a5,80004228 <push_on+0x5c>
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	614080e7          	jalr	1556(ra) # 80002814 <mycpu>
    80004208:	07852783          	lw	a5,120(a0)
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	0017879b          	addiw	a5,a5,1
    80004218:	06f52c23          	sw	a5,120(a0)
    8000421c:	00813483          	ld	s1,8(sp)
    80004220:	02010113          	addi	sp,sp,32
    80004224:	00008067          	ret
    80004228:	0014d493          	srli	s1,s1,0x1
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	5e8080e7          	jalr	1512(ra) # 80002814 <mycpu>
    80004234:	0014f493          	andi	s1,s1,1
    80004238:	06952e23          	sw	s1,124(a0)
    8000423c:	fc5ff06f          	j	80004200 <push_on+0x34>

0000000080004240 <pop_on>:
    80004240:	ff010113          	addi	sp,sp,-16
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	00113423          	sd	ra,8(sp)
    8000424c:	01010413          	addi	s0,sp,16
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	5c4080e7          	jalr	1476(ra) # 80002814 <mycpu>
    80004258:	100027f3          	csrr	a5,sstatus
    8000425c:	0027f793          	andi	a5,a5,2
    80004260:	04078463          	beqz	a5,800042a8 <pop_on+0x68>
    80004264:	07852783          	lw	a5,120(a0)
    80004268:	02f05863          	blez	a5,80004298 <pop_on+0x58>
    8000426c:	fff7879b          	addiw	a5,a5,-1
    80004270:	06f52c23          	sw	a5,120(a0)
    80004274:	07853783          	ld	a5,120(a0)
    80004278:	00079863          	bnez	a5,80004288 <pop_on+0x48>
    8000427c:	100027f3          	csrr	a5,sstatus
    80004280:	ffd7f793          	andi	a5,a5,-3
    80004284:	10079073          	csrw	sstatus,a5
    80004288:	00813083          	ld	ra,8(sp)
    8000428c:	00013403          	ld	s0,0(sp)
    80004290:	01010113          	addi	sp,sp,16
    80004294:	00008067          	ret
    80004298:	00001517          	auipc	a0,0x1
    8000429c:	02850513          	addi	a0,a0,40 # 800052c0 <digits+0x70>
    800042a0:	fffff097          	auipc	ra,0xfffff
    800042a4:	f2c080e7          	jalr	-212(ra) # 800031cc <panic>
    800042a8:	00001517          	auipc	a0,0x1
    800042ac:	ff850513          	addi	a0,a0,-8 # 800052a0 <digits+0x50>
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	f1c080e7          	jalr	-228(ra) # 800031cc <panic>

00000000800042b8 <__memset>:
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00813423          	sd	s0,8(sp)
    800042c0:	01010413          	addi	s0,sp,16
    800042c4:	1a060e63          	beqz	a2,80004480 <__memset+0x1c8>
    800042c8:	40a007b3          	neg	a5,a0
    800042cc:	0077f793          	andi	a5,a5,7
    800042d0:	00778693          	addi	a3,a5,7
    800042d4:	00b00813          	li	a6,11
    800042d8:	0ff5f593          	andi	a1,a1,255
    800042dc:	fff6071b          	addiw	a4,a2,-1
    800042e0:	1b06e663          	bltu	a3,a6,8000448c <__memset+0x1d4>
    800042e4:	1cd76463          	bltu	a4,a3,800044ac <__memset+0x1f4>
    800042e8:	1a078e63          	beqz	a5,800044a4 <__memset+0x1ec>
    800042ec:	00b50023          	sb	a1,0(a0)
    800042f0:	00100713          	li	a4,1
    800042f4:	1ae78463          	beq	a5,a4,8000449c <__memset+0x1e4>
    800042f8:	00b500a3          	sb	a1,1(a0)
    800042fc:	00200713          	li	a4,2
    80004300:	1ae78a63          	beq	a5,a4,800044b4 <__memset+0x1fc>
    80004304:	00b50123          	sb	a1,2(a0)
    80004308:	00300713          	li	a4,3
    8000430c:	18e78463          	beq	a5,a4,80004494 <__memset+0x1dc>
    80004310:	00b501a3          	sb	a1,3(a0)
    80004314:	00400713          	li	a4,4
    80004318:	1ae78263          	beq	a5,a4,800044bc <__memset+0x204>
    8000431c:	00b50223          	sb	a1,4(a0)
    80004320:	00500713          	li	a4,5
    80004324:	1ae78063          	beq	a5,a4,800044c4 <__memset+0x20c>
    80004328:	00b502a3          	sb	a1,5(a0)
    8000432c:	00700713          	li	a4,7
    80004330:	18e79e63          	bne	a5,a4,800044cc <__memset+0x214>
    80004334:	00b50323          	sb	a1,6(a0)
    80004338:	00700e93          	li	t4,7
    8000433c:	00859713          	slli	a4,a1,0x8
    80004340:	00e5e733          	or	a4,a1,a4
    80004344:	01059e13          	slli	t3,a1,0x10
    80004348:	01c76e33          	or	t3,a4,t3
    8000434c:	01859313          	slli	t1,a1,0x18
    80004350:	006e6333          	or	t1,t3,t1
    80004354:	02059893          	slli	a7,a1,0x20
    80004358:	40f60e3b          	subw	t3,a2,a5
    8000435c:	011368b3          	or	a7,t1,a7
    80004360:	02859813          	slli	a6,a1,0x28
    80004364:	0108e833          	or	a6,a7,a6
    80004368:	03059693          	slli	a3,a1,0x30
    8000436c:	003e589b          	srliw	a7,t3,0x3
    80004370:	00d866b3          	or	a3,a6,a3
    80004374:	03859713          	slli	a4,a1,0x38
    80004378:	00389813          	slli	a6,a7,0x3
    8000437c:	00f507b3          	add	a5,a0,a5
    80004380:	00e6e733          	or	a4,a3,a4
    80004384:	000e089b          	sext.w	a7,t3
    80004388:	00f806b3          	add	a3,a6,a5
    8000438c:	00e7b023          	sd	a4,0(a5)
    80004390:	00878793          	addi	a5,a5,8
    80004394:	fed79ce3          	bne	a5,a3,8000438c <__memset+0xd4>
    80004398:	ff8e7793          	andi	a5,t3,-8
    8000439c:	0007871b          	sext.w	a4,a5
    800043a0:	01d787bb          	addw	a5,a5,t4
    800043a4:	0ce88e63          	beq	a7,a4,80004480 <__memset+0x1c8>
    800043a8:	00f50733          	add	a4,a0,a5
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	0017871b          	addiw	a4,a5,1
    800043b4:	0cc77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043b8:	00e50733          	add	a4,a0,a4
    800043bc:	00b70023          	sb	a1,0(a4)
    800043c0:	0027871b          	addiw	a4,a5,2
    800043c4:	0ac77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043c8:	00e50733          	add	a4,a0,a4
    800043cc:	00b70023          	sb	a1,0(a4)
    800043d0:	0037871b          	addiw	a4,a5,3
    800043d4:	0ac77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043d8:	00e50733          	add	a4,a0,a4
    800043dc:	00b70023          	sb	a1,0(a4)
    800043e0:	0047871b          	addiw	a4,a5,4
    800043e4:	08c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043e8:	00e50733          	add	a4,a0,a4
    800043ec:	00b70023          	sb	a1,0(a4)
    800043f0:	0057871b          	addiw	a4,a5,5
    800043f4:	08c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    800043f8:	00e50733          	add	a4,a0,a4
    800043fc:	00b70023          	sb	a1,0(a4)
    80004400:	0067871b          	addiw	a4,a5,6
    80004404:	06c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004408:	00e50733          	add	a4,a0,a4
    8000440c:	00b70023          	sb	a1,0(a4)
    80004410:	0077871b          	addiw	a4,a5,7
    80004414:	06c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004418:	00e50733          	add	a4,a0,a4
    8000441c:	00b70023          	sb	a1,0(a4)
    80004420:	0087871b          	addiw	a4,a5,8
    80004424:	04c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004428:	00e50733          	add	a4,a0,a4
    8000442c:	00b70023          	sb	a1,0(a4)
    80004430:	0097871b          	addiw	a4,a5,9
    80004434:	04c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004438:	00e50733          	add	a4,a0,a4
    8000443c:	00b70023          	sb	a1,0(a4)
    80004440:	00a7871b          	addiw	a4,a5,10
    80004444:	02c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004448:	00e50733          	add	a4,a0,a4
    8000444c:	00b70023          	sb	a1,0(a4)
    80004450:	00b7871b          	addiw	a4,a5,11
    80004454:	02c77663          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004458:	00e50733          	add	a4,a0,a4
    8000445c:	00b70023          	sb	a1,0(a4)
    80004460:	00c7871b          	addiw	a4,a5,12
    80004464:	00c77e63          	bgeu	a4,a2,80004480 <__memset+0x1c8>
    80004468:	00e50733          	add	a4,a0,a4
    8000446c:	00b70023          	sb	a1,0(a4)
    80004470:	00d7879b          	addiw	a5,a5,13
    80004474:	00c7f663          	bgeu	a5,a2,80004480 <__memset+0x1c8>
    80004478:	00f507b3          	add	a5,a0,a5
    8000447c:	00b78023          	sb	a1,0(a5)
    80004480:	00813403          	ld	s0,8(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret
    8000448c:	00b00693          	li	a3,11
    80004490:	e55ff06f          	j	800042e4 <__memset+0x2c>
    80004494:	00300e93          	li	t4,3
    80004498:	ea5ff06f          	j	8000433c <__memset+0x84>
    8000449c:	00100e93          	li	t4,1
    800044a0:	e9dff06f          	j	8000433c <__memset+0x84>
    800044a4:	00000e93          	li	t4,0
    800044a8:	e95ff06f          	j	8000433c <__memset+0x84>
    800044ac:	00000793          	li	a5,0
    800044b0:	ef9ff06f          	j	800043a8 <__memset+0xf0>
    800044b4:	00200e93          	li	t4,2
    800044b8:	e85ff06f          	j	8000433c <__memset+0x84>
    800044bc:	00400e93          	li	t4,4
    800044c0:	e7dff06f          	j	8000433c <__memset+0x84>
    800044c4:	00500e93          	li	t4,5
    800044c8:	e75ff06f          	j	8000433c <__memset+0x84>
    800044cc:	00600e93          	li	t4,6
    800044d0:	e6dff06f          	j	8000433c <__memset+0x84>

00000000800044d4 <__memmove>:
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00813423          	sd	s0,8(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	0e060863          	beqz	a2,800045d0 <__memmove+0xfc>
    800044e4:	fff6069b          	addiw	a3,a2,-1
    800044e8:	0006881b          	sext.w	a6,a3
    800044ec:	0ea5e863          	bltu	a1,a0,800045dc <__memmove+0x108>
    800044f0:	00758713          	addi	a4,a1,7
    800044f4:	00a5e7b3          	or	a5,a1,a0
    800044f8:	40a70733          	sub	a4,a4,a0
    800044fc:	0077f793          	andi	a5,a5,7
    80004500:	00f73713          	sltiu	a4,a4,15
    80004504:	00174713          	xori	a4,a4,1
    80004508:	0017b793          	seqz	a5,a5
    8000450c:	00e7f7b3          	and	a5,a5,a4
    80004510:	10078863          	beqz	a5,80004620 <__memmove+0x14c>
    80004514:	00900793          	li	a5,9
    80004518:	1107f463          	bgeu	a5,a6,80004620 <__memmove+0x14c>
    8000451c:	0036581b          	srliw	a6,a2,0x3
    80004520:	fff8081b          	addiw	a6,a6,-1
    80004524:	02081813          	slli	a6,a6,0x20
    80004528:	01d85893          	srli	a7,a6,0x1d
    8000452c:	00858813          	addi	a6,a1,8
    80004530:	00058793          	mv	a5,a1
    80004534:	00050713          	mv	a4,a0
    80004538:	01088833          	add	a6,a7,a6
    8000453c:	0007b883          	ld	a7,0(a5)
    80004540:	00878793          	addi	a5,a5,8
    80004544:	00870713          	addi	a4,a4,8
    80004548:	ff173c23          	sd	a7,-8(a4)
    8000454c:	ff0798e3          	bne	a5,a6,8000453c <__memmove+0x68>
    80004550:	ff867713          	andi	a4,a2,-8
    80004554:	02071793          	slli	a5,a4,0x20
    80004558:	0207d793          	srli	a5,a5,0x20
    8000455c:	00f585b3          	add	a1,a1,a5
    80004560:	40e686bb          	subw	a3,a3,a4
    80004564:	00f507b3          	add	a5,a0,a5
    80004568:	06e60463          	beq	a2,a4,800045d0 <__memmove+0xfc>
    8000456c:	0005c703          	lbu	a4,0(a1)
    80004570:	00e78023          	sb	a4,0(a5)
    80004574:	04068e63          	beqz	a3,800045d0 <__memmove+0xfc>
    80004578:	0015c603          	lbu	a2,1(a1)
    8000457c:	00100713          	li	a4,1
    80004580:	00c780a3          	sb	a2,1(a5)
    80004584:	04e68663          	beq	a3,a4,800045d0 <__memmove+0xfc>
    80004588:	0025c603          	lbu	a2,2(a1)
    8000458c:	00200713          	li	a4,2
    80004590:	00c78123          	sb	a2,2(a5)
    80004594:	02e68e63          	beq	a3,a4,800045d0 <__memmove+0xfc>
    80004598:	0035c603          	lbu	a2,3(a1)
    8000459c:	00300713          	li	a4,3
    800045a0:	00c781a3          	sb	a2,3(a5)
    800045a4:	02e68663          	beq	a3,a4,800045d0 <__memmove+0xfc>
    800045a8:	0045c603          	lbu	a2,4(a1)
    800045ac:	00400713          	li	a4,4
    800045b0:	00c78223          	sb	a2,4(a5)
    800045b4:	00e68e63          	beq	a3,a4,800045d0 <__memmove+0xfc>
    800045b8:	0055c603          	lbu	a2,5(a1)
    800045bc:	00500713          	li	a4,5
    800045c0:	00c782a3          	sb	a2,5(a5)
    800045c4:	00e68663          	beq	a3,a4,800045d0 <__memmove+0xfc>
    800045c8:	0065c703          	lbu	a4,6(a1)
    800045cc:	00e78323          	sb	a4,6(a5)
    800045d0:	00813403          	ld	s0,8(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret
    800045dc:	02061713          	slli	a4,a2,0x20
    800045e0:	02075713          	srli	a4,a4,0x20
    800045e4:	00e587b3          	add	a5,a1,a4
    800045e8:	f0f574e3          	bgeu	a0,a5,800044f0 <__memmove+0x1c>
    800045ec:	02069613          	slli	a2,a3,0x20
    800045f0:	02065613          	srli	a2,a2,0x20
    800045f4:	fff64613          	not	a2,a2
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00c78633          	add	a2,a5,a2
    80004600:	fff7c683          	lbu	a3,-1(a5)
    80004604:	fff78793          	addi	a5,a5,-1
    80004608:	fff70713          	addi	a4,a4,-1
    8000460c:	00d70023          	sb	a3,0(a4)
    80004610:	fec798e3          	bne	a5,a2,80004600 <__memmove+0x12c>
    80004614:	00813403          	ld	s0,8(sp)
    80004618:	01010113          	addi	sp,sp,16
    8000461c:	00008067          	ret
    80004620:	02069713          	slli	a4,a3,0x20
    80004624:	02075713          	srli	a4,a4,0x20
    80004628:	00170713          	addi	a4,a4,1
    8000462c:	00e50733          	add	a4,a0,a4
    80004630:	00050793          	mv	a5,a0
    80004634:	0005c683          	lbu	a3,0(a1)
    80004638:	00178793          	addi	a5,a5,1
    8000463c:	00158593          	addi	a1,a1,1
    80004640:	fed78fa3          	sb	a3,-1(a5)
    80004644:	fee798e3          	bne	a5,a4,80004634 <__memmove+0x160>
    80004648:	f89ff06f          	j	800045d0 <__memmove+0xfc>

000000008000464c <__putc>:
    8000464c:	fe010113          	addi	sp,sp,-32
    80004650:	00813823          	sd	s0,16(sp)
    80004654:	00113c23          	sd	ra,24(sp)
    80004658:	02010413          	addi	s0,sp,32
    8000465c:	00050793          	mv	a5,a0
    80004660:	fef40593          	addi	a1,s0,-17
    80004664:	00100613          	li	a2,1
    80004668:	00000513          	li	a0,0
    8000466c:	fef407a3          	sb	a5,-17(s0)
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	b3c080e7          	jalr	-1220(ra) # 800031ac <console_write>
    80004678:	01813083          	ld	ra,24(sp)
    8000467c:	01013403          	ld	s0,16(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret

0000000080004688 <__getc>:
    80004688:	fe010113          	addi	sp,sp,-32
    8000468c:	00813823          	sd	s0,16(sp)
    80004690:	00113c23          	sd	ra,24(sp)
    80004694:	02010413          	addi	s0,sp,32
    80004698:	fe840593          	addi	a1,s0,-24
    8000469c:	00100613          	li	a2,1
    800046a0:	00000513          	li	a0,0
    800046a4:	fffff097          	auipc	ra,0xfffff
    800046a8:	ae8080e7          	jalr	-1304(ra) # 8000318c <console_read>
    800046ac:	fe844503          	lbu	a0,-24(s0)
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret

00000000800046c0 <console_handler>:
    800046c0:	fe010113          	addi	sp,sp,-32
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00113c23          	sd	ra,24(sp)
    800046cc:	00913423          	sd	s1,8(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	14202773          	csrr	a4,scause
    800046d8:	100027f3          	csrr	a5,sstatus
    800046dc:	0027f793          	andi	a5,a5,2
    800046e0:	06079e63          	bnez	a5,8000475c <console_handler+0x9c>
    800046e4:	00074c63          	bltz	a4,800046fc <console_handler+0x3c>
    800046e8:	01813083          	ld	ra,24(sp)
    800046ec:	01013403          	ld	s0,16(sp)
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	02010113          	addi	sp,sp,32
    800046f8:	00008067          	ret
    800046fc:	0ff77713          	andi	a4,a4,255
    80004700:	00900793          	li	a5,9
    80004704:	fef712e3          	bne	a4,a5,800046e8 <console_handler+0x28>
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	6dc080e7          	jalr	1756(ra) # 80002de4 <plic_claim>
    80004710:	00a00793          	li	a5,10
    80004714:	00050493          	mv	s1,a0
    80004718:	02f50c63          	beq	a0,a5,80004750 <console_handler+0x90>
    8000471c:	fc0506e3          	beqz	a0,800046e8 <console_handler+0x28>
    80004720:	00050593          	mv	a1,a0
    80004724:	00001517          	auipc	a0,0x1
    80004728:	aa450513          	addi	a0,a0,-1372 # 800051c8 <_ZZ12printIntegermE6digits+0xe0>
    8000472c:	fffff097          	auipc	ra,0xfffff
    80004730:	afc080e7          	jalr	-1284(ra) # 80003228 <__printf>
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	01813083          	ld	ra,24(sp)
    8000473c:	00048513          	mv	a0,s1
    80004740:	00813483          	ld	s1,8(sp)
    80004744:	02010113          	addi	sp,sp,32
    80004748:	ffffe317          	auipc	t1,0xffffe
    8000474c:	6d430067          	jr	1748(t1) # 80002e1c <plic_complete>
    80004750:	fffff097          	auipc	ra,0xfffff
    80004754:	3e0080e7          	jalr	992(ra) # 80003b30 <uartintr>
    80004758:	fddff06f          	j	80004734 <console_handler+0x74>
    8000475c:	00001517          	auipc	a0,0x1
    80004760:	b6c50513          	addi	a0,a0,-1172 # 800052c8 <digits+0x78>
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	a68080e7          	jalr	-1432(ra) # 800031cc <panic>
	...
