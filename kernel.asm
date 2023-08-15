
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7b013103          	ld	sp,1968(sp) # 800057b0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7a1010ef          	jal	ra,80001fbc <start>

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
    80001088:	69c000ef          	jal	ra,80001724 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001154:	b48080e7          	jalr	-1208(ra) # 80001c98 <_ZN15MemoryAllocator14convert2BlocksEm>
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
    800011e4:	ab8080e7          	jalr	-1352(ra) # 80001c98 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011e8:	00001097          	auipc	ra,0x1
    800011ec:	8cc080e7          	jalr	-1844(ra) # 80001ab4 <_ZN15MemoryAllocator9mem_allocEm>
    800011f0:	fea43423          	sd	a0,-24(s0)

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

00000000800012f8 <_Z11workerBodyAv>:
{
    800012f8:	fe010113          	addi	sp,sp,-32
    800012fc:	00113c23          	sd	ra,24(sp)
    80001300:	00813823          	sd	s0,16(sp)
    80001304:	00913423          	sd	s1,8(sp)
    80001308:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000130c:	00000493          	li	s1,0
    80001310:	0300006f          	j	80001340 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001314:	00168693          	addi	a3,a3,1
    80001318:	000027b7          	lui	a5,0x2
    8000131c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001320:	00d7ee63          	bltu	a5,a3,8000133c <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001324:	00000713          	li	a4,0
    80001328:	000077b7          	lui	a5,0x7
    8000132c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001330:	fee7e2e3          	bltu	a5,a4,80001314 <_Z11workerBodyAv+0x1c>
    80001334:	00170713          	addi	a4,a4,1
    80001338:	ff1ff06f          	j	80001328 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    8000133c:	00148493          	addi	s1,s1,1
    80001340:	00900793          	li	a5,9
    80001344:	0297ec63          	bltu	a5,s1,8000137c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001348:	00004517          	auipc	a0,0x4
    8000134c:	cd850513          	addi	a0,a0,-808 # 80005020 <CONSOLE_STATUS+0x10>
    80001350:	00001097          	auipc	ra,0x1
    80001354:	97c080e7          	jalr	-1668(ra) # 80001ccc <_Z11printStringPKc>
        printInteger(i);
    80001358:	00048513          	mv	a0,s1
    8000135c:	00001097          	auipc	ra,0x1
    80001360:	9e0080e7          	jalr	-1568(ra) # 80001d3c <_Z12printIntegerm>
        printString("\n");
    80001364:	00004517          	auipc	a0,0x4
    80001368:	d2c50513          	addi	a0,a0,-724 # 80005090 <CONSOLE_STATUS+0x80>
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	960080e7          	jalr	-1696(ra) # 80001ccc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001374:	00000693          	li	a3,0
    80001378:	fa1ff06f          	j	80001318 <_Z11workerBodyAv+0x20>
}
    8000137c:	01813083          	ld	ra,24(sp)
    80001380:	01013403          	ld	s0,16(sp)
    80001384:	00813483          	ld	s1,8(sp)
    80001388:	02010113          	addi	sp,sp,32
    8000138c:	00008067          	ret

0000000080001390 <_Z11workerBodyBv>:
{
    80001390:	fe010113          	addi	sp,sp,-32
    80001394:	00113c23          	sd	ra,24(sp)
    80001398:	00813823          	sd	s0,16(sp)
    8000139c:	00913423          	sd	s1,8(sp)
    800013a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800013a4:	00000493          	li	s1,0
    800013a8:	0300006f          	j	800013d8 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013ac:	00168693          	addi	a3,a3,1
    800013b0:	000027b7          	lui	a5,0x2
    800013b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013b8:	00d7ee63          	bltu	a5,a3,800013d4 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013bc:	00000713          	li	a4,0
    800013c0:	000077b7          	lui	a5,0x7
    800013c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013c8:	fee7e2e3          	bltu	a5,a4,800013ac <_Z11workerBodyBv+0x1c>
    800013cc:	00170713          	addi	a4,a4,1
    800013d0:	ff1ff06f          	j	800013c0 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800013d4:	00148493          	addi	s1,s1,1
    800013d8:	00f00793          	li	a5,15
    800013dc:	0297ec63          	bltu	a5,s1,80001414 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    800013e0:	00004517          	auipc	a0,0x4
    800013e4:	c4850513          	addi	a0,a0,-952 # 80005028 <CONSOLE_STATUS+0x18>
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	8e4080e7          	jalr	-1820(ra) # 80001ccc <_Z11printStringPKc>
        printInteger(i);
    800013f0:	00048513          	mv	a0,s1
    800013f4:	00001097          	auipc	ra,0x1
    800013f8:	948080e7          	jalr	-1720(ra) # 80001d3c <_Z12printIntegerm>
        printString("\n");
    800013fc:	00004517          	auipc	a0,0x4
    80001400:	c9450513          	addi	a0,a0,-876 # 80005090 <CONSOLE_STATUS+0x80>
    80001404:	00001097          	auipc	ra,0x1
    80001408:	8c8080e7          	jalr	-1848(ra) # 80001ccc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000140c:	00000693          	li	a3,0
    80001410:	fa1ff06f          	j	800013b0 <_Z11workerBodyBv+0x20>
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
    80001454:	87c080e7          	jalr	-1924(ra) # 80001ccc <_Z11printStringPKc>
        printInteger(i);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	8e0080e7          	jalr	-1824(ra) # 80001d3c <_Z12printIntegerm>
        printString("\n");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	c2c50513          	addi	a0,a0,-980 # 80005090 <CONSOLE_STATUS+0x80>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	860080e7          	jalr	-1952(ra) # 80001ccc <_Z11printStringPKc>
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
    80001490:	840080e7          	jalr	-1984(ra) # 80001ccc <_Z11printStringPKc>
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
    800014b0:	820080e7          	jalr	-2016(ra) # 80001ccc <_Z11printStringPKc>
    printInteger(t1);
    800014b4:	00090513          	mv	a0,s2
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	884080e7          	jalr	-1916(ra) # 80001d3c <_Z12printIntegerm>
    printString("\n");
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	bd050513          	addi	a0,a0,-1072 # 80005090 <CONSOLE_STATUS+0x80>
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	804080e7          	jalr	-2044(ra) # 80001ccc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014d0:	00c00513          	li	a0,12
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	db0080e7          	jalr	-592(ra) # 80001284 <_ZL9fibonaccim>
    800014dc:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014e0:	00004517          	auipc	a0,0x4
    800014e4:	b7050513          	addi	a0,a0,-1168 # 80005050 <CONSOLE_STATUS+0x40>
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	7e4080e7          	jalr	2020(ra) # 80001ccc <_Z11printStringPKc>
    printInteger(result);
    800014f0:	00090513          	mv	a0,s2
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	848080e7          	jalr	-1976(ra) # 80001d3c <_Z12printIntegerm>
    printString("\n");
    800014fc:	00004517          	auipc	a0,0x4
    80001500:	b9450513          	addi	a0,a0,-1132 # 80005090 <CONSOLE_STATUS+0x80>
    80001504:	00000097          	auipc	ra,0x0
    80001508:	7c8080e7          	jalr	1992(ra) # 80001ccc <_Z11printStringPKc>
    8000150c:	0380006f          	j	80001544 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	b2050513          	addi	a0,a0,-1248 # 80005030 <CONSOLE_STATUS+0x20>
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	7b4080e7          	jalr	1972(ra) # 80001ccc <_Z11printStringPKc>
        printInteger(i);
    80001520:	00048513          	mv	a0,s1
    80001524:	00001097          	auipc	ra,0x1
    80001528:	818080e7          	jalr	-2024(ra) # 80001d3c <_Z12printIntegerm>
        printString("\n");
    8000152c:	00004517          	auipc	a0,0x4
    80001530:	b6450513          	addi	a0,a0,-1180 # 80005090 <CONSOLE_STATUS+0x80>
    80001534:	00000097          	auipc	ra,0x0
    80001538:	798080e7          	jalr	1944(ra) # 80001ccc <_Z11printStringPKc>
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
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	740080e7          	jalr	1856(ra) # 80001ccc <_Z11printStringPKc>
        printInteger(i);
    80001594:	00048513          	mv	a0,s1
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	7a4080e7          	jalr	1956(ra) # 80001d3c <_Z12printIntegerm>
        printString("\n");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	af050513          	addi	a0,a0,-1296 # 80005090 <CONSOLE_STATUS+0x80>
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	724080e7          	jalr	1828(ra) # 80001ccc <_Z11printStringPKc>
    for (; i < 13; i++)
    800015b0:	0014849b          	addiw	s1,s1,1
    800015b4:	0ff4f493          	andi	s1,s1,255
    800015b8:	00c00793          	li	a5,12
    800015bc:	fc97f4e3          	bgeu	a5,s1,80001584 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	aa850513          	addi	a0,a0,-1368 # 80005068 <CONSOLE_STATUS+0x58>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	704080e7          	jalr	1796(ra) # 80001ccc <_Z11printStringPKc>
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
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	6d8080e7          	jalr	1752(ra) # 80001ccc <_Z11printStringPKc>
    printInteger(result);
    800015fc:	00090513          	mv	a0,s2
    80001600:	00000097          	auipc	ra,0x0
    80001604:	73c080e7          	jalr	1852(ra) # 80001d3c <_Z12printIntegerm>
    printString("\n");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	a8850513          	addi	a0,a0,-1400 # 80005090 <CONSOLE_STATUS+0x80>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	6bc080e7          	jalr	1724(ra) # 80001ccc <_Z11printStringPKc>
    80001618:	0380006f          	j	80001650 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	a4450513          	addi	a0,a0,-1468 # 80005060 <CONSOLE_STATUS+0x50>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	6a8080e7          	jalr	1704(ra) # 80001ccc <_Z11printStringPKc>
        printInteger(i);
    8000162c:	00048513          	mv	a0,s1
    80001630:	00000097          	auipc	ra,0x0
    80001634:	70c080e7          	jalr	1804(ra) # 80001d3c <_Z12printIntegerm>
        printString("\n");
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	a5850513          	addi	a0,a0,-1448 # 80005090 <CONSOLE_STATUS+0x80>
    80001640:	00000097          	auipc	ra,0x0
    80001644:	68c080e7          	jalr	1676(ra) # 80001ccc <_Z11printStringPKc>
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
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

void userMain()
{
    80001670:	ff010113          	addi	sp,sp,-16
    80001674:	00113423          	sd	ra,8(sp)
    80001678:	00813023          	sd	s0,0(sp)
    8000167c:	01010413          	addi	s0,sp,16
    __putc('1');
    80001680:	03100513          	li	a0,49
    80001684:	00003097          	auipc	ra,0x3
    80001688:	9f8080e7          	jalr	-1544(ra) # 8000407c <__putc>
    __putc('\n');
    8000168c:	00a00513          	li	a0,10
    80001690:	00003097          	auipc	ra,0x3
    80001694:	9ec080e7          	jalr	-1556(ra) # 8000407c <__putc>

    printString("Finished\n");
    80001698:	00004517          	auipc	a0,0x4
    8000169c:	9f050513          	addi	a0,a0,-1552 # 80005088 <CONSOLE_STATUS+0x78>
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	62c080e7          	jalr	1580(ra) # 80001ccc <_Z11printStringPKc>
}
    800016a8:	00813083          	ld	ra,8(sp)
    800016ac:	00013403          	ld	s0,0(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret

00000000800016b8 <main>:

void main()
{
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00113423          	sd	ra,8(sp)
    800016c0:	00813023          	sd	s0,0(sp)
    800016c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::initialise();
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	37c080e7          	jalr	892(ra) # 80001a44 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800016d0:	00004797          	auipc	a5,0x4
    800016d4:	0d87b783          	ld	a5,216(a5) # 800057a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016d8:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800016dc:	00200793          	li	a5,2
    800016e0:	1007a073          	csrs	sstatus,a5
//    printInteger(retVal);
//    printString("\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	f8c080e7          	jalr	-116(ra) # 80001670 <_Z8userMainv>

    thread_exit();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	b40080e7          	jalr	-1216(ra) # 8000122c <_Z11thread_exitv>
}
    800016f4:	00813083          	ld	ra,8(sp)
    800016f8:	00013403          	ld	s0,0(sp)
    800016fc:	01010113          	addi	sp,sp,16
    80001700:	00008067          	ret

0000000080001704 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"

void Riscv::popSppSpie()
{
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00813423          	sd	s0,8(sp)
    8000170c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001710:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001714:	10200073          	sret
}
    80001718:	00813403          	ld	s0,8(sp)
    8000171c:	01010113          	addi	sp,sp,16
    80001720:	00008067          	ret

0000000080001724 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001724:	f7010113          	addi	sp,sp,-144
    80001728:	08113423          	sd	ra,136(sp)
    8000172c:	08813023          	sd	s0,128(sp)
    80001730:	06913c23          	sd	s1,120(sp)
    80001734:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    80001738:	faa43023          	sd	a0,-96(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    8000173c:	fab43423          	sd	a1,-88(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    80001740:	fac43823          	sd	a2,-80(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80001744:	fad43c23          	sd	a3,-72(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80001748:	fce43023          	sd	a4,-64(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    8000174c:	fcf43423          	sd	a5,-56(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    80001750:	fd043823          	sd	a6,-48(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80001754:	fd143c23          	sd	a7,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001758:	141027f3          	csrr	a5,sepc
    8000175c:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001760:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    80001764:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001768:	100027f3          	csrr	a5,sstatus
    8000176c:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001770:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80001774:	f8f43823          	sd	a5,-112(s0)

    // retrieve stack pointer relative to saved registers
    void* SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80001778:	140024f3          	csrr	s1,sscratch
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000177c:	142027f3          	csrr	a5,scause
    80001780:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001784:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001788:	ff870693          	addi	a3,a4,-8
    8000178c:	00100793          	li	a5,1
    80001790:	02d7fc63          	bgeu	a5,a3,800017c8 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    80001794:	fff00793          	li	a5,-1
    80001798:	03f79793          	slli	a5,a5,0x3f
    8000179c:	00178793          	addi	a5,a5,1
    800017a0:	10f70663          	beq	a4,a5,800018ac <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            _thread::threadDispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    800017a4:	fff00793          	li	a5,-1
    800017a8:	03f79793          	slli	a5,a5,0x3f
    800017ac:	00978793          	addi	a5,a5,9
    800017b0:	14f70663          	beq	a4,a5,800018fc <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    }
    else
    {
        // unexpected trap cause
    }
    800017b4:	08813083          	ld	ra,136(sp)
    800017b8:	08013403          	ld	s0,128(sp)
    800017bc:	07813483          	ld	s1,120(sp)
    800017c0:	09010113          	addi	sp,sp,144
    800017c4:	00008067          	ret
        w_sepc(sepc + 4);
    800017c8:	f9843783          	ld	a5,-104(s0)
    800017cc:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800017d0:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    800017d4:	fa043783          	ld	a5,-96(s0)
    800017d8:	00100713          	li	a4,1
    800017dc:	04e78863          	beq	a5,a4,8000182c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        else if (a[0] == 0x0000000000000002UL)
    800017e0:	00200713          	li	a4,2
    800017e4:	06e78463          	beq	a5,a4,8000184c <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        else if (a[0] == 0x0000000000000011UL)
    800017e8:	01100713          	li	a4,17
    800017ec:	06e78c63          	beq	a5,a4,80001864 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        else if (a[0] == 0x0000000000000012UL)
    800017f0:	01200713          	li	a4,18
    800017f4:	08e78a63          	beq	a5,a4,80001888 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (a[0] == 0x0000000000000013UL)
    800017f8:	01300713          	li	a4,19
    800017fc:	fae79ce3          	bne	a5,a4,800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
            _thread::running->timeSlice = 0;
    80001800:	00004797          	auipc	a5,0x4
    80001804:	fa07b783          	ld	a5,-96(a5) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001808:	0007b783          	ld	a5,0(a5)
    8000180c:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    80001810:	00000097          	auipc	ra,0x0
    80001814:	708080e7          	jalr	1800(ra) # 80001f18 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001818:	f9043783          	ld	a5,-112(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000181c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001820:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001824:	14179073          	csrw	sepc,a5
}
    80001828:	f8dff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    8000182c:	fa843503          	ld	a0,-88(s0)
    80001830:	00000097          	auipc	ra,0x0
    80001834:	468080e7          	jalr	1128(ra) # 80001c98 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	27c080e7          	jalr	636(ra) # 80001ab4 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001840:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001844:	04a4b823          	sd	a0,80(s1)
    80001848:	f6dff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
            int retVal = MemoryAllocator::mem_free(ptr);
    8000184c:	fa843503          	ld	a0,-88(s0)
    80001850:	00000097          	auipc	ra,0x0
    80001854:	38c080e7          	jalr	908(ra) # 80001bdc <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001858:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    8000185c:	04a4b823          	sd	a0,80(s1)
    80001860:	f55ff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80001864:	fc043683          	ld	a3,-64(s0)
    80001868:	fb843603          	ld	a2,-72(s0)
    8000186c:	fb043583          	ld	a1,-80(s0)
    80001870:	fa843503          	ld	a0,-88(s0)
    80001874:	00000097          	auipc	ra,0x0
    80001878:	5c8080e7          	jalr	1480(ra) # 80001e3c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    8000187c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001880:	04a4b823          	sd	a0,80(s1)
    80001884:	f31ff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
            _thread::running->finished = true;
    80001888:	00004797          	auipc	a5,0x4
    8000188c:	f187b783          	ld	a5,-232(a5) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001890:	0007b783          	ld	a5,0(a5)
    80001894:	00100713          	li	a4,1
    80001898:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	67c080e7          	jalr	1660(ra) # 80001f18 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800018a4:	00050793          	mv	a5,a0
    800018a8:	f0dff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800018ac:	00200693          	li	a3,2
    800018b0:	1446b073          	csrc	sip,a3
        _thread::running->timeSlice++;
    800018b4:	00004797          	auipc	a5,0x4
    800018b8:	eec7b783          	ld	a5,-276(a5) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018bc:	0007b703          	ld	a4,0(a5)
    800018c0:	03073783          	ld	a5,48(a4)
    800018c4:	00178793          	addi	a5,a5,1
    800018c8:	02f73823          	sd	a5,48(a4)
        if (DEFAULT_TIME_SLICE >= _thread::running->timeSlice)
    800018cc:	eef6e4e3          	bltu	a3,a5,800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
            sepc = sepc + 4;
    800018d0:	f9843783          	ld	a5,-104(s0)
    800018d4:	00478793          	addi	a5,a5,4
    800018d8:	f8f43c23          	sd	a5,-104(s0)
            _thread::running->timeSlice = 0;
    800018dc:	02073823          	sd	zero,48(a4)
            _thread::threadDispatch();
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	638080e7          	jalr	1592(ra) # 80001f18 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    800018e8:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800018ec:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800018f0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800018f4:	14179073          	csrw	sepc,a5
}
    800018f8:	ebdff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
        console_handler();
    800018fc:	00002097          	auipc	ra,0x2
    80001900:	7f4080e7          	jalr	2036(ra) # 800040f0 <console_handler>
    80001904:	eb1ff06f          	j	800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x90>

0000000080001908 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(&ccb);
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00813423          	sd	s0,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    80001914:	00100793          	li	a5,1
    80001918:	00f50863          	beq	a0,a5,80001928 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000191c:	00813403          	ld	s0,8(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret
    80001928:	000107b7          	lui	a5,0x10
    8000192c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001930:	fef596e3          	bne	a1,a5,8000191c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001934:	00004797          	auipc	a5,0x4
    80001938:	edc78793          	addi	a5,a5,-292 # 80005810 <_ZN9Scheduler16readyThreadQueueE>
    8000193c:	0007b023          	sd	zero,0(a5)
    80001940:	0007b423          	sd	zero,8(a5)
    80001944:	fd9ff06f          	j	8000191c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001948 <_ZN9Scheduler3getEv>:
{
    80001948:	fe010113          	addi	sp,sp,-32
    8000194c:	00113c23          	sd	ra,24(sp)
    80001950:	00813823          	sd	s0,16(sp)
    80001954:	00913423          	sd	s1,8(sp)
    80001958:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000195c:	00004517          	auipc	a0,0x4
    80001960:	eb453503          	ld	a0,-332(a0) # 80005810 <_ZN9Scheduler16readyThreadQueueE>
    80001964:	04050263          	beqz	a0,800019a8 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001968:	00853783          	ld	a5,8(a0)
    8000196c:	00004717          	auipc	a4,0x4
    80001970:	eaf73223          	sd	a5,-348(a4) # 80005810 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001974:	02078463          	beqz	a5,8000199c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001978:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	260080e7          	jalr	608(ra) # 80001bdc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001984:	0004b503          	ld	a0,0(s1)
    80001988:	01813083          	ld	ra,24(sp)
    8000198c:	01013403          	ld	s0,16(sp)
    80001990:	00813483          	ld	s1,8(sp)
    80001994:	02010113          	addi	sp,sp,32
    80001998:	00008067          	ret
        if (!head) { tail = 0; }
    8000199c:	00004797          	auipc	a5,0x4
    800019a0:	e607be23          	sd	zero,-388(a5) # 80005818 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800019a4:	fd5ff06f          	j	80001978 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800019a8:	00050493          	mv	s1,a0
    800019ac:	fd9ff06f          	j	80001984 <_ZN9Scheduler3getEv+0x3c>

00000000800019b0 <_ZN9Scheduler3putEP7_thread>:
{
    800019b0:	ff010113          	addi	sp,sp,-16
    800019b4:	00113423          	sd	ra,8(sp)
    800019b8:	00813023          	sd	s0,0(sp)
    800019bc:	01010413          	addi	s0,sp,16
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    800019c0:	01000513          	li	a0,16
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	2d4080e7          	jalr	724(ra) # 80001c98 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	0e8080e7          	jalr	232(ra) # 80001ab4 <_ZN15MemoryAllocator9mem_allocEm>
        if (tail)
    800019d4:	00004797          	auipc	a5,0x4
    800019d8:	e447b783          	ld	a5,-444(a5) # 80005818 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800019dc:	02078063          	beqz	a5,800019fc <_ZN9Scheduler3putEP7_thread+0x4c>
            tail->next = elem;
    800019e0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800019e4:	00004797          	auipc	a5,0x4
    800019e8:	e2a7ba23          	sd	a0,-460(a5) # 80005818 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret
            head = tail = elem;
    800019fc:	00004797          	auipc	a5,0x4
    80001a00:	e1478793          	addi	a5,a5,-492 # 80005810 <_ZN9Scheduler16readyThreadQueueE>
    80001a04:	00a7b423          	sd	a0,8(a5)
    80001a08:	00a7b023          	sd	a0,0(a5)
    80001a0c:	fe1ff06f          	j	800019ec <_ZN9Scheduler3putEP7_thread+0x3c>

0000000080001a10 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    80001a20:	000105b7          	lui	a1,0x10
    80001a24:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001a28:	00100513          	li	a0,1
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	edc080e7          	jalr	-292(ra) # 80001908 <_Z41__static_initialization_and_destruction_0ii>
    80001a34:	00813083          	ld	ra,8(sp)
    80001a38:	00013403          	ld	s0,0(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001a50:	00004797          	auipc	a5,0x4
    80001a54:	d487b783          	ld	a5,-696(a5) # 80005798 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a58:	0007b703          	ld	a4,0(a5)
    80001a5c:	fc077713          	andi	a4,a4,-64
    80001a60:	04070613          	addi	a2,a4,64
    80001a64:	00004797          	auipc	a5,0x4
    80001a68:	dbc78793          	addi	a5,a5,-580 # 80005820 <_ZN15MemoryAllocator8memStartE>
    80001a6c:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001a70:	00004697          	auipc	a3,0x4
    80001a74:	d486b683          	ld	a3,-696(a3) # 800057b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a78:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001a7c:	fc06f693          	andi	a3,a3,-64
    80001a80:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001a84:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001a88:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001a8c:	0107b683          	ld	a3,16(a5)
    80001a90:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001a94:	0087b703          	ld	a4,8(a5)
    80001a98:	0007b783          	ld	a5,0(a5)
    80001a9c:	40f707b3          	sub	a5,a4,a5
    80001aa0:	0067d793          	srli	a5,a5,0x6
    80001aa4:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00813423          	sd	s0,8(sp)
    80001abc:	01010413          	addi	s0,sp,16
    if (size == 0)
    80001ac0:	0a050463          	beqz	a0,80001b68 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80001ac4:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001ac8:	00004697          	auipc	a3,0x4
    80001acc:	d686b683          	ld	a3,-664(a3) # 80005830 <_ZN15MemoryAllocator4headE>
    80001ad0:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001ad4:	04050e63          	beqz	a0,80001b30 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001ad8:	01053783          	ld	a5,16(a0)
    80001adc:	00e7fa63          	bgeu	a5,a4,80001af0 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80001ae0:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001ae4:	fea698e3          	bne	a3,a0,80001ad4 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80001ae8:	00000513          	li	a0,0
    80001aec:	0440006f          	j	80001b30 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    80001af0:	40e787b3          	sub	a5,a5,a4
    80001af4:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80001af8:	02079263          	bnez	a5,80001b1c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    80001afc:	04d50063          	beq	a0,a3,80001b3c <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001b00:	00053783          	ld	a5,0(a0)
    80001b04:	04078463          	beqz	a5,80001b4c <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80001b08:	00853683          	ld	a3,8(a0)
    80001b0c:	04068063          	beqz	a3,80001b4c <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    80001b10:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80001b14:	00853683          	ld	a3,8(a0)
    80001b18:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    80001b1c:	01053783          	ld	a5,16(a0)
    80001b20:	00679793          	slli	a5,a5,0x6
    80001b24:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    80001b28:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001b2c:	00878513          	addi	a0,a5,8
}
    80001b30:	00813403          	ld	s0,8(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001b3c:	0006b783          	ld	a5,0(a3)
    80001b40:	00004697          	auipc	a3,0x4
    80001b44:	cef6b823          	sd	a5,-784(a3) # 80005830 <_ZN15MemoryAllocator4headE>
    80001b48:	fb9ff06f          	j	80001b00 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    80001b4c:	00853683          	ld	a3,8(a0)
    80001b50:	00068663          	beqz	a3,80001b5c <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80001b54:	0006b023          	sd	zero,0(a3)
    80001b58:	fc5ff06f          	j	80001b1c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    80001b5c:	fc0780e3          	beqz	a5,80001b1c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80001b60:	0007b423          	sd	zero,8(a5)
    80001b64:	fb9ff06f          	j	80001b1c <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80001b68:	00000513          	li	a0,0
    80001b6c:	fc5ff06f          	j	80001b30 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080001b70 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00813423          	sd	s0,8(sp)
    80001b78:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001b7c:	04050863          	beqz	a0,80001bcc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001b80:	00053783          	ld	a5,0(a0)
    80001b84:	04078863          	beqz	a5,80001bd4 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001b88:	01053683          	ld	a3,16(a0)
    80001b8c:	00669713          	slli	a4,a3,0x6
    80001b90:	00e50733          	add	a4,a0,a4
    80001b94:	00f70a63          	beq	a4,a5,80001ba8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001b98:	00000513          	li	a0,0
    }
}
    80001b9c:	00813403          	ld	s0,8(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret
        curr->size += curr->next->size;
    80001ba8:	0107b703          	ld	a4,16(a5)
    80001bac:	00e686b3          	add	a3,a3,a4
    80001bb0:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001bb4:	0007b783          	ld	a5,0(a5)
    80001bb8:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001bbc:	00078463          	beqz	a5,80001bc4 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001bc0:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001bc4:	00100513          	li	a0,1
    80001bc8:	fd5ff06f          	j	80001b9c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001bcc:	00000513          	li	a0,0
    80001bd0:	fcdff06f          	j	80001b9c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001bd4:	00000513          	li	a0,0
    80001bd8:	fc5ff06f          	j	80001b9c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001bdc <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80001bf4:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80001bf8:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001bfc:	00004697          	auipc	a3,0x4
    80001c00:	c346b683          	ld	a3,-972(a3) # 80005830 <_ZN15MemoryAllocator4headE>
    80001c04:	02068063          	beqz	a3,80001c24 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80001c08:	02d56263          	bltu	a0,a3,80001c2c <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001c0c:	00068793          	mv	a5,a3
    80001c10:	00078493          	mv	s1,a5
    80001c14:	0007b783          	ld	a5,0(a5)
    80001c18:	00078c63          	beqz	a5,80001c30 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001c1c:	fea7eae3          	bltu	a5,a0,80001c10 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    80001c20:	0100006f          	j	80001c30 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        curr = 0;
    80001c24:	00068493          	mv	s1,a3
    80001c28:	0080006f          	j	80001c30 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001c2c:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001c30:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80001c34:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80001c38:	04048663          	beqz	s1,80001c84 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    80001c3c:	0004b783          	ld	a5,0(s1)
    80001c40:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001c44:	ff873783          	ld	a5,-8(a4)
    80001c48:	00078463          	beqz	a5,80001c50 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    80001c4c:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001c50:	02048e63          	beqz	s1,80001c8c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80001c54:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	f18080e7          	jalr	-232(ra) # 80001b70 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001c60:	00048513          	mv	a0,s1
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	f0c080e7          	jalr	-244(ra) # 80001b70 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
}
    80001c6c:	00000513          	li	a0,0
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	02010113          	addi	sp,sp,32
    80001c80:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001c84:	fed73c23          	sd	a3,-8(a4)
    80001c88:	fbdff06f          	j	80001c44 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    else MemoryAllocator::head = newSeg;
    80001c8c:	00004797          	auipc	a5,0x4
    80001c90:	baa7b223          	sd	a0,-1116(a5) # 80005830 <_ZN15MemoryAllocator4headE>
    80001c94:	fc5ff06f          	j	80001c58 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>

0000000080001c98 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00813423          	sd	s0,8(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001ca4:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001ca8:	03f57793          	andi	a5,a0,63
    80001cac:	00078c63          	beqz	a5,80001cc4 <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001cb0:	00655513          	srli	a0,a0,0x6
    80001cb4:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001cc4:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80001cc8:	ff1ff06f          	j	80001cb8 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080001ccc <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001ccc:	fd010113          	addi	sp,sp,-48
    80001cd0:	02113423          	sd	ra,40(sp)
    80001cd4:	02813023          	sd	s0,32(sp)
    80001cd8:	00913c23          	sd	s1,24(sp)
    80001cdc:	01213823          	sd	s2,16(sp)
    80001ce0:	03010413          	addi	s0,sp,48
    80001ce4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ce8:	100027f3          	csrr	a5,sstatus
    80001cec:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001cf0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cf4:	00200793          	li	a5,2
    80001cf8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001cfc:	0004c503          	lbu	a0,0(s1)
    80001d00:	00050a63          	beqz	a0,80001d14 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001d04:	00002097          	auipc	ra,0x2
    80001d08:	378080e7          	jalr	888(ra) # 8000407c <__putc>
        string++;
    80001d0c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001d10:	fedff06f          	j	80001cfc <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001d14:	0009091b          	sext.w	s2,s2
    80001d18:	00297913          	andi	s2,s2,2
    80001d1c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d20:	10092073          	csrs	sstatus,s2
}
    80001d24:	02813083          	ld	ra,40(sp)
    80001d28:	02013403          	ld	s0,32(sp)
    80001d2c:	01813483          	ld	s1,24(sp)
    80001d30:	01013903          	ld	s2,16(sp)
    80001d34:	03010113          	addi	sp,sp,48
    80001d38:	00008067          	ret

0000000080001d3c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001d3c:	fc010113          	addi	sp,sp,-64
    80001d40:	02113c23          	sd	ra,56(sp)
    80001d44:	02813823          	sd	s0,48(sp)
    80001d48:	02913423          	sd	s1,40(sp)
    80001d4c:	03213023          	sd	s2,32(sp)
    80001d50:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d54:	100027f3          	csrr	a5,sstatus
    80001d58:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001d5c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d60:	00200793          	li	a5,2
    80001d64:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d68:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d6c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d70:	00a00613          	li	a2,10
    80001d74:	02c5773b          	remuw	a4,a0,a2
    80001d78:	02071693          	slli	a3,a4,0x20
    80001d7c:	0206d693          	srli	a3,a3,0x20
    80001d80:	00003717          	auipc	a4,0x3
    80001d84:	31870713          	addi	a4,a4,792 # 80005098 <_ZZ12printIntegermE6digits>
    80001d88:	00d70733          	add	a4,a4,a3
    80001d8c:	00074703          	lbu	a4,0(a4)
    80001d90:	fe040693          	addi	a3,s0,-32
    80001d94:	009687b3          	add	a5,a3,s1
    80001d98:	0014849b          	addiw	s1,s1,1
    80001d9c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001da0:	0005071b          	sext.w	a4,a0
    80001da4:	02c5553b          	divuw	a0,a0,a2
    80001da8:	00900793          	li	a5,9
    80001dac:	fce7e2e3          	bltu	a5,a4,80001d70 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001db0:	fff4849b          	addiw	s1,s1,-1
    80001db4:	0004ce63          	bltz	s1,80001dd0 <_Z12printIntegerm+0x94>
    80001db8:	fe040793          	addi	a5,s0,-32
    80001dbc:	009787b3          	add	a5,a5,s1
    80001dc0:	ff07c503          	lbu	a0,-16(a5)
    80001dc4:	00002097          	auipc	ra,0x2
    80001dc8:	2b8080e7          	jalr	696(ra) # 8000407c <__putc>
    80001dcc:	fe5ff06f          	j	80001db0 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001dd0:	0009091b          	sext.w	s2,s2
    80001dd4:	00297913          	andi	s2,s2,2
    80001dd8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ddc:	10092073          	csrs	sstatus,s2
    80001de0:	03813083          	ld	ra,56(sp)
    80001de4:	03013403          	ld	s0,48(sp)
    80001de8:	02813483          	ld	s1,40(sp)
    80001dec:	02013903          	ld	s2,32(sp)
    80001df0:	04010113          	addi	sp,sp,64
    80001df4:	00008067          	ret

0000000080001df8 <_ZN7_thread13threadWrapperEv>:

    return 0;
}

void _thread::threadWrapper()
{
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	8fc080e7          	jalr	-1796(ra) # 80001704 <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    80001e10:	00004797          	auipc	a5,0x4
    80001e14:	a287b783          	ld	a5,-1496(a5) # 80005838 <_ZN7_thread7runningE>
    80001e18:	0007b703          	ld	a4,0(a5)
    80001e1c:	0287b503          	ld	a0,40(a5)
    80001e20:	000700e7          	jalr	a4

    thread_exit();
    80001e24:	fffff097          	auipc	ra,0xfffff
    80001e28:	408080e7          	jalr	1032(ra) # 8000122c <_Z11thread_exitv>
}
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80001e3c:	fd010113          	addi	sp,sp,-48
    80001e40:	02113423          	sd	ra,40(sp)
    80001e44:	02813023          	sd	s0,32(sp)
    80001e48:	00913c23          	sd	s1,24(sp)
    80001e4c:	01213823          	sd	s2,16(sp)
    80001e50:	01313423          	sd	s3,8(sp)
    80001e54:	03010413          	addi	s0,sp,48
    80001e58:	00058493          	mv	s1,a1
    80001e5c:	00060913          	mv	s2,a2
    80001e60:	00068993          	mv	s3,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(thread_t));
    80001e64:	00800513          	li	a0,8
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	e30080e7          	jalr	-464(ra) # 80001c98 <_ZN15MemoryAllocator14convert2BlocksEm>
    handle = (thread_t*) MemoryAllocator::mem_alloc(blockNum);
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	c44080e7          	jalr	-956(ra) # 80001ab4 <_ZN15MemoryAllocator9mem_allocEm>
    (*handle)->finished = false;
    80001e78:	00053783          	ld	a5,0(a0)
    80001e7c:	00078423          	sb	zero,8(a5)
    (*handle)->timeSlice = DEFAULT_TIME_SLICE;
    80001e80:	00053783          	ld	a5,0(a0)
    80001e84:	00200713          	li	a4,2
    80001e88:	02e7b823          	sd	a4,48(a5)
    (*handle)->body = start_routine;
    80001e8c:	00053783          	ld	a5,0(a0)
    80001e90:	0097b023          	sd	s1,0(a5)
    (*handle)->arg = arg;
    80001e94:	00053783          	ld	a5,0(a0)
    80001e98:	0327b423          	sd	s2,40(a5)
    if (start_routine != nullptr)
    80001e9c:	06048463          	beqz	s1,80001f04 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xc8>
        (*handle)->stack = (uint64*) stack_space;
    80001ea0:	00053783          	ld	a5,0(a0)
    80001ea4:	0137b823          	sd	s3,16(a5)
    (*handle)->context.ra = (uint64) &threadWrapper;
    80001ea8:	00053783          	ld	a5,0(a0)
    80001eac:	00000717          	auipc	a4,0x0
    80001eb0:	f4c70713          	addi	a4,a4,-180 # 80001df8 <_ZN7_thread13threadWrapperEv>
    80001eb4:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->stack != nullptr)
    80001eb8:	00053703          	ld	a4,0(a0)
    80001ebc:	01073783          	ld	a5,16(a4)
    80001ec0:	04078863          	beqz	a5,80001f10 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd4>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80001ec4:	000086b7          	lui	a3,0x8
    80001ec8:	00d787b3          	add	a5,a5,a3
    80001ecc:	02f73023          	sd	a5,32(a4)
    if ((*handle)->body != nullptr)
    80001ed0:	00053503          	ld	a0,0(a0)
    80001ed4:	00053783          	ld	a5,0(a0)
    80001ed8:	00078663          	beqz	a5,80001ee4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xa8>
        Scheduler::put(*handle);
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	ad4080e7          	jalr	-1324(ra) # 800019b0 <_ZN9Scheduler3putEP7_thread>
}
    80001ee4:	00000513          	li	a0,0
    80001ee8:	02813083          	ld	ra,40(sp)
    80001eec:	02013403          	ld	s0,32(sp)
    80001ef0:	01813483          	ld	s1,24(sp)
    80001ef4:	01013903          	ld	s2,16(sp)
    80001ef8:	00813983          	ld	s3,8(sp)
    80001efc:	03010113          	addi	sp,sp,48
    80001f00:	00008067          	ret
        (*handle)->stack = nullptr;
    80001f04:	00053783          	ld	a5,0(a0)
    80001f08:	0007b823          	sd	zero,16(a5)
    80001f0c:	f9dff06f          	j	80001ea8 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x6c>
        (*handle)->context.sp = 0;
    80001f10:	02073023          	sd	zero,32(a4)
    80001f14:	fbdff06f          	j	80001ed0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x94>

0000000080001f18 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	01213023          	sd	s2,0(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    _thread *old = _thread::running;
    80001f30:	00004917          	auipc	s2,0x4
    80001f34:	90890913          	addi	s2,s2,-1784 # 80005838 <_ZN7_thread7runningE>
    80001f38:	00093483          	ld	s1,0(s2)
    _thread::running = Scheduler::get();
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	a0c080e7          	jalr	-1524(ra) # 80001948 <_ZN9Scheduler3getEv>
    80001f44:	00a93023          	sd	a0,0(s2)

    if (!old->finished)
    80001f48:	0084c783          	lbu	a5,8(s1)
    80001f4c:	04079063          	bnez	a5,80001f8c <_ZN7_thread14threadDispatchEv+0x74>
    {
        Scheduler::put(old);
    80001f50:	00048513          	mv	a0,s1
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	a5c080e7          	jalr	-1444(ra) # 800019b0 <_ZN9Scheduler3putEP7_thread>
        contextSwitch(&old->context, &(_thread::running->context));
    80001f5c:	00004597          	auipc	a1,0x4
    80001f60:	8dc5b583          	ld	a1,-1828(a1) # 80005838 <_ZN7_thread7runningE>
    80001f64:	01858593          	addi	a1,a1,24
    80001f68:	01848513          	addi	a0,s1,24
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	1b4080e7          	jalr	436(ra) # 80001120 <contextSwitch>
        // thread finished -> dealloc the stack and thread
        MemoryAllocator::mem_free(old->stack);
        MemoryAllocator::mem_free(old);
        contextSwitchThreadEnded(&_thread::running->context);
    }
}
    80001f74:	01813083          	ld	ra,24(sp)
    80001f78:	01013403          	ld	s0,16(sp)
    80001f7c:	00813483          	ld	s1,8(sp)
    80001f80:	00013903          	ld	s2,0(sp)
    80001f84:	02010113          	addi	sp,sp,32
    80001f88:	00008067          	ret
        MemoryAllocator::mem_free(old->stack);
    80001f8c:	0104b503          	ld	a0,16(s1)
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	c4c080e7          	jalr	-948(ra) # 80001bdc <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	c40080e7          	jalr	-960(ra) # 80001bdc <_ZN15MemoryAllocator8mem_freeEPv>
        contextSwitchThreadEnded(&_thread::running->context);
    80001fa4:	00004517          	auipc	a0,0x4
    80001fa8:	89453503          	ld	a0,-1900(a0) # 80005838 <_ZN7_thread7runningE>
    80001fac:	01850513          	addi	a0,a0,24
    80001fb0:	fffff097          	auipc	ra,0xfffff
    80001fb4:	184080e7          	jalr	388(ra) # 80001134 <contextSwitchThreadEnded>
}
    80001fb8:	fbdff06f          	j	80001f74 <_ZN7_thread14threadDispatchEv+0x5c>

0000000080001fbc <start>:
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00813423          	sd	s0,8(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    80001fc8:	300027f3          	csrr	a5,mstatus
    80001fcc:	ffffe737          	lui	a4,0xffffe
    80001fd0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d6f>
    80001fd4:	00e7f7b3          	and	a5,a5,a4
    80001fd8:	00001737          	lui	a4,0x1
    80001fdc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001fe0:	00e7e7b3          	or	a5,a5,a4
    80001fe4:	30079073          	csrw	mstatus,a5
    80001fe8:	00000797          	auipc	a5,0x0
    80001fec:	16078793          	addi	a5,a5,352 # 80002148 <system_main>
    80001ff0:	34179073          	csrw	mepc,a5
    80001ff4:	00000793          	li	a5,0
    80001ff8:	18079073          	csrw	satp,a5
    80001ffc:	000107b7          	lui	a5,0x10
    80002000:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002004:	30279073          	csrw	medeleg,a5
    80002008:	30379073          	csrw	mideleg,a5
    8000200c:	104027f3          	csrr	a5,sie
    80002010:	2227e793          	ori	a5,a5,546
    80002014:	10479073          	csrw	sie,a5
    80002018:	fff00793          	li	a5,-1
    8000201c:	00a7d793          	srli	a5,a5,0xa
    80002020:	3b079073          	csrw	pmpaddr0,a5
    80002024:	00f00793          	li	a5,15
    80002028:	3a079073          	csrw	pmpcfg0,a5
    8000202c:	f14027f3          	csrr	a5,mhartid
    80002030:	0200c737          	lui	a4,0x200c
    80002034:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002038:	0007869b          	sext.w	a3,a5
    8000203c:	00269713          	slli	a4,a3,0x2
    80002040:	000f4637          	lui	a2,0xf4
    80002044:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002048:	00d70733          	add	a4,a4,a3
    8000204c:	0037979b          	slliw	a5,a5,0x3
    80002050:	020046b7          	lui	a3,0x2004
    80002054:	00d787b3          	add	a5,a5,a3
    80002058:	00c585b3          	add	a1,a1,a2
    8000205c:	00371693          	slli	a3,a4,0x3
    80002060:	00003717          	auipc	a4,0x3
    80002064:	7e070713          	addi	a4,a4,2016 # 80005840 <timer_scratch>
    80002068:	00b7b023          	sd	a1,0(a5)
    8000206c:	00d70733          	add	a4,a4,a3
    80002070:	00f73c23          	sd	a5,24(a4)
    80002074:	02c73023          	sd	a2,32(a4)
    80002078:	34071073          	csrw	mscratch,a4
    8000207c:	00000797          	auipc	a5,0x0
    80002080:	6e478793          	addi	a5,a5,1764 # 80002760 <timervec>
    80002084:	30579073          	csrw	mtvec,a5
    80002088:	300027f3          	csrr	a5,mstatus
    8000208c:	0087e793          	ori	a5,a5,8
    80002090:	30079073          	csrw	mstatus,a5
    80002094:	304027f3          	csrr	a5,mie
    80002098:	0807e793          	ori	a5,a5,128
    8000209c:	30479073          	csrw	mie,a5
    800020a0:	f14027f3          	csrr	a5,mhartid
    800020a4:	0007879b          	sext.w	a5,a5
    800020a8:	00078213          	mv	tp,a5
    800020ac:	30200073          	mret
    800020b0:	00813403          	ld	s0,8(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <timerinit>:
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00813423          	sd	s0,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    800020c8:	f14027f3          	csrr	a5,mhartid
    800020cc:	0200c737          	lui	a4,0x200c
    800020d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020d4:	0007869b          	sext.w	a3,a5
    800020d8:	00269713          	slli	a4,a3,0x2
    800020dc:	000f4637          	lui	a2,0xf4
    800020e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020e4:	00d70733          	add	a4,a4,a3
    800020e8:	0037979b          	slliw	a5,a5,0x3
    800020ec:	020046b7          	lui	a3,0x2004
    800020f0:	00d787b3          	add	a5,a5,a3
    800020f4:	00c585b3          	add	a1,a1,a2
    800020f8:	00371693          	slli	a3,a4,0x3
    800020fc:	00003717          	auipc	a4,0x3
    80002100:	74470713          	addi	a4,a4,1860 # 80005840 <timer_scratch>
    80002104:	00b7b023          	sd	a1,0(a5)
    80002108:	00d70733          	add	a4,a4,a3
    8000210c:	00f73c23          	sd	a5,24(a4)
    80002110:	02c73023          	sd	a2,32(a4)
    80002114:	34071073          	csrw	mscratch,a4
    80002118:	00000797          	auipc	a5,0x0
    8000211c:	64878793          	addi	a5,a5,1608 # 80002760 <timervec>
    80002120:	30579073          	csrw	mtvec,a5
    80002124:	300027f3          	csrr	a5,mstatus
    80002128:	0087e793          	ori	a5,a5,8
    8000212c:	30079073          	csrw	mstatus,a5
    80002130:	304027f3          	csrr	a5,mie
    80002134:	0807e793          	ori	a5,a5,128
    80002138:	30479073          	csrw	mie,a5
    8000213c:	00813403          	ld	s0,8(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <system_main>:
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00813823          	sd	s0,16(sp)
    80002150:	00913423          	sd	s1,8(sp)
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	02010413          	addi	s0,sp,32
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	0c4080e7          	jalr	196(ra) # 80002220 <cpuid>
    80002164:	00003497          	auipc	s1,0x3
    80002168:	67c48493          	addi	s1,s1,1660 # 800057e0 <started>
    8000216c:	02050263          	beqz	a0,80002190 <system_main+0x48>
    80002170:	0004a783          	lw	a5,0(s1)
    80002174:	0007879b          	sext.w	a5,a5
    80002178:	fe078ce3          	beqz	a5,80002170 <system_main+0x28>
    8000217c:	0ff0000f          	fence
    80002180:	00003517          	auipc	a0,0x3
    80002184:	f5850513          	addi	a0,a0,-168 # 800050d8 <_ZZ12printIntegermE6digits+0x40>
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	a74080e7          	jalr	-1420(ra) # 80002bfc <panic>
    80002190:	00001097          	auipc	ra,0x1
    80002194:	9c8080e7          	jalr	-1592(ra) # 80002b58 <consoleinit>
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	154080e7          	jalr	340(ra) # 800032ec <printfinit>
    800021a0:	00003517          	auipc	a0,0x3
    800021a4:	ef050513          	addi	a0,a0,-272 # 80005090 <CONSOLE_STATUS+0x80>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	ab0080e7          	jalr	-1360(ra) # 80002c58 <__printf>
    800021b0:	00003517          	auipc	a0,0x3
    800021b4:	ef850513          	addi	a0,a0,-264 # 800050a8 <_ZZ12printIntegermE6digits+0x10>
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	aa0080e7          	jalr	-1376(ra) # 80002c58 <__printf>
    800021c0:	00003517          	auipc	a0,0x3
    800021c4:	ed050513          	addi	a0,a0,-304 # 80005090 <CONSOLE_STATUS+0x80>
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	a90080e7          	jalr	-1392(ra) # 80002c58 <__printf>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	4a8080e7          	jalr	1192(ra) # 80003678 <kinit>
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	148080e7          	jalr	328(ra) # 80002320 <trapinit>
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	16c080e7          	jalr	364(ra) # 8000234c <trapinithart>
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	5b8080e7          	jalr	1464(ra) # 800027a0 <plicinit>
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	5d8080e7          	jalr	1496(ra) # 800027c8 <plicinithart>
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	078080e7          	jalr	120(ra) # 80002270 <userinit>
    80002200:	0ff0000f          	fence
    80002204:	00100793          	li	a5,1
    80002208:	00003517          	auipc	a0,0x3
    8000220c:	eb850513          	addi	a0,a0,-328 # 800050c0 <_ZZ12printIntegermE6digits+0x28>
    80002210:	00f4a023          	sw	a5,0(s1)
    80002214:	00001097          	auipc	ra,0x1
    80002218:	a44080e7          	jalr	-1468(ra) # 80002c58 <__printf>
    8000221c:	0000006f          	j	8000221c <system_main+0xd4>

0000000080002220 <cpuid>:
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813423          	sd	s0,8(sp)
    80002228:	01010413          	addi	s0,sp,16
    8000222c:	00020513          	mv	a0,tp
    80002230:	00813403          	ld	s0,8(sp)
    80002234:	0005051b          	sext.w	a0,a0
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret

0000000080002240 <mycpu>:
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00813423          	sd	s0,8(sp)
    80002248:	01010413          	addi	s0,sp,16
    8000224c:	00020793          	mv	a5,tp
    80002250:	00813403          	ld	s0,8(sp)
    80002254:	0007879b          	sext.w	a5,a5
    80002258:	00779793          	slli	a5,a5,0x7
    8000225c:	00004517          	auipc	a0,0x4
    80002260:	61450513          	addi	a0,a0,1556 # 80006870 <cpus>
    80002264:	00f50533          	add	a0,a0,a5
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <userinit>:
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
    8000227c:	00813403          	ld	s0,8(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	fffff317          	auipc	t1,0xfffff
    80002288:	43430067          	jr	1076(t1) # 800016b8 <main>

000000008000228c <either_copyout>:
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813023          	sd	s0,0(sp)
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	01010413          	addi	s0,sp,16
    8000229c:	02051663          	bnez	a0,800022c8 <either_copyout+0x3c>
    800022a0:	00058513          	mv	a0,a1
    800022a4:	00060593          	mv	a1,a2
    800022a8:	0006861b          	sext.w	a2,a3
    800022ac:	00002097          	auipc	ra,0x2
    800022b0:	c58080e7          	jalr	-936(ra) # 80003f04 <__memmove>
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	00000513          	li	a0,0
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret
    800022c8:	00003517          	auipc	a0,0x3
    800022cc:	e3850513          	addi	a0,a0,-456 # 80005100 <_ZZ12printIntegermE6digits+0x68>
    800022d0:	00001097          	auipc	ra,0x1
    800022d4:	92c080e7          	jalr	-1748(ra) # 80002bfc <panic>

00000000800022d8 <either_copyin>:
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00813023          	sd	s0,0(sp)
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	01010413          	addi	s0,sp,16
    800022e8:	02059463          	bnez	a1,80002310 <either_copyin+0x38>
    800022ec:	00060593          	mv	a1,a2
    800022f0:	0006861b          	sext.w	a2,a3
    800022f4:	00002097          	auipc	ra,0x2
    800022f8:	c10080e7          	jalr	-1008(ra) # 80003f04 <__memmove>
    800022fc:	00813083          	ld	ra,8(sp)
    80002300:	00013403          	ld	s0,0(sp)
    80002304:	00000513          	li	a0,0
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret
    80002310:	00003517          	auipc	a0,0x3
    80002314:	e1850513          	addi	a0,a0,-488 # 80005128 <_ZZ12printIntegermE6digits+0x90>
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	8e4080e7          	jalr	-1820(ra) # 80002bfc <panic>

0000000080002320 <trapinit>:
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00813423          	sd	s0,8(sp)
    80002328:	01010413          	addi	s0,sp,16
    8000232c:	00813403          	ld	s0,8(sp)
    80002330:	00003597          	auipc	a1,0x3
    80002334:	e2058593          	addi	a1,a1,-480 # 80005150 <_ZZ12printIntegermE6digits+0xb8>
    80002338:	00004517          	auipc	a0,0x4
    8000233c:	5b850513          	addi	a0,a0,1464 # 800068f0 <tickslock>
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00001317          	auipc	t1,0x1
    80002348:	5c430067          	jr	1476(t1) # 80003908 <initlock>

000000008000234c <trapinithart>:
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00813423          	sd	s0,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    80002358:	00000797          	auipc	a5,0x0
    8000235c:	2f878793          	addi	a5,a5,760 # 80002650 <kernelvec>
    80002360:	10579073          	csrw	stvec,a5
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <usertrap>:
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	00813403          	ld	s0,8(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <usertrapret>:
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00813423          	sd	s0,8(sp)
    80002390:	01010413          	addi	s0,sp,16
    80002394:	00813403          	ld	s0,8(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <kerneltrap>:
    800023a0:	fe010113          	addi	sp,sp,-32
    800023a4:	00813823          	sd	s0,16(sp)
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	00913423          	sd	s1,8(sp)
    800023b0:	02010413          	addi	s0,sp,32
    800023b4:	142025f3          	csrr	a1,scause
    800023b8:	100027f3          	csrr	a5,sstatus
    800023bc:	0027f793          	andi	a5,a5,2
    800023c0:	10079c63          	bnez	a5,800024d8 <kerneltrap+0x138>
    800023c4:	142027f3          	csrr	a5,scause
    800023c8:	0207ce63          	bltz	a5,80002404 <kerneltrap+0x64>
    800023cc:	00003517          	auipc	a0,0x3
    800023d0:	dcc50513          	addi	a0,a0,-564 # 80005198 <_ZZ12printIntegermE6digits+0x100>
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	884080e7          	jalr	-1916(ra) # 80002c58 <__printf>
    800023dc:	141025f3          	csrr	a1,sepc
    800023e0:	14302673          	csrr	a2,stval
    800023e4:	00003517          	auipc	a0,0x3
    800023e8:	dc450513          	addi	a0,a0,-572 # 800051a8 <_ZZ12printIntegermE6digits+0x110>
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	86c080e7          	jalr	-1940(ra) # 80002c58 <__printf>
    800023f4:	00003517          	auipc	a0,0x3
    800023f8:	dcc50513          	addi	a0,a0,-564 # 800051c0 <_ZZ12printIntegermE6digits+0x128>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	800080e7          	jalr	-2048(ra) # 80002bfc <panic>
    80002404:	0ff7f713          	andi	a4,a5,255
    80002408:	00900693          	li	a3,9
    8000240c:	04d70063          	beq	a4,a3,8000244c <kerneltrap+0xac>
    80002410:	fff00713          	li	a4,-1
    80002414:	03f71713          	slli	a4,a4,0x3f
    80002418:	00170713          	addi	a4,a4,1
    8000241c:	fae798e3          	bne	a5,a4,800023cc <kerneltrap+0x2c>
    80002420:	00000097          	auipc	ra,0x0
    80002424:	e00080e7          	jalr	-512(ra) # 80002220 <cpuid>
    80002428:	06050663          	beqz	a0,80002494 <kerneltrap+0xf4>
    8000242c:	144027f3          	csrr	a5,sip
    80002430:	ffd7f793          	andi	a5,a5,-3
    80002434:	14479073          	csrw	sip,a5
    80002438:	01813083          	ld	ra,24(sp)
    8000243c:	01013403          	ld	s0,16(sp)
    80002440:	00813483          	ld	s1,8(sp)
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00008067          	ret
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	3c8080e7          	jalr	968(ra) # 80002814 <plic_claim>
    80002454:	00a00793          	li	a5,10
    80002458:	00050493          	mv	s1,a0
    8000245c:	06f50863          	beq	a0,a5,800024cc <kerneltrap+0x12c>
    80002460:	fc050ce3          	beqz	a0,80002438 <kerneltrap+0x98>
    80002464:	00050593          	mv	a1,a0
    80002468:	00003517          	auipc	a0,0x3
    8000246c:	d1050513          	addi	a0,a0,-752 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    80002470:	00000097          	auipc	ra,0x0
    80002474:	7e8080e7          	jalr	2024(ra) # 80002c58 <__printf>
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	00048513          	mv	a0,s1
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00000317          	auipc	t1,0x0
    80002490:	3c030067          	jr	960(t1) # 8000284c <plic_complete>
    80002494:	00004517          	auipc	a0,0x4
    80002498:	45c50513          	addi	a0,a0,1116 # 800068f0 <tickslock>
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	490080e7          	jalr	1168(ra) # 8000392c <acquire>
    800024a4:	00003717          	auipc	a4,0x3
    800024a8:	34070713          	addi	a4,a4,832 # 800057e4 <ticks>
    800024ac:	00072783          	lw	a5,0(a4)
    800024b0:	00004517          	auipc	a0,0x4
    800024b4:	44050513          	addi	a0,a0,1088 # 800068f0 <tickslock>
    800024b8:	0017879b          	addiw	a5,a5,1
    800024bc:	00f72023          	sw	a5,0(a4)
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	538080e7          	jalr	1336(ra) # 800039f8 <release>
    800024c8:	f65ff06f          	j	8000242c <kerneltrap+0x8c>
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	094080e7          	jalr	148(ra) # 80003560 <uartintr>
    800024d4:	fa5ff06f          	j	80002478 <kerneltrap+0xd8>
    800024d8:	00003517          	auipc	a0,0x3
    800024dc:	c8050513          	addi	a0,a0,-896 # 80005158 <_ZZ12printIntegermE6digits+0xc0>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	71c080e7          	jalr	1820(ra) # 80002bfc <panic>

00000000800024e8 <clockintr>:
    800024e8:	fe010113          	addi	sp,sp,-32
    800024ec:	00813823          	sd	s0,16(sp)
    800024f0:	00913423          	sd	s1,8(sp)
    800024f4:	00113c23          	sd	ra,24(sp)
    800024f8:	02010413          	addi	s0,sp,32
    800024fc:	00004497          	auipc	s1,0x4
    80002500:	3f448493          	addi	s1,s1,1012 # 800068f0 <tickslock>
    80002504:	00048513          	mv	a0,s1
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	424080e7          	jalr	1060(ra) # 8000392c <acquire>
    80002510:	00003717          	auipc	a4,0x3
    80002514:	2d470713          	addi	a4,a4,724 # 800057e4 <ticks>
    80002518:	00072783          	lw	a5,0(a4)
    8000251c:	01013403          	ld	s0,16(sp)
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	00048513          	mv	a0,s1
    80002528:	0017879b          	addiw	a5,a5,1
    8000252c:	00813483          	ld	s1,8(sp)
    80002530:	00f72023          	sw	a5,0(a4)
    80002534:	02010113          	addi	sp,sp,32
    80002538:	00001317          	auipc	t1,0x1
    8000253c:	4c030067          	jr	1216(t1) # 800039f8 <release>

0000000080002540 <devintr>:
    80002540:	142027f3          	csrr	a5,scause
    80002544:	00000513          	li	a0,0
    80002548:	0007c463          	bltz	a5,80002550 <devintr+0x10>
    8000254c:	00008067          	ret
    80002550:	fe010113          	addi	sp,sp,-32
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00113c23          	sd	ra,24(sp)
    8000255c:	00913423          	sd	s1,8(sp)
    80002560:	02010413          	addi	s0,sp,32
    80002564:	0ff7f713          	andi	a4,a5,255
    80002568:	00900693          	li	a3,9
    8000256c:	04d70c63          	beq	a4,a3,800025c4 <devintr+0x84>
    80002570:	fff00713          	li	a4,-1
    80002574:	03f71713          	slli	a4,a4,0x3f
    80002578:	00170713          	addi	a4,a4,1
    8000257c:	00e78c63          	beq	a5,a4,80002594 <devintr+0x54>
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	00813483          	ld	s1,8(sp)
    8000258c:	02010113          	addi	sp,sp,32
    80002590:	00008067          	ret
    80002594:	00000097          	auipc	ra,0x0
    80002598:	c8c080e7          	jalr	-884(ra) # 80002220 <cpuid>
    8000259c:	06050663          	beqz	a0,80002608 <devintr+0xc8>
    800025a0:	144027f3          	csrr	a5,sip
    800025a4:	ffd7f793          	andi	a5,a5,-3
    800025a8:	14479073          	csrw	sip,a5
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	00200513          	li	a0,2
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	250080e7          	jalr	592(ra) # 80002814 <plic_claim>
    800025cc:	00a00793          	li	a5,10
    800025d0:	00050493          	mv	s1,a0
    800025d4:	06f50663          	beq	a0,a5,80002640 <devintr+0x100>
    800025d8:	00100513          	li	a0,1
    800025dc:	fa0482e3          	beqz	s1,80002580 <devintr+0x40>
    800025e0:	00048593          	mv	a1,s1
    800025e4:	00003517          	auipc	a0,0x3
    800025e8:	b9450513          	addi	a0,a0,-1132 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	66c080e7          	jalr	1644(ra) # 80002c58 <__printf>
    800025f4:	00048513          	mv	a0,s1
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	254080e7          	jalr	596(ra) # 8000284c <plic_complete>
    80002600:	00100513          	li	a0,1
    80002604:	f7dff06f          	j	80002580 <devintr+0x40>
    80002608:	00004517          	auipc	a0,0x4
    8000260c:	2e850513          	addi	a0,a0,744 # 800068f0 <tickslock>
    80002610:	00001097          	auipc	ra,0x1
    80002614:	31c080e7          	jalr	796(ra) # 8000392c <acquire>
    80002618:	00003717          	auipc	a4,0x3
    8000261c:	1cc70713          	addi	a4,a4,460 # 800057e4 <ticks>
    80002620:	00072783          	lw	a5,0(a4)
    80002624:	00004517          	auipc	a0,0x4
    80002628:	2cc50513          	addi	a0,a0,716 # 800068f0 <tickslock>
    8000262c:	0017879b          	addiw	a5,a5,1
    80002630:	00f72023          	sw	a5,0(a4)
    80002634:	00001097          	auipc	ra,0x1
    80002638:	3c4080e7          	jalr	964(ra) # 800039f8 <release>
    8000263c:	f65ff06f          	j	800025a0 <devintr+0x60>
    80002640:	00001097          	auipc	ra,0x1
    80002644:	f20080e7          	jalr	-224(ra) # 80003560 <uartintr>
    80002648:	fadff06f          	j	800025f4 <devintr+0xb4>
    8000264c:	0000                	unimp
	...

0000000080002650 <kernelvec>:
    80002650:	f0010113          	addi	sp,sp,-256
    80002654:	00113023          	sd	ra,0(sp)
    80002658:	00213423          	sd	sp,8(sp)
    8000265c:	00313823          	sd	gp,16(sp)
    80002660:	00413c23          	sd	tp,24(sp)
    80002664:	02513023          	sd	t0,32(sp)
    80002668:	02613423          	sd	t1,40(sp)
    8000266c:	02713823          	sd	t2,48(sp)
    80002670:	02813c23          	sd	s0,56(sp)
    80002674:	04913023          	sd	s1,64(sp)
    80002678:	04a13423          	sd	a0,72(sp)
    8000267c:	04b13823          	sd	a1,80(sp)
    80002680:	04c13c23          	sd	a2,88(sp)
    80002684:	06d13023          	sd	a3,96(sp)
    80002688:	06e13423          	sd	a4,104(sp)
    8000268c:	06f13823          	sd	a5,112(sp)
    80002690:	07013c23          	sd	a6,120(sp)
    80002694:	09113023          	sd	a7,128(sp)
    80002698:	09213423          	sd	s2,136(sp)
    8000269c:	09313823          	sd	s3,144(sp)
    800026a0:	09413c23          	sd	s4,152(sp)
    800026a4:	0b513023          	sd	s5,160(sp)
    800026a8:	0b613423          	sd	s6,168(sp)
    800026ac:	0b713823          	sd	s7,176(sp)
    800026b0:	0b813c23          	sd	s8,184(sp)
    800026b4:	0d913023          	sd	s9,192(sp)
    800026b8:	0da13423          	sd	s10,200(sp)
    800026bc:	0db13823          	sd	s11,208(sp)
    800026c0:	0dc13c23          	sd	t3,216(sp)
    800026c4:	0fd13023          	sd	t4,224(sp)
    800026c8:	0fe13423          	sd	t5,232(sp)
    800026cc:	0ff13823          	sd	t6,240(sp)
    800026d0:	cd1ff0ef          	jal	ra,800023a0 <kerneltrap>
    800026d4:	00013083          	ld	ra,0(sp)
    800026d8:	00813103          	ld	sp,8(sp)
    800026dc:	01013183          	ld	gp,16(sp)
    800026e0:	02013283          	ld	t0,32(sp)
    800026e4:	02813303          	ld	t1,40(sp)
    800026e8:	03013383          	ld	t2,48(sp)
    800026ec:	03813403          	ld	s0,56(sp)
    800026f0:	04013483          	ld	s1,64(sp)
    800026f4:	04813503          	ld	a0,72(sp)
    800026f8:	05013583          	ld	a1,80(sp)
    800026fc:	05813603          	ld	a2,88(sp)
    80002700:	06013683          	ld	a3,96(sp)
    80002704:	06813703          	ld	a4,104(sp)
    80002708:	07013783          	ld	a5,112(sp)
    8000270c:	07813803          	ld	a6,120(sp)
    80002710:	08013883          	ld	a7,128(sp)
    80002714:	08813903          	ld	s2,136(sp)
    80002718:	09013983          	ld	s3,144(sp)
    8000271c:	09813a03          	ld	s4,152(sp)
    80002720:	0a013a83          	ld	s5,160(sp)
    80002724:	0a813b03          	ld	s6,168(sp)
    80002728:	0b013b83          	ld	s7,176(sp)
    8000272c:	0b813c03          	ld	s8,184(sp)
    80002730:	0c013c83          	ld	s9,192(sp)
    80002734:	0c813d03          	ld	s10,200(sp)
    80002738:	0d013d83          	ld	s11,208(sp)
    8000273c:	0d813e03          	ld	t3,216(sp)
    80002740:	0e013e83          	ld	t4,224(sp)
    80002744:	0e813f03          	ld	t5,232(sp)
    80002748:	0f013f83          	ld	t6,240(sp)
    8000274c:	10010113          	addi	sp,sp,256
    80002750:	10200073          	sret
    80002754:	00000013          	nop
    80002758:	00000013          	nop
    8000275c:	00000013          	nop

0000000080002760 <timervec>:
    80002760:	34051573          	csrrw	a0,mscratch,a0
    80002764:	00b53023          	sd	a1,0(a0)
    80002768:	00c53423          	sd	a2,8(a0)
    8000276c:	00d53823          	sd	a3,16(a0)
    80002770:	01853583          	ld	a1,24(a0)
    80002774:	02053603          	ld	a2,32(a0)
    80002778:	0005b683          	ld	a3,0(a1)
    8000277c:	00c686b3          	add	a3,a3,a2
    80002780:	00d5b023          	sd	a3,0(a1)
    80002784:	00200593          	li	a1,2
    80002788:	14459073          	csrw	sip,a1
    8000278c:	01053683          	ld	a3,16(a0)
    80002790:	00853603          	ld	a2,8(a0)
    80002794:	00053583          	ld	a1,0(a0)
    80002798:	34051573          	csrrw	a0,mscratch,a0
    8000279c:	30200073          	mret

00000000800027a0 <plicinit>:
    800027a0:	ff010113          	addi	sp,sp,-16
    800027a4:	00813423          	sd	s0,8(sp)
    800027a8:	01010413          	addi	s0,sp,16
    800027ac:	00813403          	ld	s0,8(sp)
    800027b0:	0c0007b7          	lui	a5,0xc000
    800027b4:	00100713          	li	a4,1
    800027b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800027bc:	00e7a223          	sw	a4,4(a5)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <plicinithart>:
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00813023          	sd	s0,0(sp)
    800027d0:	00113423          	sd	ra,8(sp)
    800027d4:	01010413          	addi	s0,sp,16
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	a48080e7          	jalr	-1464(ra) # 80002220 <cpuid>
    800027e0:	0085171b          	slliw	a4,a0,0x8
    800027e4:	0c0027b7          	lui	a5,0xc002
    800027e8:	00e787b3          	add	a5,a5,a4
    800027ec:	40200713          	li	a4,1026
    800027f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800027f4:	00813083          	ld	ra,8(sp)
    800027f8:	00013403          	ld	s0,0(sp)
    800027fc:	00d5151b          	slliw	a0,a0,0xd
    80002800:	0c2017b7          	lui	a5,0xc201
    80002804:	00a78533          	add	a0,a5,a0
    80002808:	00052023          	sw	zero,0(a0)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <plic_claim>:
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00813023          	sd	s0,0(sp)
    8000281c:	00113423          	sd	ra,8(sp)
    80002820:	01010413          	addi	s0,sp,16
    80002824:	00000097          	auipc	ra,0x0
    80002828:	9fc080e7          	jalr	-1540(ra) # 80002220 <cpuid>
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	00d5151b          	slliw	a0,a0,0xd
    80002838:	0c2017b7          	lui	a5,0xc201
    8000283c:	00a78533          	add	a0,a5,a0
    80002840:	00452503          	lw	a0,4(a0)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <plic_complete>:
    8000284c:	fe010113          	addi	sp,sp,-32
    80002850:	00813823          	sd	s0,16(sp)
    80002854:	00913423          	sd	s1,8(sp)
    80002858:	00113c23          	sd	ra,24(sp)
    8000285c:	02010413          	addi	s0,sp,32
    80002860:	00050493          	mv	s1,a0
    80002864:	00000097          	auipc	ra,0x0
    80002868:	9bc080e7          	jalr	-1604(ra) # 80002220 <cpuid>
    8000286c:	01813083          	ld	ra,24(sp)
    80002870:	01013403          	ld	s0,16(sp)
    80002874:	00d5179b          	slliw	a5,a0,0xd
    80002878:	0c201737          	lui	a4,0xc201
    8000287c:	00f707b3          	add	a5,a4,a5
    80002880:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	02010113          	addi	sp,sp,32
    8000288c:	00008067          	ret

0000000080002890 <consolewrite>:
    80002890:	fb010113          	addi	sp,sp,-80
    80002894:	04813023          	sd	s0,64(sp)
    80002898:	04113423          	sd	ra,72(sp)
    8000289c:	02913c23          	sd	s1,56(sp)
    800028a0:	03213823          	sd	s2,48(sp)
    800028a4:	03313423          	sd	s3,40(sp)
    800028a8:	03413023          	sd	s4,32(sp)
    800028ac:	01513c23          	sd	s5,24(sp)
    800028b0:	05010413          	addi	s0,sp,80
    800028b4:	06c05c63          	blez	a2,8000292c <consolewrite+0x9c>
    800028b8:	00060993          	mv	s3,a2
    800028bc:	00050a13          	mv	s4,a0
    800028c0:	00058493          	mv	s1,a1
    800028c4:	00000913          	li	s2,0
    800028c8:	fff00a93          	li	s5,-1
    800028cc:	01c0006f          	j	800028e8 <consolewrite+0x58>
    800028d0:	fbf44503          	lbu	a0,-65(s0)
    800028d4:	0019091b          	addiw	s2,s2,1
    800028d8:	00148493          	addi	s1,s1,1
    800028dc:	00001097          	auipc	ra,0x1
    800028e0:	a9c080e7          	jalr	-1380(ra) # 80003378 <uartputc>
    800028e4:	03298063          	beq	s3,s2,80002904 <consolewrite+0x74>
    800028e8:	00048613          	mv	a2,s1
    800028ec:	00100693          	li	a3,1
    800028f0:	000a0593          	mv	a1,s4
    800028f4:	fbf40513          	addi	a0,s0,-65
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	9e0080e7          	jalr	-1568(ra) # 800022d8 <either_copyin>
    80002900:	fd5518e3          	bne	a0,s5,800028d0 <consolewrite+0x40>
    80002904:	04813083          	ld	ra,72(sp)
    80002908:	04013403          	ld	s0,64(sp)
    8000290c:	03813483          	ld	s1,56(sp)
    80002910:	02813983          	ld	s3,40(sp)
    80002914:	02013a03          	ld	s4,32(sp)
    80002918:	01813a83          	ld	s5,24(sp)
    8000291c:	00090513          	mv	a0,s2
    80002920:	03013903          	ld	s2,48(sp)
    80002924:	05010113          	addi	sp,sp,80
    80002928:	00008067          	ret
    8000292c:	00000913          	li	s2,0
    80002930:	fd5ff06f          	j	80002904 <consolewrite+0x74>

0000000080002934 <consoleread>:
    80002934:	f9010113          	addi	sp,sp,-112
    80002938:	06813023          	sd	s0,96(sp)
    8000293c:	04913c23          	sd	s1,88(sp)
    80002940:	05213823          	sd	s2,80(sp)
    80002944:	05313423          	sd	s3,72(sp)
    80002948:	05413023          	sd	s4,64(sp)
    8000294c:	03513c23          	sd	s5,56(sp)
    80002950:	03613823          	sd	s6,48(sp)
    80002954:	03713423          	sd	s7,40(sp)
    80002958:	03813023          	sd	s8,32(sp)
    8000295c:	06113423          	sd	ra,104(sp)
    80002960:	01913c23          	sd	s9,24(sp)
    80002964:	07010413          	addi	s0,sp,112
    80002968:	00060b93          	mv	s7,a2
    8000296c:	00050913          	mv	s2,a0
    80002970:	00058c13          	mv	s8,a1
    80002974:	00060b1b          	sext.w	s6,a2
    80002978:	00004497          	auipc	s1,0x4
    8000297c:	f9048493          	addi	s1,s1,-112 # 80006908 <cons>
    80002980:	00400993          	li	s3,4
    80002984:	fff00a13          	li	s4,-1
    80002988:	00a00a93          	li	s5,10
    8000298c:	05705e63          	blez	s7,800029e8 <consoleread+0xb4>
    80002990:	09c4a703          	lw	a4,156(s1)
    80002994:	0984a783          	lw	a5,152(s1)
    80002998:	0007071b          	sext.w	a4,a4
    8000299c:	08e78463          	beq	a5,a4,80002a24 <consoleread+0xf0>
    800029a0:	07f7f713          	andi	a4,a5,127
    800029a4:	00e48733          	add	a4,s1,a4
    800029a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800029ac:	0017869b          	addiw	a3,a5,1
    800029b0:	08d4ac23          	sw	a3,152(s1)
    800029b4:	00070c9b          	sext.w	s9,a4
    800029b8:	0b370663          	beq	a4,s3,80002a64 <consoleread+0x130>
    800029bc:	00100693          	li	a3,1
    800029c0:	f9f40613          	addi	a2,s0,-97
    800029c4:	000c0593          	mv	a1,s8
    800029c8:	00090513          	mv	a0,s2
    800029cc:	f8e40fa3          	sb	a4,-97(s0)
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	8bc080e7          	jalr	-1860(ra) # 8000228c <either_copyout>
    800029d8:	01450863          	beq	a0,s4,800029e8 <consoleread+0xb4>
    800029dc:	001c0c13          	addi	s8,s8,1
    800029e0:	fffb8b9b          	addiw	s7,s7,-1
    800029e4:	fb5c94e3          	bne	s9,s5,8000298c <consoleread+0x58>
    800029e8:	000b851b          	sext.w	a0,s7
    800029ec:	06813083          	ld	ra,104(sp)
    800029f0:	06013403          	ld	s0,96(sp)
    800029f4:	05813483          	ld	s1,88(sp)
    800029f8:	05013903          	ld	s2,80(sp)
    800029fc:	04813983          	ld	s3,72(sp)
    80002a00:	04013a03          	ld	s4,64(sp)
    80002a04:	03813a83          	ld	s5,56(sp)
    80002a08:	02813b83          	ld	s7,40(sp)
    80002a0c:	02013c03          	ld	s8,32(sp)
    80002a10:	01813c83          	ld	s9,24(sp)
    80002a14:	40ab053b          	subw	a0,s6,a0
    80002a18:	03013b03          	ld	s6,48(sp)
    80002a1c:	07010113          	addi	sp,sp,112
    80002a20:	00008067          	ret
    80002a24:	00001097          	auipc	ra,0x1
    80002a28:	1d8080e7          	jalr	472(ra) # 80003bfc <push_on>
    80002a2c:	0984a703          	lw	a4,152(s1)
    80002a30:	09c4a783          	lw	a5,156(s1)
    80002a34:	0007879b          	sext.w	a5,a5
    80002a38:	fef70ce3          	beq	a4,a5,80002a30 <consoleread+0xfc>
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	234080e7          	jalr	564(ra) # 80003c70 <pop_on>
    80002a44:	0984a783          	lw	a5,152(s1)
    80002a48:	07f7f713          	andi	a4,a5,127
    80002a4c:	00e48733          	add	a4,s1,a4
    80002a50:	01874703          	lbu	a4,24(a4)
    80002a54:	0017869b          	addiw	a3,a5,1
    80002a58:	08d4ac23          	sw	a3,152(s1)
    80002a5c:	00070c9b          	sext.w	s9,a4
    80002a60:	f5371ee3          	bne	a4,s3,800029bc <consoleread+0x88>
    80002a64:	000b851b          	sext.w	a0,s7
    80002a68:	f96bf2e3          	bgeu	s7,s6,800029ec <consoleread+0xb8>
    80002a6c:	08f4ac23          	sw	a5,152(s1)
    80002a70:	f7dff06f          	j	800029ec <consoleread+0xb8>

0000000080002a74 <consputc>:
    80002a74:	10000793          	li	a5,256
    80002a78:	00f50663          	beq	a0,a5,80002a84 <consputc+0x10>
    80002a7c:	00001317          	auipc	t1,0x1
    80002a80:	9f430067          	jr	-1548(t1) # 80003470 <uartputc_sync>
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00113423          	sd	ra,8(sp)
    80002a8c:	00813023          	sd	s0,0(sp)
    80002a90:	01010413          	addi	s0,sp,16
    80002a94:	00800513          	li	a0,8
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	9d8080e7          	jalr	-1576(ra) # 80003470 <uartputc_sync>
    80002aa0:	02000513          	li	a0,32
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	9cc080e7          	jalr	-1588(ra) # 80003470 <uartputc_sync>
    80002aac:	00013403          	ld	s0,0(sp)
    80002ab0:	00813083          	ld	ra,8(sp)
    80002ab4:	00800513          	li	a0,8
    80002ab8:	01010113          	addi	sp,sp,16
    80002abc:	00001317          	auipc	t1,0x1
    80002ac0:	9b430067          	jr	-1612(t1) # 80003470 <uartputc_sync>

0000000080002ac4 <consoleintr>:
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00813823          	sd	s0,16(sp)
    80002acc:	00913423          	sd	s1,8(sp)
    80002ad0:	01213023          	sd	s2,0(sp)
    80002ad4:	00113c23          	sd	ra,24(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    80002adc:	00004917          	auipc	s2,0x4
    80002ae0:	e2c90913          	addi	s2,s2,-468 # 80006908 <cons>
    80002ae4:	00050493          	mv	s1,a0
    80002ae8:	00090513          	mv	a0,s2
    80002aec:	00001097          	auipc	ra,0x1
    80002af0:	e40080e7          	jalr	-448(ra) # 8000392c <acquire>
    80002af4:	02048c63          	beqz	s1,80002b2c <consoleintr+0x68>
    80002af8:	0a092783          	lw	a5,160(s2)
    80002afc:	09892703          	lw	a4,152(s2)
    80002b00:	07f00693          	li	a3,127
    80002b04:	40e7873b          	subw	a4,a5,a4
    80002b08:	02e6e263          	bltu	a3,a4,80002b2c <consoleintr+0x68>
    80002b0c:	00d00713          	li	a4,13
    80002b10:	04e48063          	beq	s1,a4,80002b50 <consoleintr+0x8c>
    80002b14:	07f7f713          	andi	a4,a5,127
    80002b18:	00e90733          	add	a4,s2,a4
    80002b1c:	0017879b          	addiw	a5,a5,1
    80002b20:	0af92023          	sw	a5,160(s2)
    80002b24:	00970c23          	sb	s1,24(a4)
    80002b28:	08f92e23          	sw	a5,156(s2)
    80002b2c:	01013403          	ld	s0,16(sp)
    80002b30:	01813083          	ld	ra,24(sp)
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	00013903          	ld	s2,0(sp)
    80002b3c:	00004517          	auipc	a0,0x4
    80002b40:	dcc50513          	addi	a0,a0,-564 # 80006908 <cons>
    80002b44:	02010113          	addi	sp,sp,32
    80002b48:	00001317          	auipc	t1,0x1
    80002b4c:	eb030067          	jr	-336(t1) # 800039f8 <release>
    80002b50:	00a00493          	li	s1,10
    80002b54:	fc1ff06f          	j	80002b14 <consoleintr+0x50>

0000000080002b58 <consoleinit>:
    80002b58:	fe010113          	addi	sp,sp,-32
    80002b5c:	00113c23          	sd	ra,24(sp)
    80002b60:	00813823          	sd	s0,16(sp)
    80002b64:	00913423          	sd	s1,8(sp)
    80002b68:	02010413          	addi	s0,sp,32
    80002b6c:	00004497          	auipc	s1,0x4
    80002b70:	d9c48493          	addi	s1,s1,-612 # 80006908 <cons>
    80002b74:	00048513          	mv	a0,s1
    80002b78:	00002597          	auipc	a1,0x2
    80002b7c:	65858593          	addi	a1,a1,1624 # 800051d0 <_ZZ12printIntegermE6digits+0x138>
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	d88080e7          	jalr	-632(ra) # 80003908 <initlock>
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	7ac080e7          	jalr	1964(ra) # 80003334 <uartinit>
    80002b90:	01813083          	ld	ra,24(sp)
    80002b94:	01013403          	ld	s0,16(sp)
    80002b98:	00000797          	auipc	a5,0x0
    80002b9c:	d9c78793          	addi	a5,a5,-612 # 80002934 <consoleread>
    80002ba0:	0af4bc23          	sd	a5,184(s1)
    80002ba4:	00000797          	auipc	a5,0x0
    80002ba8:	cec78793          	addi	a5,a5,-788 # 80002890 <consolewrite>
    80002bac:	0cf4b023          	sd	a5,192(s1)
    80002bb0:	00813483          	ld	s1,8(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret

0000000080002bbc <console_read>:
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	00004317          	auipc	t1,0x4
    80002bd0:	df433303          	ld	t1,-524(t1) # 800069c0 <devsw+0x10>
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00030067          	jr	t1

0000000080002bdc <console_write>:
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	00813403          	ld	s0,8(sp)
    80002bec:	00004317          	auipc	t1,0x4
    80002bf0:	ddc33303          	ld	t1,-548(t1) # 800069c8 <devsw+0x18>
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00030067          	jr	t1

0000000080002bfc <panic>:
    80002bfc:	fe010113          	addi	sp,sp,-32
    80002c00:	00113c23          	sd	ra,24(sp)
    80002c04:	00813823          	sd	s0,16(sp)
    80002c08:	00913423          	sd	s1,8(sp)
    80002c0c:	02010413          	addi	s0,sp,32
    80002c10:	00050493          	mv	s1,a0
    80002c14:	00002517          	auipc	a0,0x2
    80002c18:	5c450513          	addi	a0,a0,1476 # 800051d8 <_ZZ12printIntegermE6digits+0x140>
    80002c1c:	00004797          	auipc	a5,0x4
    80002c20:	e407a623          	sw	zero,-436(a5) # 80006a68 <pr+0x18>
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	034080e7          	jalr	52(ra) # 80002c58 <__printf>
    80002c2c:	00048513          	mv	a0,s1
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	028080e7          	jalr	40(ra) # 80002c58 <__printf>
    80002c38:	00002517          	auipc	a0,0x2
    80002c3c:	45850513          	addi	a0,a0,1112 # 80005090 <CONSOLE_STATUS+0x80>
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	018080e7          	jalr	24(ra) # 80002c58 <__printf>
    80002c48:	00100793          	li	a5,1
    80002c4c:	00003717          	auipc	a4,0x3
    80002c50:	b8f72e23          	sw	a5,-1124(a4) # 800057e8 <panicked>
    80002c54:	0000006f          	j	80002c54 <panic+0x58>

0000000080002c58 <__printf>:
    80002c58:	f3010113          	addi	sp,sp,-208
    80002c5c:	08813023          	sd	s0,128(sp)
    80002c60:	07313423          	sd	s3,104(sp)
    80002c64:	09010413          	addi	s0,sp,144
    80002c68:	05813023          	sd	s8,64(sp)
    80002c6c:	08113423          	sd	ra,136(sp)
    80002c70:	06913c23          	sd	s1,120(sp)
    80002c74:	07213823          	sd	s2,112(sp)
    80002c78:	07413023          	sd	s4,96(sp)
    80002c7c:	05513c23          	sd	s5,88(sp)
    80002c80:	05613823          	sd	s6,80(sp)
    80002c84:	05713423          	sd	s7,72(sp)
    80002c88:	03913c23          	sd	s9,56(sp)
    80002c8c:	03a13823          	sd	s10,48(sp)
    80002c90:	03b13423          	sd	s11,40(sp)
    80002c94:	00004317          	auipc	t1,0x4
    80002c98:	dbc30313          	addi	t1,t1,-580 # 80006a50 <pr>
    80002c9c:	01832c03          	lw	s8,24(t1)
    80002ca0:	00b43423          	sd	a1,8(s0)
    80002ca4:	00c43823          	sd	a2,16(s0)
    80002ca8:	00d43c23          	sd	a3,24(s0)
    80002cac:	02e43023          	sd	a4,32(s0)
    80002cb0:	02f43423          	sd	a5,40(s0)
    80002cb4:	03043823          	sd	a6,48(s0)
    80002cb8:	03143c23          	sd	a7,56(s0)
    80002cbc:	00050993          	mv	s3,a0
    80002cc0:	4a0c1663          	bnez	s8,8000316c <__printf+0x514>
    80002cc4:	60098c63          	beqz	s3,800032dc <__printf+0x684>
    80002cc8:	0009c503          	lbu	a0,0(s3)
    80002ccc:	00840793          	addi	a5,s0,8
    80002cd0:	f6f43c23          	sd	a5,-136(s0)
    80002cd4:	00000493          	li	s1,0
    80002cd8:	22050063          	beqz	a0,80002ef8 <__printf+0x2a0>
    80002cdc:	00002a37          	lui	s4,0x2
    80002ce0:	00018ab7          	lui	s5,0x18
    80002ce4:	000f4b37          	lui	s6,0xf4
    80002ce8:	00989bb7          	lui	s7,0x989
    80002cec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002cf0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002cf4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002cf8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002cfc:	00148c9b          	addiw	s9,s1,1
    80002d00:	02500793          	li	a5,37
    80002d04:	01998933          	add	s2,s3,s9
    80002d08:	38f51263          	bne	a0,a5,8000308c <__printf+0x434>
    80002d0c:	00094783          	lbu	a5,0(s2)
    80002d10:	00078c9b          	sext.w	s9,a5
    80002d14:	1e078263          	beqz	a5,80002ef8 <__printf+0x2a0>
    80002d18:	0024849b          	addiw	s1,s1,2
    80002d1c:	07000713          	li	a4,112
    80002d20:	00998933          	add	s2,s3,s1
    80002d24:	38e78a63          	beq	a5,a4,800030b8 <__printf+0x460>
    80002d28:	20f76863          	bltu	a4,a5,80002f38 <__printf+0x2e0>
    80002d2c:	42a78863          	beq	a5,a0,8000315c <__printf+0x504>
    80002d30:	06400713          	li	a4,100
    80002d34:	40e79663          	bne	a5,a4,80003140 <__printf+0x4e8>
    80002d38:	f7843783          	ld	a5,-136(s0)
    80002d3c:	0007a603          	lw	a2,0(a5)
    80002d40:	00878793          	addi	a5,a5,8
    80002d44:	f6f43c23          	sd	a5,-136(s0)
    80002d48:	42064a63          	bltz	a2,8000317c <__printf+0x524>
    80002d4c:	00a00713          	li	a4,10
    80002d50:	02e677bb          	remuw	a5,a2,a4
    80002d54:	00002d97          	auipc	s11,0x2
    80002d58:	4acd8d93          	addi	s11,s11,1196 # 80005200 <digits>
    80002d5c:	00900593          	li	a1,9
    80002d60:	0006051b          	sext.w	a0,a2
    80002d64:	00000c93          	li	s9,0
    80002d68:	02079793          	slli	a5,a5,0x20
    80002d6c:	0207d793          	srli	a5,a5,0x20
    80002d70:	00fd87b3          	add	a5,s11,a5
    80002d74:	0007c783          	lbu	a5,0(a5)
    80002d78:	02e656bb          	divuw	a3,a2,a4
    80002d7c:	f8f40023          	sb	a5,-128(s0)
    80002d80:	14c5d863          	bge	a1,a2,80002ed0 <__printf+0x278>
    80002d84:	06300593          	li	a1,99
    80002d88:	00100c93          	li	s9,1
    80002d8c:	02e6f7bb          	remuw	a5,a3,a4
    80002d90:	02079793          	slli	a5,a5,0x20
    80002d94:	0207d793          	srli	a5,a5,0x20
    80002d98:	00fd87b3          	add	a5,s11,a5
    80002d9c:	0007c783          	lbu	a5,0(a5)
    80002da0:	02e6d73b          	divuw	a4,a3,a4
    80002da4:	f8f400a3          	sb	a5,-127(s0)
    80002da8:	12a5f463          	bgeu	a1,a0,80002ed0 <__printf+0x278>
    80002dac:	00a00693          	li	a3,10
    80002db0:	00900593          	li	a1,9
    80002db4:	02d777bb          	remuw	a5,a4,a3
    80002db8:	02079793          	slli	a5,a5,0x20
    80002dbc:	0207d793          	srli	a5,a5,0x20
    80002dc0:	00fd87b3          	add	a5,s11,a5
    80002dc4:	0007c503          	lbu	a0,0(a5)
    80002dc8:	02d757bb          	divuw	a5,a4,a3
    80002dcc:	f8a40123          	sb	a0,-126(s0)
    80002dd0:	48e5f263          	bgeu	a1,a4,80003254 <__printf+0x5fc>
    80002dd4:	06300513          	li	a0,99
    80002dd8:	02d7f5bb          	remuw	a1,a5,a3
    80002ddc:	02059593          	slli	a1,a1,0x20
    80002de0:	0205d593          	srli	a1,a1,0x20
    80002de4:	00bd85b3          	add	a1,s11,a1
    80002de8:	0005c583          	lbu	a1,0(a1)
    80002dec:	02d7d7bb          	divuw	a5,a5,a3
    80002df0:	f8b401a3          	sb	a1,-125(s0)
    80002df4:	48e57263          	bgeu	a0,a4,80003278 <__printf+0x620>
    80002df8:	3e700513          	li	a0,999
    80002dfc:	02d7f5bb          	remuw	a1,a5,a3
    80002e00:	02059593          	slli	a1,a1,0x20
    80002e04:	0205d593          	srli	a1,a1,0x20
    80002e08:	00bd85b3          	add	a1,s11,a1
    80002e0c:	0005c583          	lbu	a1,0(a1)
    80002e10:	02d7d7bb          	divuw	a5,a5,a3
    80002e14:	f8b40223          	sb	a1,-124(s0)
    80002e18:	46e57663          	bgeu	a0,a4,80003284 <__printf+0x62c>
    80002e1c:	02d7f5bb          	remuw	a1,a5,a3
    80002e20:	02059593          	slli	a1,a1,0x20
    80002e24:	0205d593          	srli	a1,a1,0x20
    80002e28:	00bd85b3          	add	a1,s11,a1
    80002e2c:	0005c583          	lbu	a1,0(a1)
    80002e30:	02d7d7bb          	divuw	a5,a5,a3
    80002e34:	f8b402a3          	sb	a1,-123(s0)
    80002e38:	46ea7863          	bgeu	s4,a4,800032a8 <__printf+0x650>
    80002e3c:	02d7f5bb          	remuw	a1,a5,a3
    80002e40:	02059593          	slli	a1,a1,0x20
    80002e44:	0205d593          	srli	a1,a1,0x20
    80002e48:	00bd85b3          	add	a1,s11,a1
    80002e4c:	0005c583          	lbu	a1,0(a1)
    80002e50:	02d7d7bb          	divuw	a5,a5,a3
    80002e54:	f8b40323          	sb	a1,-122(s0)
    80002e58:	3eeaf863          	bgeu	s5,a4,80003248 <__printf+0x5f0>
    80002e5c:	02d7f5bb          	remuw	a1,a5,a3
    80002e60:	02059593          	slli	a1,a1,0x20
    80002e64:	0205d593          	srli	a1,a1,0x20
    80002e68:	00bd85b3          	add	a1,s11,a1
    80002e6c:	0005c583          	lbu	a1,0(a1)
    80002e70:	02d7d7bb          	divuw	a5,a5,a3
    80002e74:	f8b403a3          	sb	a1,-121(s0)
    80002e78:	42eb7e63          	bgeu	s6,a4,800032b4 <__printf+0x65c>
    80002e7c:	02d7f5bb          	remuw	a1,a5,a3
    80002e80:	02059593          	slli	a1,a1,0x20
    80002e84:	0205d593          	srli	a1,a1,0x20
    80002e88:	00bd85b3          	add	a1,s11,a1
    80002e8c:	0005c583          	lbu	a1,0(a1)
    80002e90:	02d7d7bb          	divuw	a5,a5,a3
    80002e94:	f8b40423          	sb	a1,-120(s0)
    80002e98:	42ebfc63          	bgeu	s7,a4,800032d0 <__printf+0x678>
    80002e9c:	02079793          	slli	a5,a5,0x20
    80002ea0:	0207d793          	srli	a5,a5,0x20
    80002ea4:	00fd8db3          	add	s11,s11,a5
    80002ea8:	000dc703          	lbu	a4,0(s11)
    80002eac:	00a00793          	li	a5,10
    80002eb0:	00900c93          	li	s9,9
    80002eb4:	f8e404a3          	sb	a4,-119(s0)
    80002eb8:	00065c63          	bgez	a2,80002ed0 <__printf+0x278>
    80002ebc:	f9040713          	addi	a4,s0,-112
    80002ec0:	00f70733          	add	a4,a4,a5
    80002ec4:	02d00693          	li	a3,45
    80002ec8:	fed70823          	sb	a3,-16(a4)
    80002ecc:	00078c93          	mv	s9,a5
    80002ed0:	f8040793          	addi	a5,s0,-128
    80002ed4:	01978cb3          	add	s9,a5,s9
    80002ed8:	f7f40d13          	addi	s10,s0,-129
    80002edc:	000cc503          	lbu	a0,0(s9)
    80002ee0:	fffc8c93          	addi	s9,s9,-1
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	b90080e7          	jalr	-1136(ra) # 80002a74 <consputc>
    80002eec:	ffac98e3          	bne	s9,s10,80002edc <__printf+0x284>
    80002ef0:	00094503          	lbu	a0,0(s2)
    80002ef4:	e00514e3          	bnez	a0,80002cfc <__printf+0xa4>
    80002ef8:	1a0c1663          	bnez	s8,800030a4 <__printf+0x44c>
    80002efc:	08813083          	ld	ra,136(sp)
    80002f00:	08013403          	ld	s0,128(sp)
    80002f04:	07813483          	ld	s1,120(sp)
    80002f08:	07013903          	ld	s2,112(sp)
    80002f0c:	06813983          	ld	s3,104(sp)
    80002f10:	06013a03          	ld	s4,96(sp)
    80002f14:	05813a83          	ld	s5,88(sp)
    80002f18:	05013b03          	ld	s6,80(sp)
    80002f1c:	04813b83          	ld	s7,72(sp)
    80002f20:	04013c03          	ld	s8,64(sp)
    80002f24:	03813c83          	ld	s9,56(sp)
    80002f28:	03013d03          	ld	s10,48(sp)
    80002f2c:	02813d83          	ld	s11,40(sp)
    80002f30:	0d010113          	addi	sp,sp,208
    80002f34:	00008067          	ret
    80002f38:	07300713          	li	a4,115
    80002f3c:	1ce78a63          	beq	a5,a4,80003110 <__printf+0x4b8>
    80002f40:	07800713          	li	a4,120
    80002f44:	1ee79e63          	bne	a5,a4,80003140 <__printf+0x4e8>
    80002f48:	f7843783          	ld	a5,-136(s0)
    80002f4c:	0007a703          	lw	a4,0(a5)
    80002f50:	00878793          	addi	a5,a5,8
    80002f54:	f6f43c23          	sd	a5,-136(s0)
    80002f58:	28074263          	bltz	a4,800031dc <__printf+0x584>
    80002f5c:	00002d97          	auipc	s11,0x2
    80002f60:	2a4d8d93          	addi	s11,s11,676 # 80005200 <digits>
    80002f64:	00f77793          	andi	a5,a4,15
    80002f68:	00fd87b3          	add	a5,s11,a5
    80002f6c:	0007c683          	lbu	a3,0(a5)
    80002f70:	00f00613          	li	a2,15
    80002f74:	0007079b          	sext.w	a5,a4
    80002f78:	f8d40023          	sb	a3,-128(s0)
    80002f7c:	0047559b          	srliw	a1,a4,0x4
    80002f80:	0047569b          	srliw	a3,a4,0x4
    80002f84:	00000c93          	li	s9,0
    80002f88:	0ee65063          	bge	a2,a4,80003068 <__printf+0x410>
    80002f8c:	00f6f693          	andi	a3,a3,15
    80002f90:	00dd86b3          	add	a3,s11,a3
    80002f94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002f98:	0087d79b          	srliw	a5,a5,0x8
    80002f9c:	00100c93          	li	s9,1
    80002fa0:	f8d400a3          	sb	a3,-127(s0)
    80002fa4:	0cb67263          	bgeu	a2,a1,80003068 <__printf+0x410>
    80002fa8:	00f7f693          	andi	a3,a5,15
    80002fac:	00dd86b3          	add	a3,s11,a3
    80002fb0:	0006c583          	lbu	a1,0(a3)
    80002fb4:	00f00613          	li	a2,15
    80002fb8:	0047d69b          	srliw	a3,a5,0x4
    80002fbc:	f8b40123          	sb	a1,-126(s0)
    80002fc0:	0047d593          	srli	a1,a5,0x4
    80002fc4:	28f67e63          	bgeu	a2,a5,80003260 <__printf+0x608>
    80002fc8:	00f6f693          	andi	a3,a3,15
    80002fcc:	00dd86b3          	add	a3,s11,a3
    80002fd0:	0006c503          	lbu	a0,0(a3)
    80002fd4:	0087d813          	srli	a6,a5,0x8
    80002fd8:	0087d69b          	srliw	a3,a5,0x8
    80002fdc:	f8a401a3          	sb	a0,-125(s0)
    80002fe0:	28b67663          	bgeu	a2,a1,8000326c <__printf+0x614>
    80002fe4:	00f6f693          	andi	a3,a3,15
    80002fe8:	00dd86b3          	add	a3,s11,a3
    80002fec:	0006c583          	lbu	a1,0(a3)
    80002ff0:	00c7d513          	srli	a0,a5,0xc
    80002ff4:	00c7d69b          	srliw	a3,a5,0xc
    80002ff8:	f8b40223          	sb	a1,-124(s0)
    80002ffc:	29067a63          	bgeu	a2,a6,80003290 <__printf+0x638>
    80003000:	00f6f693          	andi	a3,a3,15
    80003004:	00dd86b3          	add	a3,s11,a3
    80003008:	0006c583          	lbu	a1,0(a3)
    8000300c:	0107d813          	srli	a6,a5,0x10
    80003010:	0107d69b          	srliw	a3,a5,0x10
    80003014:	f8b402a3          	sb	a1,-123(s0)
    80003018:	28a67263          	bgeu	a2,a0,8000329c <__printf+0x644>
    8000301c:	00f6f693          	andi	a3,a3,15
    80003020:	00dd86b3          	add	a3,s11,a3
    80003024:	0006c683          	lbu	a3,0(a3)
    80003028:	0147d79b          	srliw	a5,a5,0x14
    8000302c:	f8d40323          	sb	a3,-122(s0)
    80003030:	21067663          	bgeu	a2,a6,8000323c <__printf+0x5e4>
    80003034:	02079793          	slli	a5,a5,0x20
    80003038:	0207d793          	srli	a5,a5,0x20
    8000303c:	00fd8db3          	add	s11,s11,a5
    80003040:	000dc683          	lbu	a3,0(s11)
    80003044:	00800793          	li	a5,8
    80003048:	00700c93          	li	s9,7
    8000304c:	f8d403a3          	sb	a3,-121(s0)
    80003050:	00075c63          	bgez	a4,80003068 <__printf+0x410>
    80003054:	f9040713          	addi	a4,s0,-112
    80003058:	00f70733          	add	a4,a4,a5
    8000305c:	02d00693          	li	a3,45
    80003060:	fed70823          	sb	a3,-16(a4)
    80003064:	00078c93          	mv	s9,a5
    80003068:	f8040793          	addi	a5,s0,-128
    8000306c:	01978cb3          	add	s9,a5,s9
    80003070:	f7f40d13          	addi	s10,s0,-129
    80003074:	000cc503          	lbu	a0,0(s9)
    80003078:	fffc8c93          	addi	s9,s9,-1
    8000307c:	00000097          	auipc	ra,0x0
    80003080:	9f8080e7          	jalr	-1544(ra) # 80002a74 <consputc>
    80003084:	ff9d18e3          	bne	s10,s9,80003074 <__printf+0x41c>
    80003088:	0100006f          	j	80003098 <__printf+0x440>
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	9e8080e7          	jalr	-1560(ra) # 80002a74 <consputc>
    80003094:	000c8493          	mv	s1,s9
    80003098:	00094503          	lbu	a0,0(s2)
    8000309c:	c60510e3          	bnez	a0,80002cfc <__printf+0xa4>
    800030a0:	e40c0ee3          	beqz	s8,80002efc <__printf+0x2a4>
    800030a4:	00004517          	auipc	a0,0x4
    800030a8:	9ac50513          	addi	a0,a0,-1620 # 80006a50 <pr>
    800030ac:	00001097          	auipc	ra,0x1
    800030b0:	94c080e7          	jalr	-1716(ra) # 800039f8 <release>
    800030b4:	e49ff06f          	j	80002efc <__printf+0x2a4>
    800030b8:	f7843783          	ld	a5,-136(s0)
    800030bc:	03000513          	li	a0,48
    800030c0:	01000d13          	li	s10,16
    800030c4:	00878713          	addi	a4,a5,8
    800030c8:	0007bc83          	ld	s9,0(a5)
    800030cc:	f6e43c23          	sd	a4,-136(s0)
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	9a4080e7          	jalr	-1628(ra) # 80002a74 <consputc>
    800030d8:	07800513          	li	a0,120
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	998080e7          	jalr	-1640(ra) # 80002a74 <consputc>
    800030e4:	00002d97          	auipc	s11,0x2
    800030e8:	11cd8d93          	addi	s11,s11,284 # 80005200 <digits>
    800030ec:	03ccd793          	srli	a5,s9,0x3c
    800030f0:	00fd87b3          	add	a5,s11,a5
    800030f4:	0007c503          	lbu	a0,0(a5)
    800030f8:	fffd0d1b          	addiw	s10,s10,-1
    800030fc:	004c9c93          	slli	s9,s9,0x4
    80003100:	00000097          	auipc	ra,0x0
    80003104:	974080e7          	jalr	-1676(ra) # 80002a74 <consputc>
    80003108:	fe0d12e3          	bnez	s10,800030ec <__printf+0x494>
    8000310c:	f8dff06f          	j	80003098 <__printf+0x440>
    80003110:	f7843783          	ld	a5,-136(s0)
    80003114:	0007bc83          	ld	s9,0(a5)
    80003118:	00878793          	addi	a5,a5,8
    8000311c:	f6f43c23          	sd	a5,-136(s0)
    80003120:	000c9a63          	bnez	s9,80003134 <__printf+0x4dc>
    80003124:	1080006f          	j	8000322c <__printf+0x5d4>
    80003128:	001c8c93          	addi	s9,s9,1
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	948080e7          	jalr	-1720(ra) # 80002a74 <consputc>
    80003134:	000cc503          	lbu	a0,0(s9)
    80003138:	fe0518e3          	bnez	a0,80003128 <__printf+0x4d0>
    8000313c:	f5dff06f          	j	80003098 <__printf+0x440>
    80003140:	02500513          	li	a0,37
    80003144:	00000097          	auipc	ra,0x0
    80003148:	930080e7          	jalr	-1744(ra) # 80002a74 <consputc>
    8000314c:	000c8513          	mv	a0,s9
    80003150:	00000097          	auipc	ra,0x0
    80003154:	924080e7          	jalr	-1756(ra) # 80002a74 <consputc>
    80003158:	f41ff06f          	j	80003098 <__printf+0x440>
    8000315c:	02500513          	li	a0,37
    80003160:	00000097          	auipc	ra,0x0
    80003164:	914080e7          	jalr	-1772(ra) # 80002a74 <consputc>
    80003168:	f31ff06f          	j	80003098 <__printf+0x440>
    8000316c:	00030513          	mv	a0,t1
    80003170:	00000097          	auipc	ra,0x0
    80003174:	7bc080e7          	jalr	1980(ra) # 8000392c <acquire>
    80003178:	b4dff06f          	j	80002cc4 <__printf+0x6c>
    8000317c:	40c0053b          	negw	a0,a2
    80003180:	00a00713          	li	a4,10
    80003184:	02e576bb          	remuw	a3,a0,a4
    80003188:	00002d97          	auipc	s11,0x2
    8000318c:	078d8d93          	addi	s11,s11,120 # 80005200 <digits>
    80003190:	ff700593          	li	a1,-9
    80003194:	02069693          	slli	a3,a3,0x20
    80003198:	0206d693          	srli	a3,a3,0x20
    8000319c:	00dd86b3          	add	a3,s11,a3
    800031a0:	0006c683          	lbu	a3,0(a3)
    800031a4:	02e557bb          	divuw	a5,a0,a4
    800031a8:	f8d40023          	sb	a3,-128(s0)
    800031ac:	10b65e63          	bge	a2,a1,800032c8 <__printf+0x670>
    800031b0:	06300593          	li	a1,99
    800031b4:	02e7f6bb          	remuw	a3,a5,a4
    800031b8:	02069693          	slli	a3,a3,0x20
    800031bc:	0206d693          	srli	a3,a3,0x20
    800031c0:	00dd86b3          	add	a3,s11,a3
    800031c4:	0006c683          	lbu	a3,0(a3)
    800031c8:	02e7d73b          	divuw	a4,a5,a4
    800031cc:	00200793          	li	a5,2
    800031d0:	f8d400a3          	sb	a3,-127(s0)
    800031d4:	bca5ece3          	bltu	a1,a0,80002dac <__printf+0x154>
    800031d8:	ce5ff06f          	j	80002ebc <__printf+0x264>
    800031dc:	40e007bb          	negw	a5,a4
    800031e0:	00002d97          	auipc	s11,0x2
    800031e4:	020d8d93          	addi	s11,s11,32 # 80005200 <digits>
    800031e8:	00f7f693          	andi	a3,a5,15
    800031ec:	00dd86b3          	add	a3,s11,a3
    800031f0:	0006c583          	lbu	a1,0(a3)
    800031f4:	ff100613          	li	a2,-15
    800031f8:	0047d69b          	srliw	a3,a5,0x4
    800031fc:	f8b40023          	sb	a1,-128(s0)
    80003200:	0047d59b          	srliw	a1,a5,0x4
    80003204:	0ac75e63          	bge	a4,a2,800032c0 <__printf+0x668>
    80003208:	00f6f693          	andi	a3,a3,15
    8000320c:	00dd86b3          	add	a3,s11,a3
    80003210:	0006c603          	lbu	a2,0(a3)
    80003214:	00f00693          	li	a3,15
    80003218:	0087d79b          	srliw	a5,a5,0x8
    8000321c:	f8c400a3          	sb	a2,-127(s0)
    80003220:	d8b6e4e3          	bltu	a3,a1,80002fa8 <__printf+0x350>
    80003224:	00200793          	li	a5,2
    80003228:	e2dff06f          	j	80003054 <__printf+0x3fc>
    8000322c:	00002c97          	auipc	s9,0x2
    80003230:	fb4c8c93          	addi	s9,s9,-76 # 800051e0 <_ZZ12printIntegermE6digits+0x148>
    80003234:	02800513          	li	a0,40
    80003238:	ef1ff06f          	j	80003128 <__printf+0x4d0>
    8000323c:	00700793          	li	a5,7
    80003240:	00600c93          	li	s9,6
    80003244:	e0dff06f          	j	80003050 <__printf+0x3f8>
    80003248:	00700793          	li	a5,7
    8000324c:	00600c93          	li	s9,6
    80003250:	c69ff06f          	j	80002eb8 <__printf+0x260>
    80003254:	00300793          	li	a5,3
    80003258:	00200c93          	li	s9,2
    8000325c:	c5dff06f          	j	80002eb8 <__printf+0x260>
    80003260:	00300793          	li	a5,3
    80003264:	00200c93          	li	s9,2
    80003268:	de9ff06f          	j	80003050 <__printf+0x3f8>
    8000326c:	00400793          	li	a5,4
    80003270:	00300c93          	li	s9,3
    80003274:	dddff06f          	j	80003050 <__printf+0x3f8>
    80003278:	00400793          	li	a5,4
    8000327c:	00300c93          	li	s9,3
    80003280:	c39ff06f          	j	80002eb8 <__printf+0x260>
    80003284:	00500793          	li	a5,5
    80003288:	00400c93          	li	s9,4
    8000328c:	c2dff06f          	j	80002eb8 <__printf+0x260>
    80003290:	00500793          	li	a5,5
    80003294:	00400c93          	li	s9,4
    80003298:	db9ff06f          	j	80003050 <__printf+0x3f8>
    8000329c:	00600793          	li	a5,6
    800032a0:	00500c93          	li	s9,5
    800032a4:	dadff06f          	j	80003050 <__printf+0x3f8>
    800032a8:	00600793          	li	a5,6
    800032ac:	00500c93          	li	s9,5
    800032b0:	c09ff06f          	j	80002eb8 <__printf+0x260>
    800032b4:	00800793          	li	a5,8
    800032b8:	00700c93          	li	s9,7
    800032bc:	bfdff06f          	j	80002eb8 <__printf+0x260>
    800032c0:	00100793          	li	a5,1
    800032c4:	d91ff06f          	j	80003054 <__printf+0x3fc>
    800032c8:	00100793          	li	a5,1
    800032cc:	bf1ff06f          	j	80002ebc <__printf+0x264>
    800032d0:	00900793          	li	a5,9
    800032d4:	00800c93          	li	s9,8
    800032d8:	be1ff06f          	j	80002eb8 <__printf+0x260>
    800032dc:	00002517          	auipc	a0,0x2
    800032e0:	f0c50513          	addi	a0,a0,-244 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	918080e7          	jalr	-1768(ra) # 80002bfc <panic>

00000000800032ec <printfinit>:
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	00113c23          	sd	ra,24(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	00003497          	auipc	s1,0x3
    80003304:	75048493          	addi	s1,s1,1872 # 80006a50 <pr>
    80003308:	00048513          	mv	a0,s1
    8000330c:	00002597          	auipc	a1,0x2
    80003310:	eec58593          	addi	a1,a1,-276 # 800051f8 <_ZZ12printIntegermE6digits+0x160>
    80003314:	00000097          	auipc	ra,0x0
    80003318:	5f4080e7          	jalr	1524(ra) # 80003908 <initlock>
    8000331c:	01813083          	ld	ra,24(sp)
    80003320:	01013403          	ld	s0,16(sp)
    80003324:	0004ac23          	sw	zero,24(s1)
    80003328:	00813483          	ld	s1,8(sp)
    8000332c:	02010113          	addi	sp,sp,32
    80003330:	00008067          	ret

0000000080003334 <uartinit>:
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00813423          	sd	s0,8(sp)
    8000333c:	01010413          	addi	s0,sp,16
    80003340:	100007b7          	lui	a5,0x10000
    80003344:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003348:	f8000713          	li	a4,-128
    8000334c:	00e781a3          	sb	a4,3(a5)
    80003350:	00300713          	li	a4,3
    80003354:	00e78023          	sb	a4,0(a5)
    80003358:	000780a3          	sb	zero,1(a5)
    8000335c:	00e781a3          	sb	a4,3(a5)
    80003360:	00700693          	li	a3,7
    80003364:	00d78123          	sb	a3,2(a5)
    80003368:	00e780a3          	sb	a4,1(a5)
    8000336c:	00813403          	ld	s0,8(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <uartputc>:
    80003378:	00002797          	auipc	a5,0x2
    8000337c:	4707a783          	lw	a5,1136(a5) # 800057e8 <panicked>
    80003380:	00078463          	beqz	a5,80003388 <uartputc+0x10>
    80003384:	0000006f          	j	80003384 <uartputc+0xc>
    80003388:	fd010113          	addi	sp,sp,-48
    8000338c:	02813023          	sd	s0,32(sp)
    80003390:	00913c23          	sd	s1,24(sp)
    80003394:	01213823          	sd	s2,16(sp)
    80003398:	01313423          	sd	s3,8(sp)
    8000339c:	02113423          	sd	ra,40(sp)
    800033a0:	03010413          	addi	s0,sp,48
    800033a4:	00002917          	auipc	s2,0x2
    800033a8:	44c90913          	addi	s2,s2,1100 # 800057f0 <uart_tx_r>
    800033ac:	00093783          	ld	a5,0(s2)
    800033b0:	00002497          	auipc	s1,0x2
    800033b4:	44848493          	addi	s1,s1,1096 # 800057f8 <uart_tx_w>
    800033b8:	0004b703          	ld	a4,0(s1)
    800033bc:	02078693          	addi	a3,a5,32
    800033c0:	00050993          	mv	s3,a0
    800033c4:	02e69c63          	bne	a3,a4,800033fc <uartputc+0x84>
    800033c8:	00001097          	auipc	ra,0x1
    800033cc:	834080e7          	jalr	-1996(ra) # 80003bfc <push_on>
    800033d0:	00093783          	ld	a5,0(s2)
    800033d4:	0004b703          	ld	a4,0(s1)
    800033d8:	02078793          	addi	a5,a5,32
    800033dc:	00e79463          	bne	a5,a4,800033e4 <uartputc+0x6c>
    800033e0:	0000006f          	j	800033e0 <uartputc+0x68>
    800033e4:	00001097          	auipc	ra,0x1
    800033e8:	88c080e7          	jalr	-1908(ra) # 80003c70 <pop_on>
    800033ec:	00093783          	ld	a5,0(s2)
    800033f0:	0004b703          	ld	a4,0(s1)
    800033f4:	02078693          	addi	a3,a5,32
    800033f8:	fce688e3          	beq	a3,a4,800033c8 <uartputc+0x50>
    800033fc:	01f77693          	andi	a3,a4,31
    80003400:	00003597          	auipc	a1,0x3
    80003404:	67058593          	addi	a1,a1,1648 # 80006a70 <uart_tx_buf>
    80003408:	00d586b3          	add	a3,a1,a3
    8000340c:	00170713          	addi	a4,a4,1
    80003410:	01368023          	sb	s3,0(a3)
    80003414:	00e4b023          	sd	a4,0(s1)
    80003418:	10000637          	lui	a2,0x10000
    8000341c:	02f71063          	bne	a4,a5,8000343c <uartputc+0xc4>
    80003420:	0340006f          	j	80003454 <uartputc+0xdc>
    80003424:	00074703          	lbu	a4,0(a4)
    80003428:	00f93023          	sd	a5,0(s2)
    8000342c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003430:	00093783          	ld	a5,0(s2)
    80003434:	0004b703          	ld	a4,0(s1)
    80003438:	00f70e63          	beq	a4,a5,80003454 <uartputc+0xdc>
    8000343c:	00564683          	lbu	a3,5(a2)
    80003440:	01f7f713          	andi	a4,a5,31
    80003444:	00e58733          	add	a4,a1,a4
    80003448:	0206f693          	andi	a3,a3,32
    8000344c:	00178793          	addi	a5,a5,1
    80003450:	fc069ae3          	bnez	a3,80003424 <uartputc+0xac>
    80003454:	02813083          	ld	ra,40(sp)
    80003458:	02013403          	ld	s0,32(sp)
    8000345c:	01813483          	ld	s1,24(sp)
    80003460:	01013903          	ld	s2,16(sp)
    80003464:	00813983          	ld	s3,8(sp)
    80003468:	03010113          	addi	sp,sp,48
    8000346c:	00008067          	ret

0000000080003470 <uartputc_sync>:
    80003470:	ff010113          	addi	sp,sp,-16
    80003474:	00813423          	sd	s0,8(sp)
    80003478:	01010413          	addi	s0,sp,16
    8000347c:	00002717          	auipc	a4,0x2
    80003480:	36c72703          	lw	a4,876(a4) # 800057e8 <panicked>
    80003484:	02071663          	bnez	a4,800034b0 <uartputc_sync+0x40>
    80003488:	00050793          	mv	a5,a0
    8000348c:	100006b7          	lui	a3,0x10000
    80003490:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003494:	02077713          	andi	a4,a4,32
    80003498:	fe070ce3          	beqz	a4,80003490 <uartputc_sync+0x20>
    8000349c:	0ff7f793          	andi	a5,a5,255
    800034a0:	00f68023          	sb	a5,0(a3)
    800034a4:	00813403          	ld	s0,8(sp)
    800034a8:	01010113          	addi	sp,sp,16
    800034ac:	00008067          	ret
    800034b0:	0000006f          	j	800034b0 <uartputc_sync+0x40>

00000000800034b4 <uartstart>:
    800034b4:	ff010113          	addi	sp,sp,-16
    800034b8:	00813423          	sd	s0,8(sp)
    800034bc:	01010413          	addi	s0,sp,16
    800034c0:	00002617          	auipc	a2,0x2
    800034c4:	33060613          	addi	a2,a2,816 # 800057f0 <uart_tx_r>
    800034c8:	00002517          	auipc	a0,0x2
    800034cc:	33050513          	addi	a0,a0,816 # 800057f8 <uart_tx_w>
    800034d0:	00063783          	ld	a5,0(a2)
    800034d4:	00053703          	ld	a4,0(a0)
    800034d8:	04f70263          	beq	a4,a5,8000351c <uartstart+0x68>
    800034dc:	100005b7          	lui	a1,0x10000
    800034e0:	00003817          	auipc	a6,0x3
    800034e4:	59080813          	addi	a6,a6,1424 # 80006a70 <uart_tx_buf>
    800034e8:	01c0006f          	j	80003504 <uartstart+0x50>
    800034ec:	0006c703          	lbu	a4,0(a3)
    800034f0:	00f63023          	sd	a5,0(a2)
    800034f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034f8:	00063783          	ld	a5,0(a2)
    800034fc:	00053703          	ld	a4,0(a0)
    80003500:	00f70e63          	beq	a4,a5,8000351c <uartstart+0x68>
    80003504:	01f7f713          	andi	a4,a5,31
    80003508:	00e806b3          	add	a3,a6,a4
    8000350c:	0055c703          	lbu	a4,5(a1)
    80003510:	00178793          	addi	a5,a5,1
    80003514:	02077713          	andi	a4,a4,32
    80003518:	fc071ae3          	bnez	a4,800034ec <uartstart+0x38>
    8000351c:	00813403          	ld	s0,8(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret

0000000080003528 <uartgetc>:
    80003528:	ff010113          	addi	sp,sp,-16
    8000352c:	00813423          	sd	s0,8(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	10000737          	lui	a4,0x10000
    80003538:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000353c:	0017f793          	andi	a5,a5,1
    80003540:	00078c63          	beqz	a5,80003558 <uartgetc+0x30>
    80003544:	00074503          	lbu	a0,0(a4)
    80003548:	0ff57513          	andi	a0,a0,255
    8000354c:	00813403          	ld	s0,8(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret
    80003558:	fff00513          	li	a0,-1
    8000355c:	ff1ff06f          	j	8000354c <uartgetc+0x24>

0000000080003560 <uartintr>:
    80003560:	100007b7          	lui	a5,0x10000
    80003564:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003568:	0017f793          	andi	a5,a5,1
    8000356c:	0a078463          	beqz	a5,80003614 <uartintr+0xb4>
    80003570:	fe010113          	addi	sp,sp,-32
    80003574:	00813823          	sd	s0,16(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	02010413          	addi	s0,sp,32
    80003584:	100004b7          	lui	s1,0x10000
    80003588:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000358c:	0ff57513          	andi	a0,a0,255
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	534080e7          	jalr	1332(ra) # 80002ac4 <consoleintr>
    80003598:	0054c783          	lbu	a5,5(s1)
    8000359c:	0017f793          	andi	a5,a5,1
    800035a0:	fe0794e3          	bnez	a5,80003588 <uartintr+0x28>
    800035a4:	00002617          	auipc	a2,0x2
    800035a8:	24c60613          	addi	a2,a2,588 # 800057f0 <uart_tx_r>
    800035ac:	00002517          	auipc	a0,0x2
    800035b0:	24c50513          	addi	a0,a0,588 # 800057f8 <uart_tx_w>
    800035b4:	00063783          	ld	a5,0(a2)
    800035b8:	00053703          	ld	a4,0(a0)
    800035bc:	04f70263          	beq	a4,a5,80003600 <uartintr+0xa0>
    800035c0:	100005b7          	lui	a1,0x10000
    800035c4:	00003817          	auipc	a6,0x3
    800035c8:	4ac80813          	addi	a6,a6,1196 # 80006a70 <uart_tx_buf>
    800035cc:	01c0006f          	j	800035e8 <uartintr+0x88>
    800035d0:	0006c703          	lbu	a4,0(a3)
    800035d4:	00f63023          	sd	a5,0(a2)
    800035d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035dc:	00063783          	ld	a5,0(a2)
    800035e0:	00053703          	ld	a4,0(a0)
    800035e4:	00f70e63          	beq	a4,a5,80003600 <uartintr+0xa0>
    800035e8:	01f7f713          	andi	a4,a5,31
    800035ec:	00e806b3          	add	a3,a6,a4
    800035f0:	0055c703          	lbu	a4,5(a1)
    800035f4:	00178793          	addi	a5,a5,1
    800035f8:	02077713          	andi	a4,a4,32
    800035fc:	fc071ae3          	bnez	a4,800035d0 <uartintr+0x70>
    80003600:	01813083          	ld	ra,24(sp)
    80003604:	01013403          	ld	s0,16(sp)
    80003608:	00813483          	ld	s1,8(sp)
    8000360c:	02010113          	addi	sp,sp,32
    80003610:	00008067          	ret
    80003614:	00002617          	auipc	a2,0x2
    80003618:	1dc60613          	addi	a2,a2,476 # 800057f0 <uart_tx_r>
    8000361c:	00002517          	auipc	a0,0x2
    80003620:	1dc50513          	addi	a0,a0,476 # 800057f8 <uart_tx_w>
    80003624:	00063783          	ld	a5,0(a2)
    80003628:	00053703          	ld	a4,0(a0)
    8000362c:	04f70263          	beq	a4,a5,80003670 <uartintr+0x110>
    80003630:	100005b7          	lui	a1,0x10000
    80003634:	00003817          	auipc	a6,0x3
    80003638:	43c80813          	addi	a6,a6,1084 # 80006a70 <uart_tx_buf>
    8000363c:	01c0006f          	j	80003658 <uartintr+0xf8>
    80003640:	0006c703          	lbu	a4,0(a3)
    80003644:	00f63023          	sd	a5,0(a2)
    80003648:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000364c:	00063783          	ld	a5,0(a2)
    80003650:	00053703          	ld	a4,0(a0)
    80003654:	02f70063          	beq	a4,a5,80003674 <uartintr+0x114>
    80003658:	01f7f713          	andi	a4,a5,31
    8000365c:	00e806b3          	add	a3,a6,a4
    80003660:	0055c703          	lbu	a4,5(a1)
    80003664:	00178793          	addi	a5,a5,1
    80003668:	02077713          	andi	a4,a4,32
    8000366c:	fc071ae3          	bnez	a4,80003640 <uartintr+0xe0>
    80003670:	00008067          	ret
    80003674:	00008067          	ret

0000000080003678 <kinit>:
    80003678:	fc010113          	addi	sp,sp,-64
    8000367c:	02913423          	sd	s1,40(sp)
    80003680:	fffff7b7          	lui	a5,0xfffff
    80003684:	00004497          	auipc	s1,0x4
    80003688:	40b48493          	addi	s1,s1,1035 # 80007a8f <end+0xfff>
    8000368c:	02813823          	sd	s0,48(sp)
    80003690:	01313c23          	sd	s3,24(sp)
    80003694:	00f4f4b3          	and	s1,s1,a5
    80003698:	02113c23          	sd	ra,56(sp)
    8000369c:	03213023          	sd	s2,32(sp)
    800036a0:	01413823          	sd	s4,16(sp)
    800036a4:	01513423          	sd	s5,8(sp)
    800036a8:	04010413          	addi	s0,sp,64
    800036ac:	000017b7          	lui	a5,0x1
    800036b0:	01100993          	li	s3,17
    800036b4:	00f487b3          	add	a5,s1,a5
    800036b8:	01b99993          	slli	s3,s3,0x1b
    800036bc:	06f9e063          	bltu	s3,a5,8000371c <kinit+0xa4>
    800036c0:	00003a97          	auipc	s5,0x3
    800036c4:	3d0a8a93          	addi	s5,s5,976 # 80006a90 <end>
    800036c8:	0754ec63          	bltu	s1,s5,80003740 <kinit+0xc8>
    800036cc:	0734fa63          	bgeu	s1,s3,80003740 <kinit+0xc8>
    800036d0:	00088a37          	lui	s4,0x88
    800036d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800036d8:	00002917          	auipc	s2,0x2
    800036dc:	12890913          	addi	s2,s2,296 # 80005800 <kmem>
    800036e0:	00ca1a13          	slli	s4,s4,0xc
    800036e4:	0140006f          	j	800036f8 <kinit+0x80>
    800036e8:	000017b7          	lui	a5,0x1
    800036ec:	00f484b3          	add	s1,s1,a5
    800036f0:	0554e863          	bltu	s1,s5,80003740 <kinit+0xc8>
    800036f4:	0534f663          	bgeu	s1,s3,80003740 <kinit+0xc8>
    800036f8:	00001637          	lui	a2,0x1
    800036fc:	00100593          	li	a1,1
    80003700:	00048513          	mv	a0,s1
    80003704:	00000097          	auipc	ra,0x0
    80003708:	5e4080e7          	jalr	1508(ra) # 80003ce8 <__memset>
    8000370c:	00093783          	ld	a5,0(s2)
    80003710:	00f4b023          	sd	a5,0(s1)
    80003714:	00993023          	sd	s1,0(s2)
    80003718:	fd4498e3          	bne	s1,s4,800036e8 <kinit+0x70>
    8000371c:	03813083          	ld	ra,56(sp)
    80003720:	03013403          	ld	s0,48(sp)
    80003724:	02813483          	ld	s1,40(sp)
    80003728:	02013903          	ld	s2,32(sp)
    8000372c:	01813983          	ld	s3,24(sp)
    80003730:	01013a03          	ld	s4,16(sp)
    80003734:	00813a83          	ld	s5,8(sp)
    80003738:	04010113          	addi	sp,sp,64
    8000373c:	00008067          	ret
    80003740:	00002517          	auipc	a0,0x2
    80003744:	ad850513          	addi	a0,a0,-1320 # 80005218 <digits+0x18>
    80003748:	fffff097          	auipc	ra,0xfffff
    8000374c:	4b4080e7          	jalr	1204(ra) # 80002bfc <panic>

0000000080003750 <freerange>:
    80003750:	fc010113          	addi	sp,sp,-64
    80003754:	000017b7          	lui	a5,0x1
    80003758:	02913423          	sd	s1,40(sp)
    8000375c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003760:	009504b3          	add	s1,a0,s1
    80003764:	fffff537          	lui	a0,0xfffff
    80003768:	02813823          	sd	s0,48(sp)
    8000376c:	02113c23          	sd	ra,56(sp)
    80003770:	03213023          	sd	s2,32(sp)
    80003774:	01313c23          	sd	s3,24(sp)
    80003778:	01413823          	sd	s4,16(sp)
    8000377c:	01513423          	sd	s5,8(sp)
    80003780:	01613023          	sd	s6,0(sp)
    80003784:	04010413          	addi	s0,sp,64
    80003788:	00a4f4b3          	and	s1,s1,a0
    8000378c:	00f487b3          	add	a5,s1,a5
    80003790:	06f5e463          	bltu	a1,a5,800037f8 <freerange+0xa8>
    80003794:	00003a97          	auipc	s5,0x3
    80003798:	2fca8a93          	addi	s5,s5,764 # 80006a90 <end>
    8000379c:	0954e263          	bltu	s1,s5,80003820 <freerange+0xd0>
    800037a0:	01100993          	li	s3,17
    800037a4:	01b99993          	slli	s3,s3,0x1b
    800037a8:	0734fc63          	bgeu	s1,s3,80003820 <freerange+0xd0>
    800037ac:	00058a13          	mv	s4,a1
    800037b0:	00002917          	auipc	s2,0x2
    800037b4:	05090913          	addi	s2,s2,80 # 80005800 <kmem>
    800037b8:	00002b37          	lui	s6,0x2
    800037bc:	0140006f          	j	800037d0 <freerange+0x80>
    800037c0:	000017b7          	lui	a5,0x1
    800037c4:	00f484b3          	add	s1,s1,a5
    800037c8:	0554ec63          	bltu	s1,s5,80003820 <freerange+0xd0>
    800037cc:	0534fa63          	bgeu	s1,s3,80003820 <freerange+0xd0>
    800037d0:	00001637          	lui	a2,0x1
    800037d4:	00100593          	li	a1,1
    800037d8:	00048513          	mv	a0,s1
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	50c080e7          	jalr	1292(ra) # 80003ce8 <__memset>
    800037e4:	00093703          	ld	a4,0(s2)
    800037e8:	016487b3          	add	a5,s1,s6
    800037ec:	00e4b023          	sd	a4,0(s1)
    800037f0:	00993023          	sd	s1,0(s2)
    800037f4:	fcfa76e3          	bgeu	s4,a5,800037c0 <freerange+0x70>
    800037f8:	03813083          	ld	ra,56(sp)
    800037fc:	03013403          	ld	s0,48(sp)
    80003800:	02813483          	ld	s1,40(sp)
    80003804:	02013903          	ld	s2,32(sp)
    80003808:	01813983          	ld	s3,24(sp)
    8000380c:	01013a03          	ld	s4,16(sp)
    80003810:	00813a83          	ld	s5,8(sp)
    80003814:	00013b03          	ld	s6,0(sp)
    80003818:	04010113          	addi	sp,sp,64
    8000381c:	00008067          	ret
    80003820:	00002517          	auipc	a0,0x2
    80003824:	9f850513          	addi	a0,a0,-1544 # 80005218 <digits+0x18>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	3d4080e7          	jalr	980(ra) # 80002bfc <panic>

0000000080003830 <kfree>:
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	00913423          	sd	s1,8(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	03451793          	slli	a5,a0,0x34
    80003848:	04079c63          	bnez	a5,800038a0 <kfree+0x70>
    8000384c:	00003797          	auipc	a5,0x3
    80003850:	24478793          	addi	a5,a5,580 # 80006a90 <end>
    80003854:	00050493          	mv	s1,a0
    80003858:	04f56463          	bltu	a0,a5,800038a0 <kfree+0x70>
    8000385c:	01100793          	li	a5,17
    80003860:	01b79793          	slli	a5,a5,0x1b
    80003864:	02f57e63          	bgeu	a0,a5,800038a0 <kfree+0x70>
    80003868:	00001637          	lui	a2,0x1
    8000386c:	00100593          	li	a1,1
    80003870:	00000097          	auipc	ra,0x0
    80003874:	478080e7          	jalr	1144(ra) # 80003ce8 <__memset>
    80003878:	00002797          	auipc	a5,0x2
    8000387c:	f8878793          	addi	a5,a5,-120 # 80005800 <kmem>
    80003880:	0007b703          	ld	a4,0(a5)
    80003884:	01813083          	ld	ra,24(sp)
    80003888:	01013403          	ld	s0,16(sp)
    8000388c:	00e4b023          	sd	a4,0(s1)
    80003890:	0097b023          	sd	s1,0(a5)
    80003894:	00813483          	ld	s1,8(sp)
    80003898:	02010113          	addi	sp,sp,32
    8000389c:	00008067          	ret
    800038a0:	00002517          	auipc	a0,0x2
    800038a4:	97850513          	addi	a0,a0,-1672 # 80005218 <digits+0x18>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	354080e7          	jalr	852(ra) # 80002bfc <panic>

00000000800038b0 <kalloc>:
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	00002797          	auipc	a5,0x2
    800038c8:	f3c78793          	addi	a5,a5,-196 # 80005800 <kmem>
    800038cc:	0007b483          	ld	s1,0(a5)
    800038d0:	02048063          	beqz	s1,800038f0 <kalloc+0x40>
    800038d4:	0004b703          	ld	a4,0(s1)
    800038d8:	00001637          	lui	a2,0x1
    800038dc:	00500593          	li	a1,5
    800038e0:	00048513          	mv	a0,s1
    800038e4:	00e7b023          	sd	a4,0(a5)
    800038e8:	00000097          	auipc	ra,0x0
    800038ec:	400080e7          	jalr	1024(ra) # 80003ce8 <__memset>
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	00048513          	mv	a0,s1
    800038fc:	00813483          	ld	s1,8(sp)
    80003900:	02010113          	addi	sp,sp,32
    80003904:	00008067          	ret

0000000080003908 <initlock>:
    80003908:	ff010113          	addi	sp,sp,-16
    8000390c:	00813423          	sd	s0,8(sp)
    80003910:	01010413          	addi	s0,sp,16
    80003914:	00813403          	ld	s0,8(sp)
    80003918:	00b53423          	sd	a1,8(a0)
    8000391c:	00052023          	sw	zero,0(a0)
    80003920:	00053823          	sd	zero,16(a0)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret

000000008000392c <acquire>:
    8000392c:	fe010113          	addi	sp,sp,-32
    80003930:	00813823          	sd	s0,16(sp)
    80003934:	00913423          	sd	s1,8(sp)
    80003938:	00113c23          	sd	ra,24(sp)
    8000393c:	01213023          	sd	s2,0(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	00050493          	mv	s1,a0
    80003948:	10002973          	csrr	s2,sstatus
    8000394c:	100027f3          	csrr	a5,sstatus
    80003950:	ffd7f793          	andi	a5,a5,-3
    80003954:	10079073          	csrw	sstatus,a5
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	8e8080e7          	jalr	-1816(ra) # 80002240 <mycpu>
    80003960:	07852783          	lw	a5,120(a0)
    80003964:	06078e63          	beqz	a5,800039e0 <acquire+0xb4>
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	8d8080e7          	jalr	-1832(ra) # 80002240 <mycpu>
    80003970:	07852783          	lw	a5,120(a0)
    80003974:	0004a703          	lw	a4,0(s1)
    80003978:	0017879b          	addiw	a5,a5,1
    8000397c:	06f52c23          	sw	a5,120(a0)
    80003980:	04071063          	bnez	a4,800039c0 <acquire+0x94>
    80003984:	00100713          	li	a4,1
    80003988:	00070793          	mv	a5,a4
    8000398c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003990:	0007879b          	sext.w	a5,a5
    80003994:	fe079ae3          	bnez	a5,80003988 <acquire+0x5c>
    80003998:	0ff0000f          	fence
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	8a4080e7          	jalr	-1884(ra) # 80002240 <mycpu>
    800039a4:	01813083          	ld	ra,24(sp)
    800039a8:	01013403          	ld	s0,16(sp)
    800039ac:	00a4b823          	sd	a0,16(s1)
    800039b0:	00013903          	ld	s2,0(sp)
    800039b4:	00813483          	ld	s1,8(sp)
    800039b8:	02010113          	addi	sp,sp,32
    800039bc:	00008067          	ret
    800039c0:	0104b903          	ld	s2,16(s1)
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	87c080e7          	jalr	-1924(ra) # 80002240 <mycpu>
    800039cc:	faa91ce3          	bne	s2,a0,80003984 <acquire+0x58>
    800039d0:	00002517          	auipc	a0,0x2
    800039d4:	85050513          	addi	a0,a0,-1968 # 80005220 <digits+0x20>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	224080e7          	jalr	548(ra) # 80002bfc <panic>
    800039e0:	00195913          	srli	s2,s2,0x1
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	85c080e7          	jalr	-1956(ra) # 80002240 <mycpu>
    800039ec:	00197913          	andi	s2,s2,1
    800039f0:	07252e23          	sw	s2,124(a0)
    800039f4:	f75ff06f          	j	80003968 <acquire+0x3c>

00000000800039f8 <release>:
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00813823          	sd	s0,16(sp)
    80003a00:	00113c23          	sd	ra,24(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00052783          	lw	a5,0(a0)
    80003a14:	00079a63          	bnez	a5,80003a28 <release+0x30>
    80003a18:	00002517          	auipc	a0,0x2
    80003a1c:	81050513          	addi	a0,a0,-2032 # 80005228 <digits+0x28>
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	1dc080e7          	jalr	476(ra) # 80002bfc <panic>
    80003a28:	01053903          	ld	s2,16(a0)
    80003a2c:	00050493          	mv	s1,a0
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	810080e7          	jalr	-2032(ra) # 80002240 <mycpu>
    80003a38:	fea910e3          	bne	s2,a0,80003a18 <release+0x20>
    80003a3c:	0004b823          	sd	zero,16(s1)
    80003a40:	0ff0000f          	fence
    80003a44:	0f50000f          	fence	iorw,ow
    80003a48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	7f4080e7          	jalr	2036(ra) # 80002240 <mycpu>
    80003a54:	100027f3          	csrr	a5,sstatus
    80003a58:	0027f793          	andi	a5,a5,2
    80003a5c:	04079a63          	bnez	a5,80003ab0 <release+0xb8>
    80003a60:	07852783          	lw	a5,120(a0)
    80003a64:	02f05e63          	blez	a5,80003aa0 <release+0xa8>
    80003a68:	fff7871b          	addiw	a4,a5,-1
    80003a6c:	06e52c23          	sw	a4,120(a0)
    80003a70:	00071c63          	bnez	a4,80003a88 <release+0x90>
    80003a74:	07c52783          	lw	a5,124(a0)
    80003a78:	00078863          	beqz	a5,80003a88 <release+0x90>
    80003a7c:	100027f3          	csrr	a5,sstatus
    80003a80:	0027e793          	ori	a5,a5,2
    80003a84:	10079073          	csrw	sstatus,a5
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	00013903          	ld	s2,0(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00008067          	ret
    80003aa0:	00001517          	auipc	a0,0x1
    80003aa4:	7a850513          	addi	a0,a0,1960 # 80005248 <digits+0x48>
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	154080e7          	jalr	340(ra) # 80002bfc <panic>
    80003ab0:	00001517          	auipc	a0,0x1
    80003ab4:	78050513          	addi	a0,a0,1920 # 80005230 <digits+0x30>
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	144080e7          	jalr	324(ra) # 80002bfc <panic>

0000000080003ac0 <holding>:
    80003ac0:	00052783          	lw	a5,0(a0)
    80003ac4:	00079663          	bnez	a5,80003ad0 <holding+0x10>
    80003ac8:	00000513          	li	a0,0
    80003acc:	00008067          	ret
    80003ad0:	fe010113          	addi	sp,sp,-32
    80003ad4:	00813823          	sd	s0,16(sp)
    80003ad8:	00913423          	sd	s1,8(sp)
    80003adc:	00113c23          	sd	ra,24(sp)
    80003ae0:	02010413          	addi	s0,sp,32
    80003ae4:	01053483          	ld	s1,16(a0)
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	758080e7          	jalr	1880(ra) # 80002240 <mycpu>
    80003af0:	01813083          	ld	ra,24(sp)
    80003af4:	01013403          	ld	s0,16(sp)
    80003af8:	40a48533          	sub	a0,s1,a0
    80003afc:	00153513          	seqz	a0,a0
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	02010113          	addi	sp,sp,32
    80003b08:	00008067          	ret

0000000080003b0c <push_off>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00113c23          	sd	ra,24(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	100024f3          	csrr	s1,sstatus
    80003b24:	100027f3          	csrr	a5,sstatus
    80003b28:	ffd7f793          	andi	a5,a5,-3
    80003b2c:	10079073          	csrw	sstatus,a5
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	710080e7          	jalr	1808(ra) # 80002240 <mycpu>
    80003b38:	07852783          	lw	a5,120(a0)
    80003b3c:	02078663          	beqz	a5,80003b68 <push_off+0x5c>
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	700080e7          	jalr	1792(ra) # 80002240 <mycpu>
    80003b48:	07852783          	lw	a5,120(a0)
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	0017879b          	addiw	a5,a5,1
    80003b58:	06f52c23          	sw	a5,120(a0)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret
    80003b68:	0014d493          	srli	s1,s1,0x1
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	6d4080e7          	jalr	1748(ra) # 80002240 <mycpu>
    80003b74:	0014f493          	andi	s1,s1,1
    80003b78:	06952e23          	sw	s1,124(a0)
    80003b7c:	fc5ff06f          	j	80003b40 <push_off+0x34>

0000000080003b80 <pop_off>:
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00813023          	sd	s0,0(sp)
    80003b88:	00113423          	sd	ra,8(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	6b0080e7          	jalr	1712(ra) # 80002240 <mycpu>
    80003b98:	100027f3          	csrr	a5,sstatus
    80003b9c:	0027f793          	andi	a5,a5,2
    80003ba0:	04079663          	bnez	a5,80003bec <pop_off+0x6c>
    80003ba4:	07852783          	lw	a5,120(a0)
    80003ba8:	02f05a63          	blez	a5,80003bdc <pop_off+0x5c>
    80003bac:	fff7871b          	addiw	a4,a5,-1
    80003bb0:	06e52c23          	sw	a4,120(a0)
    80003bb4:	00071c63          	bnez	a4,80003bcc <pop_off+0x4c>
    80003bb8:	07c52783          	lw	a5,124(a0)
    80003bbc:	00078863          	beqz	a5,80003bcc <pop_off+0x4c>
    80003bc0:	100027f3          	csrr	a5,sstatus
    80003bc4:	0027e793          	ori	a5,a5,2
    80003bc8:	10079073          	csrw	sstatus,a5
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret
    80003bdc:	00001517          	auipc	a0,0x1
    80003be0:	66c50513          	addi	a0,a0,1644 # 80005248 <digits+0x48>
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	018080e7          	jalr	24(ra) # 80002bfc <panic>
    80003bec:	00001517          	auipc	a0,0x1
    80003bf0:	64450513          	addi	a0,a0,1604 # 80005230 <digits+0x30>
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	008080e7          	jalr	8(ra) # 80002bfc <panic>

0000000080003bfc <push_on>:
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00813823          	sd	s0,16(sp)
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	02010413          	addi	s0,sp,32
    80003c10:	100024f3          	csrr	s1,sstatus
    80003c14:	100027f3          	csrr	a5,sstatus
    80003c18:	0027e793          	ori	a5,a5,2
    80003c1c:	10079073          	csrw	sstatus,a5
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	620080e7          	jalr	1568(ra) # 80002240 <mycpu>
    80003c28:	07852783          	lw	a5,120(a0)
    80003c2c:	02078663          	beqz	a5,80003c58 <push_on+0x5c>
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	610080e7          	jalr	1552(ra) # 80002240 <mycpu>
    80003c38:	07852783          	lw	a5,120(a0)
    80003c3c:	01813083          	ld	ra,24(sp)
    80003c40:	01013403          	ld	s0,16(sp)
    80003c44:	0017879b          	addiw	a5,a5,1
    80003c48:	06f52c23          	sw	a5,120(a0)
    80003c4c:	00813483          	ld	s1,8(sp)
    80003c50:	02010113          	addi	sp,sp,32
    80003c54:	00008067          	ret
    80003c58:	0014d493          	srli	s1,s1,0x1
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	5e4080e7          	jalr	1508(ra) # 80002240 <mycpu>
    80003c64:	0014f493          	andi	s1,s1,1
    80003c68:	06952e23          	sw	s1,124(a0)
    80003c6c:	fc5ff06f          	j	80003c30 <push_on+0x34>

0000000080003c70 <pop_on>:
    80003c70:	ff010113          	addi	sp,sp,-16
    80003c74:	00813023          	sd	s0,0(sp)
    80003c78:	00113423          	sd	ra,8(sp)
    80003c7c:	01010413          	addi	s0,sp,16
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	5c0080e7          	jalr	1472(ra) # 80002240 <mycpu>
    80003c88:	100027f3          	csrr	a5,sstatus
    80003c8c:	0027f793          	andi	a5,a5,2
    80003c90:	04078463          	beqz	a5,80003cd8 <pop_on+0x68>
    80003c94:	07852783          	lw	a5,120(a0)
    80003c98:	02f05863          	blez	a5,80003cc8 <pop_on+0x58>
    80003c9c:	fff7879b          	addiw	a5,a5,-1
    80003ca0:	06f52c23          	sw	a5,120(a0)
    80003ca4:	07853783          	ld	a5,120(a0)
    80003ca8:	00079863          	bnez	a5,80003cb8 <pop_on+0x48>
    80003cac:	100027f3          	csrr	a5,sstatus
    80003cb0:	ffd7f793          	andi	a5,a5,-3
    80003cb4:	10079073          	csrw	sstatus,a5
    80003cb8:	00813083          	ld	ra,8(sp)
    80003cbc:	00013403          	ld	s0,0(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret
    80003cc8:	00001517          	auipc	a0,0x1
    80003ccc:	5a850513          	addi	a0,a0,1448 # 80005270 <digits+0x70>
    80003cd0:	fffff097          	auipc	ra,0xfffff
    80003cd4:	f2c080e7          	jalr	-212(ra) # 80002bfc <panic>
    80003cd8:	00001517          	auipc	a0,0x1
    80003cdc:	57850513          	addi	a0,a0,1400 # 80005250 <digits+0x50>
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	f1c080e7          	jalr	-228(ra) # 80002bfc <panic>

0000000080003ce8 <__memset>:
    80003ce8:	ff010113          	addi	sp,sp,-16
    80003cec:	00813423          	sd	s0,8(sp)
    80003cf0:	01010413          	addi	s0,sp,16
    80003cf4:	1a060e63          	beqz	a2,80003eb0 <__memset+0x1c8>
    80003cf8:	40a007b3          	neg	a5,a0
    80003cfc:	0077f793          	andi	a5,a5,7
    80003d00:	00778693          	addi	a3,a5,7
    80003d04:	00b00813          	li	a6,11
    80003d08:	0ff5f593          	andi	a1,a1,255
    80003d0c:	fff6071b          	addiw	a4,a2,-1
    80003d10:	1b06e663          	bltu	a3,a6,80003ebc <__memset+0x1d4>
    80003d14:	1cd76463          	bltu	a4,a3,80003edc <__memset+0x1f4>
    80003d18:	1a078e63          	beqz	a5,80003ed4 <__memset+0x1ec>
    80003d1c:	00b50023          	sb	a1,0(a0)
    80003d20:	00100713          	li	a4,1
    80003d24:	1ae78463          	beq	a5,a4,80003ecc <__memset+0x1e4>
    80003d28:	00b500a3          	sb	a1,1(a0)
    80003d2c:	00200713          	li	a4,2
    80003d30:	1ae78a63          	beq	a5,a4,80003ee4 <__memset+0x1fc>
    80003d34:	00b50123          	sb	a1,2(a0)
    80003d38:	00300713          	li	a4,3
    80003d3c:	18e78463          	beq	a5,a4,80003ec4 <__memset+0x1dc>
    80003d40:	00b501a3          	sb	a1,3(a0)
    80003d44:	00400713          	li	a4,4
    80003d48:	1ae78263          	beq	a5,a4,80003eec <__memset+0x204>
    80003d4c:	00b50223          	sb	a1,4(a0)
    80003d50:	00500713          	li	a4,5
    80003d54:	1ae78063          	beq	a5,a4,80003ef4 <__memset+0x20c>
    80003d58:	00b502a3          	sb	a1,5(a0)
    80003d5c:	00700713          	li	a4,7
    80003d60:	18e79e63          	bne	a5,a4,80003efc <__memset+0x214>
    80003d64:	00b50323          	sb	a1,6(a0)
    80003d68:	00700e93          	li	t4,7
    80003d6c:	00859713          	slli	a4,a1,0x8
    80003d70:	00e5e733          	or	a4,a1,a4
    80003d74:	01059e13          	slli	t3,a1,0x10
    80003d78:	01c76e33          	or	t3,a4,t3
    80003d7c:	01859313          	slli	t1,a1,0x18
    80003d80:	006e6333          	or	t1,t3,t1
    80003d84:	02059893          	slli	a7,a1,0x20
    80003d88:	40f60e3b          	subw	t3,a2,a5
    80003d8c:	011368b3          	or	a7,t1,a7
    80003d90:	02859813          	slli	a6,a1,0x28
    80003d94:	0108e833          	or	a6,a7,a6
    80003d98:	03059693          	slli	a3,a1,0x30
    80003d9c:	003e589b          	srliw	a7,t3,0x3
    80003da0:	00d866b3          	or	a3,a6,a3
    80003da4:	03859713          	slli	a4,a1,0x38
    80003da8:	00389813          	slli	a6,a7,0x3
    80003dac:	00f507b3          	add	a5,a0,a5
    80003db0:	00e6e733          	or	a4,a3,a4
    80003db4:	000e089b          	sext.w	a7,t3
    80003db8:	00f806b3          	add	a3,a6,a5
    80003dbc:	00e7b023          	sd	a4,0(a5)
    80003dc0:	00878793          	addi	a5,a5,8
    80003dc4:	fed79ce3          	bne	a5,a3,80003dbc <__memset+0xd4>
    80003dc8:	ff8e7793          	andi	a5,t3,-8
    80003dcc:	0007871b          	sext.w	a4,a5
    80003dd0:	01d787bb          	addw	a5,a5,t4
    80003dd4:	0ce88e63          	beq	a7,a4,80003eb0 <__memset+0x1c8>
    80003dd8:	00f50733          	add	a4,a0,a5
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	0017871b          	addiw	a4,a5,1
    80003de4:	0cc77663          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	0027871b          	addiw	a4,a5,2
    80003df4:	0ac77e63          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	0037871b          	addiw	a4,a5,3
    80003e04:	0ac77663          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00b70023          	sb	a1,0(a4)
    80003e10:	0047871b          	addiw	a4,a5,4
    80003e14:	08c77e63          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00b70023          	sb	a1,0(a4)
    80003e20:	0057871b          	addiw	a4,a5,5
    80003e24:	08c77663          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e28:	00e50733          	add	a4,a0,a4
    80003e2c:	00b70023          	sb	a1,0(a4)
    80003e30:	0067871b          	addiw	a4,a5,6
    80003e34:	06c77e63          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e38:	00e50733          	add	a4,a0,a4
    80003e3c:	00b70023          	sb	a1,0(a4)
    80003e40:	0077871b          	addiw	a4,a5,7
    80003e44:	06c77663          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e48:	00e50733          	add	a4,a0,a4
    80003e4c:	00b70023          	sb	a1,0(a4)
    80003e50:	0087871b          	addiw	a4,a5,8
    80003e54:	04c77e63          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	0097871b          	addiw	a4,a5,9
    80003e64:	04c77663          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	00a7871b          	addiw	a4,a5,10
    80003e74:	02c77e63          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	00b7871b          	addiw	a4,a5,11
    80003e84:	02c77663          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	00c7871b          	addiw	a4,a5,12
    80003e94:	00c77e63          	bgeu	a4,a2,80003eb0 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	00d7879b          	addiw	a5,a5,13
    80003ea4:	00c7f663          	bgeu	a5,a2,80003eb0 <__memset+0x1c8>
    80003ea8:	00f507b3          	add	a5,a0,a5
    80003eac:	00b78023          	sb	a1,0(a5)
    80003eb0:	00813403          	ld	s0,8(sp)
    80003eb4:	01010113          	addi	sp,sp,16
    80003eb8:	00008067          	ret
    80003ebc:	00b00693          	li	a3,11
    80003ec0:	e55ff06f          	j	80003d14 <__memset+0x2c>
    80003ec4:	00300e93          	li	t4,3
    80003ec8:	ea5ff06f          	j	80003d6c <__memset+0x84>
    80003ecc:	00100e93          	li	t4,1
    80003ed0:	e9dff06f          	j	80003d6c <__memset+0x84>
    80003ed4:	00000e93          	li	t4,0
    80003ed8:	e95ff06f          	j	80003d6c <__memset+0x84>
    80003edc:	00000793          	li	a5,0
    80003ee0:	ef9ff06f          	j	80003dd8 <__memset+0xf0>
    80003ee4:	00200e93          	li	t4,2
    80003ee8:	e85ff06f          	j	80003d6c <__memset+0x84>
    80003eec:	00400e93          	li	t4,4
    80003ef0:	e7dff06f          	j	80003d6c <__memset+0x84>
    80003ef4:	00500e93          	li	t4,5
    80003ef8:	e75ff06f          	j	80003d6c <__memset+0x84>
    80003efc:	00600e93          	li	t4,6
    80003f00:	e6dff06f          	j	80003d6c <__memset+0x84>

0000000080003f04 <__memmove>:
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00813423          	sd	s0,8(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    80003f10:	0e060863          	beqz	a2,80004000 <__memmove+0xfc>
    80003f14:	fff6069b          	addiw	a3,a2,-1
    80003f18:	0006881b          	sext.w	a6,a3
    80003f1c:	0ea5e863          	bltu	a1,a0,8000400c <__memmove+0x108>
    80003f20:	00758713          	addi	a4,a1,7
    80003f24:	00a5e7b3          	or	a5,a1,a0
    80003f28:	40a70733          	sub	a4,a4,a0
    80003f2c:	0077f793          	andi	a5,a5,7
    80003f30:	00f73713          	sltiu	a4,a4,15
    80003f34:	00174713          	xori	a4,a4,1
    80003f38:	0017b793          	seqz	a5,a5
    80003f3c:	00e7f7b3          	and	a5,a5,a4
    80003f40:	10078863          	beqz	a5,80004050 <__memmove+0x14c>
    80003f44:	00900793          	li	a5,9
    80003f48:	1107f463          	bgeu	a5,a6,80004050 <__memmove+0x14c>
    80003f4c:	0036581b          	srliw	a6,a2,0x3
    80003f50:	fff8081b          	addiw	a6,a6,-1
    80003f54:	02081813          	slli	a6,a6,0x20
    80003f58:	01d85893          	srli	a7,a6,0x1d
    80003f5c:	00858813          	addi	a6,a1,8
    80003f60:	00058793          	mv	a5,a1
    80003f64:	00050713          	mv	a4,a0
    80003f68:	01088833          	add	a6,a7,a6
    80003f6c:	0007b883          	ld	a7,0(a5)
    80003f70:	00878793          	addi	a5,a5,8
    80003f74:	00870713          	addi	a4,a4,8
    80003f78:	ff173c23          	sd	a7,-8(a4)
    80003f7c:	ff0798e3          	bne	a5,a6,80003f6c <__memmove+0x68>
    80003f80:	ff867713          	andi	a4,a2,-8
    80003f84:	02071793          	slli	a5,a4,0x20
    80003f88:	0207d793          	srli	a5,a5,0x20
    80003f8c:	00f585b3          	add	a1,a1,a5
    80003f90:	40e686bb          	subw	a3,a3,a4
    80003f94:	00f507b3          	add	a5,a0,a5
    80003f98:	06e60463          	beq	a2,a4,80004000 <__memmove+0xfc>
    80003f9c:	0005c703          	lbu	a4,0(a1)
    80003fa0:	00e78023          	sb	a4,0(a5)
    80003fa4:	04068e63          	beqz	a3,80004000 <__memmove+0xfc>
    80003fa8:	0015c603          	lbu	a2,1(a1)
    80003fac:	00100713          	li	a4,1
    80003fb0:	00c780a3          	sb	a2,1(a5)
    80003fb4:	04e68663          	beq	a3,a4,80004000 <__memmove+0xfc>
    80003fb8:	0025c603          	lbu	a2,2(a1)
    80003fbc:	00200713          	li	a4,2
    80003fc0:	00c78123          	sb	a2,2(a5)
    80003fc4:	02e68e63          	beq	a3,a4,80004000 <__memmove+0xfc>
    80003fc8:	0035c603          	lbu	a2,3(a1)
    80003fcc:	00300713          	li	a4,3
    80003fd0:	00c781a3          	sb	a2,3(a5)
    80003fd4:	02e68663          	beq	a3,a4,80004000 <__memmove+0xfc>
    80003fd8:	0045c603          	lbu	a2,4(a1)
    80003fdc:	00400713          	li	a4,4
    80003fe0:	00c78223          	sb	a2,4(a5)
    80003fe4:	00e68e63          	beq	a3,a4,80004000 <__memmove+0xfc>
    80003fe8:	0055c603          	lbu	a2,5(a1)
    80003fec:	00500713          	li	a4,5
    80003ff0:	00c782a3          	sb	a2,5(a5)
    80003ff4:	00e68663          	beq	a3,a4,80004000 <__memmove+0xfc>
    80003ff8:	0065c703          	lbu	a4,6(a1)
    80003ffc:	00e78323          	sb	a4,6(a5)
    80004000:	00813403          	ld	s0,8(sp)
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00008067          	ret
    8000400c:	02061713          	slli	a4,a2,0x20
    80004010:	02075713          	srli	a4,a4,0x20
    80004014:	00e587b3          	add	a5,a1,a4
    80004018:	f0f574e3          	bgeu	a0,a5,80003f20 <__memmove+0x1c>
    8000401c:	02069613          	slli	a2,a3,0x20
    80004020:	02065613          	srli	a2,a2,0x20
    80004024:	fff64613          	not	a2,a2
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00c78633          	add	a2,a5,a2
    80004030:	fff7c683          	lbu	a3,-1(a5)
    80004034:	fff78793          	addi	a5,a5,-1
    80004038:	fff70713          	addi	a4,a4,-1
    8000403c:	00d70023          	sb	a3,0(a4)
    80004040:	fec798e3          	bne	a5,a2,80004030 <__memmove+0x12c>
    80004044:	00813403          	ld	s0,8(sp)
    80004048:	01010113          	addi	sp,sp,16
    8000404c:	00008067          	ret
    80004050:	02069713          	slli	a4,a3,0x20
    80004054:	02075713          	srli	a4,a4,0x20
    80004058:	00170713          	addi	a4,a4,1
    8000405c:	00e50733          	add	a4,a0,a4
    80004060:	00050793          	mv	a5,a0
    80004064:	0005c683          	lbu	a3,0(a1)
    80004068:	00178793          	addi	a5,a5,1
    8000406c:	00158593          	addi	a1,a1,1
    80004070:	fed78fa3          	sb	a3,-1(a5)
    80004074:	fee798e3          	bne	a5,a4,80004064 <__memmove+0x160>
    80004078:	f89ff06f          	j	80004000 <__memmove+0xfc>

000000008000407c <__putc>:
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00813823          	sd	s0,16(sp)
    80004084:	00113c23          	sd	ra,24(sp)
    80004088:	02010413          	addi	s0,sp,32
    8000408c:	00050793          	mv	a5,a0
    80004090:	fef40593          	addi	a1,s0,-17
    80004094:	00100613          	li	a2,1
    80004098:	00000513          	li	a0,0
    8000409c:	fef407a3          	sb	a5,-17(s0)
    800040a0:	fffff097          	auipc	ra,0xfffff
    800040a4:	b3c080e7          	jalr	-1220(ra) # 80002bdc <console_write>
    800040a8:	01813083          	ld	ra,24(sp)
    800040ac:	01013403          	ld	s0,16(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret

00000000800040b8 <__getc>:
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00813823          	sd	s0,16(sp)
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	02010413          	addi	s0,sp,32
    800040c8:	fe840593          	addi	a1,s0,-24
    800040cc:	00100613          	li	a2,1
    800040d0:	00000513          	li	a0,0
    800040d4:	fffff097          	auipc	ra,0xfffff
    800040d8:	ae8080e7          	jalr	-1304(ra) # 80002bbc <console_read>
    800040dc:	fe844503          	lbu	a0,-24(s0)
    800040e0:	01813083          	ld	ra,24(sp)
    800040e4:	01013403          	ld	s0,16(sp)
    800040e8:	02010113          	addi	sp,sp,32
    800040ec:	00008067          	ret

00000000800040f0 <console_handler>:
    800040f0:	fe010113          	addi	sp,sp,-32
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	00913423          	sd	s1,8(sp)
    80004100:	02010413          	addi	s0,sp,32
    80004104:	14202773          	csrr	a4,scause
    80004108:	100027f3          	csrr	a5,sstatus
    8000410c:	0027f793          	andi	a5,a5,2
    80004110:	06079e63          	bnez	a5,8000418c <console_handler+0x9c>
    80004114:	00074c63          	bltz	a4,8000412c <console_handler+0x3c>
    80004118:	01813083          	ld	ra,24(sp)
    8000411c:	01013403          	ld	s0,16(sp)
    80004120:	00813483          	ld	s1,8(sp)
    80004124:	02010113          	addi	sp,sp,32
    80004128:	00008067          	ret
    8000412c:	0ff77713          	andi	a4,a4,255
    80004130:	00900793          	li	a5,9
    80004134:	fef712e3          	bne	a4,a5,80004118 <console_handler+0x28>
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	6dc080e7          	jalr	1756(ra) # 80002814 <plic_claim>
    80004140:	00a00793          	li	a5,10
    80004144:	00050493          	mv	s1,a0
    80004148:	02f50c63          	beq	a0,a5,80004180 <console_handler+0x90>
    8000414c:	fc0506e3          	beqz	a0,80004118 <console_handler+0x28>
    80004150:	00050593          	mv	a1,a0
    80004154:	00001517          	auipc	a0,0x1
    80004158:	02450513          	addi	a0,a0,36 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    8000415c:	fffff097          	auipc	ra,0xfffff
    80004160:	afc080e7          	jalr	-1284(ra) # 80002c58 <__printf>
    80004164:	01013403          	ld	s0,16(sp)
    80004168:	01813083          	ld	ra,24(sp)
    8000416c:	00048513          	mv	a0,s1
    80004170:	00813483          	ld	s1,8(sp)
    80004174:	02010113          	addi	sp,sp,32
    80004178:	ffffe317          	auipc	t1,0xffffe
    8000417c:	6d430067          	jr	1748(t1) # 8000284c <plic_complete>
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	3e0080e7          	jalr	992(ra) # 80003560 <uartintr>
    80004188:	fddff06f          	j	80004164 <console_handler+0x74>
    8000418c:	00001517          	auipc	a0,0x1
    80004190:	0ec50513          	addi	a0,a0,236 # 80005278 <digits+0x78>
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	a68080e7          	jalr	-1432(ra) # 80002bfc <panic>
	...
