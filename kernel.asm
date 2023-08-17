
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	86813103          	ld	sp,-1944(sp) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	180020ef          	jal	ra,8000219c <start>

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
    80001088:	021000ef          	jal	ra,800018a8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011d4:	ca0080e7          	jalr	-864(ra) # 80001e70 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011d8:	00001097          	auipc	ra,0x1
    800011dc:	aa8080e7          	jalr	-1368(ra) # 80001c80 <_ZN15MemoryAllocator9mem_allocEm>
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

0000000080001274 <_ZL9fibonaccim>:
        thread_dispatch();
    }
}

static uint64 fibonacci(uint64 n)
{
    80001274:	fe010113          	addi	sp,sp,-32
    80001278:	00113c23          	sd	ra,24(sp)
    8000127c:	00813823          	sd	s0,16(sp)
    80001280:	00913423          	sd	s1,8(sp)
    80001284:	01213023          	sd	s2,0(sp)
    80001288:	02010413          	addi	s0,sp,32
    8000128c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001290:	00100793          	li	a5,1
    80001294:	02a7f863          	bgeu	a5,a0,800012c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001298:	00a00793          	li	a5,10
    8000129c:	02f577b3          	remu	a5,a0,a5
    800012a0:	02078e63          	beqz	a5,800012dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012a4:	fff48513          	addi	a0,s1,-1
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	fcc080e7          	jalr	-52(ra) # 80001274 <_ZL9fibonaccim>
    800012b0:	00050913          	mv	s2,a0
    800012b4:	ffe48513          	addi	a0,s1,-2
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	fbc080e7          	jalr	-68(ra) # 80001274 <_ZL9fibonaccim>
    800012c0:	00a90533          	add	a0,s2,a0
}
    800012c4:	01813083          	ld	ra,24(sp)
    800012c8:	01013403          	ld	s0,16(sp)
    800012cc:	00813483          	ld	s1,8(sp)
    800012d0:	00013903          	ld	s2,0(sp)
    800012d4:	02010113          	addi	sp,sp,32
    800012d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f70080e7          	jalr	-144(ra) # 8000124c <_Z15thread_dispatchv>
    800012e4:	fc1ff06f          	j	800012a4 <_ZL9fibonaccim+0x30>

00000000800012e8 <_Z11workerBodyAPv>:
{
    800012e8:	fe010113          	addi	sp,sp,-32
    800012ec:	00113c23          	sd	ra,24(sp)
    800012f0:	00813823          	sd	s0,16(sp)
    800012f4:	00913423          	sd	s1,8(sp)
    800012f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800012fc:	00000493          	li	s1,0
    80001300:	0380006f          	j	80001338 <_Z11workerBodyAPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001304:	00168693          	addi	a3,a3,1
    80001308:	000027b7          	lui	a5,0x2
    8000130c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001310:	00d7ee63          	bltu	a5,a3,8000132c <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001314:	00000713          	li	a4,0
    80001318:	000077b7          	lui	a5,0x7
    8000131c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001320:	fee7e2e3          	bltu	a5,a4,80001304 <_Z11workerBodyAPv+0x1c>
    80001324:	00170713          	addi	a4,a4,1
    80001328:	ff1ff06f          	j	80001318 <_Z11workerBodyAPv+0x30>
        thread_dispatch();
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	f20080e7          	jalr	-224(ra) # 8000124c <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10; i++)
    80001334:	00148493          	addi	s1,s1,1
    80001338:	00900793          	li	a5,9
    8000133c:	0297ec63          	bltu	a5,s1,80001374 <_Z11workerBodyAPv+0x8c>
        printString("A: i=");
    80001340:	00004517          	auipc	a0,0x4
    80001344:	ce050513          	addi	a0,a0,-800 # 80005020 <CONSOLE_STATUS+0x10>
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	b5c080e7          	jalr	-1188(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(i);
    80001350:	00048513          	mv	a0,s1
    80001354:	00001097          	auipc	ra,0x1
    80001358:	bc0080e7          	jalr	-1088(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    8000135c:	00004517          	auipc	a0,0x4
    80001360:	ce450513          	addi	a0,a0,-796 # 80005040 <CONSOLE_STATUS+0x30>
    80001364:	00001097          	auipc	ra,0x1
    80001368:	b40080e7          	jalr	-1216(ra) # 80001ea4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000136c:	00000693          	li	a3,0
    80001370:	f99ff06f          	j	80001308 <_Z11workerBodyAPv+0x20>
}
    80001374:	01813083          	ld	ra,24(sp)
    80001378:	01013403          	ld	s0,16(sp)
    8000137c:	00813483          	ld	s1,8(sp)
    80001380:	02010113          	addi	sp,sp,32
    80001384:	00008067          	ret

0000000080001388 <_Z11workerBodyBPv>:
{
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	00913423          	sd	s1,8(sp)
    80001398:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    8000139c:	00000493          	li	s1,0
    800013a0:	0380006f          	j	800013d8 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    800013a4:	00168693          	addi	a3,a3,1
    800013a8:	000027b7          	lui	a5,0x2
    800013ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013b0:	00d7ee63          	bltu	a5,a3,800013cc <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013b4:	00000713          	li	a4,0
    800013b8:	000077b7          	lui	a5,0x7
    800013bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013c0:	fee7e2e3          	bltu	a5,a4,800013a4 <_Z11workerBodyBPv+0x1c>
    800013c4:	00170713          	addi	a4,a4,1
    800013c8:	ff1ff06f          	j	800013b8 <_Z11workerBodyBPv+0x30>
        thread_dispatch();
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	e80080e7          	jalr	-384(ra) # 8000124c <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 16; i++)
    800013d4:	00148493          	addi	s1,s1,1
    800013d8:	00f00793          	li	a5,15
    800013dc:	0297ec63          	bltu	a5,s1,80001414 <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    800013e0:	00004517          	auipc	a0,0x4
    800013e4:	c4850513          	addi	a0,a0,-952 # 80005028 <CONSOLE_STATUS+0x18>
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	abc080e7          	jalr	-1348(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(i);
    800013f0:	00048513          	mv	a0,s1
    800013f4:	00001097          	auipc	ra,0x1
    800013f8:	b20080e7          	jalr	-1248(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    800013fc:	00004517          	auipc	a0,0x4
    80001400:	c4450513          	addi	a0,a0,-956 # 80005040 <CONSOLE_STATUS+0x30>
    80001404:	00001097          	auipc	ra,0x1
    80001408:	aa0080e7          	jalr	-1376(ra) # 80001ea4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000140c:	00000693          	li	a3,0
    80001410:	f99ff06f          	j	800013a8 <_Z11workerBodyBPv+0x20>
}
    80001414:	01813083          	ld	ra,24(sp)
    80001418:	01013403          	ld	s0,16(sp)
    8000141c:	00813483          	ld	s1,8(sp)
    80001420:	02010113          	addi	sp,sp,32
    80001424:	00008067          	ret

0000000080001428 <_Z11workerBodyCPv>:


void workerBodyC(void*)
{
    80001428:	fe010113          	addi	sp,sp,-32
    8000142c:	00113c23          	sd	ra,24(sp)
    80001430:	00813823          	sd	s0,16(sp)
    80001434:	00913423          	sd	s1,8(sp)
    80001438:	01213023          	sd	s2,0(sp)
    8000143c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001440:	00000493          	li	s1,0
    80001444:	0400006f          	j	80001484 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001448:	00004517          	auipc	a0,0x4
    8000144c:	be850513          	addi	a0,a0,-1048 # 80005030 <CONSOLE_STATUS+0x20>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	a54080e7          	jalr	-1452(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(i);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	ab8080e7          	jalr	-1352(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	bdc50513          	addi	a0,a0,-1060 # 80005040 <CONSOLE_STATUS+0x30>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	a38080e7          	jalr	-1480(ra) # 80001ea4 <_Z11printStringPKc>
        thread_dispatch();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	dd8080e7          	jalr	-552(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 3; i++)
    8000147c:	0014849b          	addiw	s1,s1,1
    80001480:	0ff4f493          	andi	s1,s1,255
    80001484:	00200793          	li	a5,2
    80001488:	fc97f0e3          	bgeu	a5,s1,80001448 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bac50513          	addi	a0,a0,-1108 # 80005038 <CONSOLE_STATUS+0x28>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	a10080e7          	jalr	-1520(ra) # 80001ea4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000149c:	00700313          	li	t1,7
    thread_dispatch();
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	dac080e7          	jalr	-596(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014a8:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014ac:	00004517          	auipc	a0,0x4
    800014b0:	b9c50513          	addi	a0,a0,-1124 # 80005048 <CONSOLE_STATUS+0x38>
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	9f0080e7          	jalr	-1552(ra) # 80001ea4 <_Z11printStringPKc>
    printInteger(t1);
    800014bc:	00090513          	mv	a0,s2
    800014c0:	00001097          	auipc	ra,0x1
    800014c4:	a54080e7          	jalr	-1452(ra) # 80001f14 <_Z12printIntegerm>
    printString("\n");
    800014c8:	00004517          	auipc	a0,0x4
    800014cc:	b7850513          	addi	a0,a0,-1160 # 80005040 <CONSOLE_STATUS+0x30>
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	9d4080e7          	jalr	-1580(ra) # 80001ea4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014d8:	00c00513          	li	a0,12
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	d98080e7          	jalr	-616(ra) # 80001274 <_ZL9fibonaccim>
    800014e4:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014e8:	00004517          	auipc	a0,0x4
    800014ec:	b6850513          	addi	a0,a0,-1176 # 80005050 <CONSOLE_STATUS+0x40>
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	9b4080e7          	jalr	-1612(ra) # 80001ea4 <_Z11printStringPKc>
    printInteger(result);
    800014f8:	00090513          	mv	a0,s2
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	a18080e7          	jalr	-1512(ra) # 80001f14 <_Z12printIntegerm>
    printString("\n");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	b3c50513          	addi	a0,a0,-1220 # 80005040 <CONSOLE_STATUS+0x30>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	998080e7          	jalr	-1640(ra) # 80001ea4 <_Z11printStringPKc>
    80001514:	0380006f          	j	8000154c <_Z11workerBodyCPv+0x124>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001518:	00004517          	auipc	a0,0x4
    8000151c:	b1850513          	addi	a0,a0,-1256 # 80005030 <CONSOLE_STATUS+0x20>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	984080e7          	jalr	-1660(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(i);
    80001528:	00048513          	mv	a0,s1
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	9e8080e7          	jalr	-1560(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    80001534:	00004517          	auipc	a0,0x4
    80001538:	b0c50513          	addi	a0,a0,-1268 # 80005040 <CONSOLE_STATUS+0x30>
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	968080e7          	jalr	-1688(ra) # 80001ea4 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001544:	0014849b          	addiw	s1,s1,1
    80001548:	0ff4f493          	andi	s1,s1,255
    8000154c:	00500793          	li	a5,5
    80001550:	fc97f4e3          	bgeu	a5,s1,80001518 <_Z11workerBodyCPv+0xf0>
    }
//    TCB::yield();
}
    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	00813483          	ld	s1,8(sp)
    80001560:	00013903          	ld	s2,0(sp)
    80001564:	02010113          	addi	sp,sp,32
    80001568:	00008067          	ret

000000008000156c <_Z11workerBodyDPv>:

void workerBodyD(void*)
{
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	00813823          	sd	s0,16(sp)
    80001578:	00913423          	sd	s1,8(sp)
    8000157c:	01213023          	sd	s2,0(sp)
    80001580:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001584:	00a00493          	li	s1,10
    80001588:	0400006f          	j	800015c8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	ad450513          	addi	a0,a0,-1324 # 80005060 <CONSOLE_STATUS+0x50>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	910080e7          	jalr	-1776(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(i);
    8000159c:	00048513          	mv	a0,s1
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	974080e7          	jalr	-1676(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	a9850513          	addi	a0,a0,-1384 # 80005040 <CONSOLE_STATUS+0x30>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	8f4080e7          	jalr	-1804(ra) # 80001ea4 <_Z11printStringPKc>
        thread_dispatch();
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	c94080e7          	jalr	-876(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 13; i++)
    800015c0:	0014849b          	addiw	s1,s1,1
    800015c4:	0ff4f493          	andi	s1,s1,255
    800015c8:	00c00793          	li	a5,12
    800015cc:	fc97f0e3          	bgeu	a5,s1,8000158c <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    800015d0:	00004517          	auipc	a0,0x4
    800015d4:	a9850513          	addi	a0,a0,-1384 # 80005068 <CONSOLE_STATUS+0x58>
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	8cc080e7          	jalr	-1844(ra) # 80001ea4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015e0:	00500313          	li	t1,5
    thread_dispatch();
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	c68080e7          	jalr	-920(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800015ec:	01000513          	li	a0,16
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	c84080e7          	jalr	-892(ra) # 80001274 <_ZL9fibonaccim>
    800015f8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800015fc:	00004517          	auipc	a0,0x4
    80001600:	a7c50513          	addi	a0,a0,-1412 # 80005078 <CONSOLE_STATUS+0x68>
    80001604:	00001097          	auipc	ra,0x1
    80001608:	8a0080e7          	jalr	-1888(ra) # 80001ea4 <_Z11printStringPKc>
    printInteger(result);
    8000160c:	00090513          	mv	a0,s2
    80001610:	00001097          	auipc	ra,0x1
    80001614:	904080e7          	jalr	-1788(ra) # 80001f14 <_Z12printIntegerm>
    printString("\n");
    80001618:	00004517          	auipc	a0,0x4
    8000161c:	a2850513          	addi	a0,a0,-1496 # 80005040 <CONSOLE_STATUS+0x30>
    80001620:	00001097          	auipc	ra,0x1
    80001624:	884080e7          	jalr	-1916(ra) # 80001ea4 <_Z11printStringPKc>
    80001628:	0400006f          	j	80001668 <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000162c:	00004517          	auipc	a0,0x4
    80001630:	a3450513          	addi	a0,a0,-1484 # 80005060 <CONSOLE_STATUS+0x50>
    80001634:	00001097          	auipc	ra,0x1
    80001638:	870080e7          	jalr	-1936(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(i);
    8000163c:	00048513          	mv	a0,s1
    80001640:	00001097          	auipc	ra,0x1
    80001644:	8d4080e7          	jalr	-1836(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    80001648:	00004517          	auipc	a0,0x4
    8000164c:	9f850513          	addi	a0,a0,-1544 # 80005040 <CONSOLE_STATUS+0x30>
    80001650:	00001097          	auipc	ra,0x1
    80001654:	854080e7          	jalr	-1964(ra) # 80001ea4 <_Z11printStringPKc>
        thread_dispatch();
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	bf4080e7          	jalr	-1036(ra) # 8000124c <_Z15thread_dispatchv>
    for (; i < 16; i++)
    80001660:	0014849b          	addiw	s1,s1,1
    80001664:	0ff4f493          	andi	s1,s1,255
    80001668:	00f00793          	li	a5,15
    8000166c:	fc97f0e3          	bgeu	a5,s1,8000162c <_Z11workerBodyDPv+0xc0>
    }
//    TCB::yield();
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	00013903          	ld	s2,0(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret

0000000080001688 <_Z4testPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

void test(void*)
{
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    printString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
    80001698:	00004517          	auipc	a0,0x4
    8000169c:	9f050513          	addi	a0,a0,-1552 # 80005088 <CONSOLE_STATUS+0x78>
    800016a0:	00001097          	auipc	ra,0x1
    800016a4:	804080e7          	jalr	-2044(ra) # 80001ea4 <_Z11printStringPKc>
}
    800016a8:	00813083          	ld	ra,8(sp)
    800016ac:	00013403          	ld	s0,0(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret

00000000800016b8 <_Z5test2Pv>:

void test2(void*)
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	02010413          	addi	s0,sp,32
    int i = 0;
    800016cc:	00000493          	li	s1,0
    800016d0:	0100006f          	j	800016e0 <_Z5test2Pv+0x28>
    while(i < 100)
    {
        printInteger(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	b78080e7          	jalr	-1160(ra) # 8000124c <_Z15thread_dispatchv>

        i++;
    800016dc:	0014849b          	addiw	s1,s1,1
    while(i < 100)
    800016e0:	06300793          	li	a5,99
    800016e4:	0297c863          	blt	a5,s1,80001714 <_Z5test2Pv+0x5c>
        printInteger(i);
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	828080e7          	jalr	-2008(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	94c50513          	addi	a0,a0,-1716 # 80005040 <CONSOLE_STATUS+0x30>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	7a8080e7          	jalr	1960(ra) # 80001ea4 <_Z11printStringPKc>
        if (i % 10 == 0)
    80001704:	00a00793          	li	a5,10
    80001708:	02f4e7bb          	remw	a5,s1,a5
    8000170c:	fc0798e3          	bnez	a5,800016dc <_Z5test2Pv+0x24>
    80001710:	fc5ff06f          	j	800016d4 <_Z5test2Pv+0x1c>
    }
}
    80001714:	01813083          	ld	ra,24(sp)
    80001718:	01013403          	ld	s0,16(sp)
    8000171c:	00813483          	ld	s1,8(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z8userMainv>:

void userMain()
{
    80001728:	fd010113          	addi	sp,sp,-48
    8000172c:	02113423          	sd	ra,40(sp)
    80001730:	02813023          	sd	s0,32(sp)
    80001734:	03010413          	addi	s0,sp,48
    __putc('1');
    80001738:	03100513          	li	a0,49
    8000173c:	00003097          	auipc	ra,0x3
    80001740:	b20080e7          	jalr	-1248(ra) # 8000425c <__putc>
    __putc('\n');
    80001744:	00a00513          	li	a0,10
    80001748:	00003097          	auipc	ra,0x3
    8000174c:	b14080e7          	jalr	-1260(ra) # 8000425c <__putc>

    thread_t handle2 = nullptr;
    80001750:	fe043423          	sd	zero,-24(s0)
    thread_t handle3 = nullptr;
    80001754:	fe043023          	sd	zero,-32(s0)
    thread_t handle4 = nullptr;
    80001758:	fc043c23          	sd	zero,-40(s0)
    thread_t handle5 = nullptr;
    8000175c:	fc043823          	sd	zero,-48(s0)

    // handle2 = (_thread**) mem_alloc(sizeof(_thread*));
    // handle3 = (_thread**) mem_alloc(sizeof(_thread*));

    thread_create(&handle2, workerBodyA, nullptr);
    80001760:	00000613          	li	a2,0
    80001764:	00004597          	auipc	a1,0x4
    80001768:	10c5b583          	ld	a1,268(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000176c:	fe840513          	addi	a0,s0,-24
    80001770:	00000097          	auipc	ra,0x0
    80001774:	a40080e7          	jalr	-1472(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle3, workerBodyB, nullptr);
    80001778:	00000613          	li	a2,0
    8000177c:	00004597          	auipc	a1,0x4
    80001780:	1045b583          	ld	a1,260(a1) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001784:	fe040513          	addi	a0,s0,-32
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	a28080e7          	jalr	-1496(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle4, workerBodyC, nullptr);
    80001790:	00000613          	li	a2,0
    80001794:	00004597          	auipc	a1,0x4
    80001798:	0c45b583          	ld	a1,196(a1) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000179c:	fd840513          	addi	a0,s0,-40
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	a10080e7          	jalr	-1520(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle5, workerBodyD, nullptr);
    800017a8:	00000613          	li	a2,0
    800017ac:	00004597          	auipc	a1,0x4
    800017b0:	0dc5b583          	ld	a1,220(a1) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x48>
    800017b4:	fd040513          	addi	a0,s0,-48
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	9f8080e7          	jalr	-1544(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    800017c0:	00c0006f          	j	800017cc <_Z8userMainv+0xa4>

    while(!handle2->finished || !handle3->finished || !handle4->finished || !handle5->finished)
        thread_dispatch();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	a88080e7          	jalr	-1400(ra) # 8000124c <_Z15thread_dispatchv>
    while(!handle2->finished || !handle3->finished || !handle4->finished || !handle5->finished)
    800017cc:	fe843783          	ld	a5,-24(s0)
    800017d0:	0087c783          	lbu	a5,8(a5)
    800017d4:	fe0788e3          	beqz	a5,800017c4 <_Z8userMainv+0x9c>
    800017d8:	fe043783          	ld	a5,-32(s0)
    800017dc:	0087c783          	lbu	a5,8(a5)
    800017e0:	fe0782e3          	beqz	a5,800017c4 <_Z8userMainv+0x9c>
    800017e4:	fd843783          	ld	a5,-40(s0)
    800017e8:	0087c783          	lbu	a5,8(a5)
    800017ec:	fc078ce3          	beqz	a5,800017c4 <_Z8userMainv+0x9c>
    800017f0:	fd043783          	ld	a5,-48(s0)
    800017f4:	0087c783          	lbu	a5,8(a5)
    800017f8:	fc0786e3          	beqz	a5,800017c4 <_Z8userMainv+0x9c>

    printString("Finished!\n");
    800017fc:	00004517          	auipc	a0,0x4
    80001800:	8b450513          	addi	a0,a0,-1868 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001804:	00000097          	auipc	ra,0x0
    80001808:	6a0080e7          	jalr	1696(ra) # 80001ea4 <_Z11printStringPKc>
}
    8000180c:	02813083          	ld	ra,40(sp)
    80001810:	02013403          	ld	s0,32(sp)
    80001814:	03010113          	addi	sp,sp,48
    80001818:	00008067          	ret

000000008000181c <main>:



void main(void*)
{
    8000181c:	fe010113          	addi	sp,sp,-32
    80001820:	00113c23          	sd	ra,24(sp)
    80001824:	00813823          	sd	s0,16(sp)
    80001828:	02010413          	addi	s0,sp,32
    MemoryAllocator::initialise();
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	3e4080e7          	jalr	996(ra) # 80001c10 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001834:	00004797          	auipc	a5,0x4
    80001838:	02c7b783          	ld	a5,44(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000183c:	10579073          	csrw	stvec,a5
    thread_t handle = nullptr;
    80001840:	fe043423          	sd	zero,-24(s0)

//    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);

    thread_create(&handle, nullptr, nullptr);
    80001844:	00000613          	li	a2,0
    80001848:	00000593          	li	a1,0
    8000184c:	fe840513          	addi	a0,s0,-24
    80001850:	00000097          	auipc	ra,0x0
    80001854:	960080e7          	jalr	-1696(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>

//    printString("Main Thread handle: ");
//    printInteger((size_t)*handle);
//    printString("\n");

    _thread::running = handle;
    80001858:	00004797          	auipc	a5,0x4
    8000185c:	ff87b783          	ld	a5,-8(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001860:	fe843703          	ld	a4,-24(s0)
    80001864:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001868:	00200793          	li	a5,2
    8000186c:	1007a073          	csrs	sstatus,a5
//    printInteger(retVal);
//    printString("\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    80001870:	00000097          	auipc	ra,0x0
    80001874:	eb8080e7          	jalr	-328(ra) # 80001728 <_Z8userMainv>

    // thread_exit();
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	02010113          	addi	sp,sp,32
    80001884:	00008067          	ret

0000000080001888 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"

#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00813423          	sd	s0,8(sp)
    80001890:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001894:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001898:	10200073          	sret
}
    8000189c:	00813403          	ld	s0,8(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800018a8:	f7010113          	addi	sp,sp,-144
    800018ac:	08113423          	sd	ra,136(sp)
    800018b0:	08813023          	sd	s0,128(sp)
    800018b4:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    800018b8:	faa43823          	sd	a0,-80(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    800018bc:	fab43c23          	sd	a1,-72(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    800018c0:	fcc43023          	sd	a2,-64(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    800018c4:	fcd43423          	sd	a3,-56(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    800018c8:	fce43823          	sd	a4,-48(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    800018cc:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    800018d0:	ff043023          	sd	a6,-32(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    800018d4:	ff143423          	sd	a7,-24(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800018d8:	141027f3          	csrr	a5,sepc
    800018dc:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800018e0:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    800018e4:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800018e8:	100027f3          	csrr	a5,sstatus
    800018ec:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    800018f0:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    800018f4:	faf43023          	sd	a5,-96(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    800018f8:	140027f3          	csrr	a5,sscratch
    800018fc:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001900:	142027f3          	csrr	a5,scause
    80001904:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001908:	f7843783          	ld	a5,-136(s0)

    uint64 volatile scause = r_scause();
    8000190c:	f8f43823          	sd	a5,-112(s0)

//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001910:	f9043703          	ld	a4,-112(s0)
    80001914:	00800793          	li	a5,8
    80001918:	08f70863          	beq	a4,a5,800019a8 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    8000191c:	f9043703          	ld	a4,-112(s0)
    80001920:	00900793          	li	a5,9
    80001924:	08f70263          	beq	a4,a5,800019a8 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    80001928:	f9043703          	ld	a4,-112(s0)
    8000192c:	fff00793          	li	a5,-1
    80001930:	03f79793          	slli	a5,a5,0x3f
    80001934:	00178793          	addi	a5,a5,1
    80001938:	16f70463          	beq	a4,a5,80001aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        */
    }
    else if (scause == 0x8000000000000009UL)
    8000193c:	f9043703          	ld	a4,-112(s0)
    80001940:	fff00793          	li	a5,-1
    80001944:	03f79793          	slli	a5,a5,0x3f
    80001948:	00978793          	addi	a5,a5,9
    8000194c:	16f70063          	beq	a4,a5,80001aac <_ZN5Riscv20handleSupervisorTrapEv+0x204>
        console_handler();

    }
    else
    {
        printInteger(scause);
    80001950:	f9043503          	ld	a0,-112(s0)
    80001954:	00000097          	auipc	ra,0x0
    80001958:	5c0080e7          	jalr	1472(ra) # 80001f14 <_Z12printIntegerm>
        printString("\n");
    8000195c:	00003517          	auipc	a0,0x3
    80001960:	6e450513          	addi	a0,a0,1764 # 80005040 <CONSOLE_STATUS+0x30>
    80001964:	00000097          	auipc	ra,0x0
    80001968:	540080e7          	jalr	1344(ra) # 80001ea4 <_Z11printStringPKc>
        printString("sepc = ");
    8000196c:	00003517          	auipc	a0,0x3
    80001970:	75450513          	addi	a0,a0,1876 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	530080e7          	jalr	1328(ra) # 80001ea4 <_Z11printStringPKc>
        printInteger(sepc);
    8000197c:	fa843503          	ld	a0,-88(s0)
    80001980:	00000097          	auipc	ra,0x0
    80001984:	594080e7          	jalr	1428(ra) # 80001f14 <_Z12printIntegerm>
        printString("\nUnexpected trap cause!\n");
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	74050513          	addi	a0,a0,1856 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001990:	00000097          	auipc	ra,0x0
    80001994:	514080e7          	jalr	1300(ra) # 80001ea4 <_Z11printStringPKc>
        // unexpected trap cause
    }
}
    80001998:	08813083          	ld	ra,136(sp)
    8000199c:	08013403          	ld	s0,128(sp)
    800019a0:	09010113          	addi	sp,sp,144
    800019a4:	00008067          	ret
        sepc = sepc + 4;
    800019a8:	fa843783          	ld	a5,-88(s0)
    800019ac:	00478793          	addi	a5,a5,4
    800019b0:	faf43423          	sd	a5,-88(s0)
        w_sepc(sepc);
    800019b4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800019b8:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    800019bc:	fb043783          	ld	a5,-80(s0)
    800019c0:	00100713          	li	a4,1
    800019c4:	04e78863          	beq	a5,a4,80001a14 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
        else if (a[0] == 0x0000000000000002UL)
    800019c8:	00200713          	li	a4,2
    800019cc:	06e78663          	beq	a5,a4,80001a38 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
        else if (a[0] == 0x0000000000000011UL)
    800019d0:	01100713          	li	a4,17
    800019d4:	08e78063          	beq	a5,a4,80001a54 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
        else if (a[0] == 0x0000000000000012UL)
    800019d8:	01200713          	li	a4,18
    800019dc:	0ae78063          	beq	a5,a4,80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
        else if (a[0] == 0x0000000000000013UL)
    800019e0:	01300713          	li	a4,19
    800019e4:	fae79ae3          	bne	a5,a4,80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->timeSlice = 0;
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	e687b783          	ld	a5,-408(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019f0:	0007b783          	ld	a5,0(a5)
    800019f4:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	700080e7          	jalr	1792(ra) # 800020f8 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001a00:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a04:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001a08:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a0c:	14179073          	csrw	sepc,a5
}
    80001a10:	f89ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    80001a14:	fb843503          	ld	a0,-72(s0)
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	458080e7          	jalr	1112(ra) # 80001e70 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	260080e7          	jalr	608(ra) # 80001c80 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a28:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001a2c:	f9843783          	ld	a5,-104(s0)
    80001a30:	04a7b823          	sd	a0,80(a5)
    80001a34:	f65ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = MemoryAllocator::mem_free(ptr);
    80001a38:	fb843503          	ld	a0,-72(s0)
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	36c080e7          	jalr	876(ra) # 80001da8 <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a44:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001a48:	f9843783          	ld	a5,-104(s0)
    80001a4c:	04a7b823          	sd	a0,80(a5)
    80001a50:	f49ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80001a54:	fd043683          	ld	a3,-48(s0)
    80001a58:	fc843603          	ld	a2,-56(s0)
    80001a5c:	fc043583          	ld	a1,-64(s0)
    80001a60:	fb843503          	ld	a0,-72(s0)
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	5b0080e7          	jalr	1456(ra) # 80002014 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a6c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001a70:	f9843783          	ld	a5,-104(s0)
    80001a74:	04a7b823          	sd	a0,80(a5)
    80001a78:	f21ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->finished = true;
    80001a7c:	00004797          	auipc	a5,0x4
    80001a80:	dd47b783          	ld	a5,-556(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a84:	0007b783          	ld	a5,0(a5)
    80001a88:	00100713          	li	a4,1
    80001a8c:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	668080e7          	jalr	1640(ra) # 800020f8 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a98:	00050793          	mv	a5,a0
    80001a9c:	efdff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001aa0:	00200793          	li	a5,2
    80001aa4:	1447b073          	csrc	sip,a5
}
    80001aa8:	ef1ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        console_handler();
    80001aac:	00003097          	auipc	ra,0x3
    80001ab0:	824080e7          	jalr	-2012(ra) # 800042d0 <console_handler>
    80001ab4:	ee5ff06f          	j	80001998 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080001ab8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00813423          	sd	s0,8(sp)
    80001ac0:	01010413          	addi	s0,sp,16
    80001ac4:	00100793          	li	a5,1
    80001ac8:	00f50863          	beq	a0,a5,80001ad8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001acc:	00813403          	ld	s0,8(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret
    80001ad8:	000107b7          	lui	a5,0x10
    80001adc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ae0:	fef596e3          	bne	a1,a5,80001acc <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001ae4:	00004797          	auipc	a5,0x4
    80001ae8:	dfc78793          	addi	a5,a5,-516 # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
    80001aec:	0007b023          	sd	zero,0(a5)
    80001af0:	0007b423          	sd	zero,8(a5)
    80001af4:	fd9ff06f          	j	80001acc <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001af8 <_ZN9Scheduler3getEv>:
{
    80001af8:	fe010113          	addi	sp,sp,-32
    80001afc:	00113c23          	sd	ra,24(sp)
    80001b00:	00813823          	sd	s0,16(sp)
    80001b04:	00913423          	sd	s1,8(sp)
    80001b08:	02010413          	addi	s0,sp,32
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001b0c:	00004517          	auipc	a0,0x4
    80001b10:	dd453503          	ld	a0,-556(a0) # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
    80001b14:	04050663          	beqz	a0,80001b60 <_ZN9Scheduler3getEv+0x68>
        return head->data;
    80001b18:	00053483          	ld	s1,0(a0)
    if (readyThreadQueue.peekFirst() != 0)
    80001b1c:	02048063          	beqz	s1,80001b3c <_ZN9Scheduler3getEv+0x44>
        head = head->next;
    80001b20:	00853783          	ld	a5,8(a0)
    80001b24:	00004717          	auipc	a4,0x4
    80001b28:	daf73e23          	sd	a5,-580(a4) # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001b2c:	02078463          	beqz	a5,80001b54 <_ZN9Scheduler3getEv+0x5c>
        T *ret = elem->data;
    80001b30:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	274080e7          	jalr	628(ra) # 80001da8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	01813083          	ld	ra,24(sp)
    80001b44:	01013403          	ld	s0,16(sp)
    80001b48:	00813483          	ld	s1,8(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00008067          	ret
        if (!head) { tail = 0; }
    80001b54:	00004797          	auipc	a5,0x4
    80001b58:	d807ba23          	sd	zero,-620(a5) # 800058e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b5c:	fd5ff06f          	j	80001b30 <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    80001b60:	00050493          	mv	s1,a0
    80001b64:	fd9ff06f          	j	80001b3c <_ZN9Scheduler3getEv+0x44>

0000000080001b68 <_ZN9Scheduler3putEP7_thread>:
{
    80001b68:	fe010113          	addi	sp,sp,-32
    80001b6c:	00113c23          	sd	ra,24(sp)
    80001b70:	00813823          	sd	s0,16(sp)
    80001b74:	00913423          	sd	s1,8(sp)
    80001b78:	02010413          	addi	s0,sp,32
    80001b7c:	00050493          	mv	s1,a0
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001b80:	01000513          	li	a0,16
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	2ec080e7          	jalr	748(ra) # 80001e70 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	0f4080e7          	jalr	244(ra) # 80001c80 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001b94:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80001b98:	00053423          	sd	zero,8(a0)
        if (tail)
    80001b9c:	00004797          	auipc	a5,0x4
    80001ba0:	d4c7b783          	ld	a5,-692(a5) # 800058e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ba4:	02078263          	beqz	a5,80001bc8 <_ZN9Scheduler3putEP7_thread+0x60>
            tail->next = elem;
    80001ba8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001bac:	00004797          	auipc	a5,0x4
    80001bb0:	d2a7be23          	sd	a0,-708(a5) # 800058e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret
            head = tail = elem;
    80001bc8:	00004797          	auipc	a5,0x4
    80001bcc:	d1878793          	addi	a5,a5,-744 # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
    80001bd0:	00a7b423          	sd	a0,8(a5)
    80001bd4:	00a7b023          	sd	a0,0(a5)
    80001bd8:	fddff06f          	j	80001bb4 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080001bdc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00113423          	sd	ra,8(sp)
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	01010413          	addi	s0,sp,16
    80001bec:	000105b7          	lui	a1,0x10
    80001bf0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001bf4:	00100513          	li	a0,1
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	ec0080e7          	jalr	-320(ra) # 80001ab8 <_Z41__static_initialization_and_destruction_0ii>
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00813423          	sd	s0,8(sp)
    80001c18:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001c1c:	00004797          	auipc	a5,0x4
    80001c20:	c2c7b783          	ld	a5,-980(a5) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c24:	0007b703          	ld	a4,0(a5)
    80001c28:	fc077713          	andi	a4,a4,-64
    80001c2c:	04070613          	addi	a2,a4,64
    80001c30:	00004797          	auipc	a5,0x4
    80001c34:	cc078793          	addi	a5,a5,-832 # 800058f0 <_ZN15MemoryAllocator8memStartE>
    80001c38:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001c3c:	00004697          	auipc	a3,0x4
    80001c40:	c3c6b683          	ld	a3,-964(a3) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c44:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001c48:	fc06f693          	andi	a3,a3,-64
    80001c4c:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001c50:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001c54:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001c58:	0107b683          	ld	a3,16(a5)
    80001c5c:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001c60:	0087b703          	ld	a4,8(a5)
    80001c64:	0007b783          	ld	a5,0(a5)
    80001c68:	40f707b3          	sub	a5,a4,a5
    80001c6c:	0067d793          	srli	a5,a5,0x6
    80001c70:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001c74:	00813403          	ld	s0,8(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    if (size == 0)
    80001c8c:	0a050463          	beqz	a0,80001d34 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80001c90:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001c94:	00004697          	auipc	a3,0x4
    80001c98:	c6c6b683          	ld	a3,-916(a3) # 80005900 <_ZN15MemoryAllocator4headE>
    80001c9c:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001ca0:	04050e63          	beqz	a0,80001cfc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001ca4:	01053783          	ld	a5,16(a0)
    80001ca8:	00e7fa63          	bgeu	a5,a4,80001cbc <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80001cac:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001cb0:	fea698e3          	bne	a3,a0,80001ca0 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80001cb4:	00000513          	li	a0,0
    80001cb8:	0440006f          	j	80001cfc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    80001cbc:	40e787b3          	sub	a5,a5,a4
    80001cc0:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80001cc4:	02079263          	bnez	a5,80001ce8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    80001cc8:	04d50063          	beq	a0,a3,80001d08 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001ccc:	00053783          	ld	a5,0(a0)
    80001cd0:	04078463          	beqz	a5,80001d18 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80001cd4:	00853683          	ld	a3,8(a0)
    80001cd8:	04068063          	beqz	a3,80001d18 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    80001cdc:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80001ce0:	00853683          	ld	a3,8(a0)
    80001ce4:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    80001ce8:	01053783          	ld	a5,16(a0)
    80001cec:	00679793          	slli	a5,a5,0x6
    80001cf0:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    80001cf4:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001cf8:	00878513          	addi	a0,a5,8
}
    80001cfc:	00813403          	ld	s0,8(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001d08:	0006b783          	ld	a5,0(a3)
    80001d0c:	00004697          	auipc	a3,0x4
    80001d10:	bef6ba23          	sd	a5,-1036(a3) # 80005900 <_ZN15MemoryAllocator4headE>
    80001d14:	fb9ff06f          	j	80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    80001d18:	00853683          	ld	a3,8(a0)
    80001d1c:	00068663          	beqz	a3,80001d28 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80001d20:	0006b023          	sd	zero,0(a3)
    80001d24:	fc5ff06f          	j	80001ce8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    80001d28:	fc0780e3          	beqz	a5,80001ce8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80001d2c:	0007b423          	sd	zero,8(a5)
    80001d30:	fb9ff06f          	j	80001ce8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80001d34:	00000513          	li	a0,0
    80001d38:	fc5ff06f          	j	80001cfc <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080001d3c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001d48:	04050863          	beqz	a0,80001d98 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001d4c:	00053783          	ld	a5,0(a0)
    80001d50:	04078863          	beqz	a5,80001da0 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001d54:	01053683          	ld	a3,16(a0)
    80001d58:	00669713          	slli	a4,a3,0x6
    80001d5c:	00e50733          	add	a4,a0,a4
    80001d60:	00f70a63          	beq	a4,a5,80001d74 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001d64:	00000513          	li	a0,0
    }
}
    80001d68:	00813403          	ld	s0,8(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret
        curr->size += curr->next->size;
    80001d74:	0107b703          	ld	a4,16(a5)
    80001d78:	00e686b3          	add	a3,a3,a4
    80001d7c:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001d80:	0007b783          	ld	a5,0(a5)
    80001d84:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001d88:	00078463          	beqz	a5,80001d90 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001d8c:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001d90:	00100513          	li	a0,1
    80001d94:	fd5ff06f          	j	80001d68 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001d98:	00000513          	li	a0,0
    80001d9c:	fcdff06f          	j	80001d68 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001da0:	00000513          	li	a0,0
    80001da4:	fc5ff06f          	j	80001d68 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001da8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    80001da8:	0c050063          	beqz	a0,80001e68 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    80001dac:	fe010113          	addi	sp,sp,-32
    80001db0:	00113c23          	sd	ra,24(sp)
    80001db4:	00813823          	sd	s0,16(sp)
    80001db8:	00913423          	sd	s1,8(sp)
    80001dbc:	02010413          	addi	s0,sp,32
    80001dc0:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80001dc4:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80001dc8:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001dcc:	00004697          	auipc	a3,0x4
    80001dd0:	b346b683          	ld	a3,-1228(a3) # 80005900 <_ZN15MemoryAllocator4headE>
    80001dd4:	02068063          	beqz	a3,80001df4 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    80001dd8:	02d56263          	bltu	a0,a3,80001dfc <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001ddc:	00068793          	mv	a5,a3
    80001de0:	00078493          	mv	s1,a5
    80001de4:	0007b783          	ld	a5,0(a5)
    80001de8:	00078c63          	beqz	a5,80001e00 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001dec:	fea7eae3          	bltu	a5,a0,80001de0 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    80001df0:	0100006f          	j	80001e00 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    80001df4:	00068493          	mv	s1,a3
    80001df8:	0080006f          	j	80001e00 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001dfc:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001e00:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80001e04:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80001e08:	04048663          	beqz	s1,80001e54 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80001e0c:	0004b783          	ld	a5,0(s1)
    80001e10:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001e14:	ff873783          	ld	a5,-8(a4)
    80001e18:	00078463          	beqz	a5,80001e20 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80001e1c:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001e20:	02048e63          	beqz	s1,80001e5c <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80001e24:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	f14080e7          	jalr	-236(ra) # 80001d3c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001e30:	00048513          	mv	a0,s1
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	f08080e7          	jalr	-248(ra) # 80001d3c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80001e3c:	00000513          	li	a0,0
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001e54:	fed73c23          	sd	a3,-8(a4)
    80001e58:	fbdff06f          	j	80001e14 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    80001e5c:	00004797          	auipc	a5,0x4
    80001e60:	aaa7b223          	sd	a0,-1372(a5) # 80005900 <_ZN15MemoryAllocator4headE>
    80001e64:	fc5ff06f          	j	80001e28 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    80001e68:	fff00513          	li	a0,-1
}
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001e7c:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001e80:	03f57793          	andi	a5,a0,63
    80001e84:	00078c63          	beqz	a5,80001e9c <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001e88:	00655513          	srli	a0,a0,0x6
    80001e8c:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80001e90:	00813403          	ld	s0,8(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001e9c:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80001ea0:	ff1ff06f          	j	80001e90 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080001ea4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001ea4:	fd010113          	addi	sp,sp,-48
    80001ea8:	02113423          	sd	ra,40(sp)
    80001eac:	02813023          	sd	s0,32(sp)
    80001eb0:	00913c23          	sd	s1,24(sp)
    80001eb4:	01213823          	sd	s2,16(sp)
    80001eb8:	03010413          	addi	s0,sp,48
    80001ebc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ec0:	100027f3          	csrr	a5,sstatus
    80001ec4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001ec8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ecc:	00200793          	li	a5,2
    80001ed0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001ed4:	0004c503          	lbu	a0,0(s1)
    80001ed8:	00050a63          	beqz	a0,80001eec <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001edc:	00002097          	auipc	ra,0x2
    80001ee0:	380080e7          	jalr	896(ra) # 8000425c <__putc>
        string++;
    80001ee4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001ee8:	fedff06f          	j	80001ed4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001eec:	0009091b          	sext.w	s2,s2
    80001ef0:	00297913          	andi	s2,s2,2
    80001ef4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ef8:	10092073          	csrs	sstatus,s2
}
    80001efc:	02813083          	ld	ra,40(sp)
    80001f00:	02013403          	ld	s0,32(sp)
    80001f04:	01813483          	ld	s1,24(sp)
    80001f08:	01013903          	ld	s2,16(sp)
    80001f0c:	03010113          	addi	sp,sp,48
    80001f10:	00008067          	ret

0000000080001f14 <_Z12printIntegerm>:


void printInteger(uint64 integer)
{
    80001f14:	fc010113          	addi	sp,sp,-64
    80001f18:	02113c23          	sd	ra,56(sp)
    80001f1c:	02813823          	sd	s0,48(sp)
    80001f20:	02913423          	sd	s1,40(sp)
    80001f24:	03213023          	sd	s2,32(sp)
    80001f28:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f2c:	100027f3          	csrr	a5,sstatus
    80001f30:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f34:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f38:	00200793          	li	a5,2
    80001f3c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f40:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f44:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001f48:	00a00613          	li	a2,10
    80001f4c:	02c5773b          	remuw	a4,a0,a2
    80001f50:	02071693          	slli	a3,a4,0x20
    80001f54:	0206d693          	srli	a3,a3,0x20
    80001f58:	00003717          	auipc	a4,0x3
    80001f5c:	19070713          	addi	a4,a4,400 # 800050e8 <_ZZ12printIntegermE6digits>
    80001f60:	00d70733          	add	a4,a4,a3
    80001f64:	00074703          	lbu	a4,0(a4)
    80001f68:	fe040693          	addi	a3,s0,-32
    80001f6c:	009687b3          	add	a5,a3,s1
    80001f70:	0014849b          	addiw	s1,s1,1
    80001f74:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001f78:	0005071b          	sext.w	a4,a0
    80001f7c:	02c5553b          	divuw	a0,a0,a2
    80001f80:	00900793          	li	a5,9
    80001f84:	fce7e2e3          	bltu	a5,a4,80001f48 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001f88:	fff4849b          	addiw	s1,s1,-1
    80001f8c:	0004ce63          	bltz	s1,80001fa8 <_Z12printIntegerm+0x94>
    80001f90:	fe040793          	addi	a5,s0,-32
    80001f94:	009787b3          	add	a5,a5,s1
    80001f98:	ff07c503          	lbu	a0,-16(a5)
    80001f9c:	00002097          	auipc	ra,0x2
    80001fa0:	2c0080e7          	jalr	704(ra) # 8000425c <__putc>
    80001fa4:	fe5ff06f          	j	80001f88 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001fa8:	0009091b          	sext.w	s2,s2
    80001fac:	00297913          	andi	s2,s2,2
    80001fb0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fb4:	10092073          	csrs	sstatus,s2
    80001fb8:	03813083          	ld	ra,56(sp)
    80001fbc:	03013403          	ld	s0,48(sp)
    80001fc0:	02813483          	ld	s1,40(sp)
    80001fc4:	02013903          	ld	s2,32(sp)
    80001fc8:	04010113          	addi	sp,sp,64
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN7_thread13threadWrapperEv>:
    return 0;
}


void _thread::threadWrapper()
{
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	8a8080e7          	jalr	-1880(ra) # 80001888 <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    80001fe8:	00004797          	auipc	a5,0x4
    80001fec:	9207b783          	ld	a5,-1760(a5) # 80005908 <_ZN7_thread7runningE>
    80001ff0:	0007b703          	ld	a4,0(a5)
    80001ff4:	0287b503          	ld	a0,40(a5)
    80001ff8:	000700e7          	jalr	a4

    thread_exit();
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	220080e7          	jalr	544(ra) # 8000121c <_Z11thread_exitv>
}
    80002004:	00813083          	ld	ra,8(sp)
    80002008:	00013403          	ld	s0,0(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80002014:	fd010113          	addi	sp,sp,-48
    80002018:	02113423          	sd	ra,40(sp)
    8000201c:	02813023          	sd	s0,32(sp)
    80002020:	00913c23          	sd	s1,24(sp)
    80002024:	01213823          	sd	s2,16(sp)
    80002028:	01313423          	sd	s3,8(sp)
    8000202c:	01413023          	sd	s4,0(sp)
    80002030:	03010413          	addi	s0,sp,48
    80002034:	00050493          	mv	s1,a0
    80002038:	00058913          	mv	s2,a1
    8000203c:	00060993          	mv	s3,a2
    80002040:	00068a13          	mv	s4,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80002044:	03800513          	li	a0,56
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	e28080e7          	jalr	-472(ra) # 80001e70 <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    80002050:	00000097          	auipc	ra,0x0
    80002054:	c30080e7          	jalr	-976(ra) # 80001c80 <_ZN15MemoryAllocator9mem_allocEm>
    80002058:	00a4b023          	sd	a0,0(s1)
    (*handle)->finished = false;
    8000205c:	00050423          	sb	zero,8(a0)
    (*handle)->timeSlice = 0;
    80002060:	0004b783          	ld	a5,0(s1)
    80002064:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    80002068:	0004b783          	ld	a5,0(s1)
    8000206c:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    80002070:	0004b783          	ld	a5,0(s1)
    80002074:	0337b423          	sd	s3,40(a5)
    if (start_routine != nullptr)
    80002078:	06090663          	beqz	s2,800020e4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd0>
        (*handle)->stack = (uint64*) stack_space;
    8000207c:	0004b783          	ld	a5,0(s1)
    80002080:	0147b823          	sd	s4,16(a5)
    if ((*handle)->stack != nullptr)
    80002084:	0004b703          	ld	a4,0(s1)
    80002088:	01073783          	ld	a5,16(a4)
    8000208c:	06078263          	beqz	a5,800020f0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xdc>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002090:	000086b7          	lui	a3,0x8
    80002094:	00d787b3          	add	a5,a5,a3
    80002098:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    8000209c:	0004b783          	ld	a5,0(s1)
    800020a0:	00000717          	auipc	a4,0x0
    800020a4:	f3070713          	addi	a4,a4,-208 # 80001fd0 <_ZN7_thread13threadWrapperEv>
    800020a8:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    800020ac:	0004b503          	ld	a0,0(s1)
    800020b0:	00053783          	ld	a5,0(a0)
    800020b4:	00078663          	beqz	a5,800020c0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xac>
        Scheduler::put(*handle);
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	ab0080e7          	jalr	-1360(ra) # 80001b68 <_ZN9Scheduler3putEP7_thread>
}
    800020c0:	00000513          	li	a0,0
    800020c4:	02813083          	ld	ra,40(sp)
    800020c8:	02013403          	ld	s0,32(sp)
    800020cc:	01813483          	ld	s1,24(sp)
    800020d0:	01013903          	ld	s2,16(sp)
    800020d4:	00813983          	ld	s3,8(sp)
    800020d8:	00013a03          	ld	s4,0(sp)
    800020dc:	03010113          	addi	sp,sp,48
    800020e0:	00008067          	ret
        (*handle)->stack = nullptr;
    800020e4:	0004b783          	ld	a5,0(s1)
    800020e8:	0007b823          	sd	zero,16(a5)
    800020ec:	f99ff06f          	j	80002084 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x70>
        (*handle)->context.sp = 0;
    800020f0:	02073023          	sd	zero,32(a4)
    800020f4:	fb9ff06f          	j	800020ac <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x98>

00000000800020f8 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    800020f8:	fe010113          	addi	sp,sp,-32
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	00813823          	sd	s0,16(sp)
    80002104:	00913423          	sd	s1,8(sp)
    80002108:	02010413          	addi	s0,sp,32
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;
    8000210c:	00003497          	auipc	s1,0x3
    80002110:	7fc4b483          	ld	s1,2044(s1) # 80005908 <_ZN7_thread7runningE>

    if (!old->finished)
    80002114:	0084c783          	lbu	a5,8(s1)
    80002118:	04079463          	bnez	a5,80002160 <_ZN7_thread14threadDispatchEv+0x68>
    {
        Scheduler::put(old);
    8000211c:	00048513          	mv	a0,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	a48080e7          	jalr	-1464(ra) # 80001b68 <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	9d0080e7          	jalr	-1584(ra) # 80001af8 <_ZN9Scheduler3getEv>
    80002130:	00003797          	auipc	a5,0x3
    80002134:	7ca7bc23          	sd	a0,2008(a5) # 80005908 <_ZN7_thread7runningE>
//        printInteger((uint64) old);
//        printString("\nnew running: ");
//        printInteger((uint64) _thread::running);
//        printString("\n");

        if(old != _thread::running)
    80002138:	00a48a63          	beq	s1,a0,8000214c <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitch(&old->context, &_thread::running->context);
    8000213c:	01850593          	addi	a1,a0,24
    80002140:	01848513          	addi	a0,s1,24
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	fdc080e7          	jalr	-36(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    8000214c:	01813083          	ld	ra,24(sp)
    80002150:	01013403          	ld	s0,16(sp)
    80002154:	00813483          	ld	s1,8(sp)
    80002158:	02010113          	addi	sp,sp,32
    8000215c:	00008067          	ret
        MemoryAllocator::mem_free(old->stack);
    80002160:	0104b503          	ld	a0,16(s1)
    80002164:	00000097          	auipc	ra,0x0
    80002168:	c44080e7          	jalr	-956(ra) # 80001da8 <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    8000216c:	00048513          	mv	a0,s1
    80002170:	00000097          	auipc	ra,0x0
    80002174:	c38080e7          	jalr	-968(ra) # 80001da8 <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	980080e7          	jalr	-1664(ra) # 80001af8 <_ZN9Scheduler3getEv>
    80002180:	00003797          	auipc	a5,0x3
    80002184:	78a7b423          	sd	a0,1928(a5) # 80005908 <_ZN7_thread7runningE>
        if (_thread::running)
    80002188:	fc0502e3          	beqz	a0,8000214c <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitchThreadEnded(&_thread::running->context);
    8000218c:	01850513          	addi	a0,a0,24
    80002190:	fffff097          	auipc	ra,0xfffff
    80002194:	fa4080e7          	jalr	-92(ra) # 80001134 <contextSwitchThreadEnded>
}
    80002198:	fb5ff06f          	j	8000214c <_ZN7_thread14threadDispatchEv+0x54>

000000008000219c <start>:
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	300027f3          	csrr	a5,mstatus
    800021ac:	ffffe737          	lui	a4,0xffffe
    800021b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c9f>
    800021b4:	00e7f7b3          	and	a5,a5,a4
    800021b8:	00001737          	lui	a4,0x1
    800021bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800021c0:	00e7e7b3          	or	a5,a5,a4
    800021c4:	30079073          	csrw	mstatus,a5
    800021c8:	00000797          	auipc	a5,0x0
    800021cc:	16078793          	addi	a5,a5,352 # 80002328 <system_main>
    800021d0:	34179073          	csrw	mepc,a5
    800021d4:	00000793          	li	a5,0
    800021d8:	18079073          	csrw	satp,a5
    800021dc:	000107b7          	lui	a5,0x10
    800021e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021e4:	30279073          	csrw	medeleg,a5
    800021e8:	30379073          	csrw	mideleg,a5
    800021ec:	104027f3          	csrr	a5,sie
    800021f0:	2227e793          	ori	a5,a5,546
    800021f4:	10479073          	csrw	sie,a5
    800021f8:	fff00793          	li	a5,-1
    800021fc:	00a7d793          	srli	a5,a5,0xa
    80002200:	3b079073          	csrw	pmpaddr0,a5
    80002204:	00f00793          	li	a5,15
    80002208:	3a079073          	csrw	pmpcfg0,a5
    8000220c:	f14027f3          	csrr	a5,mhartid
    80002210:	0200c737          	lui	a4,0x200c
    80002214:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002218:	0007869b          	sext.w	a3,a5
    8000221c:	00269713          	slli	a4,a3,0x2
    80002220:	000f4637          	lui	a2,0xf4
    80002224:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002228:	00d70733          	add	a4,a4,a3
    8000222c:	0037979b          	slliw	a5,a5,0x3
    80002230:	020046b7          	lui	a3,0x2004
    80002234:	00d787b3          	add	a5,a5,a3
    80002238:	00c585b3          	add	a1,a1,a2
    8000223c:	00371693          	slli	a3,a4,0x3
    80002240:	00003717          	auipc	a4,0x3
    80002244:	6d070713          	addi	a4,a4,1744 # 80005910 <timer_scratch>
    80002248:	00b7b023          	sd	a1,0(a5)
    8000224c:	00d70733          	add	a4,a4,a3
    80002250:	00f73c23          	sd	a5,24(a4)
    80002254:	02c73023          	sd	a2,32(a4)
    80002258:	34071073          	csrw	mscratch,a4
    8000225c:	00000797          	auipc	a5,0x0
    80002260:	6e478793          	addi	a5,a5,1764 # 80002940 <timervec>
    80002264:	30579073          	csrw	mtvec,a5
    80002268:	300027f3          	csrr	a5,mstatus
    8000226c:	0087e793          	ori	a5,a5,8
    80002270:	30079073          	csrw	mstatus,a5
    80002274:	304027f3          	csrr	a5,mie
    80002278:	0807e793          	ori	a5,a5,128
    8000227c:	30479073          	csrw	mie,a5
    80002280:	f14027f3          	csrr	a5,mhartid
    80002284:	0007879b          	sext.w	a5,a5
    80002288:	00078213          	mv	tp,a5
    8000228c:	30200073          	mret
    80002290:	00813403          	ld	s0,8(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <timerinit>:
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    800022a8:	f14027f3          	csrr	a5,mhartid
    800022ac:	0200c737          	lui	a4,0x200c
    800022b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800022b4:	0007869b          	sext.w	a3,a5
    800022b8:	00269713          	slli	a4,a3,0x2
    800022bc:	000f4637          	lui	a2,0xf4
    800022c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800022c4:	00d70733          	add	a4,a4,a3
    800022c8:	0037979b          	slliw	a5,a5,0x3
    800022cc:	020046b7          	lui	a3,0x2004
    800022d0:	00d787b3          	add	a5,a5,a3
    800022d4:	00c585b3          	add	a1,a1,a2
    800022d8:	00371693          	slli	a3,a4,0x3
    800022dc:	00003717          	auipc	a4,0x3
    800022e0:	63470713          	addi	a4,a4,1588 # 80005910 <timer_scratch>
    800022e4:	00b7b023          	sd	a1,0(a5)
    800022e8:	00d70733          	add	a4,a4,a3
    800022ec:	00f73c23          	sd	a5,24(a4)
    800022f0:	02c73023          	sd	a2,32(a4)
    800022f4:	34071073          	csrw	mscratch,a4
    800022f8:	00000797          	auipc	a5,0x0
    800022fc:	64878793          	addi	a5,a5,1608 # 80002940 <timervec>
    80002300:	30579073          	csrw	mtvec,a5
    80002304:	300027f3          	csrr	a5,mstatus
    80002308:	0087e793          	ori	a5,a5,8
    8000230c:	30079073          	csrw	mstatus,a5
    80002310:	304027f3          	csrr	a5,mie
    80002314:	0807e793          	ori	a5,a5,128
    80002318:	30479073          	csrw	mie,a5
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <system_main>:
    80002328:	fe010113          	addi	sp,sp,-32
    8000232c:	00813823          	sd	s0,16(sp)
    80002330:	00913423          	sd	s1,8(sp)
    80002334:	00113c23          	sd	ra,24(sp)
    80002338:	02010413          	addi	s0,sp,32
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	0c4080e7          	jalr	196(ra) # 80002400 <cpuid>
    80002344:	00003497          	auipc	s1,0x3
    80002348:	56c48493          	addi	s1,s1,1388 # 800058b0 <started>
    8000234c:	02050263          	beqz	a0,80002370 <system_main+0x48>
    80002350:	0004a783          	lw	a5,0(s1)
    80002354:	0007879b          	sext.w	a5,a5
    80002358:	fe078ce3          	beqz	a5,80002350 <system_main+0x28>
    8000235c:	0ff0000f          	fence
    80002360:	00003517          	auipc	a0,0x3
    80002364:	dc850513          	addi	a0,a0,-568 # 80005128 <_ZZ12printIntegermE6digits+0x40>
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	a74080e7          	jalr	-1420(ra) # 80002ddc <panic>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	9c8080e7          	jalr	-1592(ra) # 80002d38 <consoleinit>
    80002378:	00001097          	auipc	ra,0x1
    8000237c:	154080e7          	jalr	340(ra) # 800034cc <printfinit>
    80002380:	00003517          	auipc	a0,0x3
    80002384:	cc050513          	addi	a0,a0,-832 # 80005040 <CONSOLE_STATUS+0x30>
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	ab0080e7          	jalr	-1360(ra) # 80002e38 <__printf>
    80002390:	00003517          	auipc	a0,0x3
    80002394:	d6850513          	addi	a0,a0,-664 # 800050f8 <_ZZ12printIntegermE6digits+0x10>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	aa0080e7          	jalr	-1376(ra) # 80002e38 <__printf>
    800023a0:	00003517          	auipc	a0,0x3
    800023a4:	ca050513          	addi	a0,a0,-864 # 80005040 <CONSOLE_STATUS+0x30>
    800023a8:	00001097          	auipc	ra,0x1
    800023ac:	a90080e7          	jalr	-1392(ra) # 80002e38 <__printf>
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	4a8080e7          	jalr	1192(ra) # 80003858 <kinit>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	148080e7          	jalr	328(ra) # 80002500 <trapinit>
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	16c080e7          	jalr	364(ra) # 8000252c <trapinithart>
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	5b8080e7          	jalr	1464(ra) # 80002980 <plicinit>
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	5d8080e7          	jalr	1496(ra) # 800029a8 <plicinithart>
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	078080e7          	jalr	120(ra) # 80002450 <userinit>
    800023e0:	0ff0000f          	fence
    800023e4:	00100793          	li	a5,1
    800023e8:	00003517          	auipc	a0,0x3
    800023ec:	d2850513          	addi	a0,a0,-728 # 80005110 <_ZZ12printIntegermE6digits+0x28>
    800023f0:	00f4a023          	sw	a5,0(s1)
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	a44080e7          	jalr	-1468(ra) # 80002e38 <__printf>
    800023fc:	0000006f          	j	800023fc <system_main+0xd4>

0000000080002400 <cpuid>:
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	00020513          	mv	a0,tp
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	0005051b          	sext.w	a0,a0
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <mycpu>:
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	00020793          	mv	a5,tp
    80002430:	00813403          	ld	s0,8(sp)
    80002434:	0007879b          	sext.w	a5,a5
    80002438:	00779793          	slli	a5,a5,0x7
    8000243c:	00004517          	auipc	a0,0x4
    80002440:	50450513          	addi	a0,a0,1284 # 80006940 <cpus>
    80002444:	00f50533          	add	a0,a0,a5
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <userinit>:
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	fffff317          	auipc	t1,0xfffff
    80002468:	3b830067          	jr	952(t1) # 8000181c <main>

000000008000246c <either_copyout>:
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00813023          	sd	s0,0(sp)
    80002474:	00113423          	sd	ra,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	02051663          	bnez	a0,800024a8 <either_copyout+0x3c>
    80002480:	00058513          	mv	a0,a1
    80002484:	00060593          	mv	a1,a2
    80002488:	0006861b          	sext.w	a2,a3
    8000248c:	00002097          	auipc	ra,0x2
    80002490:	c58080e7          	jalr	-936(ra) # 800040e4 <__memmove>
    80002494:	00813083          	ld	ra,8(sp)
    80002498:	00013403          	ld	s0,0(sp)
    8000249c:	00000513          	li	a0,0
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret
    800024a8:	00003517          	auipc	a0,0x3
    800024ac:	ca850513          	addi	a0,a0,-856 # 80005150 <_ZZ12printIntegermE6digits+0x68>
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	92c080e7          	jalr	-1748(ra) # 80002ddc <panic>

00000000800024b8 <either_copyin>:
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	00113423          	sd	ra,8(sp)
    800024c4:	01010413          	addi	s0,sp,16
    800024c8:	02059463          	bnez	a1,800024f0 <either_copyin+0x38>
    800024cc:	00060593          	mv	a1,a2
    800024d0:	0006861b          	sext.w	a2,a3
    800024d4:	00002097          	auipc	ra,0x2
    800024d8:	c10080e7          	jalr	-1008(ra) # 800040e4 <__memmove>
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	00000513          	li	a0,0
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret
    800024f0:	00003517          	auipc	a0,0x3
    800024f4:	c8850513          	addi	a0,a0,-888 # 80005178 <_ZZ12printIntegermE6digits+0x90>
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	8e4080e7          	jalr	-1820(ra) # 80002ddc <panic>

0000000080002500 <trapinit>:
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813423          	sd	s0,8(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	00813403          	ld	s0,8(sp)
    80002510:	00003597          	auipc	a1,0x3
    80002514:	c9058593          	addi	a1,a1,-880 # 800051a0 <_ZZ12printIntegermE6digits+0xb8>
    80002518:	00004517          	auipc	a0,0x4
    8000251c:	4a850513          	addi	a0,a0,1192 # 800069c0 <tickslock>
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00001317          	auipc	t1,0x1
    80002528:	5c430067          	jr	1476(t1) # 80003ae8 <initlock>

000000008000252c <trapinithart>:
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00813423          	sd	s0,8(sp)
    80002534:	01010413          	addi	s0,sp,16
    80002538:	00000797          	auipc	a5,0x0
    8000253c:	2f878793          	addi	a5,a5,760 # 80002830 <kernelvec>
    80002540:	10579073          	csrw	stvec,a5
    80002544:	00813403          	ld	s0,8(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <usertrap>:
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    8000255c:	00813403          	ld	s0,8(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <usertrapret>:
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00813423          	sd	s0,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00813403          	ld	s0,8(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <kerneltrap>:
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00813823          	sd	s0,16(sp)
    80002588:	00113c23          	sd	ra,24(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	02010413          	addi	s0,sp,32
    80002594:	142025f3          	csrr	a1,scause
    80002598:	100027f3          	csrr	a5,sstatus
    8000259c:	0027f793          	andi	a5,a5,2
    800025a0:	10079c63          	bnez	a5,800026b8 <kerneltrap+0x138>
    800025a4:	142027f3          	csrr	a5,scause
    800025a8:	0207ce63          	bltz	a5,800025e4 <kerneltrap+0x64>
    800025ac:	00003517          	auipc	a0,0x3
    800025b0:	c3c50513          	addi	a0,a0,-964 # 800051e8 <_ZZ12printIntegermE6digits+0x100>
    800025b4:	00001097          	auipc	ra,0x1
    800025b8:	884080e7          	jalr	-1916(ra) # 80002e38 <__printf>
    800025bc:	141025f3          	csrr	a1,sepc
    800025c0:	14302673          	csrr	a2,stval
    800025c4:	00003517          	auipc	a0,0x3
    800025c8:	c3450513          	addi	a0,a0,-972 # 800051f8 <_ZZ12printIntegermE6digits+0x110>
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	86c080e7          	jalr	-1940(ra) # 80002e38 <__printf>
    800025d4:	00003517          	auipc	a0,0x3
    800025d8:	c3c50513          	addi	a0,a0,-964 # 80005210 <_ZZ12printIntegermE6digits+0x128>
    800025dc:	00001097          	auipc	ra,0x1
    800025e0:	800080e7          	jalr	-2048(ra) # 80002ddc <panic>
    800025e4:	0ff7f713          	andi	a4,a5,255
    800025e8:	00900693          	li	a3,9
    800025ec:	04d70063          	beq	a4,a3,8000262c <kerneltrap+0xac>
    800025f0:	fff00713          	li	a4,-1
    800025f4:	03f71713          	slli	a4,a4,0x3f
    800025f8:	00170713          	addi	a4,a4,1
    800025fc:	fae798e3          	bne	a5,a4,800025ac <kerneltrap+0x2c>
    80002600:	00000097          	auipc	ra,0x0
    80002604:	e00080e7          	jalr	-512(ra) # 80002400 <cpuid>
    80002608:	06050663          	beqz	a0,80002674 <kerneltrap+0xf4>
    8000260c:	144027f3          	csrr	a5,sip
    80002610:	ffd7f793          	andi	a5,a5,-3
    80002614:	14479073          	csrw	sip,a5
    80002618:	01813083          	ld	ra,24(sp)
    8000261c:	01013403          	ld	s0,16(sp)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00008067          	ret
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	3c8080e7          	jalr	968(ra) # 800029f4 <plic_claim>
    80002634:	00a00793          	li	a5,10
    80002638:	00050493          	mv	s1,a0
    8000263c:	06f50863          	beq	a0,a5,800026ac <kerneltrap+0x12c>
    80002640:	fc050ce3          	beqz	a0,80002618 <kerneltrap+0x98>
    80002644:	00050593          	mv	a1,a0
    80002648:	00003517          	auipc	a0,0x3
    8000264c:	b8050513          	addi	a0,a0,-1152 # 800051c8 <_ZZ12printIntegermE6digits+0xe0>
    80002650:	00000097          	auipc	ra,0x0
    80002654:	7e8080e7          	jalr	2024(ra) # 80002e38 <__printf>
    80002658:	01013403          	ld	s0,16(sp)
    8000265c:	01813083          	ld	ra,24(sp)
    80002660:	00048513          	mv	a0,s1
    80002664:	00813483          	ld	s1,8(sp)
    80002668:	02010113          	addi	sp,sp,32
    8000266c:	00000317          	auipc	t1,0x0
    80002670:	3c030067          	jr	960(t1) # 80002a2c <plic_complete>
    80002674:	00004517          	auipc	a0,0x4
    80002678:	34c50513          	addi	a0,a0,844 # 800069c0 <tickslock>
    8000267c:	00001097          	auipc	ra,0x1
    80002680:	490080e7          	jalr	1168(ra) # 80003b0c <acquire>
    80002684:	00003717          	auipc	a4,0x3
    80002688:	23070713          	addi	a4,a4,560 # 800058b4 <ticks>
    8000268c:	00072783          	lw	a5,0(a4)
    80002690:	00004517          	auipc	a0,0x4
    80002694:	33050513          	addi	a0,a0,816 # 800069c0 <tickslock>
    80002698:	0017879b          	addiw	a5,a5,1
    8000269c:	00f72023          	sw	a5,0(a4)
    800026a0:	00001097          	auipc	ra,0x1
    800026a4:	538080e7          	jalr	1336(ra) # 80003bd8 <release>
    800026a8:	f65ff06f          	j	8000260c <kerneltrap+0x8c>
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	094080e7          	jalr	148(ra) # 80003740 <uartintr>
    800026b4:	fa5ff06f          	j	80002658 <kerneltrap+0xd8>
    800026b8:	00003517          	auipc	a0,0x3
    800026bc:	af050513          	addi	a0,a0,-1296 # 800051a8 <_ZZ12printIntegermE6digits+0xc0>
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	71c080e7          	jalr	1820(ra) # 80002ddc <panic>

00000000800026c8 <clockintr>:
    800026c8:	fe010113          	addi	sp,sp,-32
    800026cc:	00813823          	sd	s0,16(sp)
    800026d0:	00913423          	sd	s1,8(sp)
    800026d4:	00113c23          	sd	ra,24(sp)
    800026d8:	02010413          	addi	s0,sp,32
    800026dc:	00004497          	auipc	s1,0x4
    800026e0:	2e448493          	addi	s1,s1,740 # 800069c0 <tickslock>
    800026e4:	00048513          	mv	a0,s1
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	424080e7          	jalr	1060(ra) # 80003b0c <acquire>
    800026f0:	00003717          	auipc	a4,0x3
    800026f4:	1c470713          	addi	a4,a4,452 # 800058b4 <ticks>
    800026f8:	00072783          	lw	a5,0(a4)
    800026fc:	01013403          	ld	s0,16(sp)
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	00048513          	mv	a0,s1
    80002708:	0017879b          	addiw	a5,a5,1
    8000270c:	00813483          	ld	s1,8(sp)
    80002710:	00f72023          	sw	a5,0(a4)
    80002714:	02010113          	addi	sp,sp,32
    80002718:	00001317          	auipc	t1,0x1
    8000271c:	4c030067          	jr	1216(t1) # 80003bd8 <release>

0000000080002720 <devintr>:
    80002720:	142027f3          	csrr	a5,scause
    80002724:	00000513          	li	a0,0
    80002728:	0007c463          	bltz	a5,80002730 <devintr+0x10>
    8000272c:	00008067          	ret
    80002730:	fe010113          	addi	sp,sp,-32
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	00913423          	sd	s1,8(sp)
    80002740:	02010413          	addi	s0,sp,32
    80002744:	0ff7f713          	andi	a4,a5,255
    80002748:	00900693          	li	a3,9
    8000274c:	04d70c63          	beq	a4,a3,800027a4 <devintr+0x84>
    80002750:	fff00713          	li	a4,-1
    80002754:	03f71713          	slli	a4,a4,0x3f
    80002758:	00170713          	addi	a4,a4,1
    8000275c:	00e78c63          	beq	a5,a4,80002774 <devintr+0x54>
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	00813483          	ld	s1,8(sp)
    8000276c:	02010113          	addi	sp,sp,32
    80002770:	00008067          	ret
    80002774:	00000097          	auipc	ra,0x0
    80002778:	c8c080e7          	jalr	-884(ra) # 80002400 <cpuid>
    8000277c:	06050663          	beqz	a0,800027e8 <devintr+0xc8>
    80002780:	144027f3          	csrr	a5,sip
    80002784:	ffd7f793          	andi	a5,a5,-3
    80002788:	14479073          	csrw	sip,a5
    8000278c:	01813083          	ld	ra,24(sp)
    80002790:	01013403          	ld	s0,16(sp)
    80002794:	00813483          	ld	s1,8(sp)
    80002798:	00200513          	li	a0,2
    8000279c:	02010113          	addi	sp,sp,32
    800027a0:	00008067          	ret
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	250080e7          	jalr	592(ra) # 800029f4 <plic_claim>
    800027ac:	00a00793          	li	a5,10
    800027b0:	00050493          	mv	s1,a0
    800027b4:	06f50663          	beq	a0,a5,80002820 <devintr+0x100>
    800027b8:	00100513          	li	a0,1
    800027bc:	fa0482e3          	beqz	s1,80002760 <devintr+0x40>
    800027c0:	00048593          	mv	a1,s1
    800027c4:	00003517          	auipc	a0,0x3
    800027c8:	a0450513          	addi	a0,a0,-1532 # 800051c8 <_ZZ12printIntegermE6digits+0xe0>
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	66c080e7          	jalr	1644(ra) # 80002e38 <__printf>
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	254080e7          	jalr	596(ra) # 80002a2c <plic_complete>
    800027e0:	00100513          	li	a0,1
    800027e4:	f7dff06f          	j	80002760 <devintr+0x40>
    800027e8:	00004517          	auipc	a0,0x4
    800027ec:	1d850513          	addi	a0,a0,472 # 800069c0 <tickslock>
    800027f0:	00001097          	auipc	ra,0x1
    800027f4:	31c080e7          	jalr	796(ra) # 80003b0c <acquire>
    800027f8:	00003717          	auipc	a4,0x3
    800027fc:	0bc70713          	addi	a4,a4,188 # 800058b4 <ticks>
    80002800:	00072783          	lw	a5,0(a4)
    80002804:	00004517          	auipc	a0,0x4
    80002808:	1bc50513          	addi	a0,a0,444 # 800069c0 <tickslock>
    8000280c:	0017879b          	addiw	a5,a5,1
    80002810:	00f72023          	sw	a5,0(a4)
    80002814:	00001097          	auipc	ra,0x1
    80002818:	3c4080e7          	jalr	964(ra) # 80003bd8 <release>
    8000281c:	f65ff06f          	j	80002780 <devintr+0x60>
    80002820:	00001097          	auipc	ra,0x1
    80002824:	f20080e7          	jalr	-224(ra) # 80003740 <uartintr>
    80002828:	fadff06f          	j	800027d4 <devintr+0xb4>
    8000282c:	0000                	unimp
	...

0000000080002830 <kernelvec>:
    80002830:	f0010113          	addi	sp,sp,-256
    80002834:	00113023          	sd	ra,0(sp)
    80002838:	00213423          	sd	sp,8(sp)
    8000283c:	00313823          	sd	gp,16(sp)
    80002840:	00413c23          	sd	tp,24(sp)
    80002844:	02513023          	sd	t0,32(sp)
    80002848:	02613423          	sd	t1,40(sp)
    8000284c:	02713823          	sd	t2,48(sp)
    80002850:	02813c23          	sd	s0,56(sp)
    80002854:	04913023          	sd	s1,64(sp)
    80002858:	04a13423          	sd	a0,72(sp)
    8000285c:	04b13823          	sd	a1,80(sp)
    80002860:	04c13c23          	sd	a2,88(sp)
    80002864:	06d13023          	sd	a3,96(sp)
    80002868:	06e13423          	sd	a4,104(sp)
    8000286c:	06f13823          	sd	a5,112(sp)
    80002870:	07013c23          	sd	a6,120(sp)
    80002874:	09113023          	sd	a7,128(sp)
    80002878:	09213423          	sd	s2,136(sp)
    8000287c:	09313823          	sd	s3,144(sp)
    80002880:	09413c23          	sd	s4,152(sp)
    80002884:	0b513023          	sd	s5,160(sp)
    80002888:	0b613423          	sd	s6,168(sp)
    8000288c:	0b713823          	sd	s7,176(sp)
    80002890:	0b813c23          	sd	s8,184(sp)
    80002894:	0d913023          	sd	s9,192(sp)
    80002898:	0da13423          	sd	s10,200(sp)
    8000289c:	0db13823          	sd	s11,208(sp)
    800028a0:	0dc13c23          	sd	t3,216(sp)
    800028a4:	0fd13023          	sd	t4,224(sp)
    800028a8:	0fe13423          	sd	t5,232(sp)
    800028ac:	0ff13823          	sd	t6,240(sp)
    800028b0:	cd1ff0ef          	jal	ra,80002580 <kerneltrap>
    800028b4:	00013083          	ld	ra,0(sp)
    800028b8:	00813103          	ld	sp,8(sp)
    800028bc:	01013183          	ld	gp,16(sp)
    800028c0:	02013283          	ld	t0,32(sp)
    800028c4:	02813303          	ld	t1,40(sp)
    800028c8:	03013383          	ld	t2,48(sp)
    800028cc:	03813403          	ld	s0,56(sp)
    800028d0:	04013483          	ld	s1,64(sp)
    800028d4:	04813503          	ld	a0,72(sp)
    800028d8:	05013583          	ld	a1,80(sp)
    800028dc:	05813603          	ld	a2,88(sp)
    800028e0:	06013683          	ld	a3,96(sp)
    800028e4:	06813703          	ld	a4,104(sp)
    800028e8:	07013783          	ld	a5,112(sp)
    800028ec:	07813803          	ld	a6,120(sp)
    800028f0:	08013883          	ld	a7,128(sp)
    800028f4:	08813903          	ld	s2,136(sp)
    800028f8:	09013983          	ld	s3,144(sp)
    800028fc:	09813a03          	ld	s4,152(sp)
    80002900:	0a013a83          	ld	s5,160(sp)
    80002904:	0a813b03          	ld	s6,168(sp)
    80002908:	0b013b83          	ld	s7,176(sp)
    8000290c:	0b813c03          	ld	s8,184(sp)
    80002910:	0c013c83          	ld	s9,192(sp)
    80002914:	0c813d03          	ld	s10,200(sp)
    80002918:	0d013d83          	ld	s11,208(sp)
    8000291c:	0d813e03          	ld	t3,216(sp)
    80002920:	0e013e83          	ld	t4,224(sp)
    80002924:	0e813f03          	ld	t5,232(sp)
    80002928:	0f013f83          	ld	t6,240(sp)
    8000292c:	10010113          	addi	sp,sp,256
    80002930:	10200073          	sret
    80002934:	00000013          	nop
    80002938:	00000013          	nop
    8000293c:	00000013          	nop

0000000080002940 <timervec>:
    80002940:	34051573          	csrrw	a0,mscratch,a0
    80002944:	00b53023          	sd	a1,0(a0)
    80002948:	00c53423          	sd	a2,8(a0)
    8000294c:	00d53823          	sd	a3,16(a0)
    80002950:	01853583          	ld	a1,24(a0)
    80002954:	02053603          	ld	a2,32(a0)
    80002958:	0005b683          	ld	a3,0(a1)
    8000295c:	00c686b3          	add	a3,a3,a2
    80002960:	00d5b023          	sd	a3,0(a1)
    80002964:	00200593          	li	a1,2
    80002968:	14459073          	csrw	sip,a1
    8000296c:	01053683          	ld	a3,16(a0)
    80002970:	00853603          	ld	a2,8(a0)
    80002974:	00053583          	ld	a1,0(a0)
    80002978:	34051573          	csrrw	a0,mscratch,a0
    8000297c:	30200073          	mret

0000000080002980 <plicinit>:
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00813423          	sd	s0,8(sp)
    80002988:	01010413          	addi	s0,sp,16
    8000298c:	00813403          	ld	s0,8(sp)
    80002990:	0c0007b7          	lui	a5,0xc000
    80002994:	00100713          	li	a4,1
    80002998:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000299c:	00e7a223          	sw	a4,4(a5)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret

00000000800029a8 <plicinithart>:
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00813023          	sd	s0,0(sp)
    800029b0:	00113423          	sd	ra,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	a48080e7          	jalr	-1464(ra) # 80002400 <cpuid>
    800029c0:	0085171b          	slliw	a4,a0,0x8
    800029c4:	0c0027b7          	lui	a5,0xc002
    800029c8:	00e787b3          	add	a5,a5,a4
    800029cc:	40200713          	li	a4,1026
    800029d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	00d5151b          	slliw	a0,a0,0xd
    800029e0:	0c2017b7          	lui	a5,0xc201
    800029e4:	00a78533          	add	a0,a5,a0
    800029e8:	00052023          	sw	zero,0(a0)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <plic_claim>:
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00813023          	sd	s0,0(sp)
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	01010413          	addi	s0,sp,16
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	9fc080e7          	jalr	-1540(ra) # 80002400 <cpuid>
    80002a0c:	00813083          	ld	ra,8(sp)
    80002a10:	00013403          	ld	s0,0(sp)
    80002a14:	00d5151b          	slliw	a0,a0,0xd
    80002a18:	0c2017b7          	lui	a5,0xc201
    80002a1c:	00a78533          	add	a0,a5,a0
    80002a20:	00452503          	lw	a0,4(a0)
    80002a24:	01010113          	addi	sp,sp,16
    80002a28:	00008067          	ret

0000000080002a2c <plic_complete>:
    80002a2c:	fe010113          	addi	sp,sp,-32
    80002a30:	00813823          	sd	s0,16(sp)
    80002a34:	00913423          	sd	s1,8(sp)
    80002a38:	00113c23          	sd	ra,24(sp)
    80002a3c:	02010413          	addi	s0,sp,32
    80002a40:	00050493          	mv	s1,a0
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	9bc080e7          	jalr	-1604(ra) # 80002400 <cpuid>
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00d5179b          	slliw	a5,a0,0xd
    80002a58:	0c201737          	lui	a4,0xc201
    80002a5c:	00f707b3          	add	a5,a4,a5
    80002a60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002a64:	00813483          	ld	s1,8(sp)
    80002a68:	02010113          	addi	sp,sp,32
    80002a6c:	00008067          	ret

0000000080002a70 <consolewrite>:
    80002a70:	fb010113          	addi	sp,sp,-80
    80002a74:	04813023          	sd	s0,64(sp)
    80002a78:	04113423          	sd	ra,72(sp)
    80002a7c:	02913c23          	sd	s1,56(sp)
    80002a80:	03213823          	sd	s2,48(sp)
    80002a84:	03313423          	sd	s3,40(sp)
    80002a88:	03413023          	sd	s4,32(sp)
    80002a8c:	01513c23          	sd	s5,24(sp)
    80002a90:	05010413          	addi	s0,sp,80
    80002a94:	06c05c63          	blez	a2,80002b0c <consolewrite+0x9c>
    80002a98:	00060993          	mv	s3,a2
    80002a9c:	00050a13          	mv	s4,a0
    80002aa0:	00058493          	mv	s1,a1
    80002aa4:	00000913          	li	s2,0
    80002aa8:	fff00a93          	li	s5,-1
    80002aac:	01c0006f          	j	80002ac8 <consolewrite+0x58>
    80002ab0:	fbf44503          	lbu	a0,-65(s0)
    80002ab4:	0019091b          	addiw	s2,s2,1
    80002ab8:	00148493          	addi	s1,s1,1
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	a9c080e7          	jalr	-1380(ra) # 80003558 <uartputc>
    80002ac4:	03298063          	beq	s3,s2,80002ae4 <consolewrite+0x74>
    80002ac8:	00048613          	mv	a2,s1
    80002acc:	00100693          	li	a3,1
    80002ad0:	000a0593          	mv	a1,s4
    80002ad4:	fbf40513          	addi	a0,s0,-65
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	9e0080e7          	jalr	-1568(ra) # 800024b8 <either_copyin>
    80002ae0:	fd5518e3          	bne	a0,s5,80002ab0 <consolewrite+0x40>
    80002ae4:	04813083          	ld	ra,72(sp)
    80002ae8:	04013403          	ld	s0,64(sp)
    80002aec:	03813483          	ld	s1,56(sp)
    80002af0:	02813983          	ld	s3,40(sp)
    80002af4:	02013a03          	ld	s4,32(sp)
    80002af8:	01813a83          	ld	s5,24(sp)
    80002afc:	00090513          	mv	a0,s2
    80002b00:	03013903          	ld	s2,48(sp)
    80002b04:	05010113          	addi	sp,sp,80
    80002b08:	00008067          	ret
    80002b0c:	00000913          	li	s2,0
    80002b10:	fd5ff06f          	j	80002ae4 <consolewrite+0x74>

0000000080002b14 <consoleread>:
    80002b14:	f9010113          	addi	sp,sp,-112
    80002b18:	06813023          	sd	s0,96(sp)
    80002b1c:	04913c23          	sd	s1,88(sp)
    80002b20:	05213823          	sd	s2,80(sp)
    80002b24:	05313423          	sd	s3,72(sp)
    80002b28:	05413023          	sd	s4,64(sp)
    80002b2c:	03513c23          	sd	s5,56(sp)
    80002b30:	03613823          	sd	s6,48(sp)
    80002b34:	03713423          	sd	s7,40(sp)
    80002b38:	03813023          	sd	s8,32(sp)
    80002b3c:	06113423          	sd	ra,104(sp)
    80002b40:	01913c23          	sd	s9,24(sp)
    80002b44:	07010413          	addi	s0,sp,112
    80002b48:	00060b93          	mv	s7,a2
    80002b4c:	00050913          	mv	s2,a0
    80002b50:	00058c13          	mv	s8,a1
    80002b54:	00060b1b          	sext.w	s6,a2
    80002b58:	00004497          	auipc	s1,0x4
    80002b5c:	e8048493          	addi	s1,s1,-384 # 800069d8 <cons>
    80002b60:	00400993          	li	s3,4
    80002b64:	fff00a13          	li	s4,-1
    80002b68:	00a00a93          	li	s5,10
    80002b6c:	05705e63          	blez	s7,80002bc8 <consoleread+0xb4>
    80002b70:	09c4a703          	lw	a4,156(s1)
    80002b74:	0984a783          	lw	a5,152(s1)
    80002b78:	0007071b          	sext.w	a4,a4
    80002b7c:	08e78463          	beq	a5,a4,80002c04 <consoleread+0xf0>
    80002b80:	07f7f713          	andi	a4,a5,127
    80002b84:	00e48733          	add	a4,s1,a4
    80002b88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002b8c:	0017869b          	addiw	a3,a5,1
    80002b90:	08d4ac23          	sw	a3,152(s1)
    80002b94:	00070c9b          	sext.w	s9,a4
    80002b98:	0b370663          	beq	a4,s3,80002c44 <consoleread+0x130>
    80002b9c:	00100693          	li	a3,1
    80002ba0:	f9f40613          	addi	a2,s0,-97
    80002ba4:	000c0593          	mv	a1,s8
    80002ba8:	00090513          	mv	a0,s2
    80002bac:	f8e40fa3          	sb	a4,-97(s0)
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	8bc080e7          	jalr	-1860(ra) # 8000246c <either_copyout>
    80002bb8:	01450863          	beq	a0,s4,80002bc8 <consoleread+0xb4>
    80002bbc:	001c0c13          	addi	s8,s8,1
    80002bc0:	fffb8b9b          	addiw	s7,s7,-1
    80002bc4:	fb5c94e3          	bne	s9,s5,80002b6c <consoleread+0x58>
    80002bc8:	000b851b          	sext.w	a0,s7
    80002bcc:	06813083          	ld	ra,104(sp)
    80002bd0:	06013403          	ld	s0,96(sp)
    80002bd4:	05813483          	ld	s1,88(sp)
    80002bd8:	05013903          	ld	s2,80(sp)
    80002bdc:	04813983          	ld	s3,72(sp)
    80002be0:	04013a03          	ld	s4,64(sp)
    80002be4:	03813a83          	ld	s5,56(sp)
    80002be8:	02813b83          	ld	s7,40(sp)
    80002bec:	02013c03          	ld	s8,32(sp)
    80002bf0:	01813c83          	ld	s9,24(sp)
    80002bf4:	40ab053b          	subw	a0,s6,a0
    80002bf8:	03013b03          	ld	s6,48(sp)
    80002bfc:	07010113          	addi	sp,sp,112
    80002c00:	00008067          	ret
    80002c04:	00001097          	auipc	ra,0x1
    80002c08:	1d8080e7          	jalr	472(ra) # 80003ddc <push_on>
    80002c0c:	0984a703          	lw	a4,152(s1)
    80002c10:	09c4a783          	lw	a5,156(s1)
    80002c14:	0007879b          	sext.w	a5,a5
    80002c18:	fef70ce3          	beq	a4,a5,80002c10 <consoleread+0xfc>
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	234080e7          	jalr	564(ra) # 80003e50 <pop_on>
    80002c24:	0984a783          	lw	a5,152(s1)
    80002c28:	07f7f713          	andi	a4,a5,127
    80002c2c:	00e48733          	add	a4,s1,a4
    80002c30:	01874703          	lbu	a4,24(a4)
    80002c34:	0017869b          	addiw	a3,a5,1
    80002c38:	08d4ac23          	sw	a3,152(s1)
    80002c3c:	00070c9b          	sext.w	s9,a4
    80002c40:	f5371ee3          	bne	a4,s3,80002b9c <consoleread+0x88>
    80002c44:	000b851b          	sext.w	a0,s7
    80002c48:	f96bf2e3          	bgeu	s7,s6,80002bcc <consoleread+0xb8>
    80002c4c:	08f4ac23          	sw	a5,152(s1)
    80002c50:	f7dff06f          	j	80002bcc <consoleread+0xb8>

0000000080002c54 <consputc>:
    80002c54:	10000793          	li	a5,256
    80002c58:	00f50663          	beq	a0,a5,80002c64 <consputc+0x10>
    80002c5c:	00001317          	auipc	t1,0x1
    80002c60:	9f430067          	jr	-1548(t1) # 80003650 <uartputc_sync>
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00113423          	sd	ra,8(sp)
    80002c6c:	00813023          	sd	s0,0(sp)
    80002c70:	01010413          	addi	s0,sp,16
    80002c74:	00800513          	li	a0,8
    80002c78:	00001097          	auipc	ra,0x1
    80002c7c:	9d8080e7          	jalr	-1576(ra) # 80003650 <uartputc_sync>
    80002c80:	02000513          	li	a0,32
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	9cc080e7          	jalr	-1588(ra) # 80003650 <uartputc_sync>
    80002c8c:	00013403          	ld	s0,0(sp)
    80002c90:	00813083          	ld	ra,8(sp)
    80002c94:	00800513          	li	a0,8
    80002c98:	01010113          	addi	sp,sp,16
    80002c9c:	00001317          	auipc	t1,0x1
    80002ca0:	9b430067          	jr	-1612(t1) # 80003650 <uartputc_sync>

0000000080002ca4 <consoleintr>:
    80002ca4:	fe010113          	addi	sp,sp,-32
    80002ca8:	00813823          	sd	s0,16(sp)
    80002cac:	00913423          	sd	s1,8(sp)
    80002cb0:	01213023          	sd	s2,0(sp)
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	02010413          	addi	s0,sp,32
    80002cbc:	00004917          	auipc	s2,0x4
    80002cc0:	d1c90913          	addi	s2,s2,-740 # 800069d8 <cons>
    80002cc4:	00050493          	mv	s1,a0
    80002cc8:	00090513          	mv	a0,s2
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	e40080e7          	jalr	-448(ra) # 80003b0c <acquire>
    80002cd4:	02048c63          	beqz	s1,80002d0c <consoleintr+0x68>
    80002cd8:	0a092783          	lw	a5,160(s2)
    80002cdc:	09892703          	lw	a4,152(s2)
    80002ce0:	07f00693          	li	a3,127
    80002ce4:	40e7873b          	subw	a4,a5,a4
    80002ce8:	02e6e263          	bltu	a3,a4,80002d0c <consoleintr+0x68>
    80002cec:	00d00713          	li	a4,13
    80002cf0:	04e48063          	beq	s1,a4,80002d30 <consoleintr+0x8c>
    80002cf4:	07f7f713          	andi	a4,a5,127
    80002cf8:	00e90733          	add	a4,s2,a4
    80002cfc:	0017879b          	addiw	a5,a5,1
    80002d00:	0af92023          	sw	a5,160(s2)
    80002d04:	00970c23          	sb	s1,24(a4)
    80002d08:	08f92e23          	sw	a5,156(s2)
    80002d0c:	01013403          	ld	s0,16(sp)
    80002d10:	01813083          	ld	ra,24(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	00013903          	ld	s2,0(sp)
    80002d1c:	00004517          	auipc	a0,0x4
    80002d20:	cbc50513          	addi	a0,a0,-836 # 800069d8 <cons>
    80002d24:	02010113          	addi	sp,sp,32
    80002d28:	00001317          	auipc	t1,0x1
    80002d2c:	eb030067          	jr	-336(t1) # 80003bd8 <release>
    80002d30:	00a00493          	li	s1,10
    80002d34:	fc1ff06f          	j	80002cf4 <consoleintr+0x50>

0000000080002d38 <consoleinit>:
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00913423          	sd	s1,8(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00004497          	auipc	s1,0x4
    80002d50:	c8c48493          	addi	s1,s1,-884 # 800069d8 <cons>
    80002d54:	00048513          	mv	a0,s1
    80002d58:	00002597          	auipc	a1,0x2
    80002d5c:	4c858593          	addi	a1,a1,1224 # 80005220 <_ZZ12printIntegermE6digits+0x138>
    80002d60:	00001097          	auipc	ra,0x1
    80002d64:	d88080e7          	jalr	-632(ra) # 80003ae8 <initlock>
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	7ac080e7          	jalr	1964(ra) # 80003514 <uartinit>
    80002d70:	01813083          	ld	ra,24(sp)
    80002d74:	01013403          	ld	s0,16(sp)
    80002d78:	00000797          	auipc	a5,0x0
    80002d7c:	d9c78793          	addi	a5,a5,-612 # 80002b14 <consoleread>
    80002d80:	0af4bc23          	sd	a5,184(s1)
    80002d84:	00000797          	auipc	a5,0x0
    80002d88:	cec78793          	addi	a5,a5,-788 # 80002a70 <consolewrite>
    80002d8c:	0cf4b023          	sd	a5,192(s1)
    80002d90:	00813483          	ld	s1,8(sp)
    80002d94:	02010113          	addi	sp,sp,32
    80002d98:	00008067          	ret

0000000080002d9c <console_read>:
    80002d9c:	ff010113          	addi	sp,sp,-16
    80002da0:	00813423          	sd	s0,8(sp)
    80002da4:	01010413          	addi	s0,sp,16
    80002da8:	00813403          	ld	s0,8(sp)
    80002dac:	00004317          	auipc	t1,0x4
    80002db0:	ce433303          	ld	t1,-796(t1) # 80006a90 <devsw+0x10>
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00030067          	jr	t1

0000000080002dbc <console_write>:
    80002dbc:	ff010113          	addi	sp,sp,-16
    80002dc0:	00813423          	sd	s0,8(sp)
    80002dc4:	01010413          	addi	s0,sp,16
    80002dc8:	00813403          	ld	s0,8(sp)
    80002dcc:	00004317          	auipc	t1,0x4
    80002dd0:	ccc33303          	ld	t1,-820(t1) # 80006a98 <devsw+0x18>
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00030067          	jr	t1

0000000080002ddc <panic>:
    80002ddc:	fe010113          	addi	sp,sp,-32
    80002de0:	00113c23          	sd	ra,24(sp)
    80002de4:	00813823          	sd	s0,16(sp)
    80002de8:	00913423          	sd	s1,8(sp)
    80002dec:	02010413          	addi	s0,sp,32
    80002df0:	00050493          	mv	s1,a0
    80002df4:	00002517          	auipc	a0,0x2
    80002df8:	43450513          	addi	a0,a0,1076 # 80005228 <_ZZ12printIntegermE6digits+0x140>
    80002dfc:	00004797          	auipc	a5,0x4
    80002e00:	d207ae23          	sw	zero,-708(a5) # 80006b38 <pr+0x18>
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	034080e7          	jalr	52(ra) # 80002e38 <__printf>
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	028080e7          	jalr	40(ra) # 80002e38 <__printf>
    80002e18:	00002517          	auipc	a0,0x2
    80002e1c:	22850513          	addi	a0,a0,552 # 80005040 <CONSOLE_STATUS+0x30>
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	018080e7          	jalr	24(ra) # 80002e38 <__printf>
    80002e28:	00100793          	li	a5,1
    80002e2c:	00003717          	auipc	a4,0x3
    80002e30:	a8f72623          	sw	a5,-1396(a4) # 800058b8 <panicked>
    80002e34:	0000006f          	j	80002e34 <panic+0x58>

0000000080002e38 <__printf>:
    80002e38:	f3010113          	addi	sp,sp,-208
    80002e3c:	08813023          	sd	s0,128(sp)
    80002e40:	07313423          	sd	s3,104(sp)
    80002e44:	09010413          	addi	s0,sp,144
    80002e48:	05813023          	sd	s8,64(sp)
    80002e4c:	08113423          	sd	ra,136(sp)
    80002e50:	06913c23          	sd	s1,120(sp)
    80002e54:	07213823          	sd	s2,112(sp)
    80002e58:	07413023          	sd	s4,96(sp)
    80002e5c:	05513c23          	sd	s5,88(sp)
    80002e60:	05613823          	sd	s6,80(sp)
    80002e64:	05713423          	sd	s7,72(sp)
    80002e68:	03913c23          	sd	s9,56(sp)
    80002e6c:	03a13823          	sd	s10,48(sp)
    80002e70:	03b13423          	sd	s11,40(sp)
    80002e74:	00004317          	auipc	t1,0x4
    80002e78:	cac30313          	addi	t1,t1,-852 # 80006b20 <pr>
    80002e7c:	01832c03          	lw	s8,24(t1)
    80002e80:	00b43423          	sd	a1,8(s0)
    80002e84:	00c43823          	sd	a2,16(s0)
    80002e88:	00d43c23          	sd	a3,24(s0)
    80002e8c:	02e43023          	sd	a4,32(s0)
    80002e90:	02f43423          	sd	a5,40(s0)
    80002e94:	03043823          	sd	a6,48(s0)
    80002e98:	03143c23          	sd	a7,56(s0)
    80002e9c:	00050993          	mv	s3,a0
    80002ea0:	4a0c1663          	bnez	s8,8000334c <__printf+0x514>
    80002ea4:	60098c63          	beqz	s3,800034bc <__printf+0x684>
    80002ea8:	0009c503          	lbu	a0,0(s3)
    80002eac:	00840793          	addi	a5,s0,8
    80002eb0:	f6f43c23          	sd	a5,-136(s0)
    80002eb4:	00000493          	li	s1,0
    80002eb8:	22050063          	beqz	a0,800030d8 <__printf+0x2a0>
    80002ebc:	00002a37          	lui	s4,0x2
    80002ec0:	00018ab7          	lui	s5,0x18
    80002ec4:	000f4b37          	lui	s6,0xf4
    80002ec8:	00989bb7          	lui	s7,0x989
    80002ecc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ed0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ed4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ed8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002edc:	00148c9b          	addiw	s9,s1,1
    80002ee0:	02500793          	li	a5,37
    80002ee4:	01998933          	add	s2,s3,s9
    80002ee8:	38f51263          	bne	a0,a5,8000326c <__printf+0x434>
    80002eec:	00094783          	lbu	a5,0(s2)
    80002ef0:	00078c9b          	sext.w	s9,a5
    80002ef4:	1e078263          	beqz	a5,800030d8 <__printf+0x2a0>
    80002ef8:	0024849b          	addiw	s1,s1,2
    80002efc:	07000713          	li	a4,112
    80002f00:	00998933          	add	s2,s3,s1
    80002f04:	38e78a63          	beq	a5,a4,80003298 <__printf+0x460>
    80002f08:	20f76863          	bltu	a4,a5,80003118 <__printf+0x2e0>
    80002f0c:	42a78863          	beq	a5,a0,8000333c <__printf+0x504>
    80002f10:	06400713          	li	a4,100
    80002f14:	40e79663          	bne	a5,a4,80003320 <__printf+0x4e8>
    80002f18:	f7843783          	ld	a5,-136(s0)
    80002f1c:	0007a603          	lw	a2,0(a5)
    80002f20:	00878793          	addi	a5,a5,8
    80002f24:	f6f43c23          	sd	a5,-136(s0)
    80002f28:	42064a63          	bltz	a2,8000335c <__printf+0x524>
    80002f2c:	00a00713          	li	a4,10
    80002f30:	02e677bb          	remuw	a5,a2,a4
    80002f34:	00002d97          	auipc	s11,0x2
    80002f38:	31cd8d93          	addi	s11,s11,796 # 80005250 <digits>
    80002f3c:	00900593          	li	a1,9
    80002f40:	0006051b          	sext.w	a0,a2
    80002f44:	00000c93          	li	s9,0
    80002f48:	02079793          	slli	a5,a5,0x20
    80002f4c:	0207d793          	srli	a5,a5,0x20
    80002f50:	00fd87b3          	add	a5,s11,a5
    80002f54:	0007c783          	lbu	a5,0(a5)
    80002f58:	02e656bb          	divuw	a3,a2,a4
    80002f5c:	f8f40023          	sb	a5,-128(s0)
    80002f60:	14c5d863          	bge	a1,a2,800030b0 <__printf+0x278>
    80002f64:	06300593          	li	a1,99
    80002f68:	00100c93          	li	s9,1
    80002f6c:	02e6f7bb          	remuw	a5,a3,a4
    80002f70:	02079793          	slli	a5,a5,0x20
    80002f74:	0207d793          	srli	a5,a5,0x20
    80002f78:	00fd87b3          	add	a5,s11,a5
    80002f7c:	0007c783          	lbu	a5,0(a5)
    80002f80:	02e6d73b          	divuw	a4,a3,a4
    80002f84:	f8f400a3          	sb	a5,-127(s0)
    80002f88:	12a5f463          	bgeu	a1,a0,800030b0 <__printf+0x278>
    80002f8c:	00a00693          	li	a3,10
    80002f90:	00900593          	li	a1,9
    80002f94:	02d777bb          	remuw	a5,a4,a3
    80002f98:	02079793          	slli	a5,a5,0x20
    80002f9c:	0207d793          	srli	a5,a5,0x20
    80002fa0:	00fd87b3          	add	a5,s11,a5
    80002fa4:	0007c503          	lbu	a0,0(a5)
    80002fa8:	02d757bb          	divuw	a5,a4,a3
    80002fac:	f8a40123          	sb	a0,-126(s0)
    80002fb0:	48e5f263          	bgeu	a1,a4,80003434 <__printf+0x5fc>
    80002fb4:	06300513          	li	a0,99
    80002fb8:	02d7f5bb          	remuw	a1,a5,a3
    80002fbc:	02059593          	slli	a1,a1,0x20
    80002fc0:	0205d593          	srli	a1,a1,0x20
    80002fc4:	00bd85b3          	add	a1,s11,a1
    80002fc8:	0005c583          	lbu	a1,0(a1)
    80002fcc:	02d7d7bb          	divuw	a5,a5,a3
    80002fd0:	f8b401a3          	sb	a1,-125(s0)
    80002fd4:	48e57263          	bgeu	a0,a4,80003458 <__printf+0x620>
    80002fd8:	3e700513          	li	a0,999
    80002fdc:	02d7f5bb          	remuw	a1,a5,a3
    80002fe0:	02059593          	slli	a1,a1,0x20
    80002fe4:	0205d593          	srli	a1,a1,0x20
    80002fe8:	00bd85b3          	add	a1,s11,a1
    80002fec:	0005c583          	lbu	a1,0(a1)
    80002ff0:	02d7d7bb          	divuw	a5,a5,a3
    80002ff4:	f8b40223          	sb	a1,-124(s0)
    80002ff8:	46e57663          	bgeu	a0,a4,80003464 <__printf+0x62c>
    80002ffc:	02d7f5bb          	remuw	a1,a5,a3
    80003000:	02059593          	slli	a1,a1,0x20
    80003004:	0205d593          	srli	a1,a1,0x20
    80003008:	00bd85b3          	add	a1,s11,a1
    8000300c:	0005c583          	lbu	a1,0(a1)
    80003010:	02d7d7bb          	divuw	a5,a5,a3
    80003014:	f8b402a3          	sb	a1,-123(s0)
    80003018:	46ea7863          	bgeu	s4,a4,80003488 <__printf+0x650>
    8000301c:	02d7f5bb          	remuw	a1,a5,a3
    80003020:	02059593          	slli	a1,a1,0x20
    80003024:	0205d593          	srli	a1,a1,0x20
    80003028:	00bd85b3          	add	a1,s11,a1
    8000302c:	0005c583          	lbu	a1,0(a1)
    80003030:	02d7d7bb          	divuw	a5,a5,a3
    80003034:	f8b40323          	sb	a1,-122(s0)
    80003038:	3eeaf863          	bgeu	s5,a4,80003428 <__printf+0x5f0>
    8000303c:	02d7f5bb          	remuw	a1,a5,a3
    80003040:	02059593          	slli	a1,a1,0x20
    80003044:	0205d593          	srli	a1,a1,0x20
    80003048:	00bd85b3          	add	a1,s11,a1
    8000304c:	0005c583          	lbu	a1,0(a1)
    80003050:	02d7d7bb          	divuw	a5,a5,a3
    80003054:	f8b403a3          	sb	a1,-121(s0)
    80003058:	42eb7e63          	bgeu	s6,a4,80003494 <__printf+0x65c>
    8000305c:	02d7f5bb          	remuw	a1,a5,a3
    80003060:	02059593          	slli	a1,a1,0x20
    80003064:	0205d593          	srli	a1,a1,0x20
    80003068:	00bd85b3          	add	a1,s11,a1
    8000306c:	0005c583          	lbu	a1,0(a1)
    80003070:	02d7d7bb          	divuw	a5,a5,a3
    80003074:	f8b40423          	sb	a1,-120(s0)
    80003078:	42ebfc63          	bgeu	s7,a4,800034b0 <__printf+0x678>
    8000307c:	02079793          	slli	a5,a5,0x20
    80003080:	0207d793          	srli	a5,a5,0x20
    80003084:	00fd8db3          	add	s11,s11,a5
    80003088:	000dc703          	lbu	a4,0(s11)
    8000308c:	00a00793          	li	a5,10
    80003090:	00900c93          	li	s9,9
    80003094:	f8e404a3          	sb	a4,-119(s0)
    80003098:	00065c63          	bgez	a2,800030b0 <__printf+0x278>
    8000309c:	f9040713          	addi	a4,s0,-112
    800030a0:	00f70733          	add	a4,a4,a5
    800030a4:	02d00693          	li	a3,45
    800030a8:	fed70823          	sb	a3,-16(a4)
    800030ac:	00078c93          	mv	s9,a5
    800030b0:	f8040793          	addi	a5,s0,-128
    800030b4:	01978cb3          	add	s9,a5,s9
    800030b8:	f7f40d13          	addi	s10,s0,-129
    800030bc:	000cc503          	lbu	a0,0(s9)
    800030c0:	fffc8c93          	addi	s9,s9,-1
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	b90080e7          	jalr	-1136(ra) # 80002c54 <consputc>
    800030cc:	ffac98e3          	bne	s9,s10,800030bc <__printf+0x284>
    800030d0:	00094503          	lbu	a0,0(s2)
    800030d4:	e00514e3          	bnez	a0,80002edc <__printf+0xa4>
    800030d8:	1a0c1663          	bnez	s8,80003284 <__printf+0x44c>
    800030dc:	08813083          	ld	ra,136(sp)
    800030e0:	08013403          	ld	s0,128(sp)
    800030e4:	07813483          	ld	s1,120(sp)
    800030e8:	07013903          	ld	s2,112(sp)
    800030ec:	06813983          	ld	s3,104(sp)
    800030f0:	06013a03          	ld	s4,96(sp)
    800030f4:	05813a83          	ld	s5,88(sp)
    800030f8:	05013b03          	ld	s6,80(sp)
    800030fc:	04813b83          	ld	s7,72(sp)
    80003100:	04013c03          	ld	s8,64(sp)
    80003104:	03813c83          	ld	s9,56(sp)
    80003108:	03013d03          	ld	s10,48(sp)
    8000310c:	02813d83          	ld	s11,40(sp)
    80003110:	0d010113          	addi	sp,sp,208
    80003114:	00008067          	ret
    80003118:	07300713          	li	a4,115
    8000311c:	1ce78a63          	beq	a5,a4,800032f0 <__printf+0x4b8>
    80003120:	07800713          	li	a4,120
    80003124:	1ee79e63          	bne	a5,a4,80003320 <__printf+0x4e8>
    80003128:	f7843783          	ld	a5,-136(s0)
    8000312c:	0007a703          	lw	a4,0(a5)
    80003130:	00878793          	addi	a5,a5,8
    80003134:	f6f43c23          	sd	a5,-136(s0)
    80003138:	28074263          	bltz	a4,800033bc <__printf+0x584>
    8000313c:	00002d97          	auipc	s11,0x2
    80003140:	114d8d93          	addi	s11,s11,276 # 80005250 <digits>
    80003144:	00f77793          	andi	a5,a4,15
    80003148:	00fd87b3          	add	a5,s11,a5
    8000314c:	0007c683          	lbu	a3,0(a5)
    80003150:	00f00613          	li	a2,15
    80003154:	0007079b          	sext.w	a5,a4
    80003158:	f8d40023          	sb	a3,-128(s0)
    8000315c:	0047559b          	srliw	a1,a4,0x4
    80003160:	0047569b          	srliw	a3,a4,0x4
    80003164:	00000c93          	li	s9,0
    80003168:	0ee65063          	bge	a2,a4,80003248 <__printf+0x410>
    8000316c:	00f6f693          	andi	a3,a3,15
    80003170:	00dd86b3          	add	a3,s11,a3
    80003174:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003178:	0087d79b          	srliw	a5,a5,0x8
    8000317c:	00100c93          	li	s9,1
    80003180:	f8d400a3          	sb	a3,-127(s0)
    80003184:	0cb67263          	bgeu	a2,a1,80003248 <__printf+0x410>
    80003188:	00f7f693          	andi	a3,a5,15
    8000318c:	00dd86b3          	add	a3,s11,a3
    80003190:	0006c583          	lbu	a1,0(a3)
    80003194:	00f00613          	li	a2,15
    80003198:	0047d69b          	srliw	a3,a5,0x4
    8000319c:	f8b40123          	sb	a1,-126(s0)
    800031a0:	0047d593          	srli	a1,a5,0x4
    800031a4:	28f67e63          	bgeu	a2,a5,80003440 <__printf+0x608>
    800031a8:	00f6f693          	andi	a3,a3,15
    800031ac:	00dd86b3          	add	a3,s11,a3
    800031b0:	0006c503          	lbu	a0,0(a3)
    800031b4:	0087d813          	srli	a6,a5,0x8
    800031b8:	0087d69b          	srliw	a3,a5,0x8
    800031bc:	f8a401a3          	sb	a0,-125(s0)
    800031c0:	28b67663          	bgeu	a2,a1,8000344c <__printf+0x614>
    800031c4:	00f6f693          	andi	a3,a3,15
    800031c8:	00dd86b3          	add	a3,s11,a3
    800031cc:	0006c583          	lbu	a1,0(a3)
    800031d0:	00c7d513          	srli	a0,a5,0xc
    800031d4:	00c7d69b          	srliw	a3,a5,0xc
    800031d8:	f8b40223          	sb	a1,-124(s0)
    800031dc:	29067a63          	bgeu	a2,a6,80003470 <__printf+0x638>
    800031e0:	00f6f693          	andi	a3,a3,15
    800031e4:	00dd86b3          	add	a3,s11,a3
    800031e8:	0006c583          	lbu	a1,0(a3)
    800031ec:	0107d813          	srli	a6,a5,0x10
    800031f0:	0107d69b          	srliw	a3,a5,0x10
    800031f4:	f8b402a3          	sb	a1,-123(s0)
    800031f8:	28a67263          	bgeu	a2,a0,8000347c <__printf+0x644>
    800031fc:	00f6f693          	andi	a3,a3,15
    80003200:	00dd86b3          	add	a3,s11,a3
    80003204:	0006c683          	lbu	a3,0(a3)
    80003208:	0147d79b          	srliw	a5,a5,0x14
    8000320c:	f8d40323          	sb	a3,-122(s0)
    80003210:	21067663          	bgeu	a2,a6,8000341c <__printf+0x5e4>
    80003214:	02079793          	slli	a5,a5,0x20
    80003218:	0207d793          	srli	a5,a5,0x20
    8000321c:	00fd8db3          	add	s11,s11,a5
    80003220:	000dc683          	lbu	a3,0(s11)
    80003224:	00800793          	li	a5,8
    80003228:	00700c93          	li	s9,7
    8000322c:	f8d403a3          	sb	a3,-121(s0)
    80003230:	00075c63          	bgez	a4,80003248 <__printf+0x410>
    80003234:	f9040713          	addi	a4,s0,-112
    80003238:	00f70733          	add	a4,a4,a5
    8000323c:	02d00693          	li	a3,45
    80003240:	fed70823          	sb	a3,-16(a4)
    80003244:	00078c93          	mv	s9,a5
    80003248:	f8040793          	addi	a5,s0,-128
    8000324c:	01978cb3          	add	s9,a5,s9
    80003250:	f7f40d13          	addi	s10,s0,-129
    80003254:	000cc503          	lbu	a0,0(s9)
    80003258:	fffc8c93          	addi	s9,s9,-1
    8000325c:	00000097          	auipc	ra,0x0
    80003260:	9f8080e7          	jalr	-1544(ra) # 80002c54 <consputc>
    80003264:	ff9d18e3          	bne	s10,s9,80003254 <__printf+0x41c>
    80003268:	0100006f          	j	80003278 <__printf+0x440>
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	9e8080e7          	jalr	-1560(ra) # 80002c54 <consputc>
    80003274:	000c8493          	mv	s1,s9
    80003278:	00094503          	lbu	a0,0(s2)
    8000327c:	c60510e3          	bnez	a0,80002edc <__printf+0xa4>
    80003280:	e40c0ee3          	beqz	s8,800030dc <__printf+0x2a4>
    80003284:	00004517          	auipc	a0,0x4
    80003288:	89c50513          	addi	a0,a0,-1892 # 80006b20 <pr>
    8000328c:	00001097          	auipc	ra,0x1
    80003290:	94c080e7          	jalr	-1716(ra) # 80003bd8 <release>
    80003294:	e49ff06f          	j	800030dc <__printf+0x2a4>
    80003298:	f7843783          	ld	a5,-136(s0)
    8000329c:	03000513          	li	a0,48
    800032a0:	01000d13          	li	s10,16
    800032a4:	00878713          	addi	a4,a5,8
    800032a8:	0007bc83          	ld	s9,0(a5)
    800032ac:	f6e43c23          	sd	a4,-136(s0)
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	9a4080e7          	jalr	-1628(ra) # 80002c54 <consputc>
    800032b8:	07800513          	li	a0,120
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	998080e7          	jalr	-1640(ra) # 80002c54 <consputc>
    800032c4:	00002d97          	auipc	s11,0x2
    800032c8:	f8cd8d93          	addi	s11,s11,-116 # 80005250 <digits>
    800032cc:	03ccd793          	srli	a5,s9,0x3c
    800032d0:	00fd87b3          	add	a5,s11,a5
    800032d4:	0007c503          	lbu	a0,0(a5)
    800032d8:	fffd0d1b          	addiw	s10,s10,-1
    800032dc:	004c9c93          	slli	s9,s9,0x4
    800032e0:	00000097          	auipc	ra,0x0
    800032e4:	974080e7          	jalr	-1676(ra) # 80002c54 <consputc>
    800032e8:	fe0d12e3          	bnez	s10,800032cc <__printf+0x494>
    800032ec:	f8dff06f          	j	80003278 <__printf+0x440>
    800032f0:	f7843783          	ld	a5,-136(s0)
    800032f4:	0007bc83          	ld	s9,0(a5)
    800032f8:	00878793          	addi	a5,a5,8
    800032fc:	f6f43c23          	sd	a5,-136(s0)
    80003300:	000c9a63          	bnez	s9,80003314 <__printf+0x4dc>
    80003304:	1080006f          	j	8000340c <__printf+0x5d4>
    80003308:	001c8c93          	addi	s9,s9,1
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	948080e7          	jalr	-1720(ra) # 80002c54 <consputc>
    80003314:	000cc503          	lbu	a0,0(s9)
    80003318:	fe0518e3          	bnez	a0,80003308 <__printf+0x4d0>
    8000331c:	f5dff06f          	j	80003278 <__printf+0x440>
    80003320:	02500513          	li	a0,37
    80003324:	00000097          	auipc	ra,0x0
    80003328:	930080e7          	jalr	-1744(ra) # 80002c54 <consputc>
    8000332c:	000c8513          	mv	a0,s9
    80003330:	00000097          	auipc	ra,0x0
    80003334:	924080e7          	jalr	-1756(ra) # 80002c54 <consputc>
    80003338:	f41ff06f          	j	80003278 <__printf+0x440>
    8000333c:	02500513          	li	a0,37
    80003340:	00000097          	auipc	ra,0x0
    80003344:	914080e7          	jalr	-1772(ra) # 80002c54 <consputc>
    80003348:	f31ff06f          	j	80003278 <__printf+0x440>
    8000334c:	00030513          	mv	a0,t1
    80003350:	00000097          	auipc	ra,0x0
    80003354:	7bc080e7          	jalr	1980(ra) # 80003b0c <acquire>
    80003358:	b4dff06f          	j	80002ea4 <__printf+0x6c>
    8000335c:	40c0053b          	negw	a0,a2
    80003360:	00a00713          	li	a4,10
    80003364:	02e576bb          	remuw	a3,a0,a4
    80003368:	00002d97          	auipc	s11,0x2
    8000336c:	ee8d8d93          	addi	s11,s11,-280 # 80005250 <digits>
    80003370:	ff700593          	li	a1,-9
    80003374:	02069693          	slli	a3,a3,0x20
    80003378:	0206d693          	srli	a3,a3,0x20
    8000337c:	00dd86b3          	add	a3,s11,a3
    80003380:	0006c683          	lbu	a3,0(a3)
    80003384:	02e557bb          	divuw	a5,a0,a4
    80003388:	f8d40023          	sb	a3,-128(s0)
    8000338c:	10b65e63          	bge	a2,a1,800034a8 <__printf+0x670>
    80003390:	06300593          	li	a1,99
    80003394:	02e7f6bb          	remuw	a3,a5,a4
    80003398:	02069693          	slli	a3,a3,0x20
    8000339c:	0206d693          	srli	a3,a3,0x20
    800033a0:	00dd86b3          	add	a3,s11,a3
    800033a4:	0006c683          	lbu	a3,0(a3)
    800033a8:	02e7d73b          	divuw	a4,a5,a4
    800033ac:	00200793          	li	a5,2
    800033b0:	f8d400a3          	sb	a3,-127(s0)
    800033b4:	bca5ece3          	bltu	a1,a0,80002f8c <__printf+0x154>
    800033b8:	ce5ff06f          	j	8000309c <__printf+0x264>
    800033bc:	40e007bb          	negw	a5,a4
    800033c0:	00002d97          	auipc	s11,0x2
    800033c4:	e90d8d93          	addi	s11,s11,-368 # 80005250 <digits>
    800033c8:	00f7f693          	andi	a3,a5,15
    800033cc:	00dd86b3          	add	a3,s11,a3
    800033d0:	0006c583          	lbu	a1,0(a3)
    800033d4:	ff100613          	li	a2,-15
    800033d8:	0047d69b          	srliw	a3,a5,0x4
    800033dc:	f8b40023          	sb	a1,-128(s0)
    800033e0:	0047d59b          	srliw	a1,a5,0x4
    800033e4:	0ac75e63          	bge	a4,a2,800034a0 <__printf+0x668>
    800033e8:	00f6f693          	andi	a3,a3,15
    800033ec:	00dd86b3          	add	a3,s11,a3
    800033f0:	0006c603          	lbu	a2,0(a3)
    800033f4:	00f00693          	li	a3,15
    800033f8:	0087d79b          	srliw	a5,a5,0x8
    800033fc:	f8c400a3          	sb	a2,-127(s0)
    80003400:	d8b6e4e3          	bltu	a3,a1,80003188 <__printf+0x350>
    80003404:	00200793          	li	a5,2
    80003408:	e2dff06f          	j	80003234 <__printf+0x3fc>
    8000340c:	00002c97          	auipc	s9,0x2
    80003410:	e24c8c93          	addi	s9,s9,-476 # 80005230 <_ZZ12printIntegermE6digits+0x148>
    80003414:	02800513          	li	a0,40
    80003418:	ef1ff06f          	j	80003308 <__printf+0x4d0>
    8000341c:	00700793          	li	a5,7
    80003420:	00600c93          	li	s9,6
    80003424:	e0dff06f          	j	80003230 <__printf+0x3f8>
    80003428:	00700793          	li	a5,7
    8000342c:	00600c93          	li	s9,6
    80003430:	c69ff06f          	j	80003098 <__printf+0x260>
    80003434:	00300793          	li	a5,3
    80003438:	00200c93          	li	s9,2
    8000343c:	c5dff06f          	j	80003098 <__printf+0x260>
    80003440:	00300793          	li	a5,3
    80003444:	00200c93          	li	s9,2
    80003448:	de9ff06f          	j	80003230 <__printf+0x3f8>
    8000344c:	00400793          	li	a5,4
    80003450:	00300c93          	li	s9,3
    80003454:	dddff06f          	j	80003230 <__printf+0x3f8>
    80003458:	00400793          	li	a5,4
    8000345c:	00300c93          	li	s9,3
    80003460:	c39ff06f          	j	80003098 <__printf+0x260>
    80003464:	00500793          	li	a5,5
    80003468:	00400c93          	li	s9,4
    8000346c:	c2dff06f          	j	80003098 <__printf+0x260>
    80003470:	00500793          	li	a5,5
    80003474:	00400c93          	li	s9,4
    80003478:	db9ff06f          	j	80003230 <__printf+0x3f8>
    8000347c:	00600793          	li	a5,6
    80003480:	00500c93          	li	s9,5
    80003484:	dadff06f          	j	80003230 <__printf+0x3f8>
    80003488:	00600793          	li	a5,6
    8000348c:	00500c93          	li	s9,5
    80003490:	c09ff06f          	j	80003098 <__printf+0x260>
    80003494:	00800793          	li	a5,8
    80003498:	00700c93          	li	s9,7
    8000349c:	bfdff06f          	j	80003098 <__printf+0x260>
    800034a0:	00100793          	li	a5,1
    800034a4:	d91ff06f          	j	80003234 <__printf+0x3fc>
    800034a8:	00100793          	li	a5,1
    800034ac:	bf1ff06f          	j	8000309c <__printf+0x264>
    800034b0:	00900793          	li	a5,9
    800034b4:	00800c93          	li	s9,8
    800034b8:	be1ff06f          	j	80003098 <__printf+0x260>
    800034bc:	00002517          	auipc	a0,0x2
    800034c0:	d7c50513          	addi	a0,a0,-644 # 80005238 <_ZZ12printIntegermE6digits+0x150>
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	918080e7          	jalr	-1768(ra) # 80002ddc <panic>

00000000800034cc <printfinit>:
    800034cc:	fe010113          	addi	sp,sp,-32
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	02010413          	addi	s0,sp,32
    800034e0:	00003497          	auipc	s1,0x3
    800034e4:	64048493          	addi	s1,s1,1600 # 80006b20 <pr>
    800034e8:	00048513          	mv	a0,s1
    800034ec:	00002597          	auipc	a1,0x2
    800034f0:	d5c58593          	addi	a1,a1,-676 # 80005248 <_ZZ12printIntegermE6digits+0x160>
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	5f4080e7          	jalr	1524(ra) # 80003ae8 <initlock>
    800034fc:	01813083          	ld	ra,24(sp)
    80003500:	01013403          	ld	s0,16(sp)
    80003504:	0004ac23          	sw	zero,24(s1)
    80003508:	00813483          	ld	s1,8(sp)
    8000350c:	02010113          	addi	sp,sp,32
    80003510:	00008067          	ret

0000000080003514 <uartinit>:
    80003514:	ff010113          	addi	sp,sp,-16
    80003518:	00813423          	sd	s0,8(sp)
    8000351c:	01010413          	addi	s0,sp,16
    80003520:	100007b7          	lui	a5,0x10000
    80003524:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003528:	f8000713          	li	a4,-128
    8000352c:	00e781a3          	sb	a4,3(a5)
    80003530:	00300713          	li	a4,3
    80003534:	00e78023          	sb	a4,0(a5)
    80003538:	000780a3          	sb	zero,1(a5)
    8000353c:	00e781a3          	sb	a4,3(a5)
    80003540:	00700693          	li	a3,7
    80003544:	00d78123          	sb	a3,2(a5)
    80003548:	00e780a3          	sb	a4,1(a5)
    8000354c:	00813403          	ld	s0,8(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret

0000000080003558 <uartputc>:
    80003558:	00002797          	auipc	a5,0x2
    8000355c:	3607a783          	lw	a5,864(a5) # 800058b8 <panicked>
    80003560:	00078463          	beqz	a5,80003568 <uartputc+0x10>
    80003564:	0000006f          	j	80003564 <uartputc+0xc>
    80003568:	fd010113          	addi	sp,sp,-48
    8000356c:	02813023          	sd	s0,32(sp)
    80003570:	00913c23          	sd	s1,24(sp)
    80003574:	01213823          	sd	s2,16(sp)
    80003578:	01313423          	sd	s3,8(sp)
    8000357c:	02113423          	sd	ra,40(sp)
    80003580:	03010413          	addi	s0,sp,48
    80003584:	00002917          	auipc	s2,0x2
    80003588:	33c90913          	addi	s2,s2,828 # 800058c0 <uart_tx_r>
    8000358c:	00093783          	ld	a5,0(s2)
    80003590:	00002497          	auipc	s1,0x2
    80003594:	33848493          	addi	s1,s1,824 # 800058c8 <uart_tx_w>
    80003598:	0004b703          	ld	a4,0(s1)
    8000359c:	02078693          	addi	a3,a5,32
    800035a0:	00050993          	mv	s3,a0
    800035a4:	02e69c63          	bne	a3,a4,800035dc <uartputc+0x84>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	834080e7          	jalr	-1996(ra) # 80003ddc <push_on>
    800035b0:	00093783          	ld	a5,0(s2)
    800035b4:	0004b703          	ld	a4,0(s1)
    800035b8:	02078793          	addi	a5,a5,32
    800035bc:	00e79463          	bne	a5,a4,800035c4 <uartputc+0x6c>
    800035c0:	0000006f          	j	800035c0 <uartputc+0x68>
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	88c080e7          	jalr	-1908(ra) # 80003e50 <pop_on>
    800035cc:	00093783          	ld	a5,0(s2)
    800035d0:	0004b703          	ld	a4,0(s1)
    800035d4:	02078693          	addi	a3,a5,32
    800035d8:	fce688e3          	beq	a3,a4,800035a8 <uartputc+0x50>
    800035dc:	01f77693          	andi	a3,a4,31
    800035e0:	00003597          	auipc	a1,0x3
    800035e4:	56058593          	addi	a1,a1,1376 # 80006b40 <uart_tx_buf>
    800035e8:	00d586b3          	add	a3,a1,a3
    800035ec:	00170713          	addi	a4,a4,1
    800035f0:	01368023          	sb	s3,0(a3)
    800035f4:	00e4b023          	sd	a4,0(s1)
    800035f8:	10000637          	lui	a2,0x10000
    800035fc:	02f71063          	bne	a4,a5,8000361c <uartputc+0xc4>
    80003600:	0340006f          	j	80003634 <uartputc+0xdc>
    80003604:	00074703          	lbu	a4,0(a4)
    80003608:	00f93023          	sd	a5,0(s2)
    8000360c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003610:	00093783          	ld	a5,0(s2)
    80003614:	0004b703          	ld	a4,0(s1)
    80003618:	00f70e63          	beq	a4,a5,80003634 <uartputc+0xdc>
    8000361c:	00564683          	lbu	a3,5(a2)
    80003620:	01f7f713          	andi	a4,a5,31
    80003624:	00e58733          	add	a4,a1,a4
    80003628:	0206f693          	andi	a3,a3,32
    8000362c:	00178793          	addi	a5,a5,1
    80003630:	fc069ae3          	bnez	a3,80003604 <uartputc+0xac>
    80003634:	02813083          	ld	ra,40(sp)
    80003638:	02013403          	ld	s0,32(sp)
    8000363c:	01813483          	ld	s1,24(sp)
    80003640:	01013903          	ld	s2,16(sp)
    80003644:	00813983          	ld	s3,8(sp)
    80003648:	03010113          	addi	sp,sp,48
    8000364c:	00008067          	ret

0000000080003650 <uartputc_sync>:
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00813423          	sd	s0,8(sp)
    80003658:	01010413          	addi	s0,sp,16
    8000365c:	00002717          	auipc	a4,0x2
    80003660:	25c72703          	lw	a4,604(a4) # 800058b8 <panicked>
    80003664:	02071663          	bnez	a4,80003690 <uartputc_sync+0x40>
    80003668:	00050793          	mv	a5,a0
    8000366c:	100006b7          	lui	a3,0x10000
    80003670:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003674:	02077713          	andi	a4,a4,32
    80003678:	fe070ce3          	beqz	a4,80003670 <uartputc_sync+0x20>
    8000367c:	0ff7f793          	andi	a5,a5,255
    80003680:	00f68023          	sb	a5,0(a3)
    80003684:	00813403          	ld	s0,8(sp)
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00008067          	ret
    80003690:	0000006f          	j	80003690 <uartputc_sync+0x40>

0000000080003694 <uartstart>:
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00813423          	sd	s0,8(sp)
    8000369c:	01010413          	addi	s0,sp,16
    800036a0:	00002617          	auipc	a2,0x2
    800036a4:	22060613          	addi	a2,a2,544 # 800058c0 <uart_tx_r>
    800036a8:	00002517          	auipc	a0,0x2
    800036ac:	22050513          	addi	a0,a0,544 # 800058c8 <uart_tx_w>
    800036b0:	00063783          	ld	a5,0(a2)
    800036b4:	00053703          	ld	a4,0(a0)
    800036b8:	04f70263          	beq	a4,a5,800036fc <uartstart+0x68>
    800036bc:	100005b7          	lui	a1,0x10000
    800036c0:	00003817          	auipc	a6,0x3
    800036c4:	48080813          	addi	a6,a6,1152 # 80006b40 <uart_tx_buf>
    800036c8:	01c0006f          	j	800036e4 <uartstart+0x50>
    800036cc:	0006c703          	lbu	a4,0(a3)
    800036d0:	00f63023          	sd	a5,0(a2)
    800036d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036d8:	00063783          	ld	a5,0(a2)
    800036dc:	00053703          	ld	a4,0(a0)
    800036e0:	00f70e63          	beq	a4,a5,800036fc <uartstart+0x68>
    800036e4:	01f7f713          	andi	a4,a5,31
    800036e8:	00e806b3          	add	a3,a6,a4
    800036ec:	0055c703          	lbu	a4,5(a1)
    800036f0:	00178793          	addi	a5,a5,1
    800036f4:	02077713          	andi	a4,a4,32
    800036f8:	fc071ae3          	bnez	a4,800036cc <uartstart+0x38>
    800036fc:	00813403          	ld	s0,8(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret

0000000080003708 <uartgetc>:
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00813423          	sd	s0,8(sp)
    80003710:	01010413          	addi	s0,sp,16
    80003714:	10000737          	lui	a4,0x10000
    80003718:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000371c:	0017f793          	andi	a5,a5,1
    80003720:	00078c63          	beqz	a5,80003738 <uartgetc+0x30>
    80003724:	00074503          	lbu	a0,0(a4)
    80003728:	0ff57513          	andi	a0,a0,255
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret
    80003738:	fff00513          	li	a0,-1
    8000373c:	ff1ff06f          	j	8000372c <uartgetc+0x24>

0000000080003740 <uartintr>:
    80003740:	100007b7          	lui	a5,0x10000
    80003744:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003748:	0017f793          	andi	a5,a5,1
    8000374c:	0a078463          	beqz	a5,800037f4 <uartintr+0xb4>
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	00113c23          	sd	ra,24(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	100004b7          	lui	s1,0x10000
    80003768:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000376c:	0ff57513          	andi	a0,a0,255
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	534080e7          	jalr	1332(ra) # 80002ca4 <consoleintr>
    80003778:	0054c783          	lbu	a5,5(s1)
    8000377c:	0017f793          	andi	a5,a5,1
    80003780:	fe0794e3          	bnez	a5,80003768 <uartintr+0x28>
    80003784:	00002617          	auipc	a2,0x2
    80003788:	13c60613          	addi	a2,a2,316 # 800058c0 <uart_tx_r>
    8000378c:	00002517          	auipc	a0,0x2
    80003790:	13c50513          	addi	a0,a0,316 # 800058c8 <uart_tx_w>
    80003794:	00063783          	ld	a5,0(a2)
    80003798:	00053703          	ld	a4,0(a0)
    8000379c:	04f70263          	beq	a4,a5,800037e0 <uartintr+0xa0>
    800037a0:	100005b7          	lui	a1,0x10000
    800037a4:	00003817          	auipc	a6,0x3
    800037a8:	39c80813          	addi	a6,a6,924 # 80006b40 <uart_tx_buf>
    800037ac:	01c0006f          	j	800037c8 <uartintr+0x88>
    800037b0:	0006c703          	lbu	a4,0(a3)
    800037b4:	00f63023          	sd	a5,0(a2)
    800037b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800037bc:	00063783          	ld	a5,0(a2)
    800037c0:	00053703          	ld	a4,0(a0)
    800037c4:	00f70e63          	beq	a4,a5,800037e0 <uartintr+0xa0>
    800037c8:	01f7f713          	andi	a4,a5,31
    800037cc:	00e806b3          	add	a3,a6,a4
    800037d0:	0055c703          	lbu	a4,5(a1)
    800037d4:	00178793          	addi	a5,a5,1
    800037d8:	02077713          	andi	a4,a4,32
    800037dc:	fc071ae3          	bnez	a4,800037b0 <uartintr+0x70>
    800037e0:	01813083          	ld	ra,24(sp)
    800037e4:	01013403          	ld	s0,16(sp)
    800037e8:	00813483          	ld	s1,8(sp)
    800037ec:	02010113          	addi	sp,sp,32
    800037f0:	00008067          	ret
    800037f4:	00002617          	auipc	a2,0x2
    800037f8:	0cc60613          	addi	a2,a2,204 # 800058c0 <uart_tx_r>
    800037fc:	00002517          	auipc	a0,0x2
    80003800:	0cc50513          	addi	a0,a0,204 # 800058c8 <uart_tx_w>
    80003804:	00063783          	ld	a5,0(a2)
    80003808:	00053703          	ld	a4,0(a0)
    8000380c:	04f70263          	beq	a4,a5,80003850 <uartintr+0x110>
    80003810:	100005b7          	lui	a1,0x10000
    80003814:	00003817          	auipc	a6,0x3
    80003818:	32c80813          	addi	a6,a6,812 # 80006b40 <uart_tx_buf>
    8000381c:	01c0006f          	j	80003838 <uartintr+0xf8>
    80003820:	0006c703          	lbu	a4,0(a3)
    80003824:	00f63023          	sd	a5,0(a2)
    80003828:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000382c:	00063783          	ld	a5,0(a2)
    80003830:	00053703          	ld	a4,0(a0)
    80003834:	02f70063          	beq	a4,a5,80003854 <uartintr+0x114>
    80003838:	01f7f713          	andi	a4,a5,31
    8000383c:	00e806b3          	add	a3,a6,a4
    80003840:	0055c703          	lbu	a4,5(a1)
    80003844:	00178793          	addi	a5,a5,1
    80003848:	02077713          	andi	a4,a4,32
    8000384c:	fc071ae3          	bnez	a4,80003820 <uartintr+0xe0>
    80003850:	00008067          	ret
    80003854:	00008067          	ret

0000000080003858 <kinit>:
    80003858:	fc010113          	addi	sp,sp,-64
    8000385c:	02913423          	sd	s1,40(sp)
    80003860:	fffff7b7          	lui	a5,0xfffff
    80003864:	00004497          	auipc	s1,0x4
    80003868:	2fb48493          	addi	s1,s1,763 # 80007b5f <end+0xfff>
    8000386c:	02813823          	sd	s0,48(sp)
    80003870:	01313c23          	sd	s3,24(sp)
    80003874:	00f4f4b3          	and	s1,s1,a5
    80003878:	02113c23          	sd	ra,56(sp)
    8000387c:	03213023          	sd	s2,32(sp)
    80003880:	01413823          	sd	s4,16(sp)
    80003884:	01513423          	sd	s5,8(sp)
    80003888:	04010413          	addi	s0,sp,64
    8000388c:	000017b7          	lui	a5,0x1
    80003890:	01100993          	li	s3,17
    80003894:	00f487b3          	add	a5,s1,a5
    80003898:	01b99993          	slli	s3,s3,0x1b
    8000389c:	06f9e063          	bltu	s3,a5,800038fc <kinit+0xa4>
    800038a0:	00003a97          	auipc	s5,0x3
    800038a4:	2c0a8a93          	addi	s5,s5,704 # 80006b60 <end>
    800038a8:	0754ec63          	bltu	s1,s5,80003920 <kinit+0xc8>
    800038ac:	0734fa63          	bgeu	s1,s3,80003920 <kinit+0xc8>
    800038b0:	00088a37          	lui	s4,0x88
    800038b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800038b8:	00002917          	auipc	s2,0x2
    800038bc:	01890913          	addi	s2,s2,24 # 800058d0 <kmem>
    800038c0:	00ca1a13          	slli	s4,s4,0xc
    800038c4:	0140006f          	j	800038d8 <kinit+0x80>
    800038c8:	000017b7          	lui	a5,0x1
    800038cc:	00f484b3          	add	s1,s1,a5
    800038d0:	0554e863          	bltu	s1,s5,80003920 <kinit+0xc8>
    800038d4:	0534f663          	bgeu	s1,s3,80003920 <kinit+0xc8>
    800038d8:	00001637          	lui	a2,0x1
    800038dc:	00100593          	li	a1,1
    800038e0:	00048513          	mv	a0,s1
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	5e4080e7          	jalr	1508(ra) # 80003ec8 <__memset>
    800038ec:	00093783          	ld	a5,0(s2)
    800038f0:	00f4b023          	sd	a5,0(s1)
    800038f4:	00993023          	sd	s1,0(s2)
    800038f8:	fd4498e3          	bne	s1,s4,800038c8 <kinit+0x70>
    800038fc:	03813083          	ld	ra,56(sp)
    80003900:	03013403          	ld	s0,48(sp)
    80003904:	02813483          	ld	s1,40(sp)
    80003908:	02013903          	ld	s2,32(sp)
    8000390c:	01813983          	ld	s3,24(sp)
    80003910:	01013a03          	ld	s4,16(sp)
    80003914:	00813a83          	ld	s5,8(sp)
    80003918:	04010113          	addi	sp,sp,64
    8000391c:	00008067          	ret
    80003920:	00002517          	auipc	a0,0x2
    80003924:	94850513          	addi	a0,a0,-1720 # 80005268 <digits+0x18>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	4b4080e7          	jalr	1204(ra) # 80002ddc <panic>

0000000080003930 <freerange>:
    80003930:	fc010113          	addi	sp,sp,-64
    80003934:	000017b7          	lui	a5,0x1
    80003938:	02913423          	sd	s1,40(sp)
    8000393c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003940:	009504b3          	add	s1,a0,s1
    80003944:	fffff537          	lui	a0,0xfffff
    80003948:	02813823          	sd	s0,48(sp)
    8000394c:	02113c23          	sd	ra,56(sp)
    80003950:	03213023          	sd	s2,32(sp)
    80003954:	01313c23          	sd	s3,24(sp)
    80003958:	01413823          	sd	s4,16(sp)
    8000395c:	01513423          	sd	s5,8(sp)
    80003960:	01613023          	sd	s6,0(sp)
    80003964:	04010413          	addi	s0,sp,64
    80003968:	00a4f4b3          	and	s1,s1,a0
    8000396c:	00f487b3          	add	a5,s1,a5
    80003970:	06f5e463          	bltu	a1,a5,800039d8 <freerange+0xa8>
    80003974:	00003a97          	auipc	s5,0x3
    80003978:	1eca8a93          	addi	s5,s5,492 # 80006b60 <end>
    8000397c:	0954e263          	bltu	s1,s5,80003a00 <freerange+0xd0>
    80003980:	01100993          	li	s3,17
    80003984:	01b99993          	slli	s3,s3,0x1b
    80003988:	0734fc63          	bgeu	s1,s3,80003a00 <freerange+0xd0>
    8000398c:	00058a13          	mv	s4,a1
    80003990:	00002917          	auipc	s2,0x2
    80003994:	f4090913          	addi	s2,s2,-192 # 800058d0 <kmem>
    80003998:	00002b37          	lui	s6,0x2
    8000399c:	0140006f          	j	800039b0 <freerange+0x80>
    800039a0:	000017b7          	lui	a5,0x1
    800039a4:	00f484b3          	add	s1,s1,a5
    800039a8:	0554ec63          	bltu	s1,s5,80003a00 <freerange+0xd0>
    800039ac:	0534fa63          	bgeu	s1,s3,80003a00 <freerange+0xd0>
    800039b0:	00001637          	lui	a2,0x1
    800039b4:	00100593          	li	a1,1
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00000097          	auipc	ra,0x0
    800039c0:	50c080e7          	jalr	1292(ra) # 80003ec8 <__memset>
    800039c4:	00093703          	ld	a4,0(s2)
    800039c8:	016487b3          	add	a5,s1,s6
    800039cc:	00e4b023          	sd	a4,0(s1)
    800039d0:	00993023          	sd	s1,0(s2)
    800039d4:	fcfa76e3          	bgeu	s4,a5,800039a0 <freerange+0x70>
    800039d8:	03813083          	ld	ra,56(sp)
    800039dc:	03013403          	ld	s0,48(sp)
    800039e0:	02813483          	ld	s1,40(sp)
    800039e4:	02013903          	ld	s2,32(sp)
    800039e8:	01813983          	ld	s3,24(sp)
    800039ec:	01013a03          	ld	s4,16(sp)
    800039f0:	00813a83          	ld	s5,8(sp)
    800039f4:	00013b03          	ld	s6,0(sp)
    800039f8:	04010113          	addi	sp,sp,64
    800039fc:	00008067          	ret
    80003a00:	00002517          	auipc	a0,0x2
    80003a04:	86850513          	addi	a0,a0,-1944 # 80005268 <digits+0x18>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	3d4080e7          	jalr	980(ra) # 80002ddc <panic>

0000000080003a10 <kfree>:
    80003a10:	fe010113          	addi	sp,sp,-32
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00113c23          	sd	ra,24(sp)
    80003a1c:	00913423          	sd	s1,8(sp)
    80003a20:	02010413          	addi	s0,sp,32
    80003a24:	03451793          	slli	a5,a0,0x34
    80003a28:	04079c63          	bnez	a5,80003a80 <kfree+0x70>
    80003a2c:	00003797          	auipc	a5,0x3
    80003a30:	13478793          	addi	a5,a5,308 # 80006b60 <end>
    80003a34:	00050493          	mv	s1,a0
    80003a38:	04f56463          	bltu	a0,a5,80003a80 <kfree+0x70>
    80003a3c:	01100793          	li	a5,17
    80003a40:	01b79793          	slli	a5,a5,0x1b
    80003a44:	02f57e63          	bgeu	a0,a5,80003a80 <kfree+0x70>
    80003a48:	00001637          	lui	a2,0x1
    80003a4c:	00100593          	li	a1,1
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	478080e7          	jalr	1144(ra) # 80003ec8 <__memset>
    80003a58:	00002797          	auipc	a5,0x2
    80003a5c:	e7878793          	addi	a5,a5,-392 # 800058d0 <kmem>
    80003a60:	0007b703          	ld	a4,0(a5)
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00e4b023          	sd	a4,0(s1)
    80003a70:	0097b023          	sd	s1,0(a5)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret
    80003a80:	00001517          	auipc	a0,0x1
    80003a84:	7e850513          	addi	a0,a0,2024 # 80005268 <digits+0x18>
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	354080e7          	jalr	852(ra) # 80002ddc <panic>

0000000080003a90 <kalloc>:
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	00002797          	auipc	a5,0x2
    80003aa8:	e2c78793          	addi	a5,a5,-468 # 800058d0 <kmem>
    80003aac:	0007b483          	ld	s1,0(a5)
    80003ab0:	02048063          	beqz	s1,80003ad0 <kalloc+0x40>
    80003ab4:	0004b703          	ld	a4,0(s1)
    80003ab8:	00001637          	lui	a2,0x1
    80003abc:	00500593          	li	a1,5
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	00e7b023          	sd	a4,0(a5)
    80003ac8:	00000097          	auipc	ra,0x0
    80003acc:	400080e7          	jalr	1024(ra) # 80003ec8 <__memset>
    80003ad0:	01813083          	ld	ra,24(sp)
    80003ad4:	01013403          	ld	s0,16(sp)
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	00813483          	ld	s1,8(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret

0000000080003ae8 <initlock>:
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00813423          	sd	s0,8(sp)
    80003af0:	01010413          	addi	s0,sp,16
    80003af4:	00813403          	ld	s0,8(sp)
    80003af8:	00b53423          	sd	a1,8(a0)
    80003afc:	00052023          	sw	zero,0(a0)
    80003b00:	00053823          	sd	zero,16(a0)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <acquire>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	01213023          	sd	s2,0(sp)
    80003b20:	02010413          	addi	s0,sp,32
    80003b24:	00050493          	mv	s1,a0
    80003b28:	10002973          	csrr	s2,sstatus
    80003b2c:	100027f3          	csrr	a5,sstatus
    80003b30:	ffd7f793          	andi	a5,a5,-3
    80003b34:	10079073          	csrw	sstatus,a5
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	8e8080e7          	jalr	-1816(ra) # 80002420 <mycpu>
    80003b40:	07852783          	lw	a5,120(a0)
    80003b44:	06078e63          	beqz	a5,80003bc0 <acquire+0xb4>
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	8d8080e7          	jalr	-1832(ra) # 80002420 <mycpu>
    80003b50:	07852783          	lw	a5,120(a0)
    80003b54:	0004a703          	lw	a4,0(s1)
    80003b58:	0017879b          	addiw	a5,a5,1
    80003b5c:	06f52c23          	sw	a5,120(a0)
    80003b60:	04071063          	bnez	a4,80003ba0 <acquire+0x94>
    80003b64:	00100713          	li	a4,1
    80003b68:	00070793          	mv	a5,a4
    80003b6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003b70:	0007879b          	sext.w	a5,a5
    80003b74:	fe079ae3          	bnez	a5,80003b68 <acquire+0x5c>
    80003b78:	0ff0000f          	fence
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	8a4080e7          	jalr	-1884(ra) # 80002420 <mycpu>
    80003b84:	01813083          	ld	ra,24(sp)
    80003b88:	01013403          	ld	s0,16(sp)
    80003b8c:	00a4b823          	sd	a0,16(s1)
    80003b90:	00013903          	ld	s2,0(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	02010113          	addi	sp,sp,32
    80003b9c:	00008067          	ret
    80003ba0:	0104b903          	ld	s2,16(s1)
    80003ba4:	fffff097          	auipc	ra,0xfffff
    80003ba8:	87c080e7          	jalr	-1924(ra) # 80002420 <mycpu>
    80003bac:	faa91ce3          	bne	s2,a0,80003b64 <acquire+0x58>
    80003bb0:	00001517          	auipc	a0,0x1
    80003bb4:	6c050513          	addi	a0,a0,1728 # 80005270 <digits+0x20>
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	224080e7          	jalr	548(ra) # 80002ddc <panic>
    80003bc0:	00195913          	srli	s2,s2,0x1
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	85c080e7          	jalr	-1956(ra) # 80002420 <mycpu>
    80003bcc:	00197913          	andi	s2,s2,1
    80003bd0:	07252e23          	sw	s2,124(a0)
    80003bd4:	f75ff06f          	j	80003b48 <acquire+0x3c>

0000000080003bd8 <release>:
    80003bd8:	fe010113          	addi	sp,sp,-32
    80003bdc:	00813823          	sd	s0,16(sp)
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00913423          	sd	s1,8(sp)
    80003be8:	01213023          	sd	s2,0(sp)
    80003bec:	02010413          	addi	s0,sp,32
    80003bf0:	00052783          	lw	a5,0(a0)
    80003bf4:	00079a63          	bnez	a5,80003c08 <release+0x30>
    80003bf8:	00001517          	auipc	a0,0x1
    80003bfc:	68050513          	addi	a0,a0,1664 # 80005278 <digits+0x28>
    80003c00:	fffff097          	auipc	ra,0xfffff
    80003c04:	1dc080e7          	jalr	476(ra) # 80002ddc <panic>
    80003c08:	01053903          	ld	s2,16(a0)
    80003c0c:	00050493          	mv	s1,a0
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	810080e7          	jalr	-2032(ra) # 80002420 <mycpu>
    80003c18:	fea910e3          	bne	s2,a0,80003bf8 <release+0x20>
    80003c1c:	0004b823          	sd	zero,16(s1)
    80003c20:	0ff0000f          	fence
    80003c24:	0f50000f          	fence	iorw,ow
    80003c28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	7f4080e7          	jalr	2036(ra) # 80002420 <mycpu>
    80003c34:	100027f3          	csrr	a5,sstatus
    80003c38:	0027f793          	andi	a5,a5,2
    80003c3c:	04079a63          	bnez	a5,80003c90 <release+0xb8>
    80003c40:	07852783          	lw	a5,120(a0)
    80003c44:	02f05e63          	blez	a5,80003c80 <release+0xa8>
    80003c48:	fff7871b          	addiw	a4,a5,-1
    80003c4c:	06e52c23          	sw	a4,120(a0)
    80003c50:	00071c63          	bnez	a4,80003c68 <release+0x90>
    80003c54:	07c52783          	lw	a5,124(a0)
    80003c58:	00078863          	beqz	a5,80003c68 <release+0x90>
    80003c5c:	100027f3          	csrr	a5,sstatus
    80003c60:	0027e793          	ori	a5,a5,2
    80003c64:	10079073          	csrw	sstatus,a5
    80003c68:	01813083          	ld	ra,24(sp)
    80003c6c:	01013403          	ld	s0,16(sp)
    80003c70:	00813483          	ld	s1,8(sp)
    80003c74:	00013903          	ld	s2,0(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret
    80003c80:	00001517          	auipc	a0,0x1
    80003c84:	61850513          	addi	a0,a0,1560 # 80005298 <digits+0x48>
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	154080e7          	jalr	340(ra) # 80002ddc <panic>
    80003c90:	00001517          	auipc	a0,0x1
    80003c94:	5f050513          	addi	a0,a0,1520 # 80005280 <digits+0x30>
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	144080e7          	jalr	324(ra) # 80002ddc <panic>

0000000080003ca0 <holding>:
    80003ca0:	00052783          	lw	a5,0(a0)
    80003ca4:	00079663          	bnez	a5,80003cb0 <holding+0x10>
    80003ca8:	00000513          	li	a0,0
    80003cac:	00008067          	ret
    80003cb0:	fe010113          	addi	sp,sp,-32
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	00113c23          	sd	ra,24(sp)
    80003cc0:	02010413          	addi	s0,sp,32
    80003cc4:	01053483          	ld	s1,16(a0)
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	758080e7          	jalr	1880(ra) # 80002420 <mycpu>
    80003cd0:	01813083          	ld	ra,24(sp)
    80003cd4:	01013403          	ld	s0,16(sp)
    80003cd8:	40a48533          	sub	a0,s1,a0
    80003cdc:	00153513          	seqz	a0,a0
    80003ce0:	00813483          	ld	s1,8(sp)
    80003ce4:	02010113          	addi	sp,sp,32
    80003ce8:	00008067          	ret

0000000080003cec <push_off>:
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00113c23          	sd	ra,24(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	100024f3          	csrr	s1,sstatus
    80003d04:	100027f3          	csrr	a5,sstatus
    80003d08:	ffd7f793          	andi	a5,a5,-3
    80003d0c:	10079073          	csrw	sstatus,a5
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	710080e7          	jalr	1808(ra) # 80002420 <mycpu>
    80003d18:	07852783          	lw	a5,120(a0)
    80003d1c:	02078663          	beqz	a5,80003d48 <push_off+0x5c>
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	700080e7          	jalr	1792(ra) # 80002420 <mycpu>
    80003d28:	07852783          	lw	a5,120(a0)
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	0017879b          	addiw	a5,a5,1
    80003d38:	06f52c23          	sw	a5,120(a0)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	02010113          	addi	sp,sp,32
    80003d44:	00008067          	ret
    80003d48:	0014d493          	srli	s1,s1,0x1
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	6d4080e7          	jalr	1748(ra) # 80002420 <mycpu>
    80003d54:	0014f493          	andi	s1,s1,1
    80003d58:	06952e23          	sw	s1,124(a0)
    80003d5c:	fc5ff06f          	j	80003d20 <push_off+0x34>

0000000080003d60 <pop_off>:
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00813023          	sd	s0,0(sp)
    80003d68:	00113423          	sd	ra,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	6b0080e7          	jalr	1712(ra) # 80002420 <mycpu>
    80003d78:	100027f3          	csrr	a5,sstatus
    80003d7c:	0027f793          	andi	a5,a5,2
    80003d80:	04079663          	bnez	a5,80003dcc <pop_off+0x6c>
    80003d84:	07852783          	lw	a5,120(a0)
    80003d88:	02f05a63          	blez	a5,80003dbc <pop_off+0x5c>
    80003d8c:	fff7871b          	addiw	a4,a5,-1
    80003d90:	06e52c23          	sw	a4,120(a0)
    80003d94:	00071c63          	bnez	a4,80003dac <pop_off+0x4c>
    80003d98:	07c52783          	lw	a5,124(a0)
    80003d9c:	00078863          	beqz	a5,80003dac <pop_off+0x4c>
    80003da0:	100027f3          	csrr	a5,sstatus
    80003da4:	0027e793          	ori	a5,a5,2
    80003da8:	10079073          	csrw	sstatus,a5
    80003dac:	00813083          	ld	ra,8(sp)
    80003db0:	00013403          	ld	s0,0(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret
    80003dbc:	00001517          	auipc	a0,0x1
    80003dc0:	4dc50513          	addi	a0,a0,1244 # 80005298 <digits+0x48>
    80003dc4:	fffff097          	auipc	ra,0xfffff
    80003dc8:	018080e7          	jalr	24(ra) # 80002ddc <panic>
    80003dcc:	00001517          	auipc	a0,0x1
    80003dd0:	4b450513          	addi	a0,a0,1204 # 80005280 <digits+0x30>
    80003dd4:	fffff097          	auipc	ra,0xfffff
    80003dd8:	008080e7          	jalr	8(ra) # 80002ddc <panic>

0000000080003ddc <push_on>:
    80003ddc:	fe010113          	addi	sp,sp,-32
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00113c23          	sd	ra,24(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	02010413          	addi	s0,sp,32
    80003df0:	100024f3          	csrr	s1,sstatus
    80003df4:	100027f3          	csrr	a5,sstatus
    80003df8:	0027e793          	ori	a5,a5,2
    80003dfc:	10079073          	csrw	sstatus,a5
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	620080e7          	jalr	1568(ra) # 80002420 <mycpu>
    80003e08:	07852783          	lw	a5,120(a0)
    80003e0c:	02078663          	beqz	a5,80003e38 <push_on+0x5c>
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	610080e7          	jalr	1552(ra) # 80002420 <mycpu>
    80003e18:	07852783          	lw	a5,120(a0)
    80003e1c:	01813083          	ld	ra,24(sp)
    80003e20:	01013403          	ld	s0,16(sp)
    80003e24:	0017879b          	addiw	a5,a5,1
    80003e28:	06f52c23          	sw	a5,120(a0)
    80003e2c:	00813483          	ld	s1,8(sp)
    80003e30:	02010113          	addi	sp,sp,32
    80003e34:	00008067          	ret
    80003e38:	0014d493          	srli	s1,s1,0x1
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	5e4080e7          	jalr	1508(ra) # 80002420 <mycpu>
    80003e44:	0014f493          	andi	s1,s1,1
    80003e48:	06952e23          	sw	s1,124(a0)
    80003e4c:	fc5ff06f          	j	80003e10 <push_on+0x34>

0000000080003e50 <pop_on>:
    80003e50:	ff010113          	addi	sp,sp,-16
    80003e54:	00813023          	sd	s0,0(sp)
    80003e58:	00113423          	sd	ra,8(sp)
    80003e5c:	01010413          	addi	s0,sp,16
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	5c0080e7          	jalr	1472(ra) # 80002420 <mycpu>
    80003e68:	100027f3          	csrr	a5,sstatus
    80003e6c:	0027f793          	andi	a5,a5,2
    80003e70:	04078463          	beqz	a5,80003eb8 <pop_on+0x68>
    80003e74:	07852783          	lw	a5,120(a0)
    80003e78:	02f05863          	blez	a5,80003ea8 <pop_on+0x58>
    80003e7c:	fff7879b          	addiw	a5,a5,-1
    80003e80:	06f52c23          	sw	a5,120(a0)
    80003e84:	07853783          	ld	a5,120(a0)
    80003e88:	00079863          	bnez	a5,80003e98 <pop_on+0x48>
    80003e8c:	100027f3          	csrr	a5,sstatus
    80003e90:	ffd7f793          	andi	a5,a5,-3
    80003e94:	10079073          	csrw	sstatus,a5
    80003e98:	00813083          	ld	ra,8(sp)
    80003e9c:	00013403          	ld	s0,0(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret
    80003ea8:	00001517          	auipc	a0,0x1
    80003eac:	41850513          	addi	a0,a0,1048 # 800052c0 <digits+0x70>
    80003eb0:	fffff097          	auipc	ra,0xfffff
    80003eb4:	f2c080e7          	jalr	-212(ra) # 80002ddc <panic>
    80003eb8:	00001517          	auipc	a0,0x1
    80003ebc:	3e850513          	addi	a0,a0,1000 # 800052a0 <digits+0x50>
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	f1c080e7          	jalr	-228(ra) # 80002ddc <panic>

0000000080003ec8 <__memset>:
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00813423          	sd	s0,8(sp)
    80003ed0:	01010413          	addi	s0,sp,16
    80003ed4:	1a060e63          	beqz	a2,80004090 <__memset+0x1c8>
    80003ed8:	40a007b3          	neg	a5,a0
    80003edc:	0077f793          	andi	a5,a5,7
    80003ee0:	00778693          	addi	a3,a5,7
    80003ee4:	00b00813          	li	a6,11
    80003ee8:	0ff5f593          	andi	a1,a1,255
    80003eec:	fff6071b          	addiw	a4,a2,-1
    80003ef0:	1b06e663          	bltu	a3,a6,8000409c <__memset+0x1d4>
    80003ef4:	1cd76463          	bltu	a4,a3,800040bc <__memset+0x1f4>
    80003ef8:	1a078e63          	beqz	a5,800040b4 <__memset+0x1ec>
    80003efc:	00b50023          	sb	a1,0(a0)
    80003f00:	00100713          	li	a4,1
    80003f04:	1ae78463          	beq	a5,a4,800040ac <__memset+0x1e4>
    80003f08:	00b500a3          	sb	a1,1(a0)
    80003f0c:	00200713          	li	a4,2
    80003f10:	1ae78a63          	beq	a5,a4,800040c4 <__memset+0x1fc>
    80003f14:	00b50123          	sb	a1,2(a0)
    80003f18:	00300713          	li	a4,3
    80003f1c:	18e78463          	beq	a5,a4,800040a4 <__memset+0x1dc>
    80003f20:	00b501a3          	sb	a1,3(a0)
    80003f24:	00400713          	li	a4,4
    80003f28:	1ae78263          	beq	a5,a4,800040cc <__memset+0x204>
    80003f2c:	00b50223          	sb	a1,4(a0)
    80003f30:	00500713          	li	a4,5
    80003f34:	1ae78063          	beq	a5,a4,800040d4 <__memset+0x20c>
    80003f38:	00b502a3          	sb	a1,5(a0)
    80003f3c:	00700713          	li	a4,7
    80003f40:	18e79e63          	bne	a5,a4,800040dc <__memset+0x214>
    80003f44:	00b50323          	sb	a1,6(a0)
    80003f48:	00700e93          	li	t4,7
    80003f4c:	00859713          	slli	a4,a1,0x8
    80003f50:	00e5e733          	or	a4,a1,a4
    80003f54:	01059e13          	slli	t3,a1,0x10
    80003f58:	01c76e33          	or	t3,a4,t3
    80003f5c:	01859313          	slli	t1,a1,0x18
    80003f60:	006e6333          	or	t1,t3,t1
    80003f64:	02059893          	slli	a7,a1,0x20
    80003f68:	40f60e3b          	subw	t3,a2,a5
    80003f6c:	011368b3          	or	a7,t1,a7
    80003f70:	02859813          	slli	a6,a1,0x28
    80003f74:	0108e833          	or	a6,a7,a6
    80003f78:	03059693          	slli	a3,a1,0x30
    80003f7c:	003e589b          	srliw	a7,t3,0x3
    80003f80:	00d866b3          	or	a3,a6,a3
    80003f84:	03859713          	slli	a4,a1,0x38
    80003f88:	00389813          	slli	a6,a7,0x3
    80003f8c:	00f507b3          	add	a5,a0,a5
    80003f90:	00e6e733          	or	a4,a3,a4
    80003f94:	000e089b          	sext.w	a7,t3
    80003f98:	00f806b3          	add	a3,a6,a5
    80003f9c:	00e7b023          	sd	a4,0(a5)
    80003fa0:	00878793          	addi	a5,a5,8
    80003fa4:	fed79ce3          	bne	a5,a3,80003f9c <__memset+0xd4>
    80003fa8:	ff8e7793          	andi	a5,t3,-8
    80003fac:	0007871b          	sext.w	a4,a5
    80003fb0:	01d787bb          	addw	a5,a5,t4
    80003fb4:	0ce88e63          	beq	a7,a4,80004090 <__memset+0x1c8>
    80003fb8:	00f50733          	add	a4,a0,a5
    80003fbc:	00b70023          	sb	a1,0(a4)
    80003fc0:	0017871b          	addiw	a4,a5,1
    80003fc4:	0cc77663          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80003fc8:	00e50733          	add	a4,a0,a4
    80003fcc:	00b70023          	sb	a1,0(a4)
    80003fd0:	0027871b          	addiw	a4,a5,2
    80003fd4:	0ac77e63          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80003fd8:	00e50733          	add	a4,a0,a4
    80003fdc:	00b70023          	sb	a1,0(a4)
    80003fe0:	0037871b          	addiw	a4,a5,3
    80003fe4:	0ac77663          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80003fe8:	00e50733          	add	a4,a0,a4
    80003fec:	00b70023          	sb	a1,0(a4)
    80003ff0:	0047871b          	addiw	a4,a5,4
    80003ff4:	08c77e63          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80003ff8:	00e50733          	add	a4,a0,a4
    80003ffc:	00b70023          	sb	a1,0(a4)
    80004000:	0057871b          	addiw	a4,a5,5
    80004004:	08c77663          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004008:	00e50733          	add	a4,a0,a4
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0067871b          	addiw	a4,a5,6
    80004014:	06c77e63          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	0077871b          	addiw	a4,a5,7
    80004024:	06c77663          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	0087871b          	addiw	a4,a5,8
    80004034:	04c77e63          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	0097871b          	addiw	a4,a5,9
    80004044:	04c77663          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	00a7871b          	addiw	a4,a5,10
    80004054:	02c77e63          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	00b7871b          	addiw	a4,a5,11
    80004064:	02c77663          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	00c7871b          	addiw	a4,a5,12
    80004074:	00c77e63          	bgeu	a4,a2,80004090 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	00d7879b          	addiw	a5,a5,13
    80004084:	00c7f663          	bgeu	a5,a2,80004090 <__memset+0x1c8>
    80004088:	00f507b3          	add	a5,a0,a5
    8000408c:	00b78023          	sb	a1,0(a5)
    80004090:	00813403          	ld	s0,8(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret
    8000409c:	00b00693          	li	a3,11
    800040a0:	e55ff06f          	j	80003ef4 <__memset+0x2c>
    800040a4:	00300e93          	li	t4,3
    800040a8:	ea5ff06f          	j	80003f4c <__memset+0x84>
    800040ac:	00100e93          	li	t4,1
    800040b0:	e9dff06f          	j	80003f4c <__memset+0x84>
    800040b4:	00000e93          	li	t4,0
    800040b8:	e95ff06f          	j	80003f4c <__memset+0x84>
    800040bc:	00000793          	li	a5,0
    800040c0:	ef9ff06f          	j	80003fb8 <__memset+0xf0>
    800040c4:	00200e93          	li	t4,2
    800040c8:	e85ff06f          	j	80003f4c <__memset+0x84>
    800040cc:	00400e93          	li	t4,4
    800040d0:	e7dff06f          	j	80003f4c <__memset+0x84>
    800040d4:	00500e93          	li	t4,5
    800040d8:	e75ff06f          	j	80003f4c <__memset+0x84>
    800040dc:	00600e93          	li	t4,6
    800040e0:	e6dff06f          	j	80003f4c <__memset+0x84>

00000000800040e4 <__memmove>:
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00813423          	sd	s0,8(sp)
    800040ec:	01010413          	addi	s0,sp,16
    800040f0:	0e060863          	beqz	a2,800041e0 <__memmove+0xfc>
    800040f4:	fff6069b          	addiw	a3,a2,-1
    800040f8:	0006881b          	sext.w	a6,a3
    800040fc:	0ea5e863          	bltu	a1,a0,800041ec <__memmove+0x108>
    80004100:	00758713          	addi	a4,a1,7
    80004104:	00a5e7b3          	or	a5,a1,a0
    80004108:	40a70733          	sub	a4,a4,a0
    8000410c:	0077f793          	andi	a5,a5,7
    80004110:	00f73713          	sltiu	a4,a4,15
    80004114:	00174713          	xori	a4,a4,1
    80004118:	0017b793          	seqz	a5,a5
    8000411c:	00e7f7b3          	and	a5,a5,a4
    80004120:	10078863          	beqz	a5,80004230 <__memmove+0x14c>
    80004124:	00900793          	li	a5,9
    80004128:	1107f463          	bgeu	a5,a6,80004230 <__memmove+0x14c>
    8000412c:	0036581b          	srliw	a6,a2,0x3
    80004130:	fff8081b          	addiw	a6,a6,-1
    80004134:	02081813          	slli	a6,a6,0x20
    80004138:	01d85893          	srli	a7,a6,0x1d
    8000413c:	00858813          	addi	a6,a1,8
    80004140:	00058793          	mv	a5,a1
    80004144:	00050713          	mv	a4,a0
    80004148:	01088833          	add	a6,a7,a6
    8000414c:	0007b883          	ld	a7,0(a5)
    80004150:	00878793          	addi	a5,a5,8
    80004154:	00870713          	addi	a4,a4,8
    80004158:	ff173c23          	sd	a7,-8(a4)
    8000415c:	ff0798e3          	bne	a5,a6,8000414c <__memmove+0x68>
    80004160:	ff867713          	andi	a4,a2,-8
    80004164:	02071793          	slli	a5,a4,0x20
    80004168:	0207d793          	srli	a5,a5,0x20
    8000416c:	00f585b3          	add	a1,a1,a5
    80004170:	40e686bb          	subw	a3,a3,a4
    80004174:	00f507b3          	add	a5,a0,a5
    80004178:	06e60463          	beq	a2,a4,800041e0 <__memmove+0xfc>
    8000417c:	0005c703          	lbu	a4,0(a1)
    80004180:	00e78023          	sb	a4,0(a5)
    80004184:	04068e63          	beqz	a3,800041e0 <__memmove+0xfc>
    80004188:	0015c603          	lbu	a2,1(a1)
    8000418c:	00100713          	li	a4,1
    80004190:	00c780a3          	sb	a2,1(a5)
    80004194:	04e68663          	beq	a3,a4,800041e0 <__memmove+0xfc>
    80004198:	0025c603          	lbu	a2,2(a1)
    8000419c:	00200713          	li	a4,2
    800041a0:	00c78123          	sb	a2,2(a5)
    800041a4:	02e68e63          	beq	a3,a4,800041e0 <__memmove+0xfc>
    800041a8:	0035c603          	lbu	a2,3(a1)
    800041ac:	00300713          	li	a4,3
    800041b0:	00c781a3          	sb	a2,3(a5)
    800041b4:	02e68663          	beq	a3,a4,800041e0 <__memmove+0xfc>
    800041b8:	0045c603          	lbu	a2,4(a1)
    800041bc:	00400713          	li	a4,4
    800041c0:	00c78223          	sb	a2,4(a5)
    800041c4:	00e68e63          	beq	a3,a4,800041e0 <__memmove+0xfc>
    800041c8:	0055c603          	lbu	a2,5(a1)
    800041cc:	00500713          	li	a4,5
    800041d0:	00c782a3          	sb	a2,5(a5)
    800041d4:	00e68663          	beq	a3,a4,800041e0 <__memmove+0xfc>
    800041d8:	0065c703          	lbu	a4,6(a1)
    800041dc:	00e78323          	sb	a4,6(a5)
    800041e0:	00813403          	ld	s0,8(sp)
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00008067          	ret
    800041ec:	02061713          	slli	a4,a2,0x20
    800041f0:	02075713          	srli	a4,a4,0x20
    800041f4:	00e587b3          	add	a5,a1,a4
    800041f8:	f0f574e3          	bgeu	a0,a5,80004100 <__memmove+0x1c>
    800041fc:	02069613          	slli	a2,a3,0x20
    80004200:	02065613          	srli	a2,a2,0x20
    80004204:	fff64613          	not	a2,a2
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00c78633          	add	a2,a5,a2
    80004210:	fff7c683          	lbu	a3,-1(a5)
    80004214:	fff78793          	addi	a5,a5,-1
    80004218:	fff70713          	addi	a4,a4,-1
    8000421c:	00d70023          	sb	a3,0(a4)
    80004220:	fec798e3          	bne	a5,a2,80004210 <__memmove+0x12c>
    80004224:	00813403          	ld	s0,8(sp)
    80004228:	01010113          	addi	sp,sp,16
    8000422c:	00008067          	ret
    80004230:	02069713          	slli	a4,a3,0x20
    80004234:	02075713          	srli	a4,a4,0x20
    80004238:	00170713          	addi	a4,a4,1
    8000423c:	00e50733          	add	a4,a0,a4
    80004240:	00050793          	mv	a5,a0
    80004244:	0005c683          	lbu	a3,0(a1)
    80004248:	00178793          	addi	a5,a5,1
    8000424c:	00158593          	addi	a1,a1,1
    80004250:	fed78fa3          	sb	a3,-1(a5)
    80004254:	fee798e3          	bne	a5,a4,80004244 <__memmove+0x160>
    80004258:	f89ff06f          	j	800041e0 <__memmove+0xfc>

000000008000425c <__putc>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	02010413          	addi	s0,sp,32
    8000426c:	00050793          	mv	a5,a0
    80004270:	fef40593          	addi	a1,s0,-17
    80004274:	00100613          	li	a2,1
    80004278:	00000513          	li	a0,0
    8000427c:	fef407a3          	sb	a5,-17(s0)
    80004280:	fffff097          	auipc	ra,0xfffff
    80004284:	b3c080e7          	jalr	-1220(ra) # 80002dbc <console_write>
    80004288:	01813083          	ld	ra,24(sp)
    8000428c:	01013403          	ld	s0,16(sp)
    80004290:	02010113          	addi	sp,sp,32
    80004294:	00008067          	ret

0000000080004298 <__getc>:
    80004298:	fe010113          	addi	sp,sp,-32
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00113c23          	sd	ra,24(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	fe840593          	addi	a1,s0,-24
    800042ac:	00100613          	li	a2,1
    800042b0:	00000513          	li	a0,0
    800042b4:	fffff097          	auipc	ra,0xfffff
    800042b8:	ae8080e7          	jalr	-1304(ra) # 80002d9c <console_read>
    800042bc:	fe844503          	lbu	a0,-24(s0)
    800042c0:	01813083          	ld	ra,24(sp)
    800042c4:	01013403          	ld	s0,16(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret

00000000800042d0 <console_handler>:
    800042d0:	fe010113          	addi	sp,sp,-32
    800042d4:	00813823          	sd	s0,16(sp)
    800042d8:	00113c23          	sd	ra,24(sp)
    800042dc:	00913423          	sd	s1,8(sp)
    800042e0:	02010413          	addi	s0,sp,32
    800042e4:	14202773          	csrr	a4,scause
    800042e8:	100027f3          	csrr	a5,sstatus
    800042ec:	0027f793          	andi	a5,a5,2
    800042f0:	06079e63          	bnez	a5,8000436c <console_handler+0x9c>
    800042f4:	00074c63          	bltz	a4,8000430c <console_handler+0x3c>
    800042f8:	01813083          	ld	ra,24(sp)
    800042fc:	01013403          	ld	s0,16(sp)
    80004300:	00813483          	ld	s1,8(sp)
    80004304:	02010113          	addi	sp,sp,32
    80004308:	00008067          	ret
    8000430c:	0ff77713          	andi	a4,a4,255
    80004310:	00900793          	li	a5,9
    80004314:	fef712e3          	bne	a4,a5,800042f8 <console_handler+0x28>
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	6dc080e7          	jalr	1756(ra) # 800029f4 <plic_claim>
    80004320:	00a00793          	li	a5,10
    80004324:	00050493          	mv	s1,a0
    80004328:	02f50c63          	beq	a0,a5,80004360 <console_handler+0x90>
    8000432c:	fc0506e3          	beqz	a0,800042f8 <console_handler+0x28>
    80004330:	00050593          	mv	a1,a0
    80004334:	00001517          	auipc	a0,0x1
    80004338:	e9450513          	addi	a0,a0,-364 # 800051c8 <_ZZ12printIntegermE6digits+0xe0>
    8000433c:	fffff097          	auipc	ra,0xfffff
    80004340:	afc080e7          	jalr	-1284(ra) # 80002e38 <__printf>
    80004344:	01013403          	ld	s0,16(sp)
    80004348:	01813083          	ld	ra,24(sp)
    8000434c:	00048513          	mv	a0,s1
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	ffffe317          	auipc	t1,0xffffe
    8000435c:	6d430067          	jr	1748(t1) # 80002a2c <plic_complete>
    80004360:	fffff097          	auipc	ra,0xfffff
    80004364:	3e0080e7          	jalr	992(ra) # 80003740 <uartintr>
    80004368:	fddff06f          	j	80004344 <console_handler+0x74>
    8000436c:	00001517          	auipc	a0,0x1
    80004370:	f5c50513          	addi	a0,a0,-164 # 800052c8 <digits+0x78>
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	a68080e7          	jalr	-1432(ra) # 80002ddc <panic>
	...
