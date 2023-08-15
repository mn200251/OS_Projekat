
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	87013103          	ld	sp,-1936(sp) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1c8020ef          	jal	ra,800021e4 <start>

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
    80001088:	798000ef          	jal	ra,80001820 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	02113423          	sd	ra,40(sp)
    80001148:	02813023          	sd	s0,32(sp)
    8000114c:	03010413          	addi	s0,sp,48
    size_t blockNum = MemoryAllocator::convert2Blocks(size);
    80001150:	00001097          	auipc	ra,0x1
    80001154:	cfc080e7          	jalr	-772(ra) # 80001e4c <_ZN15MemoryAllocator14convert2BlocksEm>
    80001158:	fea43423          	sd	a0,-24(s0)

    size_t code = 0x0000000000000001UL;
    8000115c:	00100793          	li	a5,1
    80001160:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile("ld a0, %0" : : "m" (code));
    80001164:	fe043503          	ld	a0,-32(s0)

    __asm__ volatile("ld a1, %0" : : "m" (blockNum));
    80001168:	fe843583          	ld	a1,-24(s0)

    __asm__ volatile("ecall");
    8000116c:	00000073          	ecall

    void* ptr;

    asm volatile("sd a0, %0" : "=m" (ptr));
    80001170:	fca43c23          	sd	a0,-40(s0)
//    printString("mem_alloc: ");
//    printInteger(size_t(ptr));
//    printString("\n");

    return ptr;
}
    80001174:	fd843503          	ld	a0,-40(s0)
    80001178:	02813083          	ld	ra,40(sp)
    8000117c:	02013403          	ld	s0,32(sp)
    80001180:	03010113          	addi	sp,sp,48
    80001184:	00008067          	ret

0000000080001188 <_Z8mem_freePv>:

int mem_free (void* ptr)
{
    80001188:	fd010113          	addi	sp,sp,-48
    8000118c:	02813423          	sd	s0,40(sp)
    80001190:	03010413          	addi	s0,sp,48
    80001194:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000002UL;
    80001198:	00200793          	li	a5,2
    8000119c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800011a0:	fe843503          	ld	a0,-24(s0)

    asm volatile("ld a1, %0" : : "m" (ptr));
    800011a4:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    800011a8:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800011ac:	fea43223          	sd	a0,-28(s0)
//    printString("mem_free: ");
//    printInteger(val);
//    printString("\n");

    return val;
}
    800011b0:	fe442503          	lw	a0,-28(s0)
    800011b4:	02813403          	ld	s0,40(sp)
    800011b8:	03010113          	addi	sp,sp,48
    800011bc:	00008067          	ret

00000000800011c0 <_Z13thread_createPP7_threadPFvPvES2_>:


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
{
    800011c0:	fb010113          	addi	sp,sp,-80
    800011c4:	04113423          	sd	ra,72(sp)
    800011c8:	04813023          	sd	s0,64(sp)
    800011cc:	05010413          	addi	s0,sp,80
    800011d0:	fca43423          	sd	a0,-56(s0)
    800011d4:	fcb43023          	sd	a1,-64(s0)
    800011d8:	fac43c23          	sd	a2,-72(s0)
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800011dc:	00008537          	lui	a0,0x8
    800011e0:	00001097          	auipc	ra,0x1
    800011e4:	c6c080e7          	jalr	-916(ra) # 80001e4c <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011e8:	00001097          	auipc	ra,0x1
    800011ec:	a74080e7          	jalr	-1420(ra) # 80001c5c <_ZN15MemoryAllocator9mem_allocEm>
    800011f0:	fea43423          	sd	a0,-24(s0)
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);
//
//    blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread*));
//    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);

    size_t code = 0x0000000000000011UL;
    800011f4:	01100793          	li	a5,17
    800011f8:	fef43023          	sd	a5,-32(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800011fc:	fe043503          	ld	a0,-32(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    80001200:	fc843583          	ld	a1,-56(s0)
    asm volatile("ld a2, %0" : : "m" (start_routine));
    80001204:	fc043603          	ld	a2,-64(s0)
    asm volatile("ld a3, %0" : : "m" (arg));
    80001208:	fb843683          	ld	a3,-72(s0)
    asm volatile("ld a4, %0" : : "m" (stack_space));
    8000120c:	fe843703          	ld	a4,-24(s0)

    asm volatile("ecall");
    80001210:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001214:	fca43e23          	sd	a0,-36(s0)

    if (val < 0)
        return val;

    return val;
}
    80001218:	fdc42503          	lw	a0,-36(s0)
    8000121c:	04813083          	ld	ra,72(sp)
    80001220:	04013403          	ld	s0,64(sp)
    80001224:	05010113          	addi	sp,sp,80
    80001228:	00008067          	ret

000000008000122c <_Z11thread_exitv>:

int thread_exit ()
{
    8000122c:	fe010113          	addi	sp,sp,-32
    80001230:	00813c23          	sd	s0,24(sp)
    80001234:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000012UL;
    80001238:	01200793          	li	a5,18
    8000123c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001240:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001244:	00000073          	ecall


    // if this code is executed -> error exiting thread
    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001248:	fea43223          	sd	a0,-28(s0)

    return val;
}
    8000124c:	fe442503          	lw	a0,-28(s0)
    80001250:	01813403          	ld	s0,24(sp)
    80001254:	02010113          	addi	sp,sp,32
    80001258:	00008067          	ret

000000008000125c <_Z15thread_dispatchv>:

void thread_dispatch ()
{
    8000125c:	fe010113          	addi	sp,sp,-32
    80001260:	00813c23          	sd	s0,24(sp)
    80001264:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000013UL;
    80001268:	01300793          	li	a5,19
    8000126c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001270:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001274:	00000073          	ecall
}
    80001278:	01813403          	ld	s0,24(sp)
    8000127c:	02010113          	addi	sp,sp,32
    80001280:	00008067          	ret

0000000080001284 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00113c23          	sd	ra,24(sp)
    8000128c:	00813823          	sd	s0,16(sp)
    80001290:	00913423          	sd	s1,8(sp)
    80001294:	01213023          	sd	s2,0(sp)
    80001298:	02010413          	addi	s0,sp,32
    8000129c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012a0:	00100793          	li	a5,1
    800012a4:	02a7f863          	bgeu	a5,a0,800012d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800012a8:	00a00793          	li	a5,10
    800012ac:	02f577b3          	remu	a5,a0,a5
    800012b0:	02078e63          	beqz	a5,800012ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012b4:	fff48513          	addi	a0,s1,-1
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	fcc080e7          	jalr	-52(ra) # 80001284 <_ZL9fibonaccim>
    800012c0:	00050913          	mv	s2,a0
    800012c4:	ffe48513          	addi	a0,s1,-2
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	fbc080e7          	jalr	-68(ra) # 80001284 <_ZL9fibonaccim>
    800012d0:	00a90533          	add	a0,s2,a0
}
    800012d4:	01813083          	ld	ra,24(sp)
    800012d8:	01013403          	ld	s0,16(sp)
    800012dc:	00813483          	ld	s1,8(sp)
    800012e0:	00013903          	ld	s2,0(sp)
    800012e4:	02010113          	addi	sp,sp,32
    800012e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	f70080e7          	jalr	-144(ra) # 8000125c <_Z15thread_dispatchv>
    800012f4:	fc1ff06f          	j	800012b4 <_ZL9fibonaccim+0x30>

00000000800012f8 <_Z11workerBodyAPv>:
{
    800012f8:	fe010113          	addi	sp,sp,-32
    800012fc:	00113c23          	sd	ra,24(sp)
    80001300:	00813823          	sd	s0,16(sp)
    80001304:	00913423          	sd	s1,8(sp)
    80001308:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000130c:	00000493          	li	s1,0
    80001310:	0300006f          	j	80001340 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001314:	00168693          	addi	a3,a3,1
    80001318:	000027b7          	lui	a5,0x2
    8000131c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001320:	00d7ee63          	bltu	a5,a3,8000133c <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001324:	00000713          	li	a4,0
    80001328:	000077b7          	lui	a5,0x7
    8000132c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001330:	fee7e2e3          	bltu	a5,a4,80001314 <_Z11workerBodyAPv+0x1c>
    80001334:	00170713          	addi	a4,a4,1
    80001338:	ff1ff06f          	j	80001328 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    8000133c:	00148493          	addi	s1,s1,1
    80001340:	00900793          	li	a5,9
    80001344:	0297ec63          	bltu	a5,s1,8000137c <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    80001348:	00004517          	auipc	a0,0x4
    8000134c:	cd850513          	addi	a0,a0,-808 # 80005020 <CONSOLE_STATUS+0x10>
    80001350:	00001097          	auipc	ra,0x1
    80001354:	b30080e7          	jalr	-1232(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(i);
    80001358:	00048513          	mv	a0,s1
    8000135c:	00001097          	auipc	ra,0x1
    80001360:	b94080e7          	jalr	-1132(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    80001364:	00004517          	auipc	a0,0x4
    80001368:	cdc50513          	addi	a0,a0,-804 # 80005040 <CONSOLE_STATUS+0x30>
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	b14080e7          	jalr	-1260(ra) # 80001e80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001374:	00000693          	li	a3,0
    80001378:	fa1ff06f          	j	80001318 <_Z11workerBodyAPv+0x20>
}
    8000137c:	01813083          	ld	ra,24(sp)
    80001380:	01013403          	ld	s0,16(sp)
    80001384:	00813483          	ld	s1,8(sp)
    80001388:	02010113          	addi	sp,sp,32
    8000138c:	00008067          	ret

0000000080001390 <_Z11workerBodyBPv>:
{
    80001390:	fe010113          	addi	sp,sp,-32
    80001394:	00113c23          	sd	ra,24(sp)
    80001398:	00813823          	sd	s0,16(sp)
    8000139c:	00913423          	sd	s1,8(sp)
    800013a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800013a4:	00000493          	li	s1,0
    800013a8:	0300006f          	j	800013d8 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013ac:	00168693          	addi	a3,a3,1
    800013b0:	000027b7          	lui	a5,0x2
    800013b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013b8:	00d7ee63          	bltu	a5,a3,800013d4 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013bc:	00000713          	li	a4,0
    800013c0:	000077b7          	lui	a5,0x7
    800013c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013c8:	fee7e2e3          	bltu	a5,a4,800013ac <_Z11workerBodyBPv+0x1c>
    800013cc:	00170713          	addi	a4,a4,1
    800013d0:	ff1ff06f          	j	800013c0 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800013d4:	00148493          	addi	s1,s1,1
    800013d8:	00f00793          	li	a5,15
    800013dc:	0297ec63          	bltu	a5,s1,80001414 <_Z11workerBodyBPv+0x84>
        printString("B: i=");
    800013e0:	00004517          	auipc	a0,0x4
    800013e4:	c4850513          	addi	a0,a0,-952 # 80005028 <CONSOLE_STATUS+0x18>
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	a98080e7          	jalr	-1384(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(i);
    800013f0:	00048513          	mv	a0,s1
    800013f4:	00001097          	auipc	ra,0x1
    800013f8:	afc080e7          	jalr	-1284(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    800013fc:	00004517          	auipc	a0,0x4
    80001400:	c4450513          	addi	a0,a0,-956 # 80005040 <CONSOLE_STATUS+0x30>
    80001404:	00001097          	auipc	ra,0x1
    80001408:	a7c080e7          	jalr	-1412(ra) # 80001e80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000140c:	00000693          	li	a3,0
    80001410:	fa1ff06f          	j	800013b0 <_Z11workerBodyBPv+0x20>
}
    80001414:	01813083          	ld	ra,24(sp)
    80001418:	01013403          	ld	s0,16(sp)
    8000141c:	00813483          	ld	s1,8(sp)
    80001420:	02010113          	addi	sp,sp,32
    80001424:	00008067          	ret

0000000080001428 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001428:	fe010113          	addi	sp,sp,-32
    8000142c:	00113c23          	sd	ra,24(sp)
    80001430:	00813823          	sd	s0,16(sp)
    80001434:	00913423          	sd	s1,8(sp)
    80001438:	01213023          	sd	s2,0(sp)
    8000143c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001440:	00000493          	li	s1,0
    80001444:	0380006f          	j	8000147c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001448:	00004517          	auipc	a0,0x4
    8000144c:	be850513          	addi	a0,a0,-1048 # 80005030 <CONSOLE_STATUS+0x20>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	a30080e7          	jalr	-1488(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(i);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	a94080e7          	jalr	-1388(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	bdc50513          	addi	a0,a0,-1060 # 80005040 <CONSOLE_STATUS+0x30>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	a14080e7          	jalr	-1516(ra) # 80001e80 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001474:	0014849b          	addiw	s1,s1,1
    80001478:	0ff4f493          	andi	s1,s1,255
    8000147c:	00200793          	li	a5,2
    80001480:	fc97f4e3          	bgeu	a5,s1,80001448 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001484:	00004517          	auipc	a0,0x4
    80001488:	bb450513          	addi	a0,a0,-1100 # 80005038 <CONSOLE_STATUS+0x28>
    8000148c:	00001097          	auipc	ra,0x1
    80001490:	9f4080e7          	jalr	-1548(ra) # 80001e80 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001494:	00700313          	li	t1,7
    thread_dispatch();
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	dc4080e7          	jalr	-572(ra) # 8000125c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014a0:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014a4:	00004517          	auipc	a0,0x4
    800014a8:	ba450513          	addi	a0,a0,-1116 # 80005048 <CONSOLE_STATUS+0x38>
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	9d4080e7          	jalr	-1580(ra) # 80001e80 <_Z11printStringPKc>
    printInteger(t1);
    800014b4:	00090513          	mv	a0,s2
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	a38080e7          	jalr	-1480(ra) # 80001ef0 <_Z12printIntegerm>
    printString("\n");
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	b8050513          	addi	a0,a0,-1152 # 80005040 <CONSOLE_STATUS+0x30>
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	9b8080e7          	jalr	-1608(ra) # 80001e80 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014d0:	00c00513          	li	a0,12
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	db0080e7          	jalr	-592(ra) # 80001284 <_ZL9fibonaccim>
    800014dc:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014e0:	00004517          	auipc	a0,0x4
    800014e4:	b7050513          	addi	a0,a0,-1168 # 80005050 <CONSOLE_STATUS+0x40>
    800014e8:	00001097          	auipc	ra,0x1
    800014ec:	998080e7          	jalr	-1640(ra) # 80001e80 <_Z11printStringPKc>
    printInteger(result);
    800014f0:	00090513          	mv	a0,s2
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	9fc080e7          	jalr	-1540(ra) # 80001ef0 <_Z12printIntegerm>
    printString("\n");
    800014fc:	00004517          	auipc	a0,0x4
    80001500:	b4450513          	addi	a0,a0,-1212 # 80005040 <CONSOLE_STATUS+0x30>
    80001504:	00001097          	auipc	ra,0x1
    80001508:	97c080e7          	jalr	-1668(ra) # 80001e80 <_Z11printStringPKc>
    8000150c:	0380006f          	j	80001544 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	b2050513          	addi	a0,a0,-1248 # 80005030 <CONSOLE_STATUS+0x20>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	968080e7          	jalr	-1688(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(i);
    80001520:	00048513          	mv	a0,s1
    80001524:	00001097          	auipc	ra,0x1
    80001528:	9cc080e7          	jalr	-1588(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    8000152c:	00004517          	auipc	a0,0x4
    80001530:	b1450513          	addi	a0,a0,-1260 # 80005040 <CONSOLE_STATUS+0x30>
    80001534:	00001097          	auipc	ra,0x1
    80001538:	94c080e7          	jalr	-1716(ra) # 80001e80 <_Z11printStringPKc>
    for (; i < 6; i++)
    8000153c:	0014849b          	addiw	s1,s1,1
    80001540:	0ff4f493          	andi	s1,s1,255
    80001544:	00500793          	li	a5,5
    80001548:	fc97f4e3          	bgeu	a5,s1,80001510 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    8000154c:	01813083          	ld	ra,24(sp)
    80001550:	01013403          	ld	s0,16(sp)
    80001554:	00813483          	ld	s1,8(sp)
    80001558:	00013903          	ld	s2,0(sp)
    8000155c:	02010113          	addi	sp,sp,32
    80001560:	00008067          	ret

0000000080001564 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	01213023          	sd	s2,0(sp)
    80001578:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000157c:	00a00493          	li	s1,10
    80001580:	0380006f          	j	800015b8 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001584:	00004517          	auipc	a0,0x4
    80001588:	adc50513          	addi	a0,a0,-1316 # 80005060 <CONSOLE_STATUS+0x50>
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	8f4080e7          	jalr	-1804(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(i);
    80001594:	00048513          	mv	a0,s1
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	958080e7          	jalr	-1704(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	aa050513          	addi	a0,a0,-1376 # 80005040 <CONSOLE_STATUS+0x30>
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	8d8080e7          	jalr	-1832(ra) # 80001e80 <_Z11printStringPKc>
    for (; i < 13; i++)
    800015b0:	0014849b          	addiw	s1,s1,1
    800015b4:	0ff4f493          	andi	s1,s1,255
    800015b8:	00c00793          	li	a5,12
    800015bc:	fc97f4e3          	bgeu	a5,s1,80001584 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	aa850513          	addi	a0,a0,-1368 # 80005068 <CONSOLE_STATUS+0x58>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	8b8080e7          	jalr	-1864(ra) # 80001e80 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015d0:	00500313          	li	t1,5
    thread_dispatch();
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	c88080e7          	jalr	-888(ra) # 8000125c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800015dc:	01000513          	li	a0,16
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	ca4080e7          	jalr	-860(ra) # 80001284 <_ZL9fibonaccim>
    800015e8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800015ec:	00004517          	auipc	a0,0x4
    800015f0:	a8c50513          	addi	a0,a0,-1396 # 80005078 <CONSOLE_STATUS+0x68>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	88c080e7          	jalr	-1908(ra) # 80001e80 <_Z11printStringPKc>
    printInteger(result);
    800015fc:	00090513          	mv	a0,s2
    80001600:	00001097          	auipc	ra,0x1
    80001604:	8f0080e7          	jalr	-1808(ra) # 80001ef0 <_Z12printIntegerm>
    printString("\n");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	a3850513          	addi	a0,a0,-1480 # 80005040 <CONSOLE_STATUS+0x30>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	870080e7          	jalr	-1936(ra) # 80001e80 <_Z11printStringPKc>
    80001618:	0380006f          	j	80001650 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	a4450513          	addi	a0,a0,-1468 # 80005060 <CONSOLE_STATUS+0x50>
    80001624:	00001097          	auipc	ra,0x1
    80001628:	85c080e7          	jalr	-1956(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(i);
    8000162c:	00048513          	mv	a0,s1
    80001630:	00001097          	auipc	ra,0x1
    80001634:	8c0080e7          	jalr	-1856(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	a0850513          	addi	a0,a0,-1528 # 80005040 <CONSOLE_STATUS+0x30>
    80001640:	00001097          	auipc	ra,0x1
    80001644:	840080e7          	jalr	-1984(ra) # 80001e80 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001648:	0014849b          	addiw	s1,s1,1
    8000164c:	0ff4f493          	andi	s1,s1,255
    80001650:	00f00793          	li	a5,15
    80001654:	fc97f4e3          	bgeu	a5,s1,8000161c <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    80001658:	01813083          	ld	ra,24(sp)
    8000165c:	01013403          	ld	s0,16(sp)
    80001660:	00813483          	ld	s1,8(sp)
    80001664:	00013903          	ld	s2,0(sp)
    80001668:	02010113          	addi	sp,sp,32
    8000166c:	00008067          	ret

0000000080001670 <_Z8userMainv>:
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"
// #include "workers.cpp"

void userMain()
{
    80001670:	fe010113          	addi	sp,sp,-32
    80001674:	00113c23          	sd	ra,24(sp)
    80001678:	00813823          	sd	s0,16(sp)
    8000167c:	00913423          	sd	s1,8(sp)
    80001680:	01213023          	sd	s2,0(sp)
    80001684:	02010413          	addi	s0,sp,32
    __putc('1');
    80001688:	03100513          	li	a0,49
    8000168c:	00003097          	auipc	ra,0x3
    80001690:	c20080e7          	jalr	-992(ra) # 800042ac <__putc>
    __putc('\n');
    80001694:	00a00513          	li	a0,10
    80001698:	00003097          	auipc	ra,0x3
    8000169c:	c14080e7          	jalr	-1004(ra) # 800042ac <__putc>

    thread_t *handle2 = nullptr;
    thread_t *handle3 = nullptr;

    handle2 = (_thread**) mem_alloc(sizeof(_thread**));
    800016a0:	00800513          	li	a0,8
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	a9c080e7          	jalr	-1380(ra) # 80001140 <_Z9mem_allocm>
    800016ac:	00050913          	mv	s2,a0
    handle3 = (_thread**) mem_alloc(sizeof(_thread**));
    800016b0:	00800513          	li	a0,8
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	a8c080e7          	jalr	-1396(ra) # 80001140 <_Z9mem_allocm>
    800016bc:	00050493          	mv	s1,a0

    thread_create(handle2, workerBodyA, nullptr);
    800016c0:	00000613          	li	a2,0
    800016c4:	00004597          	auipc	a1,0x4
    800016c8:	1b45b583          	ld	a1,436(a1) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016cc:	00090513          	mv	a0,s2
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	af0080e7          	jalr	-1296(ra) # 800011c0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(handle3, workerBodyB, nullptr);
    800016d8:	00000613          	li	a2,0
    800016dc:	00004597          	auipc	a1,0x4
    800016e0:	1ac5b583          	ld	a1,428(a1) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	ad8080e7          	jalr	-1320(ra) # 800011c0 <_Z13thread_createPP7_threadPFvPvES2_>

    printString("Finished!\n");
    800016f0:	00004517          	auipc	a0,0x4
    800016f4:	99850513          	addi	a0,a0,-1640 # 80005088 <CONSOLE_STATUS+0x78>
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	788080e7          	jalr	1928(ra) # 80001e80 <_Z11printStringPKc>
}
    80001700:	01813083          	ld	ra,24(sp)
    80001704:	01013403          	ld	s0,16(sp)
    80001708:	00813483          	ld	s1,8(sp)
    8000170c:	00013903          	ld	s2,0(sp)
    80001710:	02010113          	addi	sp,sp,32
    80001714:	00008067          	ret

0000000080001718 <main>:

void main(void*)
{
    80001718:	fe010113          	addi	sp,sp,-32
    8000171c:	00113c23          	sd	ra,24(sp)
    80001720:	00813823          	sd	s0,16(sp)
    80001724:	00913423          	sd	s1,8(sp)
    80001728:	01213023          	sd	s2,0(sp)
    8000172c:	02010413          	addi	s0,sp,32
    MemoryAllocator::initialise();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	4bc080e7          	jalr	1212(ra) # 80001bec <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001738:	00004797          	auipc	a5,0x4
    8000173c:	1307b783          	ld	a5,304(a5) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001740:	10579073          	csrw	stvec,a5
    thread_t* handle = nullptr;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
    80001744:	00800513          	li	a0,8
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	704080e7          	jalr	1796(ra) # 80001e4c <_ZN15MemoryAllocator14convert2BlocksEm>
    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);
    80001750:	00000097          	auipc	ra,0x0
    80001754:	50c080e7          	jalr	1292(ra) # 80001c5c <_ZN15MemoryAllocator9mem_allocEm>
    80001758:	00050493          	mv	s1,a0

    int retVal = thread_create(handle, nullptr, nullptr);
    8000175c:	00000613          	li	a2,0
    80001760:	00000593          	li	a1,0
    80001764:	00000097          	auipc	ra,0x0
    80001768:	a5c080e7          	jalr	-1444(ra) # 800011c0 <_Z13thread_createPP7_threadPFvPvES2_>
    8000176c:	00050913          	mv	s2,a0

    printString("Main Thread handle: ");
    80001770:	00004517          	auipc	a0,0x4
    80001774:	92850513          	addi	a0,a0,-1752 # 80005098 <CONSOLE_STATUS+0x88>
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	708080e7          	jalr	1800(ra) # 80001e80 <_Z11printStringPKc>
    printInteger((size_t)handle);
    80001780:	00048513          	mv	a0,s1
    80001784:	00000097          	auipc	ra,0x0
    80001788:	76c080e7          	jalr	1900(ra) # 80001ef0 <_Z12printIntegerm>
    printString("\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	8b450513          	addi	a0,a0,-1868 # 80005040 <CONSOLE_STATUS+0x30>
    80001794:	00000097          	auipc	ra,0x0
    80001798:	6ec080e7          	jalr	1772(ra) # 80001e80 <_Z11printStringPKc>

    _thread::running = *handle;
    8000179c:	0004b703          	ld	a4,0(s1)
    800017a0:	00004797          	auipc	a5,0x4
    800017a4:	0c07b783          	ld	a5,192(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017a8:	00e7b023          	sd	a4,0(a5)

    printString("Main Thread return value: ");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	90450513          	addi	a0,a0,-1788 # 800050b0 <CONSOLE_STATUS+0xa0>
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	6cc080e7          	jalr	1740(ra) # 80001e80 <_Z11printStringPKc>
    printInteger(retVal);
    800017bc:	00090513          	mv	a0,s2
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	730080e7          	jalr	1840(ra) # 80001ef0 <_Z12printIntegerm>
    printString("\n");
    800017c8:	00004517          	auipc	a0,0x4
    800017cc:	87850513          	addi	a0,a0,-1928 # 80005040 <CONSOLE_STATUS+0x30>
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	6b0080e7          	jalr	1712(ra) # 80001e80 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800017d8:	00200793          	li	a5,2
    800017dc:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	e90080e7          	jalr	-368(ra) # 80001670 <_Z8userMainv>

    // thread_exit();
}
    800017e8:	01813083          	ld	ra,24(sp)
    800017ec:	01013403          	ld	s0,16(sp)
    800017f0:	00813483          	ld	s1,8(sp)
    800017f4:	00013903          	ld	s2,0(sp)
    800017f8:	02010113          	addi	sp,sp,32
    800017fc:	00008067          	ret

0000000080001800 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"

#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00813423          	sd	s0,8(sp)
    80001808:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000180c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001810:	10200073          	sret
}
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001820:	f7010113          	addi	sp,sp,-144
    80001824:	08113423          	sd	ra,136(sp)
    80001828:	08813023          	sd	s0,128(sp)
    8000182c:	06913c23          	sd	s1,120(sp)
    80001830:	07213823          	sd	s2,112(sp)
    80001834:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    80001838:	faa43023          	sd	a0,-96(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    8000183c:	fab43423          	sd	a1,-88(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    80001840:	fac43823          	sd	a2,-80(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80001844:	fad43c23          	sd	a3,-72(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80001848:	fce43023          	sd	a4,-64(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    8000184c:	fcf43423          	sd	a5,-56(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    80001850:	fd043823          	sd	a6,-48(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80001854:	fd143c23          	sd	a7,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001858:	141027f3          	csrr	a5,sepc
    8000185c:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001860:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    80001864:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001868:	100027f3          	csrr	a5,sstatus
    8000186c:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001870:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80001874:	f8f43823          	sd	a5,-112(s0)

    // retrieve stack pointer relative to saved registers
    void* SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80001878:	14002973          	csrr	s2,sscratch
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000187c:	142027f3          	csrr	a5,scause
    80001880:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001884:	f7843483          	ld	s1,-136(s0)

    uint64 scause = r_scause();

    printString("scause: ");
    80001888:	00004517          	auipc	a0,0x4
    8000188c:	84850513          	addi	a0,a0,-1976 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001890:	00000097          	auipc	ra,0x0
    80001894:	5f0080e7          	jalr	1520(ra) # 80001e80 <_Z11printStringPKc>
    printInteger(scause);
    80001898:	00048513          	mv	a0,s1
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	654080e7          	jalr	1620(ra) # 80001ef0 <_Z12printIntegerm>
    printString("\n");
    800018a4:	00003517          	auipc	a0,0x3
    800018a8:	79c50513          	addi	a0,a0,1948 # 80005040 <CONSOLE_STATUS+0x30>
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	5d4080e7          	jalr	1492(ra) # 80001e80 <_Z11printStringPKc>

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800018b4:	ff848713          	addi	a4,s1,-8
    800018b8:	00100793          	li	a5,1
    800018bc:	08e7f263          	bgeu	a5,a4,80001940 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    800018c0:	fff00793          	li	a5,-1
    800018c4:	03f79793          	slli	a5,a5,0x3f
    800018c8:	00178793          	addi	a5,a5,1
    800018cc:	14f48c63          	beq	s1,a5,80001a24 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            _thread::threadDispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    800018d0:	fff00793          	li	a5,-1
    800018d4:	03f79793          	slli	a5,a5,0x3f
    800018d8:	00978793          	addi	a5,a5,9
    800018dc:	18f48e63          	beq	s1,a5,80001a78 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
        console_handler();

    }
    else
    {
        printInteger(scause);
    800018e0:	00048513          	mv	a0,s1
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	60c080e7          	jalr	1548(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    800018ec:	00003517          	auipc	a0,0x3
    800018f0:	75450513          	addi	a0,a0,1876 # 80005040 <CONSOLE_STATUS+0x30>
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	58c080e7          	jalr	1420(ra) # 80001e80 <_Z11printStringPKc>
        printString("sepc = ");
    800018fc:	00003517          	auipc	a0,0x3
    80001900:	7fc50513          	addi	a0,a0,2044 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001904:	00000097          	auipc	ra,0x0
    80001908:	57c080e7          	jalr	1404(ra) # 80001e80 <_Z11printStringPKc>
        printInteger(sepc);
    8000190c:	f9843503          	ld	a0,-104(s0)
    80001910:	00000097          	auipc	ra,0x0
    80001914:	5e0080e7          	jalr	1504(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\nUnexpected trap cause!\n");
    80001918:	00003517          	auipc	a0,0x3
    8000191c:	7e850513          	addi	a0,a0,2024 # 80005100 <CONSOLE_STATUS+0xf0>
    80001920:	00000097          	auipc	ra,0x0
    80001924:	560080e7          	jalr	1376(ra) # 80001e80 <_Z11printStringPKc>
        // unexpected trap cause
    }
    80001928:	08813083          	ld	ra,136(sp)
    8000192c:	08013403          	ld	s0,128(sp)
    80001930:	07813483          	ld	s1,120(sp)
    80001934:	07013903          	ld	s2,112(sp)
    80001938:	09010113          	addi	sp,sp,144
    8000193c:	00008067          	ret
        w_sepc(sepc + 4);
    80001940:	f9843783          	ld	a5,-104(s0)
    80001944:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001948:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    8000194c:	fa043783          	ld	a5,-96(s0)
    80001950:	00100713          	li	a4,1
    80001954:	04e78863          	beq	a5,a4,800019a4 <_ZN5Riscv20handleSupervisorTrapEv+0x184>
        else if (a[0] == 0x0000000000000002UL)
    80001958:	00200713          	li	a4,2
    8000195c:	06e78463          	beq	a5,a4,800019c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
        else if (a[0] == 0x0000000000000011UL)
    80001960:	01100713          	li	a4,17
    80001964:	06e78c63          	beq	a5,a4,800019dc <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
        else if (a[0] == 0x0000000000000012UL)
    80001968:	01200713          	li	a4,18
    8000196c:	08e78a63          	beq	a5,a4,80001a00 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
        else if (a[0] == 0x0000000000000013UL)
    80001970:	01300713          	li	a4,19
    80001974:	fae79ae3          	bne	a5,a4,80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            _thread::running->timeSlice = 0;
    80001978:	00004797          	auipc	a5,0x4
    8000197c:	ee87b783          	ld	a5,-280(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001980:	0007b783          	ld	a5,0(a5)
    80001984:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	758080e7          	jalr	1880(ra) # 800020e0 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001990:	f9043783          	ld	a5,-112(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001994:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001998:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000199c:	14179073          	csrw	sepc,a5
}
    800019a0:	f89ff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    800019a4:	fa843503          	ld	a0,-88(s0)
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	4a4080e7          	jalr	1188(ra) # 80001e4c <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	2ac080e7          	jalr	684(ra) # 80001c5c <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800019b8:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    800019bc:	04a93823          	sd	a0,80(s2)
    800019c0:	f69ff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            int retVal = MemoryAllocator::mem_free(ptr);
    800019c4:	fa843503          	ld	a0,-88(s0)
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	3bc080e7          	jalr	956(ra) # 80001d84 <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800019d0:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    800019d4:	04a93823          	sd	a0,80(s2)
    800019d8:	f51ff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    800019dc:	fc043683          	ld	a3,-64(s0)
    800019e0:	fb843603          	ld	a2,-72(s0)
    800019e4:	fb043583          	ld	a1,-80(s0)
    800019e8:	fa843503          	ld	a0,-88(s0)
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	604080e7          	jalr	1540(ra) # 80001ff0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800019f4:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    800019f8:	04a93823          	sd	a0,80(s2)
    800019fc:	f2dff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            _thread::running->finished = true;
    80001a00:	00004797          	auipc	a5,0x4
    80001a04:	e607b783          	ld	a5,-416(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a08:	0007b783          	ld	a5,0(a5)
    80001a0c:	00100713          	li	a4,1
    80001a10:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	6cc080e7          	jalr	1740(ra) # 800020e0 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a1c:	00050793          	mv	a5,a0
    80001a20:	f09ff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001a24:	00200793          	li	a5,2
    80001a28:	1447b073          	csrc	sip,a5
        _thread::running->timeSlice++;
    80001a2c:	00004797          	auipc	a5,0x4
    80001a30:	e347b783          	ld	a5,-460(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a34:	0007b703          	ld	a4,0(a5)
    80001a38:	03073783          	ld	a5,48(a4)
    80001a3c:	00178793          	addi	a5,a5,1
    80001a40:	02f73823          	sd	a5,48(a4)
        if (DEFAULT_TIME_SLICE <= _thread::running->timeSlice)
    80001a44:	00100693          	li	a3,1
    80001a48:	eef6f0e3          	bgeu	a3,a5,80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            sepc = sepc + 4;
    80001a4c:	f9843783          	ld	a5,-104(s0)
    80001a50:	00478793          	addi	a5,a5,4
    80001a54:	f8f43c23          	sd	a5,-104(s0)
            _thread::running->timeSlice = 0;
    80001a58:	02073823          	sd	zero,48(a4)
            _thread::threadDispatch();
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	684080e7          	jalr	1668(ra) # 800020e0 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001a64:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a68:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001a6c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a70:	14179073          	csrw	sepc,a5
}
    80001a74:	eb5ff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        printString("Keyboard interrupt!\n");
    80001a78:	00003517          	auipc	a0,0x3
    80001a7c:	66850513          	addi	a0,a0,1640 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	400080e7          	jalr	1024(ra) # 80001e80 <_Z11printStringPKc>
        console_handler();
    80001a88:	00003097          	auipc	ra,0x3
    80001a8c:	898080e7          	jalr	-1896(ra) # 80004320 <console_handler>
    80001a90:	e99ff06f          	j	80001928 <_ZN5Riscv20handleSupervisorTrapEv+0x108>

0000000080001a94 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(&ccb);
    80001a94:	ff010113          	addi	sp,sp,-16
    80001a98:	00813423          	sd	s0,8(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    80001aa0:	00100793          	li	a5,1
    80001aa4:	00f50863          	beq	a0,a5,80001ab4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret
    80001ab4:	000107b7          	lui	a5,0x10
    80001ab8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001abc:	fef596e3          	bne	a1,a5,80001aa8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001ac0:	00004797          	auipc	a5,0x4
    80001ac4:	e2078793          	addi	a5,a5,-480 # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
    80001ac8:	0007b023          	sd	zero,0(a5)
    80001acc:	0007b423          	sd	zero,8(a5)
    80001ad0:	fd9ff06f          	j	80001aa8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ad4 <_ZN9Scheduler3getEv>:
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001ad4:	00004797          	auipc	a5,0x4
    80001ad8:	e0c7b783          	ld	a5,-500(a5) # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
    80001adc:	06078263          	beqz	a5,80001b40 <_ZN9Scheduler3getEv+0x6c>
        return head->data;
    80001ae0:	0007b503          	ld	a0,0(a5)
    if (readyThreadQueue.peekFirst() != 0)
    80001ae4:	06050263          	beqz	a0,80001b48 <_ZN9Scheduler3getEv+0x74>
{
    80001ae8:	fe010113          	addi	sp,sp,-32
    80001aec:	00113c23          	sd	ra,24(sp)
    80001af0:	00813823          	sd	s0,16(sp)
    80001af4:	00913423          	sd	s1,8(sp)
    80001af8:	02010413          	addi	s0,sp,32
        head = head->next;
    80001afc:	0087b703          	ld	a4,8(a5)
    80001b00:	00004697          	auipc	a3,0x4
    80001b04:	dee6b023          	sd	a4,-544(a3) # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001b08:	02070663          	beqz	a4,80001b34 <_ZN9Scheduler3getEv+0x60>
        T *ret = elem->data;
    80001b0c:	0007b483          	ld	s1,0(a5)
        MemoryAllocator::mem_free(elem);
    80001b10:	00078513          	mv	a0,a5
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	270080e7          	jalr	624(ra) # 80001d84 <_ZN15MemoryAllocator8mem_freeEPv>
        return *readyThreadQueue.removeFirst();
    80001b1c:	0004b503          	ld	a0,0(s1)
}
    80001b20:	01813083          	ld	ra,24(sp)
    80001b24:	01013403          	ld	s0,16(sp)
    80001b28:	00813483          	ld	s1,8(sp)
    80001b2c:	02010113          	addi	sp,sp,32
    80001b30:	00008067          	ret
        if (!head) { tail = 0; }
    80001b34:	00004717          	auipc	a4,0x4
    80001b38:	da073a23          	sd	zero,-588(a4) # 800058e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b3c:	fd1ff06f          	j	80001b0c <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    80001b40:	00078513          	mv	a0,a5
    80001b44:	00008067          	ret
}
    80001b48:	00008067          	ret

0000000080001b4c <_ZN9Scheduler3putEP7_thread>:
{
    80001b4c:	fe010113          	addi	sp,sp,-32
    80001b50:	00113c23          	sd	ra,24(sp)
    80001b54:	00813823          	sd	s0,16(sp)
    80001b58:	02010413          	addi	s0,sp,32
    80001b5c:	fea43423          	sd	a0,-24(s0)
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001b60:	01000513          	li	a0,16
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	2e8080e7          	jalr	744(ra) # 80001e4c <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	0f0080e7          	jalr	240(ra) # 80001c5c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001b74:	fe840793          	addi	a5,s0,-24
    80001b78:	00f53023          	sd	a5,0(a0)
        if (tail)
    80001b7c:	00004797          	auipc	a5,0x4
    80001b80:	d6c7b783          	ld	a5,-660(a5) # 800058e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b84:	02078063          	beqz	a5,80001ba4 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001b88:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b8c:	00004797          	auipc	a5,0x4
    80001b90:	d4a7be23          	sd	a0,-676(a5) # 800058e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b94:	01813083          	ld	ra,24(sp)
    80001b98:	01013403          	ld	s0,16(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
            head = tail = elem;
    80001ba4:	00004797          	auipc	a5,0x4
    80001ba8:	d3c78793          	addi	a5,a5,-708 # 800058e0 <_ZN9Scheduler16readyThreadQueueE>
    80001bac:	00a7b423          	sd	a0,8(a5)
    80001bb0:	00a7b023          	sd	a0,0(a5)
    80001bb4:	fe1ff06f          	j	80001b94 <_ZN9Scheduler3putEP7_thread+0x48>

0000000080001bb8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001bb8:	ff010113          	addi	sp,sp,-16
    80001bbc:	00113423          	sd	ra,8(sp)
    80001bc0:	00813023          	sd	s0,0(sp)
    80001bc4:	01010413          	addi	s0,sp,16
    80001bc8:	000105b7          	lui	a1,0x10
    80001bcc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001bd0:	00100513          	li	a0,1
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	ec0080e7          	jalr	-320(ra) # 80001a94 <_Z41__static_initialization_and_destruction_0ii>
    80001bdc:	00813083          	ld	ra,8(sp)
    80001be0:	00013403          	ld	s0,0(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret

0000000080001bec <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00813423          	sd	s0,8(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001bf8:	00004797          	auipc	a5,0x4
    80001bfc:	c607b783          	ld	a5,-928(a5) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c00:	0007b703          	ld	a4,0(a5)
    80001c04:	fc077713          	andi	a4,a4,-64
    80001c08:	04070613          	addi	a2,a4,64
    80001c0c:	00004797          	auipc	a5,0x4
    80001c10:	ce478793          	addi	a5,a5,-796 # 800058f0 <_ZN15MemoryAllocator8memStartE>
    80001c14:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001c18:	00004697          	auipc	a3,0x4
    80001c1c:	c686b683          	ld	a3,-920(a3) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c20:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001c24:	fc06f693          	andi	a3,a3,-64
    80001c28:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001c2c:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001c30:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001c34:	0107b683          	ld	a3,16(a5)
    80001c38:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001c3c:	0087b703          	ld	a4,8(a5)
    80001c40:	0007b783          	ld	a5,0(a5)
    80001c44:	40f707b3          	sub	a5,a4,a5
    80001c48:	0067d793          	srli	a5,a5,0x6
    80001c4c:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001c50:	00813403          	ld	s0,8(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret

0000000080001c5c <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001c5c:	ff010113          	addi	sp,sp,-16
    80001c60:	00813423          	sd	s0,8(sp)
    80001c64:	01010413          	addi	s0,sp,16
    if (size == 0)
    80001c68:	0a050463          	beqz	a0,80001d10 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80001c6c:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001c70:	00004697          	auipc	a3,0x4
    80001c74:	c906b683          	ld	a3,-880(a3) # 80005900 <_ZN15MemoryAllocator4headE>
    80001c78:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001c7c:	04050e63          	beqz	a0,80001cd8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001c80:	01053783          	ld	a5,16(a0)
    80001c84:	00e7fa63          	bgeu	a5,a4,80001c98 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80001c88:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001c8c:	fea698e3          	bne	a3,a0,80001c7c <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80001c90:	00000513          	li	a0,0
    80001c94:	0440006f          	j	80001cd8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    80001c98:	40e787b3          	sub	a5,a5,a4
    80001c9c:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80001ca0:	02079263          	bnez	a5,80001cc4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    80001ca4:	04d50063          	beq	a0,a3,80001ce4 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001ca8:	00053783          	ld	a5,0(a0)
    80001cac:	04078463          	beqz	a5,80001cf4 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80001cb0:	00853683          	ld	a3,8(a0)
    80001cb4:	04068063          	beqz	a3,80001cf4 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    80001cb8:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80001cbc:	00853683          	ld	a3,8(a0)
    80001cc0:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    80001cc4:	01053783          	ld	a5,16(a0)
    80001cc8:	00679793          	slli	a5,a5,0x6
    80001ccc:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    80001cd0:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001cd4:	00878513          	addi	a0,a5,8
}
    80001cd8:	00813403          	ld	s0,8(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001ce4:	0006b783          	ld	a5,0(a3)
    80001ce8:	00004697          	auipc	a3,0x4
    80001cec:	c0f6bc23          	sd	a5,-1000(a3) # 80005900 <_ZN15MemoryAllocator4headE>
    80001cf0:	fb9ff06f          	j	80001ca8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    80001cf4:	00853683          	ld	a3,8(a0)
    80001cf8:	00068663          	beqz	a3,80001d04 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80001cfc:	0006b023          	sd	zero,0(a3)
    80001d00:	fc5ff06f          	j	80001cc4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    80001d04:	fc0780e3          	beqz	a5,80001cc4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80001d08:	0007b423          	sd	zero,8(a5)
    80001d0c:	fb9ff06f          	j	80001cc4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80001d10:	00000513          	li	a0,0
    80001d14:	fc5ff06f          	j	80001cd8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080001d18 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00813423          	sd	s0,8(sp)
    80001d20:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001d24:	04050863          	beqz	a0,80001d74 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001d28:	00053783          	ld	a5,0(a0)
    80001d2c:	04078863          	beqz	a5,80001d7c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001d30:	01053683          	ld	a3,16(a0)
    80001d34:	00669713          	slli	a4,a3,0x6
    80001d38:	00e50733          	add	a4,a0,a4
    80001d3c:	00f70a63          	beq	a4,a5,80001d50 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001d40:	00000513          	li	a0,0
    }
}
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret
        curr->size += curr->next->size;
    80001d50:	0107b703          	ld	a4,16(a5)
    80001d54:	00e686b3          	add	a3,a3,a4
    80001d58:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001d5c:	0007b783          	ld	a5,0(a5)
    80001d60:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001d64:	00078463          	beqz	a5,80001d6c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001d68:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001d6c:	00100513          	li	a0,1
    80001d70:	fd5ff06f          	j	80001d44 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001d74:	00000513          	li	a0,0
    80001d78:	fcdff06f          	j	80001d44 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001d7c:	00000513          	li	a0,0
    80001d80:	fc5ff06f          	j	80001d44 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001d84 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    80001d84:	0c050063          	beqz	a0,80001e44 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    80001d88:	fe010113          	addi	sp,sp,-32
    80001d8c:	00113c23          	sd	ra,24(sp)
    80001d90:	00813823          	sd	s0,16(sp)
    80001d94:	00913423          	sd	s1,8(sp)
    80001d98:	02010413          	addi	s0,sp,32
    80001d9c:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80001da0:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80001da4:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001da8:	00004697          	auipc	a3,0x4
    80001dac:	b586b683          	ld	a3,-1192(a3) # 80005900 <_ZN15MemoryAllocator4headE>
    80001db0:	02068063          	beqz	a3,80001dd0 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    80001db4:	02d56263          	bltu	a0,a3,80001dd8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001db8:	00068793          	mv	a5,a3
    80001dbc:	00078493          	mv	s1,a5
    80001dc0:	0007b783          	ld	a5,0(a5)
    80001dc4:	00078c63          	beqz	a5,80001ddc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001dc8:	fea7eae3          	bltu	a5,a0,80001dbc <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    80001dcc:	0100006f          	j	80001ddc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    80001dd0:	00068493          	mv	s1,a3
    80001dd4:	0080006f          	j	80001ddc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001dd8:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001ddc:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80001de0:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80001de4:	04048663          	beqz	s1,80001e30 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80001de8:	0004b783          	ld	a5,0(s1)
    80001dec:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001df0:	ff873783          	ld	a5,-8(a4)
    80001df4:	00078463          	beqz	a5,80001dfc <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80001df8:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001dfc:	02048e63          	beqz	s1,80001e38 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80001e00:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	f14080e7          	jalr	-236(ra) # 80001d18 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001e0c:	00048513          	mv	a0,s1
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	f08080e7          	jalr	-248(ra) # 80001d18 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80001e18:	00000513          	li	a0,0
}
    80001e1c:	01813083          	ld	ra,24(sp)
    80001e20:	01013403          	ld	s0,16(sp)
    80001e24:	00813483          	ld	s1,8(sp)
    80001e28:	02010113          	addi	sp,sp,32
    80001e2c:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001e30:	fed73c23          	sd	a3,-8(a4)
    80001e34:	fbdff06f          	j	80001df0 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    80001e38:	00004797          	auipc	a5,0x4
    80001e3c:	aca7b423          	sd	a0,-1336(a5) # 80005900 <_ZN15MemoryAllocator4headE>
    80001e40:	fc5ff06f          	j	80001e04 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    80001e44:	fff00513          	li	a0,-1
}
    80001e48:	00008067          	ret

0000000080001e4c <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00813423          	sd	s0,8(sp)
    80001e54:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001e58:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001e5c:	03f57793          	andi	a5,a0,63
    80001e60:	00078c63          	beqz	a5,80001e78 <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001e64:	00655513          	srli	a0,a0,0x6
    80001e68:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80001e6c:	00813403          	ld	s0,8(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001e78:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80001e7c:	ff1ff06f          	j	80001e6c <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080001e80 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e80:	fd010113          	addi	sp,sp,-48
    80001e84:	02113423          	sd	ra,40(sp)
    80001e88:	02813023          	sd	s0,32(sp)
    80001e8c:	00913c23          	sd	s1,24(sp)
    80001e90:	01213823          	sd	s2,16(sp)
    80001e94:	03010413          	addi	s0,sp,48
    80001e98:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e9c:	100027f3          	csrr	a5,sstatus
    80001ea0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001ea4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ea8:	00200793          	li	a5,2
    80001eac:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001eb0:	0004c503          	lbu	a0,0(s1)
    80001eb4:	00050a63          	beqz	a0,80001ec8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001eb8:	00002097          	auipc	ra,0x2
    80001ebc:	3f4080e7          	jalr	1012(ra) # 800042ac <__putc>
        string++;
    80001ec0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001ec4:	fedff06f          	j	80001eb0 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ec8:	0009091b          	sext.w	s2,s2
    80001ecc:	00297913          	andi	s2,s2,2
    80001ed0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ed4:	10092073          	csrs	sstatus,s2
}
    80001ed8:	02813083          	ld	ra,40(sp)
    80001edc:	02013403          	ld	s0,32(sp)
    80001ee0:	01813483          	ld	s1,24(sp)
    80001ee4:	01013903          	ld	s2,16(sp)
    80001ee8:	03010113          	addi	sp,sp,48
    80001eec:	00008067          	ret

0000000080001ef0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ef0:	fc010113          	addi	sp,sp,-64
    80001ef4:	02113c23          	sd	ra,56(sp)
    80001ef8:	02813823          	sd	s0,48(sp)
    80001efc:	02913423          	sd	s1,40(sp)
    80001f00:	03213023          	sd	s2,32(sp)
    80001f04:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f08:	100027f3          	csrr	a5,sstatus
    80001f0c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f10:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f14:	00200793          	li	a5,2
    80001f18:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f1c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f20:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001f24:	00a00613          	li	a2,10
    80001f28:	02c5773b          	remuw	a4,a0,a2
    80001f2c:	02071693          	slli	a3,a4,0x20
    80001f30:	0206d693          	srli	a3,a3,0x20
    80001f34:	00003717          	auipc	a4,0x3
    80001f38:	1ec70713          	addi	a4,a4,492 # 80005120 <_ZZ12printIntegermE6digits>
    80001f3c:	00d70733          	add	a4,a4,a3
    80001f40:	00074703          	lbu	a4,0(a4)
    80001f44:	fe040693          	addi	a3,s0,-32
    80001f48:	009687b3          	add	a5,a3,s1
    80001f4c:	0014849b          	addiw	s1,s1,1
    80001f50:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001f54:	0005071b          	sext.w	a4,a0
    80001f58:	02c5553b          	divuw	a0,a0,a2
    80001f5c:	00900793          	li	a5,9
    80001f60:	fce7e2e3          	bltu	a5,a4,80001f24 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001f64:	fff4849b          	addiw	s1,s1,-1
    80001f68:	0004ce63          	bltz	s1,80001f84 <_Z12printIntegerm+0x94>
    80001f6c:	fe040793          	addi	a5,s0,-32
    80001f70:	009787b3          	add	a5,a5,s1
    80001f74:	ff07c503          	lbu	a0,-16(a5)
    80001f78:	00002097          	auipc	ra,0x2
    80001f7c:	334080e7          	jalr	820(ra) # 800042ac <__putc>
    80001f80:	fe5ff06f          	j	80001f64 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f84:	0009091b          	sext.w	s2,s2
    80001f88:	00297913          	andi	s2,s2,2
    80001f8c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f90:	10092073          	csrs	sstatus,s2
    80001f94:	03813083          	ld	ra,56(sp)
    80001f98:	03013403          	ld	s0,48(sp)
    80001f9c:	02813483          	ld	s1,40(sp)
    80001fa0:	02013903          	ld	s2,32(sp)
    80001fa4:	04010113          	addi	sp,sp,64
    80001fa8:	00008067          	ret

0000000080001fac <_ZN7_thread13threadWrapperEv>:

    return 0;
}

void _thread::threadWrapper()
{
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	844080e7          	jalr	-1980(ra) # 80001800 <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    80001fc4:	00004797          	auipc	a5,0x4
    80001fc8:	9447b783          	ld	a5,-1724(a5) # 80005908 <_ZN7_thread7runningE>
    80001fcc:	0007b703          	ld	a4,0(a5)
    80001fd0:	0287b503          	ld	a0,40(a5)
    80001fd4:	000700e7          	jalr	a4

    thread_exit();
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	254080e7          	jalr	596(ra) # 8000122c <_Z11thread_exitv>
}
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80001ff0:	fd010113          	addi	sp,sp,-48
    80001ff4:	02113423          	sd	ra,40(sp)
    80001ff8:	02813023          	sd	s0,32(sp)
    80001ffc:	00913c23          	sd	s1,24(sp)
    80002000:	01213823          	sd	s2,16(sp)
    80002004:	01313423          	sd	s3,8(sp)
    80002008:	01413023          	sd	s4,0(sp)
    8000200c:	03010413          	addi	s0,sp,48
    80002010:	00050493          	mv	s1,a0
    80002014:	00058913          	mv	s2,a1
    80002018:	00060993          	mv	s3,a2
    8000201c:	00068a13          	mv	s4,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80002020:	03800513          	li	a0,56
    80002024:	00000097          	auipc	ra,0x0
    80002028:	e28080e7          	jalr	-472(ra) # 80001e4c <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	c30080e7          	jalr	-976(ra) # 80001c5c <_ZN15MemoryAllocator9mem_allocEm>
    80002034:	00a4b023          	sd	a0,0(s1)
    (*handle)->finished = false;
    80002038:	00050423          	sb	zero,8(a0)
    (*handle)->timeSlice = DEFAULT_TIME_SLICE;
    8000203c:	0004b783          	ld	a5,0(s1)
    80002040:	00200713          	li	a4,2
    80002044:	02e7b823          	sd	a4,48(a5)
    (*handle)->body = start_routine;
    80002048:	0004b783          	ld	a5,0(s1)
    8000204c:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    80002050:	0004b783          	ld	a5,0(s1)
    80002054:	0337b423          	sd	s3,40(a5)
    if (start_routine != nullptr)
    80002058:	06090663          	beqz	s2,800020c4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd4>
        (*handle)->stack = (uint64*) stack_space;
    8000205c:	0004b783          	ld	a5,0(s1)
    80002060:	0147b823          	sd	s4,16(a5)
    if ((*handle)->stack != nullptr)
    80002064:	0004b703          	ld	a4,0(s1)
    80002068:	01073783          	ld	a5,16(a4)
    8000206c:	06078263          	beqz	a5,800020d0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xe0>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002070:	000086b7          	lui	a3,0x8
    80002074:	00d787b3          	add	a5,a5,a3
    80002078:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    8000207c:	0004b783          	ld	a5,0(s1)
    80002080:	00000717          	auipc	a4,0x0
    80002084:	f2c70713          	addi	a4,a4,-212 # 80001fac <_ZN7_thread13threadWrapperEv>
    80002088:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    8000208c:	0004b503          	ld	a0,0(s1)
    80002090:	00053783          	ld	a5,0(a0)
    80002094:	00078663          	beqz	a5,800020a0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xb0>
        Scheduler::put(*handle);
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	ab4080e7          	jalr	-1356(ra) # 80001b4c <_ZN9Scheduler3putEP7_thread>
}
    800020a0:	00000513          	li	a0,0
    800020a4:	02813083          	ld	ra,40(sp)
    800020a8:	02013403          	ld	s0,32(sp)
    800020ac:	01813483          	ld	s1,24(sp)
    800020b0:	01013903          	ld	s2,16(sp)
    800020b4:	00813983          	ld	s3,8(sp)
    800020b8:	00013a03          	ld	s4,0(sp)
    800020bc:	03010113          	addi	sp,sp,48
    800020c0:	00008067          	ret
        (*handle)->stack = nullptr;
    800020c4:	0004b783          	ld	a5,0(s1)
    800020c8:	0007b823          	sd	zero,16(a5)
    800020cc:	f99ff06f          	j	80002064 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x74>
        asm volatile("sd ra, %0" : "=m" ((*handle)->context.ra));
    800020d0:	00173c23          	sd	ra,24(a4)
        (*handle)->context.sp = 0;
    800020d4:	0004b783          	ld	a5,0(s1)
    800020d8:	0207b023          	sd	zero,32(a5)
    800020dc:	fb1ff06f          	j	8000208c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x9c>

00000000800020e0 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    800020e0:	fd010113          	addi	sp,sp,-48
    800020e4:	02113423          	sd	ra,40(sp)
    800020e8:	02813023          	sd	s0,32(sp)
    800020ec:	00913c23          	sd	s1,24(sp)
    800020f0:	03010413          	addi	s0,sp,48
    _thread *old = _thread::running;
    800020f4:	00004517          	auipc	a0,0x4
    800020f8:	81453503          	ld	a0,-2028(a0) # 80005908 <_ZN7_thread7runningE>
    800020fc:	fca43c23          	sd	a0,-40(s0)

    if (!old->finished)
    80002100:	00854783          	lbu	a5,8(a0)
    80002104:	08079c63          	bnez	a5,8000219c <_ZN7_thread14threadDispatchEv+0xbc>
    {
        Scheduler::put(old);
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	a44080e7          	jalr	-1468(ra) # 80001b4c <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    80002110:	00000097          	auipc	ra,0x0
    80002114:	9c4080e7          	jalr	-1596(ra) # 80001ad4 <_ZN9Scheduler3getEv>
    80002118:	00003497          	auipc	s1,0x3
    8000211c:	7f048493          	addi	s1,s1,2032 # 80005908 <_ZN7_thread7runningE>
    80002120:	00a4b023          	sd	a0,0(s1)

        printString("old: ");
    80002124:	00003517          	auipc	a0,0x3
    80002128:	00c50513          	addi	a0,a0,12 # 80005130 <_ZZ12printIntegermE6digits+0x10>
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	d54080e7          	jalr	-684(ra) # 80001e80 <_Z11printStringPKc>
        printInteger((uint64) old);
    80002134:	fd843503          	ld	a0,-40(s0)
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	db8080e7          	jalr	-584(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\nnew running: ");
    80002140:	00003517          	auipc	a0,0x3
    80002144:	ff850513          	addi	a0,a0,-8 # 80005138 <_ZZ12printIntegermE6digits+0x18>
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	d38080e7          	jalr	-712(ra) # 80001e80 <_Z11printStringPKc>
        printInteger((uint64) _thread::running);
    80002150:	0004b503          	ld	a0,0(s1)
    80002154:	00000097          	auipc	ra,0x0
    80002158:	d9c080e7          	jalr	-612(ra) # 80001ef0 <_Z12printIntegerm>
        printString("\n");
    8000215c:	00003517          	auipc	a0,0x3
    80002160:	ee450513          	addi	a0,a0,-284 # 80005040 <CONSOLE_STATUS+0x30>
    80002164:	00000097          	auipc	ra,0x0
    80002168:	d1c080e7          	jalr	-740(ra) # 80001e80 <_Z11printStringPKc>

        if(old != _thread::running)
    8000216c:	fd843503          	ld	a0,-40(s0)
    80002170:	0004b583          	ld	a1,0(s1)
    80002174:	00b50a63          	beq	a0,a1,80002188 <_ZN7_thread14threadDispatchEv+0xa8>
            contextSwitch(&old->context, &_thread::running->context);
    80002178:	01858593          	addi	a1,a1,24
    8000217c:	01850513          	addi	a0,a0,24
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	fa0080e7          	jalr	-96(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    80002188:	02813083          	ld	ra,40(sp)
    8000218c:	02013403          	ld	s0,32(sp)
    80002190:	01813483          	ld	s1,24(sp)
    80002194:	03010113          	addi	sp,sp,48
    80002198:	00008067          	ret
        MemoryAllocator::mem_free(old->stack);
    8000219c:	01053503          	ld	a0,16(a0)
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	be4080e7          	jalr	-1052(ra) # 80001d84 <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    800021a8:	fd843503          	ld	a0,-40(s0)
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	bd8080e7          	jalr	-1064(ra) # 80001d84 <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(&old);
    800021b4:	fd840513          	addi	a0,s0,-40
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	bcc080e7          	jalr	-1076(ra) # 80001d84 <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	914080e7          	jalr	-1772(ra) # 80001ad4 <_ZN9Scheduler3getEv>
    800021c8:	00003797          	auipc	a5,0x3
    800021cc:	74a7b023          	sd	a0,1856(a5) # 80005908 <_ZN7_thread7runningE>
        if (_thread::running)
    800021d0:	fa050ce3          	beqz	a0,80002188 <_ZN7_thread14threadDispatchEv+0xa8>
            contextSwitchThreadEnded(&_thread::running->context);
    800021d4:	01850513          	addi	a0,a0,24
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	f5c080e7          	jalr	-164(ra) # 80001134 <contextSwitchThreadEnded>
}
    800021e0:	fa9ff06f          	j	80002188 <_ZN7_thread14threadDispatchEv+0xa8>

00000000800021e4 <start>:
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813423          	sd	s0,8(sp)
    800021ec:	01010413          	addi	s0,sp,16
    800021f0:	300027f3          	csrr	a5,mstatus
    800021f4:	ffffe737          	lui	a4,0xffffe
    800021f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c9f>
    800021fc:	00e7f7b3          	and	a5,a5,a4
    80002200:	00001737          	lui	a4,0x1
    80002204:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002208:	00e7e7b3          	or	a5,a5,a4
    8000220c:	30079073          	csrw	mstatus,a5
    80002210:	00000797          	auipc	a5,0x0
    80002214:	16078793          	addi	a5,a5,352 # 80002370 <system_main>
    80002218:	34179073          	csrw	mepc,a5
    8000221c:	00000793          	li	a5,0
    80002220:	18079073          	csrw	satp,a5
    80002224:	000107b7          	lui	a5,0x10
    80002228:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000222c:	30279073          	csrw	medeleg,a5
    80002230:	30379073          	csrw	mideleg,a5
    80002234:	104027f3          	csrr	a5,sie
    80002238:	2227e793          	ori	a5,a5,546
    8000223c:	10479073          	csrw	sie,a5
    80002240:	fff00793          	li	a5,-1
    80002244:	00a7d793          	srli	a5,a5,0xa
    80002248:	3b079073          	csrw	pmpaddr0,a5
    8000224c:	00f00793          	li	a5,15
    80002250:	3a079073          	csrw	pmpcfg0,a5
    80002254:	f14027f3          	csrr	a5,mhartid
    80002258:	0200c737          	lui	a4,0x200c
    8000225c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002260:	0007869b          	sext.w	a3,a5
    80002264:	00269713          	slli	a4,a3,0x2
    80002268:	000f4637          	lui	a2,0xf4
    8000226c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002270:	00d70733          	add	a4,a4,a3
    80002274:	0037979b          	slliw	a5,a5,0x3
    80002278:	020046b7          	lui	a3,0x2004
    8000227c:	00d787b3          	add	a5,a5,a3
    80002280:	00c585b3          	add	a1,a1,a2
    80002284:	00371693          	slli	a3,a4,0x3
    80002288:	00003717          	auipc	a4,0x3
    8000228c:	68870713          	addi	a4,a4,1672 # 80005910 <timer_scratch>
    80002290:	00b7b023          	sd	a1,0(a5)
    80002294:	00d70733          	add	a4,a4,a3
    80002298:	00f73c23          	sd	a5,24(a4)
    8000229c:	02c73023          	sd	a2,32(a4)
    800022a0:	34071073          	csrw	mscratch,a4
    800022a4:	00000797          	auipc	a5,0x0
    800022a8:	6ec78793          	addi	a5,a5,1772 # 80002990 <timervec>
    800022ac:	30579073          	csrw	mtvec,a5
    800022b0:	300027f3          	csrr	a5,mstatus
    800022b4:	0087e793          	ori	a5,a5,8
    800022b8:	30079073          	csrw	mstatus,a5
    800022bc:	304027f3          	csrr	a5,mie
    800022c0:	0807e793          	ori	a5,a5,128
    800022c4:	30479073          	csrw	mie,a5
    800022c8:	f14027f3          	csrr	a5,mhartid
    800022cc:	0007879b          	sext.w	a5,a5
    800022d0:	00078213          	mv	tp,a5
    800022d4:	30200073          	mret
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret

00000000800022e4 <timerinit>:
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00813423          	sd	s0,8(sp)
    800022ec:	01010413          	addi	s0,sp,16
    800022f0:	f14027f3          	csrr	a5,mhartid
    800022f4:	0200c737          	lui	a4,0x200c
    800022f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800022fc:	0007869b          	sext.w	a3,a5
    80002300:	00269713          	slli	a4,a3,0x2
    80002304:	000f4637          	lui	a2,0xf4
    80002308:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000230c:	00d70733          	add	a4,a4,a3
    80002310:	0037979b          	slliw	a5,a5,0x3
    80002314:	020046b7          	lui	a3,0x2004
    80002318:	00d787b3          	add	a5,a5,a3
    8000231c:	00c585b3          	add	a1,a1,a2
    80002320:	00371693          	slli	a3,a4,0x3
    80002324:	00003717          	auipc	a4,0x3
    80002328:	5ec70713          	addi	a4,a4,1516 # 80005910 <timer_scratch>
    8000232c:	00b7b023          	sd	a1,0(a5)
    80002330:	00d70733          	add	a4,a4,a3
    80002334:	00f73c23          	sd	a5,24(a4)
    80002338:	02c73023          	sd	a2,32(a4)
    8000233c:	34071073          	csrw	mscratch,a4
    80002340:	00000797          	auipc	a5,0x0
    80002344:	65078793          	addi	a5,a5,1616 # 80002990 <timervec>
    80002348:	30579073          	csrw	mtvec,a5
    8000234c:	300027f3          	csrr	a5,mstatus
    80002350:	0087e793          	ori	a5,a5,8
    80002354:	30079073          	csrw	mstatus,a5
    80002358:	304027f3          	csrr	a5,mie
    8000235c:	0807e793          	ori	a5,a5,128
    80002360:	30479073          	csrw	mie,a5
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <system_main>:
    80002370:	fe010113          	addi	sp,sp,-32
    80002374:	00813823          	sd	s0,16(sp)
    80002378:	00913423          	sd	s1,8(sp)
    8000237c:	00113c23          	sd	ra,24(sp)
    80002380:	02010413          	addi	s0,sp,32
    80002384:	00000097          	auipc	ra,0x0
    80002388:	0c4080e7          	jalr	196(ra) # 80002448 <cpuid>
    8000238c:	00003497          	auipc	s1,0x3
    80002390:	52448493          	addi	s1,s1,1316 # 800058b0 <started>
    80002394:	02050263          	beqz	a0,800023b8 <system_main+0x48>
    80002398:	0004a783          	lw	a5,0(s1)
    8000239c:	0007879b          	sext.w	a5,a5
    800023a0:	fe078ce3          	beqz	a5,80002398 <system_main+0x28>
    800023a4:	0ff0000f          	fence
    800023a8:	00003517          	auipc	a0,0x3
    800023ac:	dd050513          	addi	a0,a0,-560 # 80005178 <_ZZ12printIntegermE6digits+0x58>
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	a7c080e7          	jalr	-1412(ra) # 80002e2c <panic>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	9d0080e7          	jalr	-1584(ra) # 80002d88 <consoleinit>
    800023c0:	00001097          	auipc	ra,0x1
    800023c4:	15c080e7          	jalr	348(ra) # 8000351c <printfinit>
    800023c8:	00003517          	auipc	a0,0x3
    800023cc:	c7850513          	addi	a0,a0,-904 # 80005040 <CONSOLE_STATUS+0x30>
    800023d0:	00001097          	auipc	ra,0x1
    800023d4:	ab8080e7          	jalr	-1352(ra) # 80002e88 <__printf>
    800023d8:	00003517          	auipc	a0,0x3
    800023dc:	d7050513          	addi	a0,a0,-656 # 80005148 <_ZZ12printIntegermE6digits+0x28>
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	aa8080e7          	jalr	-1368(ra) # 80002e88 <__printf>
    800023e8:	00003517          	auipc	a0,0x3
    800023ec:	c5850513          	addi	a0,a0,-936 # 80005040 <CONSOLE_STATUS+0x30>
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	a98080e7          	jalr	-1384(ra) # 80002e88 <__printf>
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	4b0080e7          	jalr	1200(ra) # 800038a8 <kinit>
    80002400:	00000097          	auipc	ra,0x0
    80002404:	148080e7          	jalr	328(ra) # 80002548 <trapinit>
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	16c080e7          	jalr	364(ra) # 80002574 <trapinithart>
    80002410:	00000097          	auipc	ra,0x0
    80002414:	5c0080e7          	jalr	1472(ra) # 800029d0 <plicinit>
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	5e0080e7          	jalr	1504(ra) # 800029f8 <plicinithart>
    80002420:	00000097          	auipc	ra,0x0
    80002424:	078080e7          	jalr	120(ra) # 80002498 <userinit>
    80002428:	0ff0000f          	fence
    8000242c:	00100793          	li	a5,1
    80002430:	00003517          	auipc	a0,0x3
    80002434:	d3050513          	addi	a0,a0,-720 # 80005160 <_ZZ12printIntegermE6digits+0x40>
    80002438:	00f4a023          	sw	a5,0(s1)
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	a4c080e7          	jalr	-1460(ra) # 80002e88 <__printf>
    80002444:	0000006f          	j	80002444 <system_main+0xd4>

0000000080002448 <cpuid>:
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00813423          	sd	s0,8(sp)
    80002450:	01010413          	addi	s0,sp,16
    80002454:	00020513          	mv	a0,tp
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	0005051b          	sext.w	a0,a0
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret

0000000080002468 <mycpu>:
    80002468:	ff010113          	addi	sp,sp,-16
    8000246c:	00813423          	sd	s0,8(sp)
    80002470:	01010413          	addi	s0,sp,16
    80002474:	00020793          	mv	a5,tp
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	0007879b          	sext.w	a5,a5
    80002480:	00779793          	slli	a5,a5,0x7
    80002484:	00004517          	auipc	a0,0x4
    80002488:	4bc50513          	addi	a0,a0,1212 # 80006940 <cpus>
    8000248c:	00f50533          	add	a0,a0,a5
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <userinit>:
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813423          	sd	s0,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00813403          	ld	s0,8(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	fffff317          	auipc	t1,0xfffff
    800024b0:	26c30067          	jr	620(t1) # 80001718 <main>

00000000800024b4 <either_copyout>:
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00813023          	sd	s0,0(sp)
    800024bc:	00113423          	sd	ra,8(sp)
    800024c0:	01010413          	addi	s0,sp,16
    800024c4:	02051663          	bnez	a0,800024f0 <either_copyout+0x3c>
    800024c8:	00058513          	mv	a0,a1
    800024cc:	00060593          	mv	a1,a2
    800024d0:	0006861b          	sext.w	a2,a3
    800024d4:	00002097          	auipc	ra,0x2
    800024d8:	c60080e7          	jalr	-928(ra) # 80004134 <__memmove>
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	00000513          	li	a0,0
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret
    800024f0:	00003517          	auipc	a0,0x3
    800024f4:	cb050513          	addi	a0,a0,-848 # 800051a0 <_ZZ12printIntegermE6digits+0x80>
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	934080e7          	jalr	-1740(ra) # 80002e2c <panic>

0000000080002500 <either_copyin>:
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	00113423          	sd	ra,8(sp)
    8000250c:	01010413          	addi	s0,sp,16
    80002510:	02059463          	bnez	a1,80002538 <either_copyin+0x38>
    80002514:	00060593          	mv	a1,a2
    80002518:	0006861b          	sext.w	a2,a3
    8000251c:	00002097          	auipc	ra,0x2
    80002520:	c18080e7          	jalr	-1000(ra) # 80004134 <__memmove>
    80002524:	00813083          	ld	ra,8(sp)
    80002528:	00013403          	ld	s0,0(sp)
    8000252c:	00000513          	li	a0,0
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret
    80002538:	00003517          	auipc	a0,0x3
    8000253c:	c9050513          	addi	a0,a0,-880 # 800051c8 <_ZZ12printIntegermE6digits+0xa8>
    80002540:	00001097          	auipc	ra,0x1
    80002544:	8ec080e7          	jalr	-1812(ra) # 80002e2c <panic>

0000000080002548 <trapinit>:
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813423          	sd	s0,8(sp)
    80002550:	01010413          	addi	s0,sp,16
    80002554:	00813403          	ld	s0,8(sp)
    80002558:	00003597          	auipc	a1,0x3
    8000255c:	c9858593          	addi	a1,a1,-872 # 800051f0 <_ZZ12printIntegermE6digits+0xd0>
    80002560:	00004517          	auipc	a0,0x4
    80002564:	46050513          	addi	a0,a0,1120 # 800069c0 <tickslock>
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00001317          	auipc	t1,0x1
    80002570:	5cc30067          	jr	1484(t1) # 80003b38 <initlock>

0000000080002574 <trapinithart>:
    80002574:	ff010113          	addi	sp,sp,-16
    80002578:	00813423          	sd	s0,8(sp)
    8000257c:	01010413          	addi	s0,sp,16
    80002580:	00000797          	auipc	a5,0x0
    80002584:	30078793          	addi	a5,a5,768 # 80002880 <kernelvec>
    80002588:	10579073          	csrw	stvec,a5
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <usertrap>:
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00813423          	sd	s0,8(sp)
    800025a0:	01010413          	addi	s0,sp,16
    800025a4:	00813403          	ld	s0,8(sp)
    800025a8:	01010113          	addi	sp,sp,16
    800025ac:	00008067          	ret

00000000800025b0 <usertrapret>:
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00813423          	sd	s0,8(sp)
    800025b8:	01010413          	addi	s0,sp,16
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <kerneltrap>:
    800025c8:	fe010113          	addi	sp,sp,-32
    800025cc:	00813823          	sd	s0,16(sp)
    800025d0:	00113c23          	sd	ra,24(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	02010413          	addi	s0,sp,32
    800025dc:	142025f3          	csrr	a1,scause
    800025e0:	100027f3          	csrr	a5,sstatus
    800025e4:	0027f793          	andi	a5,a5,2
    800025e8:	10079c63          	bnez	a5,80002700 <kerneltrap+0x138>
    800025ec:	142027f3          	csrr	a5,scause
    800025f0:	0207ce63          	bltz	a5,8000262c <kerneltrap+0x64>
    800025f4:	00003517          	auipc	a0,0x3
    800025f8:	c4450513          	addi	a0,a0,-956 # 80005238 <_ZZ12printIntegermE6digits+0x118>
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	88c080e7          	jalr	-1908(ra) # 80002e88 <__printf>
    80002604:	141025f3          	csrr	a1,sepc
    80002608:	14302673          	csrr	a2,stval
    8000260c:	00003517          	auipc	a0,0x3
    80002610:	c3c50513          	addi	a0,a0,-964 # 80005248 <_ZZ12printIntegermE6digits+0x128>
    80002614:	00001097          	auipc	ra,0x1
    80002618:	874080e7          	jalr	-1932(ra) # 80002e88 <__printf>
    8000261c:	00003517          	auipc	a0,0x3
    80002620:	c4450513          	addi	a0,a0,-956 # 80005260 <_ZZ12printIntegermE6digits+0x140>
    80002624:	00001097          	auipc	ra,0x1
    80002628:	808080e7          	jalr	-2040(ra) # 80002e2c <panic>
    8000262c:	0ff7f713          	andi	a4,a5,255
    80002630:	00900693          	li	a3,9
    80002634:	04d70063          	beq	a4,a3,80002674 <kerneltrap+0xac>
    80002638:	fff00713          	li	a4,-1
    8000263c:	03f71713          	slli	a4,a4,0x3f
    80002640:	00170713          	addi	a4,a4,1
    80002644:	fae798e3          	bne	a5,a4,800025f4 <kerneltrap+0x2c>
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	e00080e7          	jalr	-512(ra) # 80002448 <cpuid>
    80002650:	06050663          	beqz	a0,800026bc <kerneltrap+0xf4>
    80002654:	144027f3          	csrr	a5,sip
    80002658:	ffd7f793          	andi	a5,a5,-3
    8000265c:	14479073          	csrw	sip,a5
    80002660:	01813083          	ld	ra,24(sp)
    80002664:	01013403          	ld	s0,16(sp)
    80002668:	00813483          	ld	s1,8(sp)
    8000266c:	02010113          	addi	sp,sp,32
    80002670:	00008067          	ret
    80002674:	00000097          	auipc	ra,0x0
    80002678:	3d0080e7          	jalr	976(ra) # 80002a44 <plic_claim>
    8000267c:	00a00793          	li	a5,10
    80002680:	00050493          	mv	s1,a0
    80002684:	06f50863          	beq	a0,a5,800026f4 <kerneltrap+0x12c>
    80002688:	fc050ce3          	beqz	a0,80002660 <kerneltrap+0x98>
    8000268c:	00050593          	mv	a1,a0
    80002690:	00003517          	auipc	a0,0x3
    80002694:	b8850513          	addi	a0,a0,-1144 # 80005218 <_ZZ12printIntegermE6digits+0xf8>
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	7f0080e7          	jalr	2032(ra) # 80002e88 <__printf>
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	01813083          	ld	ra,24(sp)
    800026a8:	00048513          	mv	a0,s1
    800026ac:	00813483          	ld	s1,8(sp)
    800026b0:	02010113          	addi	sp,sp,32
    800026b4:	00000317          	auipc	t1,0x0
    800026b8:	3c830067          	jr	968(t1) # 80002a7c <plic_complete>
    800026bc:	00004517          	auipc	a0,0x4
    800026c0:	30450513          	addi	a0,a0,772 # 800069c0 <tickslock>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	498080e7          	jalr	1176(ra) # 80003b5c <acquire>
    800026cc:	00003717          	auipc	a4,0x3
    800026d0:	1e870713          	addi	a4,a4,488 # 800058b4 <ticks>
    800026d4:	00072783          	lw	a5,0(a4)
    800026d8:	00004517          	auipc	a0,0x4
    800026dc:	2e850513          	addi	a0,a0,744 # 800069c0 <tickslock>
    800026e0:	0017879b          	addiw	a5,a5,1
    800026e4:	00f72023          	sw	a5,0(a4)
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	540080e7          	jalr	1344(ra) # 80003c28 <release>
    800026f0:	f65ff06f          	j	80002654 <kerneltrap+0x8c>
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	09c080e7          	jalr	156(ra) # 80003790 <uartintr>
    800026fc:	fa5ff06f          	j	800026a0 <kerneltrap+0xd8>
    80002700:	00003517          	auipc	a0,0x3
    80002704:	af850513          	addi	a0,a0,-1288 # 800051f8 <_ZZ12printIntegermE6digits+0xd8>
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	724080e7          	jalr	1828(ra) # 80002e2c <panic>

0000000080002710 <clockintr>:
    80002710:	fe010113          	addi	sp,sp,-32
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00913423          	sd	s1,8(sp)
    8000271c:	00113c23          	sd	ra,24(sp)
    80002720:	02010413          	addi	s0,sp,32
    80002724:	00004497          	auipc	s1,0x4
    80002728:	29c48493          	addi	s1,s1,668 # 800069c0 <tickslock>
    8000272c:	00048513          	mv	a0,s1
    80002730:	00001097          	auipc	ra,0x1
    80002734:	42c080e7          	jalr	1068(ra) # 80003b5c <acquire>
    80002738:	00003717          	auipc	a4,0x3
    8000273c:	17c70713          	addi	a4,a4,380 # 800058b4 <ticks>
    80002740:	00072783          	lw	a5,0(a4)
    80002744:	01013403          	ld	s0,16(sp)
    80002748:	01813083          	ld	ra,24(sp)
    8000274c:	00048513          	mv	a0,s1
    80002750:	0017879b          	addiw	a5,a5,1
    80002754:	00813483          	ld	s1,8(sp)
    80002758:	00f72023          	sw	a5,0(a4)
    8000275c:	02010113          	addi	sp,sp,32
    80002760:	00001317          	auipc	t1,0x1
    80002764:	4c830067          	jr	1224(t1) # 80003c28 <release>

0000000080002768 <devintr>:
    80002768:	142027f3          	csrr	a5,scause
    8000276c:	00000513          	li	a0,0
    80002770:	0007c463          	bltz	a5,80002778 <devintr+0x10>
    80002774:	00008067          	ret
    80002778:	fe010113          	addi	sp,sp,-32
    8000277c:	00813823          	sd	s0,16(sp)
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00913423          	sd	s1,8(sp)
    80002788:	02010413          	addi	s0,sp,32
    8000278c:	0ff7f713          	andi	a4,a5,255
    80002790:	00900693          	li	a3,9
    80002794:	04d70c63          	beq	a4,a3,800027ec <devintr+0x84>
    80002798:	fff00713          	li	a4,-1
    8000279c:	03f71713          	slli	a4,a4,0x3f
    800027a0:	00170713          	addi	a4,a4,1
    800027a4:	00e78c63          	beq	a5,a4,800027bc <devintr+0x54>
    800027a8:	01813083          	ld	ra,24(sp)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	00813483          	ld	s1,8(sp)
    800027b4:	02010113          	addi	sp,sp,32
    800027b8:	00008067          	ret
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	c8c080e7          	jalr	-884(ra) # 80002448 <cpuid>
    800027c4:	06050663          	beqz	a0,80002830 <devintr+0xc8>
    800027c8:	144027f3          	csrr	a5,sip
    800027cc:	ffd7f793          	andi	a5,a5,-3
    800027d0:	14479073          	csrw	sip,a5
    800027d4:	01813083          	ld	ra,24(sp)
    800027d8:	01013403          	ld	s0,16(sp)
    800027dc:	00813483          	ld	s1,8(sp)
    800027e0:	00200513          	li	a0,2
    800027e4:	02010113          	addi	sp,sp,32
    800027e8:	00008067          	ret
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	258080e7          	jalr	600(ra) # 80002a44 <plic_claim>
    800027f4:	00a00793          	li	a5,10
    800027f8:	00050493          	mv	s1,a0
    800027fc:	06f50663          	beq	a0,a5,80002868 <devintr+0x100>
    80002800:	00100513          	li	a0,1
    80002804:	fa0482e3          	beqz	s1,800027a8 <devintr+0x40>
    80002808:	00048593          	mv	a1,s1
    8000280c:	00003517          	auipc	a0,0x3
    80002810:	a0c50513          	addi	a0,a0,-1524 # 80005218 <_ZZ12printIntegermE6digits+0xf8>
    80002814:	00000097          	auipc	ra,0x0
    80002818:	674080e7          	jalr	1652(ra) # 80002e88 <__printf>
    8000281c:	00048513          	mv	a0,s1
    80002820:	00000097          	auipc	ra,0x0
    80002824:	25c080e7          	jalr	604(ra) # 80002a7c <plic_complete>
    80002828:	00100513          	li	a0,1
    8000282c:	f7dff06f          	j	800027a8 <devintr+0x40>
    80002830:	00004517          	auipc	a0,0x4
    80002834:	19050513          	addi	a0,a0,400 # 800069c0 <tickslock>
    80002838:	00001097          	auipc	ra,0x1
    8000283c:	324080e7          	jalr	804(ra) # 80003b5c <acquire>
    80002840:	00003717          	auipc	a4,0x3
    80002844:	07470713          	addi	a4,a4,116 # 800058b4 <ticks>
    80002848:	00072783          	lw	a5,0(a4)
    8000284c:	00004517          	auipc	a0,0x4
    80002850:	17450513          	addi	a0,a0,372 # 800069c0 <tickslock>
    80002854:	0017879b          	addiw	a5,a5,1
    80002858:	00f72023          	sw	a5,0(a4)
    8000285c:	00001097          	auipc	ra,0x1
    80002860:	3cc080e7          	jalr	972(ra) # 80003c28 <release>
    80002864:	f65ff06f          	j	800027c8 <devintr+0x60>
    80002868:	00001097          	auipc	ra,0x1
    8000286c:	f28080e7          	jalr	-216(ra) # 80003790 <uartintr>
    80002870:	fadff06f          	j	8000281c <devintr+0xb4>
	...

0000000080002880 <kernelvec>:
    80002880:	f0010113          	addi	sp,sp,-256
    80002884:	00113023          	sd	ra,0(sp)
    80002888:	00213423          	sd	sp,8(sp)
    8000288c:	00313823          	sd	gp,16(sp)
    80002890:	00413c23          	sd	tp,24(sp)
    80002894:	02513023          	sd	t0,32(sp)
    80002898:	02613423          	sd	t1,40(sp)
    8000289c:	02713823          	sd	t2,48(sp)
    800028a0:	02813c23          	sd	s0,56(sp)
    800028a4:	04913023          	sd	s1,64(sp)
    800028a8:	04a13423          	sd	a0,72(sp)
    800028ac:	04b13823          	sd	a1,80(sp)
    800028b0:	04c13c23          	sd	a2,88(sp)
    800028b4:	06d13023          	sd	a3,96(sp)
    800028b8:	06e13423          	sd	a4,104(sp)
    800028bc:	06f13823          	sd	a5,112(sp)
    800028c0:	07013c23          	sd	a6,120(sp)
    800028c4:	09113023          	sd	a7,128(sp)
    800028c8:	09213423          	sd	s2,136(sp)
    800028cc:	09313823          	sd	s3,144(sp)
    800028d0:	09413c23          	sd	s4,152(sp)
    800028d4:	0b513023          	sd	s5,160(sp)
    800028d8:	0b613423          	sd	s6,168(sp)
    800028dc:	0b713823          	sd	s7,176(sp)
    800028e0:	0b813c23          	sd	s8,184(sp)
    800028e4:	0d913023          	sd	s9,192(sp)
    800028e8:	0da13423          	sd	s10,200(sp)
    800028ec:	0db13823          	sd	s11,208(sp)
    800028f0:	0dc13c23          	sd	t3,216(sp)
    800028f4:	0fd13023          	sd	t4,224(sp)
    800028f8:	0fe13423          	sd	t5,232(sp)
    800028fc:	0ff13823          	sd	t6,240(sp)
    80002900:	cc9ff0ef          	jal	ra,800025c8 <kerneltrap>
    80002904:	00013083          	ld	ra,0(sp)
    80002908:	00813103          	ld	sp,8(sp)
    8000290c:	01013183          	ld	gp,16(sp)
    80002910:	02013283          	ld	t0,32(sp)
    80002914:	02813303          	ld	t1,40(sp)
    80002918:	03013383          	ld	t2,48(sp)
    8000291c:	03813403          	ld	s0,56(sp)
    80002920:	04013483          	ld	s1,64(sp)
    80002924:	04813503          	ld	a0,72(sp)
    80002928:	05013583          	ld	a1,80(sp)
    8000292c:	05813603          	ld	a2,88(sp)
    80002930:	06013683          	ld	a3,96(sp)
    80002934:	06813703          	ld	a4,104(sp)
    80002938:	07013783          	ld	a5,112(sp)
    8000293c:	07813803          	ld	a6,120(sp)
    80002940:	08013883          	ld	a7,128(sp)
    80002944:	08813903          	ld	s2,136(sp)
    80002948:	09013983          	ld	s3,144(sp)
    8000294c:	09813a03          	ld	s4,152(sp)
    80002950:	0a013a83          	ld	s5,160(sp)
    80002954:	0a813b03          	ld	s6,168(sp)
    80002958:	0b013b83          	ld	s7,176(sp)
    8000295c:	0b813c03          	ld	s8,184(sp)
    80002960:	0c013c83          	ld	s9,192(sp)
    80002964:	0c813d03          	ld	s10,200(sp)
    80002968:	0d013d83          	ld	s11,208(sp)
    8000296c:	0d813e03          	ld	t3,216(sp)
    80002970:	0e013e83          	ld	t4,224(sp)
    80002974:	0e813f03          	ld	t5,232(sp)
    80002978:	0f013f83          	ld	t6,240(sp)
    8000297c:	10010113          	addi	sp,sp,256
    80002980:	10200073          	sret
    80002984:	00000013          	nop
    80002988:	00000013          	nop
    8000298c:	00000013          	nop

0000000080002990 <timervec>:
    80002990:	34051573          	csrrw	a0,mscratch,a0
    80002994:	00b53023          	sd	a1,0(a0)
    80002998:	00c53423          	sd	a2,8(a0)
    8000299c:	00d53823          	sd	a3,16(a0)
    800029a0:	01853583          	ld	a1,24(a0)
    800029a4:	02053603          	ld	a2,32(a0)
    800029a8:	0005b683          	ld	a3,0(a1)
    800029ac:	00c686b3          	add	a3,a3,a2
    800029b0:	00d5b023          	sd	a3,0(a1)
    800029b4:	00200593          	li	a1,2
    800029b8:	14459073          	csrw	sip,a1
    800029bc:	01053683          	ld	a3,16(a0)
    800029c0:	00853603          	ld	a2,8(a0)
    800029c4:	00053583          	ld	a1,0(a0)
    800029c8:	34051573          	csrrw	a0,mscratch,a0
    800029cc:	30200073          	mret

00000000800029d0 <plicinit>:
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00813423          	sd	s0,8(sp)
    800029d8:	01010413          	addi	s0,sp,16
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	0c0007b7          	lui	a5,0xc000
    800029e4:	00100713          	li	a4,1
    800029e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800029ec:	00e7a223          	sw	a4,4(a5)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <plicinithart>:
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	a40080e7          	jalr	-1472(ra) # 80002448 <cpuid>
    80002a10:	0085171b          	slliw	a4,a0,0x8
    80002a14:	0c0027b7          	lui	a5,0xc002
    80002a18:	00e787b3          	add	a5,a5,a4
    80002a1c:	40200713          	li	a4,1026
    80002a20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a24:	00813083          	ld	ra,8(sp)
    80002a28:	00013403          	ld	s0,0(sp)
    80002a2c:	00d5151b          	slliw	a0,a0,0xd
    80002a30:	0c2017b7          	lui	a5,0xc201
    80002a34:	00a78533          	add	a0,a5,a0
    80002a38:	00052023          	sw	zero,0(a0)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <plic_claim>:
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813023          	sd	s0,0(sp)
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	9f4080e7          	jalr	-1548(ra) # 80002448 <cpuid>
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	00d5151b          	slliw	a0,a0,0xd
    80002a68:	0c2017b7          	lui	a5,0xc201
    80002a6c:	00a78533          	add	a0,a5,a0
    80002a70:	00452503          	lw	a0,4(a0)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret

0000000080002a7c <plic_complete>:
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	00113c23          	sd	ra,24(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	9b4080e7          	jalr	-1612(ra) # 80002448 <cpuid>
    80002a9c:	01813083          	ld	ra,24(sp)
    80002aa0:	01013403          	ld	s0,16(sp)
    80002aa4:	00d5179b          	slliw	a5,a0,0xd
    80002aa8:	0c201737          	lui	a4,0xc201
    80002aac:	00f707b3          	add	a5,a4,a5
    80002ab0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	02010113          	addi	sp,sp,32
    80002abc:	00008067          	ret

0000000080002ac0 <consolewrite>:
    80002ac0:	fb010113          	addi	sp,sp,-80
    80002ac4:	04813023          	sd	s0,64(sp)
    80002ac8:	04113423          	sd	ra,72(sp)
    80002acc:	02913c23          	sd	s1,56(sp)
    80002ad0:	03213823          	sd	s2,48(sp)
    80002ad4:	03313423          	sd	s3,40(sp)
    80002ad8:	03413023          	sd	s4,32(sp)
    80002adc:	01513c23          	sd	s5,24(sp)
    80002ae0:	05010413          	addi	s0,sp,80
    80002ae4:	06c05c63          	blez	a2,80002b5c <consolewrite+0x9c>
    80002ae8:	00060993          	mv	s3,a2
    80002aec:	00050a13          	mv	s4,a0
    80002af0:	00058493          	mv	s1,a1
    80002af4:	00000913          	li	s2,0
    80002af8:	fff00a93          	li	s5,-1
    80002afc:	01c0006f          	j	80002b18 <consolewrite+0x58>
    80002b00:	fbf44503          	lbu	a0,-65(s0)
    80002b04:	0019091b          	addiw	s2,s2,1
    80002b08:	00148493          	addi	s1,s1,1
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	a9c080e7          	jalr	-1380(ra) # 800035a8 <uartputc>
    80002b14:	03298063          	beq	s3,s2,80002b34 <consolewrite+0x74>
    80002b18:	00048613          	mv	a2,s1
    80002b1c:	00100693          	li	a3,1
    80002b20:	000a0593          	mv	a1,s4
    80002b24:	fbf40513          	addi	a0,s0,-65
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	9d8080e7          	jalr	-1576(ra) # 80002500 <either_copyin>
    80002b30:	fd5518e3          	bne	a0,s5,80002b00 <consolewrite+0x40>
    80002b34:	04813083          	ld	ra,72(sp)
    80002b38:	04013403          	ld	s0,64(sp)
    80002b3c:	03813483          	ld	s1,56(sp)
    80002b40:	02813983          	ld	s3,40(sp)
    80002b44:	02013a03          	ld	s4,32(sp)
    80002b48:	01813a83          	ld	s5,24(sp)
    80002b4c:	00090513          	mv	a0,s2
    80002b50:	03013903          	ld	s2,48(sp)
    80002b54:	05010113          	addi	sp,sp,80
    80002b58:	00008067          	ret
    80002b5c:	00000913          	li	s2,0
    80002b60:	fd5ff06f          	j	80002b34 <consolewrite+0x74>

0000000080002b64 <consoleread>:
    80002b64:	f9010113          	addi	sp,sp,-112
    80002b68:	06813023          	sd	s0,96(sp)
    80002b6c:	04913c23          	sd	s1,88(sp)
    80002b70:	05213823          	sd	s2,80(sp)
    80002b74:	05313423          	sd	s3,72(sp)
    80002b78:	05413023          	sd	s4,64(sp)
    80002b7c:	03513c23          	sd	s5,56(sp)
    80002b80:	03613823          	sd	s6,48(sp)
    80002b84:	03713423          	sd	s7,40(sp)
    80002b88:	03813023          	sd	s8,32(sp)
    80002b8c:	06113423          	sd	ra,104(sp)
    80002b90:	01913c23          	sd	s9,24(sp)
    80002b94:	07010413          	addi	s0,sp,112
    80002b98:	00060b93          	mv	s7,a2
    80002b9c:	00050913          	mv	s2,a0
    80002ba0:	00058c13          	mv	s8,a1
    80002ba4:	00060b1b          	sext.w	s6,a2
    80002ba8:	00004497          	auipc	s1,0x4
    80002bac:	e3048493          	addi	s1,s1,-464 # 800069d8 <cons>
    80002bb0:	00400993          	li	s3,4
    80002bb4:	fff00a13          	li	s4,-1
    80002bb8:	00a00a93          	li	s5,10
    80002bbc:	05705e63          	blez	s7,80002c18 <consoleread+0xb4>
    80002bc0:	09c4a703          	lw	a4,156(s1)
    80002bc4:	0984a783          	lw	a5,152(s1)
    80002bc8:	0007071b          	sext.w	a4,a4
    80002bcc:	08e78463          	beq	a5,a4,80002c54 <consoleread+0xf0>
    80002bd0:	07f7f713          	andi	a4,a5,127
    80002bd4:	00e48733          	add	a4,s1,a4
    80002bd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002bdc:	0017869b          	addiw	a3,a5,1
    80002be0:	08d4ac23          	sw	a3,152(s1)
    80002be4:	00070c9b          	sext.w	s9,a4
    80002be8:	0b370663          	beq	a4,s3,80002c94 <consoleread+0x130>
    80002bec:	00100693          	li	a3,1
    80002bf0:	f9f40613          	addi	a2,s0,-97
    80002bf4:	000c0593          	mv	a1,s8
    80002bf8:	00090513          	mv	a0,s2
    80002bfc:	f8e40fa3          	sb	a4,-97(s0)
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	8b4080e7          	jalr	-1868(ra) # 800024b4 <either_copyout>
    80002c08:	01450863          	beq	a0,s4,80002c18 <consoleread+0xb4>
    80002c0c:	001c0c13          	addi	s8,s8,1
    80002c10:	fffb8b9b          	addiw	s7,s7,-1
    80002c14:	fb5c94e3          	bne	s9,s5,80002bbc <consoleread+0x58>
    80002c18:	000b851b          	sext.w	a0,s7
    80002c1c:	06813083          	ld	ra,104(sp)
    80002c20:	06013403          	ld	s0,96(sp)
    80002c24:	05813483          	ld	s1,88(sp)
    80002c28:	05013903          	ld	s2,80(sp)
    80002c2c:	04813983          	ld	s3,72(sp)
    80002c30:	04013a03          	ld	s4,64(sp)
    80002c34:	03813a83          	ld	s5,56(sp)
    80002c38:	02813b83          	ld	s7,40(sp)
    80002c3c:	02013c03          	ld	s8,32(sp)
    80002c40:	01813c83          	ld	s9,24(sp)
    80002c44:	40ab053b          	subw	a0,s6,a0
    80002c48:	03013b03          	ld	s6,48(sp)
    80002c4c:	07010113          	addi	sp,sp,112
    80002c50:	00008067          	ret
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	1d8080e7          	jalr	472(ra) # 80003e2c <push_on>
    80002c5c:	0984a703          	lw	a4,152(s1)
    80002c60:	09c4a783          	lw	a5,156(s1)
    80002c64:	0007879b          	sext.w	a5,a5
    80002c68:	fef70ce3          	beq	a4,a5,80002c60 <consoleread+0xfc>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	234080e7          	jalr	564(ra) # 80003ea0 <pop_on>
    80002c74:	0984a783          	lw	a5,152(s1)
    80002c78:	07f7f713          	andi	a4,a5,127
    80002c7c:	00e48733          	add	a4,s1,a4
    80002c80:	01874703          	lbu	a4,24(a4)
    80002c84:	0017869b          	addiw	a3,a5,1
    80002c88:	08d4ac23          	sw	a3,152(s1)
    80002c8c:	00070c9b          	sext.w	s9,a4
    80002c90:	f5371ee3          	bne	a4,s3,80002bec <consoleread+0x88>
    80002c94:	000b851b          	sext.w	a0,s7
    80002c98:	f96bf2e3          	bgeu	s7,s6,80002c1c <consoleread+0xb8>
    80002c9c:	08f4ac23          	sw	a5,152(s1)
    80002ca0:	f7dff06f          	j	80002c1c <consoleread+0xb8>

0000000080002ca4 <consputc>:
    80002ca4:	10000793          	li	a5,256
    80002ca8:	00f50663          	beq	a0,a5,80002cb4 <consputc+0x10>
    80002cac:	00001317          	auipc	t1,0x1
    80002cb0:	9f430067          	jr	-1548(t1) # 800036a0 <uartputc_sync>
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	00800513          	li	a0,8
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	9d8080e7          	jalr	-1576(ra) # 800036a0 <uartputc_sync>
    80002cd0:	02000513          	li	a0,32
    80002cd4:	00001097          	auipc	ra,0x1
    80002cd8:	9cc080e7          	jalr	-1588(ra) # 800036a0 <uartputc_sync>
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	00813083          	ld	ra,8(sp)
    80002ce4:	00800513          	li	a0,8
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00001317          	auipc	t1,0x1
    80002cf0:	9b430067          	jr	-1612(t1) # 800036a0 <uartputc_sync>

0000000080002cf4 <consoleintr>:
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	02010413          	addi	s0,sp,32
    80002d0c:	00004917          	auipc	s2,0x4
    80002d10:	ccc90913          	addi	s2,s2,-820 # 800069d8 <cons>
    80002d14:	00050493          	mv	s1,a0
    80002d18:	00090513          	mv	a0,s2
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	e40080e7          	jalr	-448(ra) # 80003b5c <acquire>
    80002d24:	02048c63          	beqz	s1,80002d5c <consoleintr+0x68>
    80002d28:	0a092783          	lw	a5,160(s2)
    80002d2c:	09892703          	lw	a4,152(s2)
    80002d30:	07f00693          	li	a3,127
    80002d34:	40e7873b          	subw	a4,a5,a4
    80002d38:	02e6e263          	bltu	a3,a4,80002d5c <consoleintr+0x68>
    80002d3c:	00d00713          	li	a4,13
    80002d40:	04e48063          	beq	s1,a4,80002d80 <consoleintr+0x8c>
    80002d44:	07f7f713          	andi	a4,a5,127
    80002d48:	00e90733          	add	a4,s2,a4
    80002d4c:	0017879b          	addiw	a5,a5,1
    80002d50:	0af92023          	sw	a5,160(s2)
    80002d54:	00970c23          	sb	s1,24(a4)
    80002d58:	08f92e23          	sw	a5,156(s2)
    80002d5c:	01013403          	ld	s0,16(sp)
    80002d60:	01813083          	ld	ra,24(sp)
    80002d64:	00813483          	ld	s1,8(sp)
    80002d68:	00013903          	ld	s2,0(sp)
    80002d6c:	00004517          	auipc	a0,0x4
    80002d70:	c6c50513          	addi	a0,a0,-916 # 800069d8 <cons>
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00001317          	auipc	t1,0x1
    80002d7c:	eb030067          	jr	-336(t1) # 80003c28 <release>
    80002d80:	00a00493          	li	s1,10
    80002d84:	fc1ff06f          	j	80002d44 <consoleintr+0x50>

0000000080002d88 <consoleinit>:
    80002d88:	fe010113          	addi	sp,sp,-32
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00813823          	sd	s0,16(sp)
    80002d94:	00913423          	sd	s1,8(sp)
    80002d98:	02010413          	addi	s0,sp,32
    80002d9c:	00004497          	auipc	s1,0x4
    80002da0:	c3c48493          	addi	s1,s1,-964 # 800069d8 <cons>
    80002da4:	00048513          	mv	a0,s1
    80002da8:	00002597          	auipc	a1,0x2
    80002dac:	4c858593          	addi	a1,a1,1224 # 80005270 <_ZZ12printIntegermE6digits+0x150>
    80002db0:	00001097          	auipc	ra,0x1
    80002db4:	d88080e7          	jalr	-632(ra) # 80003b38 <initlock>
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	7ac080e7          	jalr	1964(ra) # 80003564 <uartinit>
    80002dc0:	01813083          	ld	ra,24(sp)
    80002dc4:	01013403          	ld	s0,16(sp)
    80002dc8:	00000797          	auipc	a5,0x0
    80002dcc:	d9c78793          	addi	a5,a5,-612 # 80002b64 <consoleread>
    80002dd0:	0af4bc23          	sd	a5,184(s1)
    80002dd4:	00000797          	auipc	a5,0x0
    80002dd8:	cec78793          	addi	a5,a5,-788 # 80002ac0 <consolewrite>
    80002ddc:	0cf4b023          	sd	a5,192(s1)
    80002de0:	00813483          	ld	s1,8(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret

0000000080002dec <console_read>:
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    80002df8:	00813403          	ld	s0,8(sp)
    80002dfc:	00004317          	auipc	t1,0x4
    80002e00:	c9433303          	ld	t1,-876(t1) # 80006a90 <devsw+0x10>
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00030067          	jr	t1

0000000080002e0c <console_write>:
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00813423          	sd	s0,8(sp)
    80002e14:	01010413          	addi	s0,sp,16
    80002e18:	00813403          	ld	s0,8(sp)
    80002e1c:	00004317          	auipc	t1,0x4
    80002e20:	c7c33303          	ld	t1,-900(t1) # 80006a98 <devsw+0x18>
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00030067          	jr	t1

0000000080002e2c <panic>:
    80002e2c:	fe010113          	addi	sp,sp,-32
    80002e30:	00113c23          	sd	ra,24(sp)
    80002e34:	00813823          	sd	s0,16(sp)
    80002e38:	00913423          	sd	s1,8(sp)
    80002e3c:	02010413          	addi	s0,sp,32
    80002e40:	00050493          	mv	s1,a0
    80002e44:	00002517          	auipc	a0,0x2
    80002e48:	43450513          	addi	a0,a0,1076 # 80005278 <_ZZ12printIntegermE6digits+0x158>
    80002e4c:	00004797          	auipc	a5,0x4
    80002e50:	ce07a623          	sw	zero,-788(a5) # 80006b38 <pr+0x18>
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	034080e7          	jalr	52(ra) # 80002e88 <__printf>
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	028080e7          	jalr	40(ra) # 80002e88 <__printf>
    80002e68:	00002517          	auipc	a0,0x2
    80002e6c:	1d850513          	addi	a0,a0,472 # 80005040 <CONSOLE_STATUS+0x30>
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	018080e7          	jalr	24(ra) # 80002e88 <__printf>
    80002e78:	00100793          	li	a5,1
    80002e7c:	00003717          	auipc	a4,0x3
    80002e80:	a2f72e23          	sw	a5,-1476(a4) # 800058b8 <panicked>
    80002e84:	0000006f          	j	80002e84 <panic+0x58>

0000000080002e88 <__printf>:
    80002e88:	f3010113          	addi	sp,sp,-208
    80002e8c:	08813023          	sd	s0,128(sp)
    80002e90:	07313423          	sd	s3,104(sp)
    80002e94:	09010413          	addi	s0,sp,144
    80002e98:	05813023          	sd	s8,64(sp)
    80002e9c:	08113423          	sd	ra,136(sp)
    80002ea0:	06913c23          	sd	s1,120(sp)
    80002ea4:	07213823          	sd	s2,112(sp)
    80002ea8:	07413023          	sd	s4,96(sp)
    80002eac:	05513c23          	sd	s5,88(sp)
    80002eb0:	05613823          	sd	s6,80(sp)
    80002eb4:	05713423          	sd	s7,72(sp)
    80002eb8:	03913c23          	sd	s9,56(sp)
    80002ebc:	03a13823          	sd	s10,48(sp)
    80002ec0:	03b13423          	sd	s11,40(sp)
    80002ec4:	00004317          	auipc	t1,0x4
    80002ec8:	c5c30313          	addi	t1,t1,-932 # 80006b20 <pr>
    80002ecc:	01832c03          	lw	s8,24(t1)
    80002ed0:	00b43423          	sd	a1,8(s0)
    80002ed4:	00c43823          	sd	a2,16(s0)
    80002ed8:	00d43c23          	sd	a3,24(s0)
    80002edc:	02e43023          	sd	a4,32(s0)
    80002ee0:	02f43423          	sd	a5,40(s0)
    80002ee4:	03043823          	sd	a6,48(s0)
    80002ee8:	03143c23          	sd	a7,56(s0)
    80002eec:	00050993          	mv	s3,a0
    80002ef0:	4a0c1663          	bnez	s8,8000339c <__printf+0x514>
    80002ef4:	60098c63          	beqz	s3,8000350c <__printf+0x684>
    80002ef8:	0009c503          	lbu	a0,0(s3)
    80002efc:	00840793          	addi	a5,s0,8
    80002f00:	f6f43c23          	sd	a5,-136(s0)
    80002f04:	00000493          	li	s1,0
    80002f08:	22050063          	beqz	a0,80003128 <__printf+0x2a0>
    80002f0c:	00002a37          	lui	s4,0x2
    80002f10:	00018ab7          	lui	s5,0x18
    80002f14:	000f4b37          	lui	s6,0xf4
    80002f18:	00989bb7          	lui	s7,0x989
    80002f1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f2c:	00148c9b          	addiw	s9,s1,1
    80002f30:	02500793          	li	a5,37
    80002f34:	01998933          	add	s2,s3,s9
    80002f38:	38f51263          	bne	a0,a5,800032bc <__printf+0x434>
    80002f3c:	00094783          	lbu	a5,0(s2)
    80002f40:	00078c9b          	sext.w	s9,a5
    80002f44:	1e078263          	beqz	a5,80003128 <__printf+0x2a0>
    80002f48:	0024849b          	addiw	s1,s1,2
    80002f4c:	07000713          	li	a4,112
    80002f50:	00998933          	add	s2,s3,s1
    80002f54:	38e78a63          	beq	a5,a4,800032e8 <__printf+0x460>
    80002f58:	20f76863          	bltu	a4,a5,80003168 <__printf+0x2e0>
    80002f5c:	42a78863          	beq	a5,a0,8000338c <__printf+0x504>
    80002f60:	06400713          	li	a4,100
    80002f64:	40e79663          	bne	a5,a4,80003370 <__printf+0x4e8>
    80002f68:	f7843783          	ld	a5,-136(s0)
    80002f6c:	0007a603          	lw	a2,0(a5)
    80002f70:	00878793          	addi	a5,a5,8
    80002f74:	f6f43c23          	sd	a5,-136(s0)
    80002f78:	42064a63          	bltz	a2,800033ac <__printf+0x524>
    80002f7c:	00a00713          	li	a4,10
    80002f80:	02e677bb          	remuw	a5,a2,a4
    80002f84:	00002d97          	auipc	s11,0x2
    80002f88:	31cd8d93          	addi	s11,s11,796 # 800052a0 <digits>
    80002f8c:	00900593          	li	a1,9
    80002f90:	0006051b          	sext.w	a0,a2
    80002f94:	00000c93          	li	s9,0
    80002f98:	02079793          	slli	a5,a5,0x20
    80002f9c:	0207d793          	srli	a5,a5,0x20
    80002fa0:	00fd87b3          	add	a5,s11,a5
    80002fa4:	0007c783          	lbu	a5,0(a5)
    80002fa8:	02e656bb          	divuw	a3,a2,a4
    80002fac:	f8f40023          	sb	a5,-128(s0)
    80002fb0:	14c5d863          	bge	a1,a2,80003100 <__printf+0x278>
    80002fb4:	06300593          	li	a1,99
    80002fb8:	00100c93          	li	s9,1
    80002fbc:	02e6f7bb          	remuw	a5,a3,a4
    80002fc0:	02079793          	slli	a5,a5,0x20
    80002fc4:	0207d793          	srli	a5,a5,0x20
    80002fc8:	00fd87b3          	add	a5,s11,a5
    80002fcc:	0007c783          	lbu	a5,0(a5)
    80002fd0:	02e6d73b          	divuw	a4,a3,a4
    80002fd4:	f8f400a3          	sb	a5,-127(s0)
    80002fd8:	12a5f463          	bgeu	a1,a0,80003100 <__printf+0x278>
    80002fdc:	00a00693          	li	a3,10
    80002fe0:	00900593          	li	a1,9
    80002fe4:	02d777bb          	remuw	a5,a4,a3
    80002fe8:	02079793          	slli	a5,a5,0x20
    80002fec:	0207d793          	srli	a5,a5,0x20
    80002ff0:	00fd87b3          	add	a5,s11,a5
    80002ff4:	0007c503          	lbu	a0,0(a5)
    80002ff8:	02d757bb          	divuw	a5,a4,a3
    80002ffc:	f8a40123          	sb	a0,-126(s0)
    80003000:	48e5f263          	bgeu	a1,a4,80003484 <__printf+0x5fc>
    80003004:	06300513          	li	a0,99
    80003008:	02d7f5bb          	remuw	a1,a5,a3
    8000300c:	02059593          	slli	a1,a1,0x20
    80003010:	0205d593          	srli	a1,a1,0x20
    80003014:	00bd85b3          	add	a1,s11,a1
    80003018:	0005c583          	lbu	a1,0(a1)
    8000301c:	02d7d7bb          	divuw	a5,a5,a3
    80003020:	f8b401a3          	sb	a1,-125(s0)
    80003024:	48e57263          	bgeu	a0,a4,800034a8 <__printf+0x620>
    80003028:	3e700513          	li	a0,999
    8000302c:	02d7f5bb          	remuw	a1,a5,a3
    80003030:	02059593          	slli	a1,a1,0x20
    80003034:	0205d593          	srli	a1,a1,0x20
    80003038:	00bd85b3          	add	a1,s11,a1
    8000303c:	0005c583          	lbu	a1,0(a1)
    80003040:	02d7d7bb          	divuw	a5,a5,a3
    80003044:	f8b40223          	sb	a1,-124(s0)
    80003048:	46e57663          	bgeu	a0,a4,800034b4 <__printf+0x62c>
    8000304c:	02d7f5bb          	remuw	a1,a5,a3
    80003050:	02059593          	slli	a1,a1,0x20
    80003054:	0205d593          	srli	a1,a1,0x20
    80003058:	00bd85b3          	add	a1,s11,a1
    8000305c:	0005c583          	lbu	a1,0(a1)
    80003060:	02d7d7bb          	divuw	a5,a5,a3
    80003064:	f8b402a3          	sb	a1,-123(s0)
    80003068:	46ea7863          	bgeu	s4,a4,800034d8 <__printf+0x650>
    8000306c:	02d7f5bb          	remuw	a1,a5,a3
    80003070:	02059593          	slli	a1,a1,0x20
    80003074:	0205d593          	srli	a1,a1,0x20
    80003078:	00bd85b3          	add	a1,s11,a1
    8000307c:	0005c583          	lbu	a1,0(a1)
    80003080:	02d7d7bb          	divuw	a5,a5,a3
    80003084:	f8b40323          	sb	a1,-122(s0)
    80003088:	3eeaf863          	bgeu	s5,a4,80003478 <__printf+0x5f0>
    8000308c:	02d7f5bb          	remuw	a1,a5,a3
    80003090:	02059593          	slli	a1,a1,0x20
    80003094:	0205d593          	srli	a1,a1,0x20
    80003098:	00bd85b3          	add	a1,s11,a1
    8000309c:	0005c583          	lbu	a1,0(a1)
    800030a0:	02d7d7bb          	divuw	a5,a5,a3
    800030a4:	f8b403a3          	sb	a1,-121(s0)
    800030a8:	42eb7e63          	bgeu	s6,a4,800034e4 <__printf+0x65c>
    800030ac:	02d7f5bb          	remuw	a1,a5,a3
    800030b0:	02059593          	slli	a1,a1,0x20
    800030b4:	0205d593          	srli	a1,a1,0x20
    800030b8:	00bd85b3          	add	a1,s11,a1
    800030bc:	0005c583          	lbu	a1,0(a1)
    800030c0:	02d7d7bb          	divuw	a5,a5,a3
    800030c4:	f8b40423          	sb	a1,-120(s0)
    800030c8:	42ebfc63          	bgeu	s7,a4,80003500 <__printf+0x678>
    800030cc:	02079793          	slli	a5,a5,0x20
    800030d0:	0207d793          	srli	a5,a5,0x20
    800030d4:	00fd8db3          	add	s11,s11,a5
    800030d8:	000dc703          	lbu	a4,0(s11)
    800030dc:	00a00793          	li	a5,10
    800030e0:	00900c93          	li	s9,9
    800030e4:	f8e404a3          	sb	a4,-119(s0)
    800030e8:	00065c63          	bgez	a2,80003100 <__printf+0x278>
    800030ec:	f9040713          	addi	a4,s0,-112
    800030f0:	00f70733          	add	a4,a4,a5
    800030f4:	02d00693          	li	a3,45
    800030f8:	fed70823          	sb	a3,-16(a4)
    800030fc:	00078c93          	mv	s9,a5
    80003100:	f8040793          	addi	a5,s0,-128
    80003104:	01978cb3          	add	s9,a5,s9
    80003108:	f7f40d13          	addi	s10,s0,-129
    8000310c:	000cc503          	lbu	a0,0(s9)
    80003110:	fffc8c93          	addi	s9,s9,-1
    80003114:	00000097          	auipc	ra,0x0
    80003118:	b90080e7          	jalr	-1136(ra) # 80002ca4 <consputc>
    8000311c:	ffac98e3          	bne	s9,s10,8000310c <__printf+0x284>
    80003120:	00094503          	lbu	a0,0(s2)
    80003124:	e00514e3          	bnez	a0,80002f2c <__printf+0xa4>
    80003128:	1a0c1663          	bnez	s8,800032d4 <__printf+0x44c>
    8000312c:	08813083          	ld	ra,136(sp)
    80003130:	08013403          	ld	s0,128(sp)
    80003134:	07813483          	ld	s1,120(sp)
    80003138:	07013903          	ld	s2,112(sp)
    8000313c:	06813983          	ld	s3,104(sp)
    80003140:	06013a03          	ld	s4,96(sp)
    80003144:	05813a83          	ld	s5,88(sp)
    80003148:	05013b03          	ld	s6,80(sp)
    8000314c:	04813b83          	ld	s7,72(sp)
    80003150:	04013c03          	ld	s8,64(sp)
    80003154:	03813c83          	ld	s9,56(sp)
    80003158:	03013d03          	ld	s10,48(sp)
    8000315c:	02813d83          	ld	s11,40(sp)
    80003160:	0d010113          	addi	sp,sp,208
    80003164:	00008067          	ret
    80003168:	07300713          	li	a4,115
    8000316c:	1ce78a63          	beq	a5,a4,80003340 <__printf+0x4b8>
    80003170:	07800713          	li	a4,120
    80003174:	1ee79e63          	bne	a5,a4,80003370 <__printf+0x4e8>
    80003178:	f7843783          	ld	a5,-136(s0)
    8000317c:	0007a703          	lw	a4,0(a5)
    80003180:	00878793          	addi	a5,a5,8
    80003184:	f6f43c23          	sd	a5,-136(s0)
    80003188:	28074263          	bltz	a4,8000340c <__printf+0x584>
    8000318c:	00002d97          	auipc	s11,0x2
    80003190:	114d8d93          	addi	s11,s11,276 # 800052a0 <digits>
    80003194:	00f77793          	andi	a5,a4,15
    80003198:	00fd87b3          	add	a5,s11,a5
    8000319c:	0007c683          	lbu	a3,0(a5)
    800031a0:	00f00613          	li	a2,15
    800031a4:	0007079b          	sext.w	a5,a4
    800031a8:	f8d40023          	sb	a3,-128(s0)
    800031ac:	0047559b          	srliw	a1,a4,0x4
    800031b0:	0047569b          	srliw	a3,a4,0x4
    800031b4:	00000c93          	li	s9,0
    800031b8:	0ee65063          	bge	a2,a4,80003298 <__printf+0x410>
    800031bc:	00f6f693          	andi	a3,a3,15
    800031c0:	00dd86b3          	add	a3,s11,a3
    800031c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800031c8:	0087d79b          	srliw	a5,a5,0x8
    800031cc:	00100c93          	li	s9,1
    800031d0:	f8d400a3          	sb	a3,-127(s0)
    800031d4:	0cb67263          	bgeu	a2,a1,80003298 <__printf+0x410>
    800031d8:	00f7f693          	andi	a3,a5,15
    800031dc:	00dd86b3          	add	a3,s11,a3
    800031e0:	0006c583          	lbu	a1,0(a3)
    800031e4:	00f00613          	li	a2,15
    800031e8:	0047d69b          	srliw	a3,a5,0x4
    800031ec:	f8b40123          	sb	a1,-126(s0)
    800031f0:	0047d593          	srli	a1,a5,0x4
    800031f4:	28f67e63          	bgeu	a2,a5,80003490 <__printf+0x608>
    800031f8:	00f6f693          	andi	a3,a3,15
    800031fc:	00dd86b3          	add	a3,s11,a3
    80003200:	0006c503          	lbu	a0,0(a3)
    80003204:	0087d813          	srli	a6,a5,0x8
    80003208:	0087d69b          	srliw	a3,a5,0x8
    8000320c:	f8a401a3          	sb	a0,-125(s0)
    80003210:	28b67663          	bgeu	a2,a1,8000349c <__printf+0x614>
    80003214:	00f6f693          	andi	a3,a3,15
    80003218:	00dd86b3          	add	a3,s11,a3
    8000321c:	0006c583          	lbu	a1,0(a3)
    80003220:	00c7d513          	srli	a0,a5,0xc
    80003224:	00c7d69b          	srliw	a3,a5,0xc
    80003228:	f8b40223          	sb	a1,-124(s0)
    8000322c:	29067a63          	bgeu	a2,a6,800034c0 <__printf+0x638>
    80003230:	00f6f693          	andi	a3,a3,15
    80003234:	00dd86b3          	add	a3,s11,a3
    80003238:	0006c583          	lbu	a1,0(a3)
    8000323c:	0107d813          	srli	a6,a5,0x10
    80003240:	0107d69b          	srliw	a3,a5,0x10
    80003244:	f8b402a3          	sb	a1,-123(s0)
    80003248:	28a67263          	bgeu	a2,a0,800034cc <__printf+0x644>
    8000324c:	00f6f693          	andi	a3,a3,15
    80003250:	00dd86b3          	add	a3,s11,a3
    80003254:	0006c683          	lbu	a3,0(a3)
    80003258:	0147d79b          	srliw	a5,a5,0x14
    8000325c:	f8d40323          	sb	a3,-122(s0)
    80003260:	21067663          	bgeu	a2,a6,8000346c <__printf+0x5e4>
    80003264:	02079793          	slli	a5,a5,0x20
    80003268:	0207d793          	srli	a5,a5,0x20
    8000326c:	00fd8db3          	add	s11,s11,a5
    80003270:	000dc683          	lbu	a3,0(s11)
    80003274:	00800793          	li	a5,8
    80003278:	00700c93          	li	s9,7
    8000327c:	f8d403a3          	sb	a3,-121(s0)
    80003280:	00075c63          	bgez	a4,80003298 <__printf+0x410>
    80003284:	f9040713          	addi	a4,s0,-112
    80003288:	00f70733          	add	a4,a4,a5
    8000328c:	02d00693          	li	a3,45
    80003290:	fed70823          	sb	a3,-16(a4)
    80003294:	00078c93          	mv	s9,a5
    80003298:	f8040793          	addi	a5,s0,-128
    8000329c:	01978cb3          	add	s9,a5,s9
    800032a0:	f7f40d13          	addi	s10,s0,-129
    800032a4:	000cc503          	lbu	a0,0(s9)
    800032a8:	fffc8c93          	addi	s9,s9,-1
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	9f8080e7          	jalr	-1544(ra) # 80002ca4 <consputc>
    800032b4:	ff9d18e3          	bne	s10,s9,800032a4 <__printf+0x41c>
    800032b8:	0100006f          	j	800032c8 <__printf+0x440>
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	9e8080e7          	jalr	-1560(ra) # 80002ca4 <consputc>
    800032c4:	000c8493          	mv	s1,s9
    800032c8:	00094503          	lbu	a0,0(s2)
    800032cc:	c60510e3          	bnez	a0,80002f2c <__printf+0xa4>
    800032d0:	e40c0ee3          	beqz	s8,8000312c <__printf+0x2a4>
    800032d4:	00004517          	auipc	a0,0x4
    800032d8:	84c50513          	addi	a0,a0,-1972 # 80006b20 <pr>
    800032dc:	00001097          	auipc	ra,0x1
    800032e0:	94c080e7          	jalr	-1716(ra) # 80003c28 <release>
    800032e4:	e49ff06f          	j	8000312c <__printf+0x2a4>
    800032e8:	f7843783          	ld	a5,-136(s0)
    800032ec:	03000513          	li	a0,48
    800032f0:	01000d13          	li	s10,16
    800032f4:	00878713          	addi	a4,a5,8
    800032f8:	0007bc83          	ld	s9,0(a5)
    800032fc:	f6e43c23          	sd	a4,-136(s0)
    80003300:	00000097          	auipc	ra,0x0
    80003304:	9a4080e7          	jalr	-1628(ra) # 80002ca4 <consputc>
    80003308:	07800513          	li	a0,120
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	998080e7          	jalr	-1640(ra) # 80002ca4 <consputc>
    80003314:	00002d97          	auipc	s11,0x2
    80003318:	f8cd8d93          	addi	s11,s11,-116 # 800052a0 <digits>
    8000331c:	03ccd793          	srli	a5,s9,0x3c
    80003320:	00fd87b3          	add	a5,s11,a5
    80003324:	0007c503          	lbu	a0,0(a5)
    80003328:	fffd0d1b          	addiw	s10,s10,-1
    8000332c:	004c9c93          	slli	s9,s9,0x4
    80003330:	00000097          	auipc	ra,0x0
    80003334:	974080e7          	jalr	-1676(ra) # 80002ca4 <consputc>
    80003338:	fe0d12e3          	bnez	s10,8000331c <__printf+0x494>
    8000333c:	f8dff06f          	j	800032c8 <__printf+0x440>
    80003340:	f7843783          	ld	a5,-136(s0)
    80003344:	0007bc83          	ld	s9,0(a5)
    80003348:	00878793          	addi	a5,a5,8
    8000334c:	f6f43c23          	sd	a5,-136(s0)
    80003350:	000c9a63          	bnez	s9,80003364 <__printf+0x4dc>
    80003354:	1080006f          	j	8000345c <__printf+0x5d4>
    80003358:	001c8c93          	addi	s9,s9,1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	948080e7          	jalr	-1720(ra) # 80002ca4 <consputc>
    80003364:	000cc503          	lbu	a0,0(s9)
    80003368:	fe0518e3          	bnez	a0,80003358 <__printf+0x4d0>
    8000336c:	f5dff06f          	j	800032c8 <__printf+0x440>
    80003370:	02500513          	li	a0,37
    80003374:	00000097          	auipc	ra,0x0
    80003378:	930080e7          	jalr	-1744(ra) # 80002ca4 <consputc>
    8000337c:	000c8513          	mv	a0,s9
    80003380:	00000097          	auipc	ra,0x0
    80003384:	924080e7          	jalr	-1756(ra) # 80002ca4 <consputc>
    80003388:	f41ff06f          	j	800032c8 <__printf+0x440>
    8000338c:	02500513          	li	a0,37
    80003390:	00000097          	auipc	ra,0x0
    80003394:	914080e7          	jalr	-1772(ra) # 80002ca4 <consputc>
    80003398:	f31ff06f          	j	800032c8 <__printf+0x440>
    8000339c:	00030513          	mv	a0,t1
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	7bc080e7          	jalr	1980(ra) # 80003b5c <acquire>
    800033a8:	b4dff06f          	j	80002ef4 <__printf+0x6c>
    800033ac:	40c0053b          	negw	a0,a2
    800033b0:	00a00713          	li	a4,10
    800033b4:	02e576bb          	remuw	a3,a0,a4
    800033b8:	00002d97          	auipc	s11,0x2
    800033bc:	ee8d8d93          	addi	s11,s11,-280 # 800052a0 <digits>
    800033c0:	ff700593          	li	a1,-9
    800033c4:	02069693          	slli	a3,a3,0x20
    800033c8:	0206d693          	srli	a3,a3,0x20
    800033cc:	00dd86b3          	add	a3,s11,a3
    800033d0:	0006c683          	lbu	a3,0(a3)
    800033d4:	02e557bb          	divuw	a5,a0,a4
    800033d8:	f8d40023          	sb	a3,-128(s0)
    800033dc:	10b65e63          	bge	a2,a1,800034f8 <__printf+0x670>
    800033e0:	06300593          	li	a1,99
    800033e4:	02e7f6bb          	remuw	a3,a5,a4
    800033e8:	02069693          	slli	a3,a3,0x20
    800033ec:	0206d693          	srli	a3,a3,0x20
    800033f0:	00dd86b3          	add	a3,s11,a3
    800033f4:	0006c683          	lbu	a3,0(a3)
    800033f8:	02e7d73b          	divuw	a4,a5,a4
    800033fc:	00200793          	li	a5,2
    80003400:	f8d400a3          	sb	a3,-127(s0)
    80003404:	bca5ece3          	bltu	a1,a0,80002fdc <__printf+0x154>
    80003408:	ce5ff06f          	j	800030ec <__printf+0x264>
    8000340c:	40e007bb          	negw	a5,a4
    80003410:	00002d97          	auipc	s11,0x2
    80003414:	e90d8d93          	addi	s11,s11,-368 # 800052a0 <digits>
    80003418:	00f7f693          	andi	a3,a5,15
    8000341c:	00dd86b3          	add	a3,s11,a3
    80003420:	0006c583          	lbu	a1,0(a3)
    80003424:	ff100613          	li	a2,-15
    80003428:	0047d69b          	srliw	a3,a5,0x4
    8000342c:	f8b40023          	sb	a1,-128(s0)
    80003430:	0047d59b          	srliw	a1,a5,0x4
    80003434:	0ac75e63          	bge	a4,a2,800034f0 <__printf+0x668>
    80003438:	00f6f693          	andi	a3,a3,15
    8000343c:	00dd86b3          	add	a3,s11,a3
    80003440:	0006c603          	lbu	a2,0(a3)
    80003444:	00f00693          	li	a3,15
    80003448:	0087d79b          	srliw	a5,a5,0x8
    8000344c:	f8c400a3          	sb	a2,-127(s0)
    80003450:	d8b6e4e3          	bltu	a3,a1,800031d8 <__printf+0x350>
    80003454:	00200793          	li	a5,2
    80003458:	e2dff06f          	j	80003284 <__printf+0x3fc>
    8000345c:	00002c97          	auipc	s9,0x2
    80003460:	e24c8c93          	addi	s9,s9,-476 # 80005280 <_ZZ12printIntegermE6digits+0x160>
    80003464:	02800513          	li	a0,40
    80003468:	ef1ff06f          	j	80003358 <__printf+0x4d0>
    8000346c:	00700793          	li	a5,7
    80003470:	00600c93          	li	s9,6
    80003474:	e0dff06f          	j	80003280 <__printf+0x3f8>
    80003478:	00700793          	li	a5,7
    8000347c:	00600c93          	li	s9,6
    80003480:	c69ff06f          	j	800030e8 <__printf+0x260>
    80003484:	00300793          	li	a5,3
    80003488:	00200c93          	li	s9,2
    8000348c:	c5dff06f          	j	800030e8 <__printf+0x260>
    80003490:	00300793          	li	a5,3
    80003494:	00200c93          	li	s9,2
    80003498:	de9ff06f          	j	80003280 <__printf+0x3f8>
    8000349c:	00400793          	li	a5,4
    800034a0:	00300c93          	li	s9,3
    800034a4:	dddff06f          	j	80003280 <__printf+0x3f8>
    800034a8:	00400793          	li	a5,4
    800034ac:	00300c93          	li	s9,3
    800034b0:	c39ff06f          	j	800030e8 <__printf+0x260>
    800034b4:	00500793          	li	a5,5
    800034b8:	00400c93          	li	s9,4
    800034bc:	c2dff06f          	j	800030e8 <__printf+0x260>
    800034c0:	00500793          	li	a5,5
    800034c4:	00400c93          	li	s9,4
    800034c8:	db9ff06f          	j	80003280 <__printf+0x3f8>
    800034cc:	00600793          	li	a5,6
    800034d0:	00500c93          	li	s9,5
    800034d4:	dadff06f          	j	80003280 <__printf+0x3f8>
    800034d8:	00600793          	li	a5,6
    800034dc:	00500c93          	li	s9,5
    800034e0:	c09ff06f          	j	800030e8 <__printf+0x260>
    800034e4:	00800793          	li	a5,8
    800034e8:	00700c93          	li	s9,7
    800034ec:	bfdff06f          	j	800030e8 <__printf+0x260>
    800034f0:	00100793          	li	a5,1
    800034f4:	d91ff06f          	j	80003284 <__printf+0x3fc>
    800034f8:	00100793          	li	a5,1
    800034fc:	bf1ff06f          	j	800030ec <__printf+0x264>
    80003500:	00900793          	li	a5,9
    80003504:	00800c93          	li	s9,8
    80003508:	be1ff06f          	j	800030e8 <__printf+0x260>
    8000350c:	00002517          	auipc	a0,0x2
    80003510:	d7c50513          	addi	a0,a0,-644 # 80005288 <_ZZ12printIntegermE6digits+0x168>
    80003514:	00000097          	auipc	ra,0x0
    80003518:	918080e7          	jalr	-1768(ra) # 80002e2c <panic>

000000008000351c <printfinit>:
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	00113c23          	sd	ra,24(sp)
    8000352c:	02010413          	addi	s0,sp,32
    80003530:	00003497          	auipc	s1,0x3
    80003534:	5f048493          	addi	s1,s1,1520 # 80006b20 <pr>
    80003538:	00048513          	mv	a0,s1
    8000353c:	00002597          	auipc	a1,0x2
    80003540:	d5c58593          	addi	a1,a1,-676 # 80005298 <_ZZ12printIntegermE6digits+0x178>
    80003544:	00000097          	auipc	ra,0x0
    80003548:	5f4080e7          	jalr	1524(ra) # 80003b38 <initlock>
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	0004ac23          	sw	zero,24(s1)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret

0000000080003564 <uartinit>:
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	100007b7          	lui	a5,0x10000
    80003574:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003578:	f8000713          	li	a4,-128
    8000357c:	00e781a3          	sb	a4,3(a5)
    80003580:	00300713          	li	a4,3
    80003584:	00e78023          	sb	a4,0(a5)
    80003588:	000780a3          	sb	zero,1(a5)
    8000358c:	00e781a3          	sb	a4,3(a5)
    80003590:	00700693          	li	a3,7
    80003594:	00d78123          	sb	a3,2(a5)
    80003598:	00e780a3          	sb	a4,1(a5)
    8000359c:	00813403          	ld	s0,8(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <uartputc>:
    800035a8:	00002797          	auipc	a5,0x2
    800035ac:	3107a783          	lw	a5,784(a5) # 800058b8 <panicked>
    800035b0:	00078463          	beqz	a5,800035b8 <uartputc+0x10>
    800035b4:	0000006f          	j	800035b4 <uartputc+0xc>
    800035b8:	fd010113          	addi	sp,sp,-48
    800035bc:	02813023          	sd	s0,32(sp)
    800035c0:	00913c23          	sd	s1,24(sp)
    800035c4:	01213823          	sd	s2,16(sp)
    800035c8:	01313423          	sd	s3,8(sp)
    800035cc:	02113423          	sd	ra,40(sp)
    800035d0:	03010413          	addi	s0,sp,48
    800035d4:	00002917          	auipc	s2,0x2
    800035d8:	2ec90913          	addi	s2,s2,748 # 800058c0 <uart_tx_r>
    800035dc:	00093783          	ld	a5,0(s2)
    800035e0:	00002497          	auipc	s1,0x2
    800035e4:	2e848493          	addi	s1,s1,744 # 800058c8 <uart_tx_w>
    800035e8:	0004b703          	ld	a4,0(s1)
    800035ec:	02078693          	addi	a3,a5,32
    800035f0:	00050993          	mv	s3,a0
    800035f4:	02e69c63          	bne	a3,a4,8000362c <uartputc+0x84>
    800035f8:	00001097          	auipc	ra,0x1
    800035fc:	834080e7          	jalr	-1996(ra) # 80003e2c <push_on>
    80003600:	00093783          	ld	a5,0(s2)
    80003604:	0004b703          	ld	a4,0(s1)
    80003608:	02078793          	addi	a5,a5,32
    8000360c:	00e79463          	bne	a5,a4,80003614 <uartputc+0x6c>
    80003610:	0000006f          	j	80003610 <uartputc+0x68>
    80003614:	00001097          	auipc	ra,0x1
    80003618:	88c080e7          	jalr	-1908(ra) # 80003ea0 <pop_on>
    8000361c:	00093783          	ld	a5,0(s2)
    80003620:	0004b703          	ld	a4,0(s1)
    80003624:	02078693          	addi	a3,a5,32
    80003628:	fce688e3          	beq	a3,a4,800035f8 <uartputc+0x50>
    8000362c:	01f77693          	andi	a3,a4,31
    80003630:	00003597          	auipc	a1,0x3
    80003634:	51058593          	addi	a1,a1,1296 # 80006b40 <uart_tx_buf>
    80003638:	00d586b3          	add	a3,a1,a3
    8000363c:	00170713          	addi	a4,a4,1
    80003640:	01368023          	sb	s3,0(a3)
    80003644:	00e4b023          	sd	a4,0(s1)
    80003648:	10000637          	lui	a2,0x10000
    8000364c:	02f71063          	bne	a4,a5,8000366c <uartputc+0xc4>
    80003650:	0340006f          	j	80003684 <uartputc+0xdc>
    80003654:	00074703          	lbu	a4,0(a4)
    80003658:	00f93023          	sd	a5,0(s2)
    8000365c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003660:	00093783          	ld	a5,0(s2)
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	00f70e63          	beq	a4,a5,80003684 <uartputc+0xdc>
    8000366c:	00564683          	lbu	a3,5(a2)
    80003670:	01f7f713          	andi	a4,a5,31
    80003674:	00e58733          	add	a4,a1,a4
    80003678:	0206f693          	andi	a3,a3,32
    8000367c:	00178793          	addi	a5,a5,1
    80003680:	fc069ae3          	bnez	a3,80003654 <uartputc+0xac>
    80003684:	02813083          	ld	ra,40(sp)
    80003688:	02013403          	ld	s0,32(sp)
    8000368c:	01813483          	ld	s1,24(sp)
    80003690:	01013903          	ld	s2,16(sp)
    80003694:	00813983          	ld	s3,8(sp)
    80003698:	03010113          	addi	sp,sp,48
    8000369c:	00008067          	ret

00000000800036a0 <uartputc_sync>:
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00813423          	sd	s0,8(sp)
    800036a8:	01010413          	addi	s0,sp,16
    800036ac:	00002717          	auipc	a4,0x2
    800036b0:	20c72703          	lw	a4,524(a4) # 800058b8 <panicked>
    800036b4:	02071663          	bnez	a4,800036e0 <uartputc_sync+0x40>
    800036b8:	00050793          	mv	a5,a0
    800036bc:	100006b7          	lui	a3,0x10000
    800036c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800036c4:	02077713          	andi	a4,a4,32
    800036c8:	fe070ce3          	beqz	a4,800036c0 <uartputc_sync+0x20>
    800036cc:	0ff7f793          	andi	a5,a5,255
    800036d0:	00f68023          	sb	a5,0(a3)
    800036d4:	00813403          	ld	s0,8(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret
    800036e0:	0000006f          	j	800036e0 <uartputc_sync+0x40>

00000000800036e4 <uartstart>:
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00813423          	sd	s0,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00002617          	auipc	a2,0x2
    800036f4:	1d060613          	addi	a2,a2,464 # 800058c0 <uart_tx_r>
    800036f8:	00002517          	auipc	a0,0x2
    800036fc:	1d050513          	addi	a0,a0,464 # 800058c8 <uart_tx_w>
    80003700:	00063783          	ld	a5,0(a2)
    80003704:	00053703          	ld	a4,0(a0)
    80003708:	04f70263          	beq	a4,a5,8000374c <uartstart+0x68>
    8000370c:	100005b7          	lui	a1,0x10000
    80003710:	00003817          	auipc	a6,0x3
    80003714:	43080813          	addi	a6,a6,1072 # 80006b40 <uart_tx_buf>
    80003718:	01c0006f          	j	80003734 <uartstart+0x50>
    8000371c:	0006c703          	lbu	a4,0(a3)
    80003720:	00f63023          	sd	a5,0(a2)
    80003724:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003728:	00063783          	ld	a5,0(a2)
    8000372c:	00053703          	ld	a4,0(a0)
    80003730:	00f70e63          	beq	a4,a5,8000374c <uartstart+0x68>
    80003734:	01f7f713          	andi	a4,a5,31
    80003738:	00e806b3          	add	a3,a6,a4
    8000373c:	0055c703          	lbu	a4,5(a1)
    80003740:	00178793          	addi	a5,a5,1
    80003744:	02077713          	andi	a4,a4,32
    80003748:	fc071ae3          	bnez	a4,8000371c <uartstart+0x38>
    8000374c:	00813403          	ld	s0,8(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <uartgetc>:
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	10000737          	lui	a4,0x10000
    80003768:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000376c:	0017f793          	andi	a5,a5,1
    80003770:	00078c63          	beqz	a5,80003788 <uartgetc+0x30>
    80003774:	00074503          	lbu	a0,0(a4)
    80003778:	0ff57513          	andi	a0,a0,255
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret
    80003788:	fff00513          	li	a0,-1
    8000378c:	ff1ff06f          	j	8000377c <uartgetc+0x24>

0000000080003790 <uartintr>:
    80003790:	100007b7          	lui	a5,0x10000
    80003794:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003798:	0017f793          	andi	a5,a5,1
    8000379c:	0a078463          	beqz	a5,80003844 <uartintr+0xb4>
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	100004b7          	lui	s1,0x10000
    800037b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800037bc:	0ff57513          	andi	a0,a0,255
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	534080e7          	jalr	1332(ra) # 80002cf4 <consoleintr>
    800037c8:	0054c783          	lbu	a5,5(s1)
    800037cc:	0017f793          	andi	a5,a5,1
    800037d0:	fe0794e3          	bnez	a5,800037b8 <uartintr+0x28>
    800037d4:	00002617          	auipc	a2,0x2
    800037d8:	0ec60613          	addi	a2,a2,236 # 800058c0 <uart_tx_r>
    800037dc:	00002517          	auipc	a0,0x2
    800037e0:	0ec50513          	addi	a0,a0,236 # 800058c8 <uart_tx_w>
    800037e4:	00063783          	ld	a5,0(a2)
    800037e8:	00053703          	ld	a4,0(a0)
    800037ec:	04f70263          	beq	a4,a5,80003830 <uartintr+0xa0>
    800037f0:	100005b7          	lui	a1,0x10000
    800037f4:	00003817          	auipc	a6,0x3
    800037f8:	34c80813          	addi	a6,a6,844 # 80006b40 <uart_tx_buf>
    800037fc:	01c0006f          	j	80003818 <uartintr+0x88>
    80003800:	0006c703          	lbu	a4,0(a3)
    80003804:	00f63023          	sd	a5,0(a2)
    80003808:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000380c:	00063783          	ld	a5,0(a2)
    80003810:	00053703          	ld	a4,0(a0)
    80003814:	00f70e63          	beq	a4,a5,80003830 <uartintr+0xa0>
    80003818:	01f7f713          	andi	a4,a5,31
    8000381c:	00e806b3          	add	a3,a6,a4
    80003820:	0055c703          	lbu	a4,5(a1)
    80003824:	00178793          	addi	a5,a5,1
    80003828:	02077713          	andi	a4,a4,32
    8000382c:	fc071ae3          	bnez	a4,80003800 <uartintr+0x70>
    80003830:	01813083          	ld	ra,24(sp)
    80003834:	01013403          	ld	s0,16(sp)
    80003838:	00813483          	ld	s1,8(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret
    80003844:	00002617          	auipc	a2,0x2
    80003848:	07c60613          	addi	a2,a2,124 # 800058c0 <uart_tx_r>
    8000384c:	00002517          	auipc	a0,0x2
    80003850:	07c50513          	addi	a0,a0,124 # 800058c8 <uart_tx_w>
    80003854:	00063783          	ld	a5,0(a2)
    80003858:	00053703          	ld	a4,0(a0)
    8000385c:	04f70263          	beq	a4,a5,800038a0 <uartintr+0x110>
    80003860:	100005b7          	lui	a1,0x10000
    80003864:	00003817          	auipc	a6,0x3
    80003868:	2dc80813          	addi	a6,a6,732 # 80006b40 <uart_tx_buf>
    8000386c:	01c0006f          	j	80003888 <uartintr+0xf8>
    80003870:	0006c703          	lbu	a4,0(a3)
    80003874:	00f63023          	sd	a5,0(a2)
    80003878:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000387c:	00063783          	ld	a5,0(a2)
    80003880:	00053703          	ld	a4,0(a0)
    80003884:	02f70063          	beq	a4,a5,800038a4 <uartintr+0x114>
    80003888:	01f7f713          	andi	a4,a5,31
    8000388c:	00e806b3          	add	a3,a6,a4
    80003890:	0055c703          	lbu	a4,5(a1)
    80003894:	00178793          	addi	a5,a5,1
    80003898:	02077713          	andi	a4,a4,32
    8000389c:	fc071ae3          	bnez	a4,80003870 <uartintr+0xe0>
    800038a0:	00008067          	ret
    800038a4:	00008067          	ret

00000000800038a8 <kinit>:
    800038a8:	fc010113          	addi	sp,sp,-64
    800038ac:	02913423          	sd	s1,40(sp)
    800038b0:	fffff7b7          	lui	a5,0xfffff
    800038b4:	00004497          	auipc	s1,0x4
    800038b8:	2ab48493          	addi	s1,s1,683 # 80007b5f <end+0xfff>
    800038bc:	02813823          	sd	s0,48(sp)
    800038c0:	01313c23          	sd	s3,24(sp)
    800038c4:	00f4f4b3          	and	s1,s1,a5
    800038c8:	02113c23          	sd	ra,56(sp)
    800038cc:	03213023          	sd	s2,32(sp)
    800038d0:	01413823          	sd	s4,16(sp)
    800038d4:	01513423          	sd	s5,8(sp)
    800038d8:	04010413          	addi	s0,sp,64
    800038dc:	000017b7          	lui	a5,0x1
    800038e0:	01100993          	li	s3,17
    800038e4:	00f487b3          	add	a5,s1,a5
    800038e8:	01b99993          	slli	s3,s3,0x1b
    800038ec:	06f9e063          	bltu	s3,a5,8000394c <kinit+0xa4>
    800038f0:	00003a97          	auipc	s5,0x3
    800038f4:	270a8a93          	addi	s5,s5,624 # 80006b60 <end>
    800038f8:	0754ec63          	bltu	s1,s5,80003970 <kinit+0xc8>
    800038fc:	0734fa63          	bgeu	s1,s3,80003970 <kinit+0xc8>
    80003900:	00088a37          	lui	s4,0x88
    80003904:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003908:	00002917          	auipc	s2,0x2
    8000390c:	fc890913          	addi	s2,s2,-56 # 800058d0 <kmem>
    80003910:	00ca1a13          	slli	s4,s4,0xc
    80003914:	0140006f          	j	80003928 <kinit+0x80>
    80003918:	000017b7          	lui	a5,0x1
    8000391c:	00f484b3          	add	s1,s1,a5
    80003920:	0554e863          	bltu	s1,s5,80003970 <kinit+0xc8>
    80003924:	0534f663          	bgeu	s1,s3,80003970 <kinit+0xc8>
    80003928:	00001637          	lui	a2,0x1
    8000392c:	00100593          	li	a1,1
    80003930:	00048513          	mv	a0,s1
    80003934:	00000097          	auipc	ra,0x0
    80003938:	5e4080e7          	jalr	1508(ra) # 80003f18 <__memset>
    8000393c:	00093783          	ld	a5,0(s2)
    80003940:	00f4b023          	sd	a5,0(s1)
    80003944:	00993023          	sd	s1,0(s2)
    80003948:	fd4498e3          	bne	s1,s4,80003918 <kinit+0x70>
    8000394c:	03813083          	ld	ra,56(sp)
    80003950:	03013403          	ld	s0,48(sp)
    80003954:	02813483          	ld	s1,40(sp)
    80003958:	02013903          	ld	s2,32(sp)
    8000395c:	01813983          	ld	s3,24(sp)
    80003960:	01013a03          	ld	s4,16(sp)
    80003964:	00813a83          	ld	s5,8(sp)
    80003968:	04010113          	addi	sp,sp,64
    8000396c:	00008067          	ret
    80003970:	00002517          	auipc	a0,0x2
    80003974:	94850513          	addi	a0,a0,-1720 # 800052b8 <digits+0x18>
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	4b4080e7          	jalr	1204(ra) # 80002e2c <panic>

0000000080003980 <freerange>:
    80003980:	fc010113          	addi	sp,sp,-64
    80003984:	000017b7          	lui	a5,0x1
    80003988:	02913423          	sd	s1,40(sp)
    8000398c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003990:	009504b3          	add	s1,a0,s1
    80003994:	fffff537          	lui	a0,0xfffff
    80003998:	02813823          	sd	s0,48(sp)
    8000399c:	02113c23          	sd	ra,56(sp)
    800039a0:	03213023          	sd	s2,32(sp)
    800039a4:	01313c23          	sd	s3,24(sp)
    800039a8:	01413823          	sd	s4,16(sp)
    800039ac:	01513423          	sd	s5,8(sp)
    800039b0:	01613023          	sd	s6,0(sp)
    800039b4:	04010413          	addi	s0,sp,64
    800039b8:	00a4f4b3          	and	s1,s1,a0
    800039bc:	00f487b3          	add	a5,s1,a5
    800039c0:	06f5e463          	bltu	a1,a5,80003a28 <freerange+0xa8>
    800039c4:	00003a97          	auipc	s5,0x3
    800039c8:	19ca8a93          	addi	s5,s5,412 # 80006b60 <end>
    800039cc:	0954e263          	bltu	s1,s5,80003a50 <freerange+0xd0>
    800039d0:	01100993          	li	s3,17
    800039d4:	01b99993          	slli	s3,s3,0x1b
    800039d8:	0734fc63          	bgeu	s1,s3,80003a50 <freerange+0xd0>
    800039dc:	00058a13          	mv	s4,a1
    800039e0:	00002917          	auipc	s2,0x2
    800039e4:	ef090913          	addi	s2,s2,-272 # 800058d0 <kmem>
    800039e8:	00002b37          	lui	s6,0x2
    800039ec:	0140006f          	j	80003a00 <freerange+0x80>
    800039f0:	000017b7          	lui	a5,0x1
    800039f4:	00f484b3          	add	s1,s1,a5
    800039f8:	0554ec63          	bltu	s1,s5,80003a50 <freerange+0xd0>
    800039fc:	0534fa63          	bgeu	s1,s3,80003a50 <freerange+0xd0>
    80003a00:	00001637          	lui	a2,0x1
    80003a04:	00100593          	li	a1,1
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	50c080e7          	jalr	1292(ra) # 80003f18 <__memset>
    80003a14:	00093703          	ld	a4,0(s2)
    80003a18:	016487b3          	add	a5,s1,s6
    80003a1c:	00e4b023          	sd	a4,0(s1)
    80003a20:	00993023          	sd	s1,0(s2)
    80003a24:	fcfa76e3          	bgeu	s4,a5,800039f0 <freerange+0x70>
    80003a28:	03813083          	ld	ra,56(sp)
    80003a2c:	03013403          	ld	s0,48(sp)
    80003a30:	02813483          	ld	s1,40(sp)
    80003a34:	02013903          	ld	s2,32(sp)
    80003a38:	01813983          	ld	s3,24(sp)
    80003a3c:	01013a03          	ld	s4,16(sp)
    80003a40:	00813a83          	ld	s5,8(sp)
    80003a44:	00013b03          	ld	s6,0(sp)
    80003a48:	04010113          	addi	sp,sp,64
    80003a4c:	00008067          	ret
    80003a50:	00002517          	auipc	a0,0x2
    80003a54:	86850513          	addi	a0,a0,-1944 # 800052b8 <digits+0x18>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	3d4080e7          	jalr	980(ra) # 80002e2c <panic>

0000000080003a60 <kfree>:
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00913423          	sd	s1,8(sp)
    80003a70:	02010413          	addi	s0,sp,32
    80003a74:	03451793          	slli	a5,a0,0x34
    80003a78:	04079c63          	bnez	a5,80003ad0 <kfree+0x70>
    80003a7c:	00003797          	auipc	a5,0x3
    80003a80:	0e478793          	addi	a5,a5,228 # 80006b60 <end>
    80003a84:	00050493          	mv	s1,a0
    80003a88:	04f56463          	bltu	a0,a5,80003ad0 <kfree+0x70>
    80003a8c:	01100793          	li	a5,17
    80003a90:	01b79793          	slli	a5,a5,0x1b
    80003a94:	02f57e63          	bgeu	a0,a5,80003ad0 <kfree+0x70>
    80003a98:	00001637          	lui	a2,0x1
    80003a9c:	00100593          	li	a1,1
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	478080e7          	jalr	1144(ra) # 80003f18 <__memset>
    80003aa8:	00002797          	auipc	a5,0x2
    80003aac:	e2878793          	addi	a5,a5,-472 # 800058d0 <kmem>
    80003ab0:	0007b703          	ld	a4,0(a5)
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00e4b023          	sd	a4,0(s1)
    80003ac0:	0097b023          	sd	s1,0(a5)
    80003ac4:	00813483          	ld	s1,8(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret
    80003ad0:	00001517          	auipc	a0,0x1
    80003ad4:	7e850513          	addi	a0,a0,2024 # 800052b8 <digits+0x18>
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	354080e7          	jalr	852(ra) # 80002e2c <panic>

0000000080003ae0 <kalloc>:
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00813823          	sd	s0,16(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	00113c23          	sd	ra,24(sp)
    80003af0:	02010413          	addi	s0,sp,32
    80003af4:	00002797          	auipc	a5,0x2
    80003af8:	ddc78793          	addi	a5,a5,-548 # 800058d0 <kmem>
    80003afc:	0007b483          	ld	s1,0(a5)
    80003b00:	02048063          	beqz	s1,80003b20 <kalloc+0x40>
    80003b04:	0004b703          	ld	a4,0(s1)
    80003b08:	00001637          	lui	a2,0x1
    80003b0c:	00500593          	li	a1,5
    80003b10:	00048513          	mv	a0,s1
    80003b14:	00e7b023          	sd	a4,0(a5)
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	400080e7          	jalr	1024(ra) # 80003f18 <__memset>
    80003b20:	01813083          	ld	ra,24(sp)
    80003b24:	01013403          	ld	s0,16(sp)
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	00813483          	ld	s1,8(sp)
    80003b30:	02010113          	addi	sp,sp,32
    80003b34:	00008067          	ret

0000000080003b38 <initlock>:
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00813403          	ld	s0,8(sp)
    80003b48:	00b53423          	sd	a1,8(a0)
    80003b4c:	00052023          	sw	zero,0(a0)
    80003b50:	00053823          	sd	zero,16(a0)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <acquire>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	00113c23          	sd	ra,24(sp)
    80003b6c:	01213023          	sd	s2,0(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	00050493          	mv	s1,a0
    80003b78:	10002973          	csrr	s2,sstatus
    80003b7c:	100027f3          	csrr	a5,sstatus
    80003b80:	ffd7f793          	andi	a5,a5,-3
    80003b84:	10079073          	csrw	sstatus,a5
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	8e0080e7          	jalr	-1824(ra) # 80002468 <mycpu>
    80003b90:	07852783          	lw	a5,120(a0)
    80003b94:	06078e63          	beqz	a5,80003c10 <acquire+0xb4>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	8d0080e7          	jalr	-1840(ra) # 80002468 <mycpu>
    80003ba0:	07852783          	lw	a5,120(a0)
    80003ba4:	0004a703          	lw	a4,0(s1)
    80003ba8:	0017879b          	addiw	a5,a5,1
    80003bac:	06f52c23          	sw	a5,120(a0)
    80003bb0:	04071063          	bnez	a4,80003bf0 <acquire+0x94>
    80003bb4:	00100713          	li	a4,1
    80003bb8:	00070793          	mv	a5,a4
    80003bbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003bc0:	0007879b          	sext.w	a5,a5
    80003bc4:	fe079ae3          	bnez	a5,80003bb8 <acquire+0x5c>
    80003bc8:	0ff0000f          	fence
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	89c080e7          	jalr	-1892(ra) # 80002468 <mycpu>
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00a4b823          	sd	a0,16(s1)
    80003be0:	00013903          	ld	s2,0(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	02010113          	addi	sp,sp,32
    80003bec:	00008067          	ret
    80003bf0:	0104b903          	ld	s2,16(s1)
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	874080e7          	jalr	-1932(ra) # 80002468 <mycpu>
    80003bfc:	faa91ce3          	bne	s2,a0,80003bb4 <acquire+0x58>
    80003c00:	00001517          	auipc	a0,0x1
    80003c04:	6c050513          	addi	a0,a0,1728 # 800052c0 <digits+0x20>
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	224080e7          	jalr	548(ra) # 80002e2c <panic>
    80003c10:	00195913          	srli	s2,s2,0x1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	854080e7          	jalr	-1964(ra) # 80002468 <mycpu>
    80003c1c:	00197913          	andi	s2,s2,1
    80003c20:	07252e23          	sw	s2,124(a0)
    80003c24:	f75ff06f          	j	80003b98 <acquire+0x3c>

0000000080003c28 <release>:
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00813823          	sd	s0,16(sp)
    80003c30:	00113c23          	sd	ra,24(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	01213023          	sd	s2,0(sp)
    80003c3c:	02010413          	addi	s0,sp,32
    80003c40:	00052783          	lw	a5,0(a0)
    80003c44:	00079a63          	bnez	a5,80003c58 <release+0x30>
    80003c48:	00001517          	auipc	a0,0x1
    80003c4c:	68050513          	addi	a0,a0,1664 # 800052c8 <digits+0x28>
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	1dc080e7          	jalr	476(ra) # 80002e2c <panic>
    80003c58:	01053903          	ld	s2,16(a0)
    80003c5c:	00050493          	mv	s1,a0
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	808080e7          	jalr	-2040(ra) # 80002468 <mycpu>
    80003c68:	fea910e3          	bne	s2,a0,80003c48 <release+0x20>
    80003c6c:	0004b823          	sd	zero,16(s1)
    80003c70:	0ff0000f          	fence
    80003c74:	0f50000f          	fence	iorw,ow
    80003c78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	7ec080e7          	jalr	2028(ra) # 80002468 <mycpu>
    80003c84:	100027f3          	csrr	a5,sstatus
    80003c88:	0027f793          	andi	a5,a5,2
    80003c8c:	04079a63          	bnez	a5,80003ce0 <release+0xb8>
    80003c90:	07852783          	lw	a5,120(a0)
    80003c94:	02f05e63          	blez	a5,80003cd0 <release+0xa8>
    80003c98:	fff7871b          	addiw	a4,a5,-1
    80003c9c:	06e52c23          	sw	a4,120(a0)
    80003ca0:	00071c63          	bnez	a4,80003cb8 <release+0x90>
    80003ca4:	07c52783          	lw	a5,124(a0)
    80003ca8:	00078863          	beqz	a5,80003cb8 <release+0x90>
    80003cac:	100027f3          	csrr	a5,sstatus
    80003cb0:	0027e793          	ori	a5,a5,2
    80003cb4:	10079073          	csrw	sstatus,a5
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	00013903          	ld	s2,0(sp)
    80003cc8:	02010113          	addi	sp,sp,32
    80003ccc:	00008067          	ret
    80003cd0:	00001517          	auipc	a0,0x1
    80003cd4:	61850513          	addi	a0,a0,1560 # 800052e8 <digits+0x48>
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	154080e7          	jalr	340(ra) # 80002e2c <panic>
    80003ce0:	00001517          	auipc	a0,0x1
    80003ce4:	5f050513          	addi	a0,a0,1520 # 800052d0 <digits+0x30>
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	144080e7          	jalr	324(ra) # 80002e2c <panic>

0000000080003cf0 <holding>:
    80003cf0:	00052783          	lw	a5,0(a0)
    80003cf4:	00079663          	bnez	a5,80003d00 <holding+0x10>
    80003cf8:	00000513          	li	a0,0
    80003cfc:	00008067          	ret
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00913423          	sd	s1,8(sp)
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	01053483          	ld	s1,16(a0)
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	750080e7          	jalr	1872(ra) # 80002468 <mycpu>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	40a48533          	sub	a0,s1,a0
    80003d2c:	00153513          	seqz	a0,a0
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	02010113          	addi	sp,sp,32
    80003d38:	00008067          	ret

0000000080003d3c <push_off>:
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    80003d50:	100024f3          	csrr	s1,sstatus
    80003d54:	100027f3          	csrr	a5,sstatus
    80003d58:	ffd7f793          	andi	a5,a5,-3
    80003d5c:	10079073          	csrw	sstatus,a5
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	708080e7          	jalr	1800(ra) # 80002468 <mycpu>
    80003d68:	07852783          	lw	a5,120(a0)
    80003d6c:	02078663          	beqz	a5,80003d98 <push_off+0x5c>
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	6f8080e7          	jalr	1784(ra) # 80002468 <mycpu>
    80003d78:	07852783          	lw	a5,120(a0)
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	0017879b          	addiw	a5,a5,1
    80003d88:	06f52c23          	sw	a5,120(a0)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret
    80003d98:	0014d493          	srli	s1,s1,0x1
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	6cc080e7          	jalr	1740(ra) # 80002468 <mycpu>
    80003da4:	0014f493          	andi	s1,s1,1
    80003da8:	06952e23          	sw	s1,124(a0)
    80003dac:	fc5ff06f          	j	80003d70 <push_off+0x34>

0000000080003db0 <pop_off>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813023          	sd	s0,0(sp)
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	6a8080e7          	jalr	1704(ra) # 80002468 <mycpu>
    80003dc8:	100027f3          	csrr	a5,sstatus
    80003dcc:	0027f793          	andi	a5,a5,2
    80003dd0:	04079663          	bnez	a5,80003e1c <pop_off+0x6c>
    80003dd4:	07852783          	lw	a5,120(a0)
    80003dd8:	02f05a63          	blez	a5,80003e0c <pop_off+0x5c>
    80003ddc:	fff7871b          	addiw	a4,a5,-1
    80003de0:	06e52c23          	sw	a4,120(a0)
    80003de4:	00071c63          	bnez	a4,80003dfc <pop_off+0x4c>
    80003de8:	07c52783          	lw	a5,124(a0)
    80003dec:	00078863          	beqz	a5,80003dfc <pop_off+0x4c>
    80003df0:	100027f3          	csrr	a5,sstatus
    80003df4:	0027e793          	ori	a5,a5,2
    80003df8:	10079073          	csrw	sstatus,a5
    80003dfc:	00813083          	ld	ra,8(sp)
    80003e00:	00013403          	ld	s0,0(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret
    80003e0c:	00001517          	auipc	a0,0x1
    80003e10:	4dc50513          	addi	a0,a0,1244 # 800052e8 <digits+0x48>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	018080e7          	jalr	24(ra) # 80002e2c <panic>
    80003e1c:	00001517          	auipc	a0,0x1
    80003e20:	4b450513          	addi	a0,a0,1204 # 800052d0 <digits+0x30>
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	008080e7          	jalr	8(ra) # 80002e2c <panic>

0000000080003e2c <push_on>:
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00113c23          	sd	ra,24(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    80003e40:	100024f3          	csrr	s1,sstatus
    80003e44:	100027f3          	csrr	a5,sstatus
    80003e48:	0027e793          	ori	a5,a5,2
    80003e4c:	10079073          	csrw	sstatus,a5
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	618080e7          	jalr	1560(ra) # 80002468 <mycpu>
    80003e58:	07852783          	lw	a5,120(a0)
    80003e5c:	02078663          	beqz	a5,80003e88 <push_on+0x5c>
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	608080e7          	jalr	1544(ra) # 80002468 <mycpu>
    80003e68:	07852783          	lw	a5,120(a0)
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	0017879b          	addiw	a5,a5,1
    80003e78:	06f52c23          	sw	a5,120(a0)
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret
    80003e88:	0014d493          	srli	s1,s1,0x1
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	5dc080e7          	jalr	1500(ra) # 80002468 <mycpu>
    80003e94:	0014f493          	andi	s1,s1,1
    80003e98:	06952e23          	sw	s1,124(a0)
    80003e9c:	fc5ff06f          	j	80003e60 <push_on+0x34>

0000000080003ea0 <pop_on>:
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00813023          	sd	s0,0(sp)
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	01010413          	addi	s0,sp,16
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	5b8080e7          	jalr	1464(ra) # 80002468 <mycpu>
    80003eb8:	100027f3          	csrr	a5,sstatus
    80003ebc:	0027f793          	andi	a5,a5,2
    80003ec0:	04078463          	beqz	a5,80003f08 <pop_on+0x68>
    80003ec4:	07852783          	lw	a5,120(a0)
    80003ec8:	02f05863          	blez	a5,80003ef8 <pop_on+0x58>
    80003ecc:	fff7879b          	addiw	a5,a5,-1
    80003ed0:	06f52c23          	sw	a5,120(a0)
    80003ed4:	07853783          	ld	a5,120(a0)
    80003ed8:	00079863          	bnez	a5,80003ee8 <pop_on+0x48>
    80003edc:	100027f3          	csrr	a5,sstatus
    80003ee0:	ffd7f793          	andi	a5,a5,-3
    80003ee4:	10079073          	csrw	sstatus,a5
    80003ee8:	00813083          	ld	ra,8(sp)
    80003eec:	00013403          	ld	s0,0(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret
    80003ef8:	00001517          	auipc	a0,0x1
    80003efc:	41850513          	addi	a0,a0,1048 # 80005310 <digits+0x70>
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	f2c080e7          	jalr	-212(ra) # 80002e2c <panic>
    80003f08:	00001517          	auipc	a0,0x1
    80003f0c:	3e850513          	addi	a0,a0,1000 # 800052f0 <digits+0x50>
    80003f10:	fffff097          	auipc	ra,0xfffff
    80003f14:	f1c080e7          	jalr	-228(ra) # 80002e2c <panic>

0000000080003f18 <__memset>:
    80003f18:	ff010113          	addi	sp,sp,-16
    80003f1c:	00813423          	sd	s0,8(sp)
    80003f20:	01010413          	addi	s0,sp,16
    80003f24:	1a060e63          	beqz	a2,800040e0 <__memset+0x1c8>
    80003f28:	40a007b3          	neg	a5,a0
    80003f2c:	0077f793          	andi	a5,a5,7
    80003f30:	00778693          	addi	a3,a5,7
    80003f34:	00b00813          	li	a6,11
    80003f38:	0ff5f593          	andi	a1,a1,255
    80003f3c:	fff6071b          	addiw	a4,a2,-1
    80003f40:	1b06e663          	bltu	a3,a6,800040ec <__memset+0x1d4>
    80003f44:	1cd76463          	bltu	a4,a3,8000410c <__memset+0x1f4>
    80003f48:	1a078e63          	beqz	a5,80004104 <__memset+0x1ec>
    80003f4c:	00b50023          	sb	a1,0(a0)
    80003f50:	00100713          	li	a4,1
    80003f54:	1ae78463          	beq	a5,a4,800040fc <__memset+0x1e4>
    80003f58:	00b500a3          	sb	a1,1(a0)
    80003f5c:	00200713          	li	a4,2
    80003f60:	1ae78a63          	beq	a5,a4,80004114 <__memset+0x1fc>
    80003f64:	00b50123          	sb	a1,2(a0)
    80003f68:	00300713          	li	a4,3
    80003f6c:	18e78463          	beq	a5,a4,800040f4 <__memset+0x1dc>
    80003f70:	00b501a3          	sb	a1,3(a0)
    80003f74:	00400713          	li	a4,4
    80003f78:	1ae78263          	beq	a5,a4,8000411c <__memset+0x204>
    80003f7c:	00b50223          	sb	a1,4(a0)
    80003f80:	00500713          	li	a4,5
    80003f84:	1ae78063          	beq	a5,a4,80004124 <__memset+0x20c>
    80003f88:	00b502a3          	sb	a1,5(a0)
    80003f8c:	00700713          	li	a4,7
    80003f90:	18e79e63          	bne	a5,a4,8000412c <__memset+0x214>
    80003f94:	00b50323          	sb	a1,6(a0)
    80003f98:	00700e93          	li	t4,7
    80003f9c:	00859713          	slli	a4,a1,0x8
    80003fa0:	00e5e733          	or	a4,a1,a4
    80003fa4:	01059e13          	slli	t3,a1,0x10
    80003fa8:	01c76e33          	or	t3,a4,t3
    80003fac:	01859313          	slli	t1,a1,0x18
    80003fb0:	006e6333          	or	t1,t3,t1
    80003fb4:	02059893          	slli	a7,a1,0x20
    80003fb8:	40f60e3b          	subw	t3,a2,a5
    80003fbc:	011368b3          	or	a7,t1,a7
    80003fc0:	02859813          	slli	a6,a1,0x28
    80003fc4:	0108e833          	or	a6,a7,a6
    80003fc8:	03059693          	slli	a3,a1,0x30
    80003fcc:	003e589b          	srliw	a7,t3,0x3
    80003fd0:	00d866b3          	or	a3,a6,a3
    80003fd4:	03859713          	slli	a4,a1,0x38
    80003fd8:	00389813          	slli	a6,a7,0x3
    80003fdc:	00f507b3          	add	a5,a0,a5
    80003fe0:	00e6e733          	or	a4,a3,a4
    80003fe4:	000e089b          	sext.w	a7,t3
    80003fe8:	00f806b3          	add	a3,a6,a5
    80003fec:	00e7b023          	sd	a4,0(a5)
    80003ff0:	00878793          	addi	a5,a5,8
    80003ff4:	fed79ce3          	bne	a5,a3,80003fec <__memset+0xd4>
    80003ff8:	ff8e7793          	andi	a5,t3,-8
    80003ffc:	0007871b          	sext.w	a4,a5
    80004000:	01d787bb          	addw	a5,a5,t4
    80004004:	0ce88e63          	beq	a7,a4,800040e0 <__memset+0x1c8>
    80004008:	00f50733          	add	a4,a0,a5
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0017871b          	addiw	a4,a5,1
    80004014:	0cc77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	0027871b          	addiw	a4,a5,2
    80004024:	0ac77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	0037871b          	addiw	a4,a5,3
    80004034:	0ac77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	0047871b          	addiw	a4,a5,4
    80004044:	08c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	0057871b          	addiw	a4,a5,5
    80004054:	08c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	0067871b          	addiw	a4,a5,6
    80004064:	06c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0077871b          	addiw	a4,a5,7
    80004074:	06c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0087871b          	addiw	a4,a5,8
    80004084:	04c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0097871b          	addiw	a4,a5,9
    80004094:	04c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	00a7871b          	addiw	a4,a5,10
    800040a4:	02c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	00b7871b          	addiw	a4,a5,11
    800040b4:	02c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	00c7871b          	addiw	a4,a5,12
    800040c4:	00c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	00d7879b          	addiw	a5,a5,13
    800040d4:	00c7f663          	bgeu	a5,a2,800040e0 <__memset+0x1c8>
    800040d8:	00f507b3          	add	a5,a0,a5
    800040dc:	00b78023          	sb	a1,0(a5)
    800040e0:	00813403          	ld	s0,8(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret
    800040ec:	00b00693          	li	a3,11
    800040f0:	e55ff06f          	j	80003f44 <__memset+0x2c>
    800040f4:	00300e93          	li	t4,3
    800040f8:	ea5ff06f          	j	80003f9c <__memset+0x84>
    800040fc:	00100e93          	li	t4,1
    80004100:	e9dff06f          	j	80003f9c <__memset+0x84>
    80004104:	00000e93          	li	t4,0
    80004108:	e95ff06f          	j	80003f9c <__memset+0x84>
    8000410c:	00000793          	li	a5,0
    80004110:	ef9ff06f          	j	80004008 <__memset+0xf0>
    80004114:	00200e93          	li	t4,2
    80004118:	e85ff06f          	j	80003f9c <__memset+0x84>
    8000411c:	00400e93          	li	t4,4
    80004120:	e7dff06f          	j	80003f9c <__memset+0x84>
    80004124:	00500e93          	li	t4,5
    80004128:	e75ff06f          	j	80003f9c <__memset+0x84>
    8000412c:	00600e93          	li	t4,6
    80004130:	e6dff06f          	j	80003f9c <__memset+0x84>

0000000080004134 <__memmove>:
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00813423          	sd	s0,8(sp)
    8000413c:	01010413          	addi	s0,sp,16
    80004140:	0e060863          	beqz	a2,80004230 <__memmove+0xfc>
    80004144:	fff6069b          	addiw	a3,a2,-1
    80004148:	0006881b          	sext.w	a6,a3
    8000414c:	0ea5e863          	bltu	a1,a0,8000423c <__memmove+0x108>
    80004150:	00758713          	addi	a4,a1,7
    80004154:	00a5e7b3          	or	a5,a1,a0
    80004158:	40a70733          	sub	a4,a4,a0
    8000415c:	0077f793          	andi	a5,a5,7
    80004160:	00f73713          	sltiu	a4,a4,15
    80004164:	00174713          	xori	a4,a4,1
    80004168:	0017b793          	seqz	a5,a5
    8000416c:	00e7f7b3          	and	a5,a5,a4
    80004170:	10078863          	beqz	a5,80004280 <__memmove+0x14c>
    80004174:	00900793          	li	a5,9
    80004178:	1107f463          	bgeu	a5,a6,80004280 <__memmove+0x14c>
    8000417c:	0036581b          	srliw	a6,a2,0x3
    80004180:	fff8081b          	addiw	a6,a6,-1
    80004184:	02081813          	slli	a6,a6,0x20
    80004188:	01d85893          	srli	a7,a6,0x1d
    8000418c:	00858813          	addi	a6,a1,8
    80004190:	00058793          	mv	a5,a1
    80004194:	00050713          	mv	a4,a0
    80004198:	01088833          	add	a6,a7,a6
    8000419c:	0007b883          	ld	a7,0(a5)
    800041a0:	00878793          	addi	a5,a5,8
    800041a4:	00870713          	addi	a4,a4,8
    800041a8:	ff173c23          	sd	a7,-8(a4)
    800041ac:	ff0798e3          	bne	a5,a6,8000419c <__memmove+0x68>
    800041b0:	ff867713          	andi	a4,a2,-8
    800041b4:	02071793          	slli	a5,a4,0x20
    800041b8:	0207d793          	srli	a5,a5,0x20
    800041bc:	00f585b3          	add	a1,a1,a5
    800041c0:	40e686bb          	subw	a3,a3,a4
    800041c4:	00f507b3          	add	a5,a0,a5
    800041c8:	06e60463          	beq	a2,a4,80004230 <__memmove+0xfc>
    800041cc:	0005c703          	lbu	a4,0(a1)
    800041d0:	00e78023          	sb	a4,0(a5)
    800041d4:	04068e63          	beqz	a3,80004230 <__memmove+0xfc>
    800041d8:	0015c603          	lbu	a2,1(a1)
    800041dc:	00100713          	li	a4,1
    800041e0:	00c780a3          	sb	a2,1(a5)
    800041e4:	04e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    800041e8:	0025c603          	lbu	a2,2(a1)
    800041ec:	00200713          	li	a4,2
    800041f0:	00c78123          	sb	a2,2(a5)
    800041f4:	02e68e63          	beq	a3,a4,80004230 <__memmove+0xfc>
    800041f8:	0035c603          	lbu	a2,3(a1)
    800041fc:	00300713          	li	a4,3
    80004200:	00c781a3          	sb	a2,3(a5)
    80004204:	02e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004208:	0045c603          	lbu	a2,4(a1)
    8000420c:	00400713          	li	a4,4
    80004210:	00c78223          	sb	a2,4(a5)
    80004214:	00e68e63          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004218:	0055c603          	lbu	a2,5(a1)
    8000421c:	00500713          	li	a4,5
    80004220:	00c782a3          	sb	a2,5(a5)
    80004224:	00e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004228:	0065c703          	lbu	a4,6(a1)
    8000422c:	00e78323          	sb	a4,6(a5)
    80004230:	00813403          	ld	s0,8(sp)
    80004234:	01010113          	addi	sp,sp,16
    80004238:	00008067          	ret
    8000423c:	02061713          	slli	a4,a2,0x20
    80004240:	02075713          	srli	a4,a4,0x20
    80004244:	00e587b3          	add	a5,a1,a4
    80004248:	f0f574e3          	bgeu	a0,a5,80004150 <__memmove+0x1c>
    8000424c:	02069613          	slli	a2,a3,0x20
    80004250:	02065613          	srli	a2,a2,0x20
    80004254:	fff64613          	not	a2,a2
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00c78633          	add	a2,a5,a2
    80004260:	fff7c683          	lbu	a3,-1(a5)
    80004264:	fff78793          	addi	a5,a5,-1
    80004268:	fff70713          	addi	a4,a4,-1
    8000426c:	00d70023          	sb	a3,0(a4)
    80004270:	fec798e3          	bne	a5,a2,80004260 <__memmove+0x12c>
    80004274:	00813403          	ld	s0,8(sp)
    80004278:	01010113          	addi	sp,sp,16
    8000427c:	00008067          	ret
    80004280:	02069713          	slli	a4,a3,0x20
    80004284:	02075713          	srli	a4,a4,0x20
    80004288:	00170713          	addi	a4,a4,1
    8000428c:	00e50733          	add	a4,a0,a4
    80004290:	00050793          	mv	a5,a0
    80004294:	0005c683          	lbu	a3,0(a1)
    80004298:	00178793          	addi	a5,a5,1
    8000429c:	00158593          	addi	a1,a1,1
    800042a0:	fed78fa3          	sb	a3,-1(a5)
    800042a4:	fee798e3          	bne	a5,a4,80004294 <__memmove+0x160>
    800042a8:	f89ff06f          	j	80004230 <__memmove+0xfc>

00000000800042ac <__putc>:
    800042ac:	fe010113          	addi	sp,sp,-32
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	02010413          	addi	s0,sp,32
    800042bc:	00050793          	mv	a5,a0
    800042c0:	fef40593          	addi	a1,s0,-17
    800042c4:	00100613          	li	a2,1
    800042c8:	00000513          	li	a0,0
    800042cc:	fef407a3          	sb	a5,-17(s0)
    800042d0:	fffff097          	auipc	ra,0xfffff
    800042d4:	b3c080e7          	jalr	-1220(ra) # 80002e0c <console_write>
    800042d8:	01813083          	ld	ra,24(sp)
    800042dc:	01013403          	ld	s0,16(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret

00000000800042e8 <__getc>:
    800042e8:	fe010113          	addi	sp,sp,-32
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00113c23          	sd	ra,24(sp)
    800042f4:	02010413          	addi	s0,sp,32
    800042f8:	fe840593          	addi	a1,s0,-24
    800042fc:	00100613          	li	a2,1
    80004300:	00000513          	li	a0,0
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	ae8080e7          	jalr	-1304(ra) # 80002dec <console_read>
    8000430c:	fe844503          	lbu	a0,-24(s0)
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret

0000000080004320 <console_handler>:
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00113c23          	sd	ra,24(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	02010413          	addi	s0,sp,32
    80004334:	14202773          	csrr	a4,scause
    80004338:	100027f3          	csrr	a5,sstatus
    8000433c:	0027f793          	andi	a5,a5,2
    80004340:	06079e63          	bnez	a5,800043bc <console_handler+0x9c>
    80004344:	00074c63          	bltz	a4,8000435c <console_handler+0x3c>
    80004348:	01813083          	ld	ra,24(sp)
    8000434c:	01013403          	ld	s0,16(sp)
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	00008067          	ret
    8000435c:	0ff77713          	andi	a4,a4,255
    80004360:	00900793          	li	a5,9
    80004364:	fef712e3          	bne	a4,a5,80004348 <console_handler+0x28>
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	6dc080e7          	jalr	1756(ra) # 80002a44 <plic_claim>
    80004370:	00a00793          	li	a5,10
    80004374:	00050493          	mv	s1,a0
    80004378:	02f50c63          	beq	a0,a5,800043b0 <console_handler+0x90>
    8000437c:	fc0506e3          	beqz	a0,80004348 <console_handler+0x28>
    80004380:	00050593          	mv	a1,a0
    80004384:	00001517          	auipc	a0,0x1
    80004388:	e9450513          	addi	a0,a0,-364 # 80005218 <_ZZ12printIntegermE6digits+0xf8>
    8000438c:	fffff097          	auipc	ra,0xfffff
    80004390:	afc080e7          	jalr	-1284(ra) # 80002e88 <__printf>
    80004394:	01013403          	ld	s0,16(sp)
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	00048513          	mv	a0,s1
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	02010113          	addi	sp,sp,32
    800043a8:	ffffe317          	auipc	t1,0xffffe
    800043ac:	6d430067          	jr	1748(t1) # 80002a7c <plic_complete>
    800043b0:	fffff097          	auipc	ra,0xfffff
    800043b4:	3e0080e7          	jalr	992(ra) # 80003790 <uartintr>
    800043b8:	fddff06f          	j	80004394 <console_handler+0x74>
    800043bc:	00001517          	auipc	a0,0x1
    800043c0:	f5c50513          	addi	a0,a0,-164 # 80005318 <digits+0x78>
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	a68080e7          	jalr	-1432(ra) # 80002e2c <panic>
	...
