
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	83813103          	ld	sp,-1992(sp) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	154020ef          	jal	ra,80002170 <start>

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
    80001088:	754000ef          	jal	ra,800017dc <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011d4:	c14080e7          	jalr	-1004(ra) # 80001de4 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011d8:	00001097          	auipc	ra,0x1
    800011dc:	a1c080e7          	jalr	-1508(ra) # 80001bf4 <_ZN15MemoryAllocator9mem_allocEm>
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

    if (val < 0)
    80001208:	fdc42503          	lw	a0,-36(s0)
    8000120c:	02054c63          	bltz	a0,80001244 <_Z13thread_createPP7_threadPFvPvES2_+0x94>
        return val;

    printString("\nnew thread: ");
    80001210:	00004517          	auipc	a0,0x4
    80001214:	e1050513          	addi	a0,a0,-496 # 80005020 <CONSOLE_STATUS+0x10>
    80001218:	00001097          	auipc	ra,0x1
    8000121c:	c00080e7          	jalr	-1024(ra) # 80001e18 <_Z11printStringPKc>
    printInteger((uint64) *handle);
    80001220:	fc843783          	ld	a5,-56(s0)
    80001224:	0007b503          	ld	a0,0(a5)
    80001228:	00001097          	auipc	ra,0x1
    8000122c:	c60080e7          	jalr	-928(ra) # 80001e88 <_Z12printIntegerm>
    printString("\n");
    80001230:	00004517          	auipc	a0,0x4
    80001234:	e2050513          	addi	a0,a0,-480 # 80005050 <CONSOLE_STATUS+0x40>
    80001238:	00001097          	auipc	ra,0x1
    8000123c:	be0080e7          	jalr	-1056(ra) # 80001e18 <_Z11printStringPKc>

    return val;
    80001240:	fdc42503          	lw	a0,-36(s0)
}
    80001244:	04813083          	ld	ra,72(sp)
    80001248:	04013403          	ld	s0,64(sp)
    8000124c:	05010113          	addi	sp,sp,80
    80001250:	00008067          	ret

0000000080001254 <_Z11thread_exitv>:

int thread_exit ()
{
    80001254:	fe010113          	addi	sp,sp,-32
    80001258:	00813c23          	sd	s0,24(sp)
    8000125c:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000012UL;
    80001260:	01200793          	li	a5,18
    80001264:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001268:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    8000126c:	00000073          	ecall


    // if this code is executed -> error exiting thread
    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001270:	fea43223          	sd	a0,-28(s0)

    return val;
}
    80001274:	fe442503          	lw	a0,-28(s0)
    80001278:	01813403          	ld	s0,24(sp)
    8000127c:	02010113          	addi	sp,sp,32
    80001280:	00008067          	ret

0000000080001284 <_Z15thread_dispatchv>:

void thread_dispatch ()
{
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00813c23          	sd	s0,24(sp)
    8000128c:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000013UL;
    80001290:	01300793          	li	a5,19
    80001294:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001298:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    8000129c:	00000073          	ecall
}
    800012a0:	01813403          	ld	s0,24(sp)
    800012a4:	02010113          	addi	sp,sp,32
    800012a8:	00008067          	ret

00000000800012ac <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800012ac:	fe010113          	addi	sp,sp,-32
    800012b0:	00113c23          	sd	ra,24(sp)
    800012b4:	00813823          	sd	s0,16(sp)
    800012b8:	00913423          	sd	s1,8(sp)
    800012bc:	01213023          	sd	s2,0(sp)
    800012c0:	02010413          	addi	s0,sp,32
    800012c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012c8:	00100793          	li	a5,1
    800012cc:	02a7f863          	bgeu	a5,a0,800012fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800012d0:	00a00793          	li	a5,10
    800012d4:	02f577b3          	remu	a5,a0,a5
    800012d8:	02078e63          	beqz	a5,80001314 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012dc:	fff48513          	addi	a0,s1,-1
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	fcc080e7          	jalr	-52(ra) # 800012ac <_ZL9fibonaccim>
    800012e8:	00050913          	mv	s2,a0
    800012ec:	ffe48513          	addi	a0,s1,-2
    800012f0:	00000097          	auipc	ra,0x0
    800012f4:	fbc080e7          	jalr	-68(ra) # 800012ac <_ZL9fibonaccim>
    800012f8:	00a90533          	add	a0,s2,a0
}
    800012fc:	01813083          	ld	ra,24(sp)
    80001300:	01013403          	ld	s0,16(sp)
    80001304:	00813483          	ld	s1,8(sp)
    80001308:	00013903          	ld	s2,0(sp)
    8000130c:	02010113          	addi	sp,sp,32
    80001310:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001314:	00000097          	auipc	ra,0x0
    80001318:	f70080e7          	jalr	-144(ra) # 80001284 <_Z15thread_dispatchv>
    8000131c:	fc1ff06f          	j	800012dc <_ZL9fibonaccim+0x30>

0000000080001320 <_Z11workerBodyAPv>:
{
    80001320:	fe010113          	addi	sp,sp,-32
    80001324:	00113c23          	sd	ra,24(sp)
    80001328:	00813823          	sd	s0,16(sp)
    8000132c:	00913423          	sd	s1,8(sp)
    80001330:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001334:	00000493          	li	s1,0
    80001338:	0300006f          	j	80001368 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000133c:	00168693          	addi	a3,a3,1
    80001340:	000027b7          	lui	a5,0x2
    80001344:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001348:	00d7ee63          	bltu	a5,a3,80001364 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000134c:	00000713          	li	a4,0
    80001350:	000077b7          	lui	a5,0x7
    80001354:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001358:	fee7e2e3          	bltu	a5,a4,8000133c <_Z11workerBodyAPv+0x1c>
    8000135c:	00170713          	addi	a4,a4,1
    80001360:	ff1ff06f          	j	80001350 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001364:	00148493          	addi	s1,s1,1
    80001368:	00900793          	li	a5,9
    8000136c:	0297ec63          	bltu	a5,s1,800013a4 <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    80001370:	00004517          	auipc	a0,0x4
    80001374:	cc050513          	addi	a0,a0,-832 # 80005030 <CONSOLE_STATUS+0x20>
    80001378:	00001097          	auipc	ra,0x1
    8000137c:	aa0080e7          	jalr	-1376(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(i);
    80001380:	00048513          	mv	a0,s1
    80001384:	00001097          	auipc	ra,0x1
    80001388:	b04080e7          	jalr	-1276(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    8000138c:	00004517          	auipc	a0,0x4
    80001390:	cc450513          	addi	a0,a0,-828 # 80005050 <CONSOLE_STATUS+0x40>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	a84080e7          	jalr	-1404(ra) # 80001e18 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000139c:	00000693          	li	a3,0
    800013a0:	fa1ff06f          	j	80001340 <_Z11workerBodyAPv+0x20>
}
    800013a4:	01813083          	ld	ra,24(sp)
    800013a8:	01013403          	ld	s0,16(sp)
    800013ac:	00813483          	ld	s1,8(sp)
    800013b0:	02010113          	addi	sp,sp,32
    800013b4:	00008067          	ret

00000000800013b8 <_Z11workerBodyBPv>:
{
    800013b8:	fe010113          	addi	sp,sp,-32
    800013bc:	00113c23          	sd	ra,24(sp)
    800013c0:	00813823          	sd	s0,16(sp)
    800013c4:	00913423          	sd	s1,8(sp)
    800013c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800013cc:	00000493          	li	s1,0
    800013d0:	0300006f          	j	80001400 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013d4:	00168693          	addi	a3,a3,1
    800013d8:	000027b7          	lui	a5,0x2
    800013dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013e0:	00d7ee63          	bltu	a5,a3,800013fc <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013e4:	00000713          	li	a4,0
    800013e8:	000077b7          	lui	a5,0x7
    800013ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013f0:	fee7e2e3          	bltu	a5,a4,800013d4 <_Z11workerBodyBPv+0x1c>
    800013f4:	00170713          	addi	a4,a4,1
    800013f8:	ff1ff06f          	j	800013e8 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800013fc:	00148493          	addi	s1,s1,1
    80001400:	00f00793          	li	a5,15
    80001404:	0297ec63          	bltu	a5,s1,8000143c <_Z11workerBodyBPv+0x84>
        printString("B: i=");
    80001408:	00004517          	auipc	a0,0x4
    8000140c:	c3050513          	addi	a0,a0,-976 # 80005038 <CONSOLE_STATUS+0x28>
    80001410:	00001097          	auipc	ra,0x1
    80001414:	a08080e7          	jalr	-1528(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(i);
    80001418:	00048513          	mv	a0,s1
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	a6c080e7          	jalr	-1428(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c2c50513          	addi	a0,a0,-980 # 80005050 <CONSOLE_STATUS+0x40>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	9ec080e7          	jalr	-1556(ra) # 80001e18 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001434:	00000693          	li	a3,0
    80001438:	fa1ff06f          	j	800013d8 <_Z11workerBodyBPv+0x20>
}
    8000143c:	01813083          	ld	ra,24(sp)
    80001440:	01013403          	ld	s0,16(sp)
    80001444:	00813483          	ld	s1,8(sp)
    80001448:	02010113          	addi	sp,sp,32
    8000144c:	00008067          	ret

0000000080001450 <_Z11workerBodyCPv>:

void workerBodyC(void*)
{
    80001450:	fe010113          	addi	sp,sp,-32
    80001454:	00113c23          	sd	ra,24(sp)
    80001458:	00813823          	sd	s0,16(sp)
    8000145c:	00913423          	sd	s1,8(sp)
    80001460:	01213023          	sd	s2,0(sp)
    80001464:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001468:	00000493          	li	s1,0
    8000146c:	0380006f          	j	800014a4 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001470:	00004517          	auipc	a0,0x4
    80001474:	bd050513          	addi	a0,a0,-1072 # 80005040 <CONSOLE_STATUS+0x30>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	9a0080e7          	jalr	-1632(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(i);
    80001480:	00048513          	mv	a0,s1
    80001484:	00001097          	auipc	ra,0x1
    80001488:	a04080e7          	jalr	-1532(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bc450513          	addi	a0,a0,-1084 # 80005050 <CONSOLE_STATUS+0x40>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	984080e7          	jalr	-1660(ra) # 80001e18 <_Z11printStringPKc>
    for (; i < 3; i++)
    8000149c:	0014849b          	addiw	s1,s1,1
    800014a0:	0ff4f493          	andi	s1,s1,255
    800014a4:	00200793          	li	a5,2
    800014a8:	fc97f4e3          	bgeu	a5,s1,80001470 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    800014ac:	00004517          	auipc	a0,0x4
    800014b0:	b9c50513          	addi	a0,a0,-1124 # 80005048 <CONSOLE_STATUS+0x38>
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	964080e7          	jalr	-1692(ra) # 80001e18 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014bc:	00700313          	li	t1,7
    thread_dispatch();
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	dc4080e7          	jalr	-572(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014c8:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	b8c50513          	addi	a0,a0,-1140 # 80005058 <CONSOLE_STATUS+0x48>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	944080e7          	jalr	-1724(ra) # 80001e18 <_Z11printStringPKc>
    printInteger(t1);
    800014dc:	00090513          	mv	a0,s2
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	9a8080e7          	jalr	-1624(ra) # 80001e88 <_Z12printIntegerm>
    printString("\n");
    800014e8:	00004517          	auipc	a0,0x4
    800014ec:	b6850513          	addi	a0,a0,-1176 # 80005050 <CONSOLE_STATUS+0x40>
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	928080e7          	jalr	-1752(ra) # 80001e18 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014f8:	00c00513          	li	a0,12
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	db0080e7          	jalr	-592(ra) # 800012ac <_ZL9fibonaccim>
    80001504:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	b5850513          	addi	a0,a0,-1192 # 80005060 <CONSOLE_STATUS+0x50>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	908080e7          	jalr	-1784(ra) # 80001e18 <_Z11printStringPKc>
    printInteger(result);
    80001518:	00090513          	mv	a0,s2
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	96c080e7          	jalr	-1684(ra) # 80001e88 <_Z12printIntegerm>
    printString("\n");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b2c50513          	addi	a0,a0,-1236 # 80005050 <CONSOLE_STATUS+0x40>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	8ec080e7          	jalr	-1812(ra) # 80001e18 <_Z11printStringPKc>
    80001534:	0380006f          	j	8000156c <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001538:	00004517          	auipc	a0,0x4
    8000153c:	b0850513          	addi	a0,a0,-1272 # 80005040 <CONSOLE_STATUS+0x30>
    80001540:	00001097          	auipc	ra,0x1
    80001544:	8d8080e7          	jalr	-1832(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(i);
    80001548:	00048513          	mv	a0,s1
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	93c080e7          	jalr	-1732(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    80001554:	00004517          	auipc	a0,0x4
    80001558:	afc50513          	addi	a0,a0,-1284 # 80005050 <CONSOLE_STATUS+0x40>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	8bc080e7          	jalr	-1860(ra) # 80001e18 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001564:	0014849b          	addiw	s1,s1,1
    80001568:	0ff4f493          	andi	s1,s1,255
    8000156c:	00500793          	li	a5,5
    80001570:	fc97f4e3          	bgeu	a5,s1,80001538 <_Z11workerBodyCPv+0xe8>
    }
//    TCB::yield();
}
    80001574:	01813083          	ld	ra,24(sp)
    80001578:	01013403          	ld	s0,16(sp)
    8000157c:	00813483          	ld	s1,8(sp)
    80001580:	00013903          	ld	s2,0(sp)
    80001584:	02010113          	addi	sp,sp,32
    80001588:	00008067          	ret

000000008000158c <_Z11workerBodyDPv>:

void workerBodyD(void*)
{
    8000158c:	fe010113          	addi	sp,sp,-32
    80001590:	00113c23          	sd	ra,24(sp)
    80001594:	00813823          	sd	s0,16(sp)
    80001598:	00913423          	sd	s1,8(sp)
    8000159c:	01213023          	sd	s2,0(sp)
    800015a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800015a4:	00a00493          	li	s1,10
    800015a8:	0380006f          	j	800015e0 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800015ac:	00004517          	auipc	a0,0x4
    800015b0:	ac450513          	addi	a0,a0,-1340 # 80005070 <CONSOLE_STATUS+0x60>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	864080e7          	jalr	-1948(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(i);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	8c8080e7          	jalr	-1848(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    800015c8:	00004517          	auipc	a0,0x4
    800015cc:	a8850513          	addi	a0,a0,-1400 # 80005050 <CONSOLE_STATUS+0x40>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	848080e7          	jalr	-1976(ra) # 80001e18 <_Z11printStringPKc>
    for (; i < 13; i++)
    800015d8:	0014849b          	addiw	s1,s1,1
    800015dc:	0ff4f493          	andi	s1,s1,255
    800015e0:	00c00793          	li	a5,12
    800015e4:	fc97f4e3          	bgeu	a5,s1,800015ac <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    800015e8:	00004517          	auipc	a0,0x4
    800015ec:	a9050513          	addi	a0,a0,-1392 # 80005078 <CONSOLE_STATUS+0x68>
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	828080e7          	jalr	-2008(ra) # 80001e18 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015f8:	00500313          	li	t1,5
    thread_dispatch();
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	c88080e7          	jalr	-888(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001604:	01000513          	li	a0,16
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	ca4080e7          	jalr	-860(ra) # 800012ac <_ZL9fibonaccim>
    80001610:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001614:	00004517          	auipc	a0,0x4
    80001618:	a7450513          	addi	a0,a0,-1420 # 80005088 <CONSOLE_STATUS+0x78>
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	7fc080e7          	jalr	2044(ra) # 80001e18 <_Z11printStringPKc>
    printInteger(result);
    80001624:	00090513          	mv	a0,s2
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	860080e7          	jalr	-1952(ra) # 80001e88 <_Z12printIntegerm>
    printString("\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a2050513          	addi	a0,a0,-1504 # 80005050 <CONSOLE_STATUS+0x40>
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	7e0080e7          	jalr	2016(ra) # 80001e18 <_Z11printStringPKc>
    80001640:	0380006f          	j	80001678 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001644:	00004517          	auipc	a0,0x4
    80001648:	a2c50513          	addi	a0,a0,-1492 # 80005070 <CONSOLE_STATUS+0x60>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	7cc080e7          	jalr	1996(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(i);
    80001654:	00048513          	mv	a0,s1
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	830080e7          	jalr	-2000(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	9f050513          	addi	a0,a0,-1552 # 80005050 <CONSOLE_STATUS+0x40>
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	7b0080e7          	jalr	1968(ra) # 80001e18 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001670:	0014849b          	addiw	s1,s1,1
    80001674:	0ff4f493          	andi	s1,s1,255
    80001678:	00f00793          	li	a5,15
    8000167c:	fc97f4e3          	bgeu	a5,s1,80001644 <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    80001680:	01813083          	ld	ra,24(sp)
    80001684:	01013403          	ld	s0,16(sp)
    80001688:	00813483          	ld	s1,8(sp)
    8000168c:	00013903          	ld	s2,0(sp)
    80001690:	02010113          	addi	sp,sp,32
    80001694:	00008067          	ret

0000000080001698 <_Z8userMainv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

void userMain()
{
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00113c23          	sd	ra,24(sp)
    800016a0:	00813823          	sd	s0,16(sp)
    800016a4:	02010413          	addi	s0,sp,32
    __putc('1');
    800016a8:	03100513          	li	a0,49
    800016ac:	00003097          	auipc	ra,0x3
    800016b0:	b80080e7          	jalr	-1152(ra) # 8000422c <__putc>
    __putc('\n');
    800016b4:	00a00513          	li	a0,10
    800016b8:	00003097          	auipc	ra,0x3
    800016bc:	b74080e7          	jalr	-1164(ra) # 8000422c <__putc>

    thread_t handle2 = nullptr;
    800016c0:	fe043423          	sd	zero,-24(s0)
    thread_t handle3 = nullptr;
    800016c4:	fe043023          	sd	zero,-32(s0)

    //handle2 = (_thread**) mem_alloc(sizeof(_thread*));
    //handle3 = (_thread**) mem_alloc(sizeof(_thread*));

    thread_create(&handle2, workerBodyC, nullptr);
    800016c8:	00000613          	li	a2,0
    800016cc:	00004597          	auipc	a1,0x4
    800016d0:	15c5b583          	ld	a1,348(a1) # 80005828 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016d4:	fe840513          	addi	a0,s0,-24
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	ad8080e7          	jalr	-1320(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle3, workerBodyD, nullptr);
    800016e0:	00000613          	li	a2,0
    800016e4:	00004597          	auipc	a1,0x4
    800016e8:	1645b583          	ld	a1,356(a1) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016ec:	fe040513          	addi	a0,s0,-32
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	ac0080e7          	jalr	-1344(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>

    printString("Finished!\n");
    800016f8:	00004517          	auipc	a0,0x4
    800016fc:	9a050513          	addi	a0,a0,-1632 # 80005098 <CONSOLE_STATUS+0x88>
    80001700:	00000097          	auipc	ra,0x0
    80001704:	718080e7          	jalr	1816(ra) # 80001e18 <_Z11printStringPKc>
}
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	02010113          	addi	sp,sp,32
    80001714:	00008067          	ret

0000000080001718 <main>:

void main(void*)
{
    80001718:	fd010113          	addi	sp,sp,-48
    8000171c:	02113423          	sd	ra,40(sp)
    80001720:	02813023          	sd	s0,32(sp)
    80001724:	00913c23          	sd	s1,24(sp)
    80001728:	03010413          	addi	s0,sp,48
    MemoryAllocator::initialise();
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	458080e7          	jalr	1112(ra) # 80001b84 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001734:	00004797          	auipc	a5,0x4
    80001738:	0fc7b783          	ld	a5,252(a5) # 80005830 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000173c:	10579073          	csrw	stvec,a5
    thread_t handle = nullptr;
    80001740:	fc043c23          	sd	zero,-40(s0)

//    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);

    int retVal = thread_create(&handle, nullptr, nullptr);
    80001744:	00000613          	li	a2,0
    80001748:	00000593          	li	a1,0
    8000174c:	fd840513          	addi	a0,s0,-40
    80001750:	00000097          	auipc	ra,0x0
    80001754:	a60080e7          	jalr	-1440(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    80001758:	00050493          	mv	s1,a0

//    printString("Main Thread handle: ");
//    printInteger((size_t)*handle);
//    printString("\n");

    _thread::running = handle;
    8000175c:	00004797          	auipc	a5,0x4
    80001760:	0c47b783          	ld	a5,196(a5) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001764:	fd843703          	ld	a4,-40(s0)
    80001768:	00e7b023          	sd	a4,0(a5)

    printString("Main Thread return value: ");
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	93c50513          	addi	a0,a0,-1732 # 800050a8 <CONSOLE_STATUS+0x98>
    80001774:	00000097          	auipc	ra,0x0
    80001778:	6a4080e7          	jalr	1700(ra) # 80001e18 <_Z11printStringPKc>
    printInteger(retVal);
    8000177c:	00048513          	mv	a0,s1
    80001780:	00000097          	auipc	ra,0x0
    80001784:	708080e7          	jalr	1800(ra) # 80001e88 <_Z12printIntegerm>
    printString("\n");
    80001788:	00004517          	auipc	a0,0x4
    8000178c:	8c850513          	addi	a0,a0,-1848 # 80005050 <CONSOLE_STATUS+0x40>
    80001790:	00000097          	auipc	ra,0x0
    80001794:	688080e7          	jalr	1672(ra) # 80001e18 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001798:	00200793          	li	a5,2
    8000179c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	ef8080e7          	jalr	-264(ra) # 80001698 <_Z8userMainv>

    // thread_exit();
}
    800017a8:	02813083          	ld	ra,40(sp)
    800017ac:	02013403          	ld	s0,32(sp)
    800017b0:	01813483          	ld	s1,24(sp)
    800017b4:	03010113          	addi	sp,sp,48
    800017b8:	00008067          	ret

00000000800017bc <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"

#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00813423          	sd	s0,8(sp)
    800017c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800017c8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800017cc:	10200073          	sret
}
    800017d0:	00813403          	ld	s0,8(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret

00000000800017dc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800017dc:	f7010113          	addi	sp,sp,-144
    800017e0:	08113423          	sd	ra,136(sp)
    800017e4:	08813023          	sd	s0,128(sp)
    800017e8:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    800017ec:	faa43823          	sd	a0,-80(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    800017f0:	fab43c23          	sd	a1,-72(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    800017f4:	fcc43023          	sd	a2,-64(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    800017f8:	fcd43423          	sd	a3,-56(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    800017fc:	fce43823          	sd	a4,-48(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    80001800:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    80001804:	ff043023          	sd	a6,-32(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80001808:	ff143423          	sd	a7,-24(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000180c:	141027f3          	csrr	a5,sepc
    80001810:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001814:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    80001818:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000181c:	100027f3          	csrr	a5,sstatus
    80001820:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001824:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80001828:	faf43023          	sd	a5,-96(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    8000182c:	140027f3          	csrr	a5,sscratch
    80001830:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001834:	142027f3          	csrr	a5,scause
    80001838:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    8000183c:	f7843783          	ld	a5,-136(s0)

    uint64 volatile scause = r_scause();
    80001840:	f8f43823          	sd	a5,-112(s0)

//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001844:	f9043703          	ld	a4,-112(s0)
    80001848:	00800793          	li	a5,8
    8000184c:	08f70863          	beq	a4,a5,800018dc <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    80001850:	f9043703          	ld	a4,-112(s0)
    80001854:	00900793          	li	a5,9
    80001858:	08f70263          	beq	a4,a5,800018dc <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    8000185c:	f9043703          	ld	a4,-112(s0)
    80001860:	fff00793          	li	a5,-1
    80001864:	03f79793          	slli	a5,a5,0x3f
    80001868:	00178793          	addi	a5,a5,1
    8000186c:	16f70063          	beq	a4,a5,800019cc <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
            _thread::threadDispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001870:	f9043703          	ld	a4,-112(s0)
    80001874:	fff00793          	li	a5,-1
    80001878:	03f79793          	slli	a5,a5,0x3f
    8000187c:	00978793          	addi	a5,a5,9
    80001880:	1af70063          	beq	a4,a5,80001a20 <_ZN5Riscv20handleSupervisorTrapEv+0x244>
        console_handler();

    }
    else
    {
        printInteger(scause);
    80001884:	f9043503          	ld	a0,-112(s0)
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	600080e7          	jalr	1536(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    80001890:	00003517          	auipc	a0,0x3
    80001894:	7c050513          	addi	a0,a0,1984 # 80005050 <CONSOLE_STATUS+0x40>
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	580080e7          	jalr	1408(ra) # 80001e18 <_Z11printStringPKc>
        printString("sepc = ");
    800018a0:	00004517          	auipc	a0,0x4
    800018a4:	82850513          	addi	a0,a0,-2008 # 800050c8 <CONSOLE_STATUS+0xb8>
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	570080e7          	jalr	1392(ra) # 80001e18 <_Z11printStringPKc>
        printInteger(sepc);
    800018b0:	fa843503          	ld	a0,-88(s0)
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	5d4080e7          	jalr	1492(ra) # 80001e88 <_Z12printIntegerm>
        printString("\nUnexpected trap cause!\n");
    800018bc:	00004517          	auipc	a0,0x4
    800018c0:	81450513          	addi	a0,a0,-2028 # 800050d0 <CONSOLE_STATUS+0xc0>
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	554080e7          	jalr	1364(ra) # 80001e18 <_Z11printStringPKc>
        // unexpected trap cause
    }
    800018cc:	08813083          	ld	ra,136(sp)
    800018d0:	08013403          	ld	s0,128(sp)
    800018d4:	09010113          	addi	sp,sp,144
    800018d8:	00008067          	ret
        w_sepc(sepc + 4);
    800018dc:	fa843783          	ld	a5,-88(s0)
    800018e0:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800018e4:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    800018e8:	fb043783          	ld	a5,-80(s0)
    800018ec:	00100713          	li	a4,1
    800018f0:	04e78863          	beq	a5,a4,80001940 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (a[0] == 0x0000000000000002UL)
    800018f4:	00200713          	li	a4,2
    800018f8:	06e78663          	beq	a5,a4,80001964 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        else if (a[0] == 0x0000000000000011UL)
    800018fc:	01100713          	li	a4,17
    80001900:	08e78063          	beq	a5,a4,80001980 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
        else if (a[0] == 0x0000000000000012UL)
    80001904:	01200713          	li	a4,18
    80001908:	0ae78063          	beq	a5,a4,800019a8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
        else if (a[0] == 0x0000000000000013UL)
    8000190c:	01300713          	li	a4,19
    80001910:	fae79ee3          	bne	a5,a4,800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->timeSlice = 0;
    80001914:	00004797          	auipc	a5,0x4
    80001918:	f0c7b783          	ld	a5,-244(a5) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000191c:	0007b783          	ld	a5,0(a5)
    80001920:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    80001924:	00000097          	auipc	ra,0x0
    80001928:	750080e7          	jalr	1872(ra) # 80002074 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    8000192c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001930:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001934:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001938:	14179073          	csrw	sepc,a5
}
    8000193c:	f91ff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    80001940:	fb843503          	ld	a0,-72(s0)
    80001944:	00000097          	auipc	ra,0x0
    80001948:	4a0080e7          	jalr	1184(ra) # 80001de4 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	2a8080e7          	jalr	680(ra) # 80001bf4 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001954:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001958:	f9843783          	ld	a5,-104(s0)
    8000195c:	04a7b823          	sd	a0,80(a5)
    80001960:	f6dff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = MemoryAllocator::mem_free(ptr);
    80001964:	fb843503          	ld	a0,-72(s0)
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	3b4080e7          	jalr	948(ra) # 80001d1c <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001970:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001974:	f9843783          	ld	a5,-104(s0)
    80001978:	04a7b823          	sd	a0,80(a5)
    8000197c:	f51ff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80001980:	fd043683          	ld	a3,-48(s0)
    80001984:	fc843603          	ld	a2,-56(s0)
    80001988:	fc043583          	ld	a1,-64(s0)
    8000198c:	fb843503          	ld	a0,-72(s0)
    80001990:	00000097          	auipc	ra,0x0
    80001994:	5f8080e7          	jalr	1528(ra) # 80001f88 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001998:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    8000199c:	f9843783          	ld	a5,-104(s0)
    800019a0:	04a7b823          	sd	a0,80(a5)
    800019a4:	f29ff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->finished = true;
    800019a8:	00004797          	auipc	a5,0x4
    800019ac:	e787b783          	ld	a5,-392(a5) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	00100713          	li	a4,1
    800019b8:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	6b8080e7          	jalr	1720(ra) # 80002074 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800019c4:	00050793          	mv	a5,a0
    800019c8:	f05ff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800019cc:	00200793          	li	a5,2
    800019d0:	1447b073          	csrc	sip,a5
        _thread::running->timeSlice++;
    800019d4:	00004797          	auipc	a5,0x4
    800019d8:	e4c7b783          	ld	a5,-436(a5) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019dc:	0007b703          	ld	a4,0(a5)
    800019e0:	03073783          	ld	a5,48(a4)
    800019e4:	00178793          	addi	a5,a5,1
    800019e8:	02f73823          	sd	a5,48(a4)
        if (_thread::running->timeSlice >= DEFAULT_TIME_SLICE)
    800019ec:	00100693          	li	a3,1
    800019f0:	ecf6fee3          	bgeu	a3,a5,800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            sepc = sepc + 4;
    800019f4:	fa843783          	ld	a5,-88(s0)
    800019f8:	00478793          	addi	a5,a5,4
    800019fc:	faf43423          	sd	a5,-88(s0)
            _thread::running->timeSlice = 0;
    80001a00:	02073823          	sd	zero,48(a4)
            _thread::threadDispatch();
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	670080e7          	jalr	1648(ra) # 80002074 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80001a0c:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a10:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001a14:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a18:	14179073          	csrw	sepc,a5
}
    80001a1c:	eb1ff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        console_handler();
    80001a20:	00003097          	auipc	ra,0x3
    80001a24:	880080e7          	jalr	-1920(ra) # 800042a0 <console_handler>
    80001a28:	ea5ff06f          	j	800018cc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080001a2c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(&ccb);
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00813423          	sd	s0,8(sp)
    80001a34:	01010413          	addi	s0,sp,16
    80001a38:	00100793          	li	a5,1
    80001a3c:	00f50863          	beq	a0,a5,80001a4c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret
    80001a4c:	000107b7          	lui	a5,0x10
    80001a50:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001a54:	fef596e3          	bne	a1,a5,80001a40 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a58:	00004797          	auipc	a5,0x4
    80001a5c:	e4878793          	addi	a5,a5,-440 # 800058a0 <_ZN9Scheduler16readyThreadQueueE>
    80001a60:	0007b023          	sd	zero,0(a5)
    80001a64:	0007b423          	sd	zero,8(a5)
    80001a68:	fd9ff06f          	j	80001a40 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001a6c <_ZN9Scheduler3getEv>:
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001a6c:	00004797          	auipc	a5,0x4
    80001a70:	e347b783          	ld	a5,-460(a5) # 800058a0 <_ZN9Scheduler16readyThreadQueueE>
    80001a74:	06078263          	beqz	a5,80001ad8 <_ZN9Scheduler3getEv+0x6c>
        return head->data;
    80001a78:	0007b503          	ld	a0,0(a5)
    if (readyThreadQueue.peekFirst() != 0)
    80001a7c:	06050263          	beqz	a0,80001ae0 <_ZN9Scheduler3getEv+0x74>
{
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00113c23          	sd	ra,24(sp)
    80001a88:	00813823          	sd	s0,16(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	02010413          	addi	s0,sp,32
        head = head->next;
    80001a94:	0087b703          	ld	a4,8(a5)
    80001a98:	00004697          	auipc	a3,0x4
    80001a9c:	e0e6b423          	sd	a4,-504(a3) # 800058a0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001aa0:	02070663          	beqz	a4,80001acc <_ZN9Scheduler3getEv+0x60>
        T *ret = elem->data;
    80001aa4:	0007b483          	ld	s1,0(a5)
        MemoryAllocator::mem_free(elem);
    80001aa8:	00078513          	mv	a0,a5
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	270080e7          	jalr	624(ra) # 80001d1c <_ZN15MemoryAllocator8mem_freeEPv>
        return *readyThreadQueue.removeFirst();
    80001ab4:	0004b503          	ld	a0,0(s1)
}
    80001ab8:	01813083          	ld	ra,24(sp)
    80001abc:	01013403          	ld	s0,16(sp)
    80001ac0:	00813483          	ld	s1,8(sp)
    80001ac4:	02010113          	addi	sp,sp,32
    80001ac8:	00008067          	ret
        if (!head) { tail = 0; }
    80001acc:	00004717          	auipc	a4,0x4
    80001ad0:	dc073e23          	sd	zero,-548(a4) # 800058a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ad4:	fd1ff06f          	j	80001aa4 <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    80001ad8:	00078513          	mv	a0,a5
    80001adc:	00008067          	ret
}
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN9Scheduler3putEP7_thread>:
{
    80001ae4:	fe010113          	addi	sp,sp,-32
    80001ae8:	00113c23          	sd	ra,24(sp)
    80001aec:	00813823          	sd	s0,16(sp)
    80001af0:	02010413          	addi	s0,sp,32
    80001af4:	fea43423          	sd	a0,-24(s0)
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001af8:	01000513          	li	a0,16
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	2e8080e7          	jalr	744(ra) # 80001de4 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	0f0080e7          	jalr	240(ra) # 80001bf4 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001b0c:	fe840793          	addi	a5,s0,-24
    80001b10:	00f53023          	sd	a5,0(a0)
        if (tail)
    80001b14:	00004797          	auipc	a5,0x4
    80001b18:	d947b783          	ld	a5,-620(a5) # 800058a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b1c:	02078063          	beqz	a5,80001b3c <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001b20:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b24:	00004797          	auipc	a5,0x4
    80001b28:	d8a7b223          	sd	a0,-636(a5) # 800058a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b2c:	01813083          	ld	ra,24(sp)
    80001b30:	01013403          	ld	s0,16(sp)
    80001b34:	02010113          	addi	sp,sp,32
    80001b38:	00008067          	ret
            head = tail = elem;
    80001b3c:	00004797          	auipc	a5,0x4
    80001b40:	d6478793          	addi	a5,a5,-668 # 800058a0 <_ZN9Scheduler16readyThreadQueueE>
    80001b44:	00a7b423          	sd	a0,8(a5)
    80001b48:	00a7b023          	sd	a0,0(a5)
    80001b4c:	fe1ff06f          	j	80001b2c <_ZN9Scheduler3putEP7_thread+0x48>

0000000080001b50 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    80001b60:	000105b7          	lui	a1,0x10
    80001b64:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001b68:	00100513          	li	a0,1
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	ec0080e7          	jalr	-320(ra) # 80001a2c <_Z41__static_initialization_and_destruction_0ii>
    80001b74:	00813083          	ld	ra,8(sp)
    80001b78:	00013403          	ld	s0,0(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00813423          	sd	s0,8(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001b90:	00004797          	auipc	a5,0x4
    80001b94:	c887b783          	ld	a5,-888(a5) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b98:	0007b703          	ld	a4,0(a5)
    80001b9c:	fc077713          	andi	a4,a4,-64
    80001ba0:	04070613          	addi	a2,a4,64
    80001ba4:	00004797          	auipc	a5,0x4
    80001ba8:	d0c78793          	addi	a5,a5,-756 # 800058b0 <_ZN15MemoryAllocator8memStartE>
    80001bac:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001bb0:	00004697          	auipc	a3,0x4
    80001bb4:	c906b683          	ld	a3,-880(a3) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bb8:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001bbc:	fc06f693          	andi	a3,a3,-64
    80001bc0:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001bc4:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001bc8:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001bcc:	0107b683          	ld	a3,16(a5)
    80001bd0:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001bd4:	0087b703          	ld	a4,8(a5)
    80001bd8:	0007b783          	ld	a5,0(a5)
    80001bdc:	40f707b3          	sub	a5,a4,a5
    80001be0:	0067d793          	srli	a5,a5,0x6
    80001be4:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001be8:	00813403          	ld	s0,8(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret

0000000080001bf4 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001bf4:	ff010113          	addi	sp,sp,-16
    80001bf8:	00813423          	sd	s0,8(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    if (size == 0)
    80001c00:	0a050463          	beqz	a0,80001ca8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80001c04:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001c08:	00004697          	auipc	a3,0x4
    80001c0c:	cb86b683          	ld	a3,-840(a3) # 800058c0 <_ZN15MemoryAllocator4headE>
    80001c10:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001c14:	04050e63          	beqz	a0,80001c70 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001c18:	01053783          	ld	a5,16(a0)
    80001c1c:	00e7fa63          	bgeu	a5,a4,80001c30 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80001c20:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001c24:	fea698e3          	bne	a3,a0,80001c14 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80001c28:	00000513          	li	a0,0
    80001c2c:	0440006f          	j	80001c70 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    80001c30:	40e787b3          	sub	a5,a5,a4
    80001c34:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80001c38:	02079263          	bnez	a5,80001c5c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    80001c3c:	04d50063          	beq	a0,a3,80001c7c <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001c40:	00053783          	ld	a5,0(a0)
    80001c44:	04078463          	beqz	a5,80001c8c <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80001c48:	00853683          	ld	a3,8(a0)
    80001c4c:	04068063          	beqz	a3,80001c8c <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    80001c50:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80001c54:	00853683          	ld	a3,8(a0)
    80001c58:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    80001c5c:	01053783          	ld	a5,16(a0)
    80001c60:	00679793          	slli	a5,a5,0x6
    80001c64:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    80001c68:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001c6c:	00878513          	addi	a0,a5,8
}
    80001c70:	00813403          	ld	s0,8(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001c7c:	0006b783          	ld	a5,0(a3)
    80001c80:	00004697          	auipc	a3,0x4
    80001c84:	c4f6b023          	sd	a5,-960(a3) # 800058c0 <_ZN15MemoryAllocator4headE>
    80001c88:	fb9ff06f          	j	80001c40 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    80001c8c:	00853683          	ld	a3,8(a0)
    80001c90:	00068663          	beqz	a3,80001c9c <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80001c94:	0006b023          	sd	zero,0(a3)
    80001c98:	fc5ff06f          	j	80001c5c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    80001c9c:	fc0780e3          	beqz	a5,80001c5c <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80001ca0:	0007b423          	sd	zero,8(a5)
    80001ca4:	fb9ff06f          	j	80001c5c <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80001ca8:	00000513          	li	a0,0
    80001cac:	fc5ff06f          	j	80001c70 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080001cb0 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001cbc:	04050863          	beqz	a0,80001d0c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001cc0:	00053783          	ld	a5,0(a0)
    80001cc4:	04078863          	beqz	a5,80001d14 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001cc8:	01053683          	ld	a3,16(a0)
    80001ccc:	00669713          	slli	a4,a3,0x6
    80001cd0:	00e50733          	add	a4,a0,a4
    80001cd4:	00f70a63          	beq	a4,a5,80001ce8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001cd8:	00000513          	li	a0,0
    }
}
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret
        curr->size += curr->next->size;
    80001ce8:	0107b703          	ld	a4,16(a5)
    80001cec:	00e686b3          	add	a3,a3,a4
    80001cf0:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001cf4:	0007b783          	ld	a5,0(a5)
    80001cf8:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001cfc:	00078463          	beqz	a5,80001d04 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001d00:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001d04:	00100513          	li	a0,1
    80001d08:	fd5ff06f          	j	80001cdc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001d0c:	00000513          	li	a0,0
    80001d10:	fcdff06f          	j	80001cdc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001d14:	00000513          	li	a0,0
    80001d18:	fc5ff06f          	j	80001cdc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001d1c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    80001d1c:	0c050063          	beqz	a0,80001ddc <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	02010413          	addi	s0,sp,32
    80001d34:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80001d38:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80001d3c:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001d40:	00004697          	auipc	a3,0x4
    80001d44:	b806b683          	ld	a3,-1152(a3) # 800058c0 <_ZN15MemoryAllocator4headE>
    80001d48:	02068063          	beqz	a3,80001d68 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    80001d4c:	02d56263          	bltu	a0,a3,80001d70 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001d50:	00068793          	mv	a5,a3
    80001d54:	00078493          	mv	s1,a5
    80001d58:	0007b783          	ld	a5,0(a5)
    80001d5c:	00078c63          	beqz	a5,80001d74 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001d60:	fea7eae3          	bltu	a5,a0,80001d54 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    80001d64:	0100006f          	j	80001d74 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    80001d68:	00068493          	mv	s1,a3
    80001d6c:	0080006f          	j	80001d74 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001d70:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001d74:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80001d78:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80001d7c:	04048663          	beqz	s1,80001dc8 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80001d80:	0004b783          	ld	a5,0(s1)
    80001d84:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001d88:	ff873783          	ld	a5,-8(a4)
    80001d8c:	00078463          	beqz	a5,80001d94 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80001d90:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001d94:	02048e63          	beqz	s1,80001dd0 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80001d98:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	f14080e7          	jalr	-236(ra) # 80001cb0 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001da4:	00048513          	mv	a0,s1
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	f08080e7          	jalr	-248(ra) # 80001cb0 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80001db0:	00000513          	li	a0,0
}
    80001db4:	01813083          	ld	ra,24(sp)
    80001db8:	01013403          	ld	s0,16(sp)
    80001dbc:	00813483          	ld	s1,8(sp)
    80001dc0:	02010113          	addi	sp,sp,32
    80001dc4:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001dc8:	fed73c23          	sd	a3,-8(a4)
    80001dcc:	fbdff06f          	j	80001d88 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    80001dd0:	00004797          	auipc	a5,0x4
    80001dd4:	aea7b823          	sd	a0,-1296(a5) # 800058c0 <_ZN15MemoryAllocator4headE>
    80001dd8:	fc5ff06f          	j	80001d9c <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    80001ddc:	fff00513          	li	a0,-1
}
    80001de0:	00008067          	ret

0000000080001de4 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00813423          	sd	s0,8(sp)
    80001dec:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001df0:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001df4:	03f57793          	andi	a5,a0,63
    80001df8:	00078c63          	beqz	a5,80001e10 <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001dfc:	00655513          	srli	a0,a0,0x6
    80001e00:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80001e04:	00813403          	ld	s0,8(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001e10:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80001e14:	ff1ff06f          	j	80001e04 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080001e18 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e18:	fd010113          	addi	sp,sp,-48
    80001e1c:	02113423          	sd	ra,40(sp)
    80001e20:	02813023          	sd	s0,32(sp)
    80001e24:	00913c23          	sd	s1,24(sp)
    80001e28:	01213823          	sd	s2,16(sp)
    80001e2c:	03010413          	addi	s0,sp,48
    80001e30:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e34:	100027f3          	csrr	a5,sstatus
    80001e38:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e3c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e40:	00200793          	li	a5,2
    80001e44:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001e48:	0004c503          	lbu	a0,0(s1)
    80001e4c:	00050a63          	beqz	a0,80001e60 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e50:	00002097          	auipc	ra,0x2
    80001e54:	3dc080e7          	jalr	988(ra) # 8000422c <__putc>
        string++;
    80001e58:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e5c:	fedff06f          	j	80001e48 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e60:	0009091b          	sext.w	s2,s2
    80001e64:	00297913          	andi	s2,s2,2
    80001e68:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e6c:	10092073          	csrs	sstatus,s2
}
    80001e70:	02813083          	ld	ra,40(sp)
    80001e74:	02013403          	ld	s0,32(sp)
    80001e78:	01813483          	ld	s1,24(sp)
    80001e7c:	01013903          	ld	s2,16(sp)
    80001e80:	03010113          	addi	sp,sp,48
    80001e84:	00008067          	ret

0000000080001e88 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e88:	fc010113          	addi	sp,sp,-64
    80001e8c:	02113c23          	sd	ra,56(sp)
    80001e90:	02813823          	sd	s0,48(sp)
    80001e94:	02913423          	sd	s1,40(sp)
    80001e98:	03213023          	sd	s2,32(sp)
    80001e9c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ea0:	100027f3          	csrr	a5,sstatus
    80001ea4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ea8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001eac:	00200793          	li	a5,2
    80001eb0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001eb4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001eb8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001ebc:	00a00613          	li	a2,10
    80001ec0:	02c5773b          	remuw	a4,a0,a2
    80001ec4:	02071693          	slli	a3,a4,0x20
    80001ec8:	0206d693          	srli	a3,a3,0x20
    80001ecc:	00003717          	auipc	a4,0x3
    80001ed0:	22470713          	addi	a4,a4,548 # 800050f0 <_ZZ12printIntegermE6digits>
    80001ed4:	00d70733          	add	a4,a4,a3
    80001ed8:	00074703          	lbu	a4,0(a4)
    80001edc:	fe040693          	addi	a3,s0,-32
    80001ee0:	009687b3          	add	a5,a3,s1
    80001ee4:	0014849b          	addiw	s1,s1,1
    80001ee8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001eec:	0005071b          	sext.w	a4,a0
    80001ef0:	02c5553b          	divuw	a0,a0,a2
    80001ef4:	00900793          	li	a5,9
    80001ef8:	fce7e2e3          	bltu	a5,a4,80001ebc <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001efc:	fff4849b          	addiw	s1,s1,-1
    80001f00:	0004ce63          	bltz	s1,80001f1c <_Z12printIntegerm+0x94>
    80001f04:	fe040793          	addi	a5,s0,-32
    80001f08:	009787b3          	add	a5,a5,s1
    80001f0c:	ff07c503          	lbu	a0,-16(a5)
    80001f10:	00002097          	auipc	ra,0x2
    80001f14:	31c080e7          	jalr	796(ra) # 8000422c <__putc>
    80001f18:	fe5ff06f          	j	80001efc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f1c:	0009091b          	sext.w	s2,s2
    80001f20:	00297913          	andi	s2,s2,2
    80001f24:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f28:	10092073          	csrs	sstatus,s2
    80001f2c:	03813083          	ld	ra,56(sp)
    80001f30:	03013403          	ld	s0,48(sp)
    80001f34:	02813483          	ld	s1,40(sp)
    80001f38:	02013903          	ld	s2,32(sp)
    80001f3c:	04010113          	addi	sp,sp,64
    80001f40:	00008067          	ret

0000000080001f44 <_ZN7_thread13threadWrapperEv>:

    return 0;
}

void _thread::threadWrapper()
{
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	868080e7          	jalr	-1944(ra) # 800017bc <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    80001f5c:	00004797          	auipc	a5,0x4
    80001f60:	96c7b783          	ld	a5,-1684(a5) # 800058c8 <_ZN7_thread7runningE>
    80001f64:	0007b703          	ld	a4,0(a5)
    80001f68:	0287b503          	ld	a0,40(a5)
    80001f6c:	000700e7          	jalr	a4

    thread_exit();
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	2e4080e7          	jalr	740(ra) # 80001254 <_Z11thread_exitv>
}
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80001f88:	fd010113          	addi	sp,sp,-48
    80001f8c:	02113423          	sd	ra,40(sp)
    80001f90:	02813023          	sd	s0,32(sp)
    80001f94:	00913c23          	sd	s1,24(sp)
    80001f98:	01213823          	sd	s2,16(sp)
    80001f9c:	01313423          	sd	s3,8(sp)
    80001fa0:	01413023          	sd	s4,0(sp)
    80001fa4:	03010413          	addi	s0,sp,48
    80001fa8:	00050493          	mv	s1,a0
    80001fac:	00058913          	mv	s2,a1
    80001fb0:	00060993          	mv	s3,a2
    80001fb4:	00068a13          	mv	s4,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80001fb8:	03800513          	li	a0,56
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	e28080e7          	jalr	-472(ra) # 80001de4 <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	c30080e7          	jalr	-976(ra) # 80001bf4 <_ZN15MemoryAllocator9mem_allocEm>
    80001fcc:	00a4b023          	sd	a0,0(s1)
    (*handle)->finished = false;
    80001fd0:	00050423          	sb	zero,8(a0)
    (*handle)->timeSlice = 0;
    80001fd4:	0004b783          	ld	a5,0(s1)
    80001fd8:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    80001fdc:	0004b783          	ld	a5,0(s1)
    80001fe0:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    80001fe4:	0004b783          	ld	a5,0(s1)
    80001fe8:	0337b423          	sd	s3,40(a5)
    if (start_routine != nullptr)
    80001fec:	06090663          	beqz	s2,80002058 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd0>
        (*handle)->stack = (uint64*) stack_space;
    80001ff0:	0004b783          	ld	a5,0(s1)
    80001ff4:	0147b823          	sd	s4,16(a5)
    if ((*handle)->stack != nullptr)
    80001ff8:	0004b703          	ld	a4,0(s1)
    80001ffc:	01073783          	ld	a5,16(a4)
    80002000:	06078263          	beqz	a5,80002064 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xdc>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002004:	000086b7          	lui	a3,0x8
    80002008:	00d787b3          	add	a5,a5,a3
    8000200c:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    80002010:	0004b783          	ld	a5,0(s1)
    80002014:	00000717          	auipc	a4,0x0
    80002018:	f3070713          	addi	a4,a4,-208 # 80001f44 <_ZN7_thread13threadWrapperEv>
    8000201c:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    80002020:	0004b503          	ld	a0,0(s1)
    80002024:	00053783          	ld	a5,0(a0)
    80002028:	00078663          	beqz	a5,80002034 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xac>
        Scheduler::put(*handle);
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	ab8080e7          	jalr	-1352(ra) # 80001ae4 <_ZN9Scheduler3putEP7_thread>
}
    80002034:	00000513          	li	a0,0
    80002038:	02813083          	ld	ra,40(sp)
    8000203c:	02013403          	ld	s0,32(sp)
    80002040:	01813483          	ld	s1,24(sp)
    80002044:	01013903          	ld	s2,16(sp)
    80002048:	00813983          	ld	s3,8(sp)
    8000204c:	00013a03          	ld	s4,0(sp)
    80002050:	03010113          	addi	sp,sp,48
    80002054:	00008067          	ret
        (*handle)->stack = nullptr;
    80002058:	0004b783          	ld	a5,0(s1)
    8000205c:	0007b823          	sd	zero,16(a5)
    80002060:	f99ff06f          	j	80001ff8 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x70>
        asm volatile("sd ra, %0" : "=m" ((*handle)->context.ra));
    80002064:	00173c23          	sd	ra,24(a4)
        (*handle)->context.sp = 0;
    80002068:	0004b783          	ld	a5,0(s1)
    8000206c:	0207b023          	sd	zero,32(a5)
    80002070:	fb1ff06f          	j	80002020 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x98>

0000000080002074 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00813823          	sd	s0,16(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	01213023          	sd	s2,0(sp)
    80002088:	02010413          	addi	s0,sp,32
    _thread *old = _thread::running;
    8000208c:	00004497          	auipc	s1,0x4
    80002090:	83c4b483          	ld	s1,-1988(s1) # 800058c8 <_ZN7_thread7runningE>

    if (!old->finished)
    80002094:	0084c783          	lbu	a5,8(s1)
    80002098:	08079e63          	bnez	a5,80002134 <_ZN7_thread14threadDispatchEv+0xc0>
    {
        Scheduler::put(old);
    8000209c:	00048513          	mv	a0,s1
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	a44080e7          	jalr	-1468(ra) # 80001ae4 <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	9c4080e7          	jalr	-1596(ra) # 80001a6c <_ZN9Scheduler3getEv>
    800020b0:	00004917          	auipc	s2,0x4
    800020b4:	81890913          	addi	s2,s2,-2024 # 800058c8 <_ZN7_thread7runningE>
    800020b8:	00a93023          	sd	a0,0(s2)

        printString("old: ");
    800020bc:	00003517          	auipc	a0,0x3
    800020c0:	04450513          	addi	a0,a0,68 # 80005100 <_ZZ12printIntegermE6digits+0x10>
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	d54080e7          	jalr	-684(ra) # 80001e18 <_Z11printStringPKc>
        printInteger((uint64) old);
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	db8080e7          	jalr	-584(ra) # 80001e88 <_Z12printIntegerm>
        printString("\nnew running: ");
    800020d8:	00003517          	auipc	a0,0x3
    800020dc:	03050513          	addi	a0,a0,48 # 80005108 <_ZZ12printIntegermE6digits+0x18>
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	d38080e7          	jalr	-712(ra) # 80001e18 <_Z11printStringPKc>
        printInteger((uint64) _thread::running);
    800020e8:	00093503          	ld	a0,0(s2)
    800020ec:	00000097          	auipc	ra,0x0
    800020f0:	d9c080e7          	jalr	-612(ra) # 80001e88 <_Z12printIntegerm>
        printString("\n");
    800020f4:	00003517          	auipc	a0,0x3
    800020f8:	f5c50513          	addi	a0,a0,-164 # 80005050 <CONSOLE_STATUS+0x40>
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	d1c080e7          	jalr	-740(ra) # 80001e18 <_Z11printStringPKc>

        if(old != _thread::running)
    80002104:	00093583          	ld	a1,0(s2)
    80002108:	00958a63          	beq	a1,s1,8000211c <_ZN7_thread14threadDispatchEv+0xa8>
            contextSwitch(&old->context, &_thread::running->context);
    8000210c:	01858593          	addi	a1,a1,24
    80002110:	01848513          	addi	a0,s1,24
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	00c080e7          	jalr	12(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    8000211c:	01813083          	ld	ra,24(sp)
    80002120:	01013403          	ld	s0,16(sp)
    80002124:	00813483          	ld	s1,8(sp)
    80002128:	00013903          	ld	s2,0(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret
        MemoryAllocator::mem_free(old->stack);
    80002134:	0104b503          	ld	a0,16(s1)
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	be4080e7          	jalr	-1052(ra) # 80001d1c <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    80002140:	00048513          	mv	a0,s1
    80002144:	00000097          	auipc	ra,0x0
    80002148:	bd8080e7          	jalr	-1064(ra) # 80001d1c <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	920080e7          	jalr	-1760(ra) # 80001a6c <_ZN9Scheduler3getEv>
    80002154:	00003797          	auipc	a5,0x3
    80002158:	76a7ba23          	sd	a0,1908(a5) # 800058c8 <_ZN7_thread7runningE>
        if (_thread::running)
    8000215c:	fc0500e3          	beqz	a0,8000211c <_ZN7_thread14threadDispatchEv+0xa8>
            contextSwitchThreadEnded(&_thread::running->context);
    80002160:	01850513          	addi	a0,a0,24
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	fd0080e7          	jalr	-48(ra) # 80001134 <contextSwitchThreadEnded>
}
    8000216c:	fb1ff06f          	j	8000211c <_ZN7_thread14threadDispatchEv+0xa8>

0000000080002170 <start>:
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00813423          	sd	s0,8(sp)
    80002178:	01010413          	addi	s0,sp,16
    8000217c:	300027f3          	csrr	a5,mstatus
    80002180:	ffffe737          	lui	a4,0xffffe
    80002184:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cdf>
    80002188:	00e7f7b3          	and	a5,a5,a4
    8000218c:	00001737          	lui	a4,0x1
    80002190:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002194:	00e7e7b3          	or	a5,a5,a4
    80002198:	30079073          	csrw	mstatus,a5
    8000219c:	00000797          	auipc	a5,0x0
    800021a0:	16078793          	addi	a5,a5,352 # 800022fc <system_main>
    800021a4:	34179073          	csrw	mepc,a5
    800021a8:	00000793          	li	a5,0
    800021ac:	18079073          	csrw	satp,a5
    800021b0:	000107b7          	lui	a5,0x10
    800021b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021b8:	30279073          	csrw	medeleg,a5
    800021bc:	30379073          	csrw	mideleg,a5
    800021c0:	104027f3          	csrr	a5,sie
    800021c4:	2227e793          	ori	a5,a5,546
    800021c8:	10479073          	csrw	sie,a5
    800021cc:	fff00793          	li	a5,-1
    800021d0:	00a7d793          	srli	a5,a5,0xa
    800021d4:	3b079073          	csrw	pmpaddr0,a5
    800021d8:	00f00793          	li	a5,15
    800021dc:	3a079073          	csrw	pmpcfg0,a5
    800021e0:	f14027f3          	csrr	a5,mhartid
    800021e4:	0200c737          	lui	a4,0x200c
    800021e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800021ec:	0007869b          	sext.w	a3,a5
    800021f0:	00269713          	slli	a4,a3,0x2
    800021f4:	000f4637          	lui	a2,0xf4
    800021f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021fc:	00d70733          	add	a4,a4,a3
    80002200:	0037979b          	slliw	a5,a5,0x3
    80002204:	020046b7          	lui	a3,0x2004
    80002208:	00d787b3          	add	a5,a5,a3
    8000220c:	00c585b3          	add	a1,a1,a2
    80002210:	00371693          	slli	a3,a4,0x3
    80002214:	00003717          	auipc	a4,0x3
    80002218:	6bc70713          	addi	a4,a4,1724 # 800058d0 <timer_scratch>
    8000221c:	00b7b023          	sd	a1,0(a5)
    80002220:	00d70733          	add	a4,a4,a3
    80002224:	00f73c23          	sd	a5,24(a4)
    80002228:	02c73023          	sd	a2,32(a4)
    8000222c:	34071073          	csrw	mscratch,a4
    80002230:	00000797          	auipc	a5,0x0
    80002234:	6e078793          	addi	a5,a5,1760 # 80002910 <timervec>
    80002238:	30579073          	csrw	mtvec,a5
    8000223c:	300027f3          	csrr	a5,mstatus
    80002240:	0087e793          	ori	a5,a5,8
    80002244:	30079073          	csrw	mstatus,a5
    80002248:	304027f3          	csrr	a5,mie
    8000224c:	0807e793          	ori	a5,a5,128
    80002250:	30479073          	csrw	mie,a5
    80002254:	f14027f3          	csrr	a5,mhartid
    80002258:	0007879b          	sext.w	a5,a5
    8000225c:	00078213          	mv	tp,a5
    80002260:	30200073          	mret
    80002264:	00813403          	ld	s0,8(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <timerinit>:
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
    8000227c:	f14027f3          	csrr	a5,mhartid
    80002280:	0200c737          	lui	a4,0x200c
    80002284:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002288:	0007869b          	sext.w	a3,a5
    8000228c:	00269713          	slli	a4,a3,0x2
    80002290:	000f4637          	lui	a2,0xf4
    80002294:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002298:	00d70733          	add	a4,a4,a3
    8000229c:	0037979b          	slliw	a5,a5,0x3
    800022a0:	020046b7          	lui	a3,0x2004
    800022a4:	00d787b3          	add	a5,a5,a3
    800022a8:	00c585b3          	add	a1,a1,a2
    800022ac:	00371693          	slli	a3,a4,0x3
    800022b0:	00003717          	auipc	a4,0x3
    800022b4:	62070713          	addi	a4,a4,1568 # 800058d0 <timer_scratch>
    800022b8:	00b7b023          	sd	a1,0(a5)
    800022bc:	00d70733          	add	a4,a4,a3
    800022c0:	00f73c23          	sd	a5,24(a4)
    800022c4:	02c73023          	sd	a2,32(a4)
    800022c8:	34071073          	csrw	mscratch,a4
    800022cc:	00000797          	auipc	a5,0x0
    800022d0:	64478793          	addi	a5,a5,1604 # 80002910 <timervec>
    800022d4:	30579073          	csrw	mtvec,a5
    800022d8:	300027f3          	csrr	a5,mstatus
    800022dc:	0087e793          	ori	a5,a5,8
    800022e0:	30079073          	csrw	mstatus,a5
    800022e4:	304027f3          	csrr	a5,mie
    800022e8:	0807e793          	ori	a5,a5,128
    800022ec:	30479073          	csrw	mie,a5
    800022f0:	00813403          	ld	s0,8(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <system_main>:
    800022fc:	fe010113          	addi	sp,sp,-32
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	00113c23          	sd	ra,24(sp)
    8000230c:	02010413          	addi	s0,sp,32
    80002310:	00000097          	auipc	ra,0x0
    80002314:	0c4080e7          	jalr	196(ra) # 800023d4 <cpuid>
    80002318:	00003497          	auipc	s1,0x3
    8000231c:	55848493          	addi	s1,s1,1368 # 80005870 <started>
    80002320:	02050263          	beqz	a0,80002344 <system_main+0x48>
    80002324:	0004a783          	lw	a5,0(s1)
    80002328:	0007879b          	sext.w	a5,a5
    8000232c:	fe078ce3          	beqz	a5,80002324 <system_main+0x28>
    80002330:	0ff0000f          	fence
    80002334:	00003517          	auipc	a0,0x3
    80002338:	e1450513          	addi	a0,a0,-492 # 80005148 <_ZZ12printIntegermE6digits+0x58>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	a70080e7          	jalr	-1424(ra) # 80002dac <panic>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	9c4080e7          	jalr	-1596(ra) # 80002d08 <consoleinit>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	150080e7          	jalr	336(ra) # 8000349c <printfinit>
    80002354:	00003517          	auipc	a0,0x3
    80002358:	cfc50513          	addi	a0,a0,-772 # 80005050 <CONSOLE_STATUS+0x40>
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	aac080e7          	jalr	-1364(ra) # 80002e08 <__printf>
    80002364:	00003517          	auipc	a0,0x3
    80002368:	db450513          	addi	a0,a0,-588 # 80005118 <_ZZ12printIntegermE6digits+0x28>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	a9c080e7          	jalr	-1380(ra) # 80002e08 <__printf>
    80002374:	00003517          	auipc	a0,0x3
    80002378:	cdc50513          	addi	a0,a0,-804 # 80005050 <CONSOLE_STATUS+0x40>
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	a8c080e7          	jalr	-1396(ra) # 80002e08 <__printf>
    80002384:	00001097          	auipc	ra,0x1
    80002388:	4a4080e7          	jalr	1188(ra) # 80003828 <kinit>
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	148080e7          	jalr	328(ra) # 800024d4 <trapinit>
    80002394:	00000097          	auipc	ra,0x0
    80002398:	16c080e7          	jalr	364(ra) # 80002500 <trapinithart>
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	5b4080e7          	jalr	1460(ra) # 80002950 <plicinit>
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	5d4080e7          	jalr	1492(ra) # 80002978 <plicinithart>
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	078080e7          	jalr	120(ra) # 80002424 <userinit>
    800023b4:	0ff0000f          	fence
    800023b8:	00100793          	li	a5,1
    800023bc:	00003517          	auipc	a0,0x3
    800023c0:	d7450513          	addi	a0,a0,-652 # 80005130 <_ZZ12printIntegermE6digits+0x40>
    800023c4:	00f4a023          	sw	a5,0(s1)
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	a40080e7          	jalr	-1472(ra) # 80002e08 <__printf>
    800023d0:	0000006f          	j	800023d0 <system_main+0xd4>

00000000800023d4 <cpuid>:
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    800023e0:	00020513          	mv	a0,tp
    800023e4:	00813403          	ld	s0,8(sp)
    800023e8:	0005051b          	sext.w	a0,a0
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <mycpu>:
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    80002400:	00020793          	mv	a5,tp
    80002404:	00813403          	ld	s0,8(sp)
    80002408:	0007879b          	sext.w	a5,a5
    8000240c:	00779793          	slli	a5,a5,0x7
    80002410:	00004517          	auipc	a0,0x4
    80002414:	4f050513          	addi	a0,a0,1264 # 80006900 <cpus>
    80002418:	00f50533          	add	a0,a0,a5
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <userinit>:
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813423          	sd	s0,8(sp)
    8000242c:	01010413          	addi	s0,sp,16
    80002430:	00813403          	ld	s0,8(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	fffff317          	auipc	t1,0xfffff
    8000243c:	2e030067          	jr	736(t1) # 80001718 <main>

0000000080002440 <either_copyout>:
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	00113423          	sd	ra,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    80002450:	02051663          	bnez	a0,8000247c <either_copyout+0x3c>
    80002454:	00058513          	mv	a0,a1
    80002458:	00060593          	mv	a1,a2
    8000245c:	0006861b          	sext.w	a2,a3
    80002460:	00002097          	auipc	ra,0x2
    80002464:	c54080e7          	jalr	-940(ra) # 800040b4 <__memmove>
    80002468:	00813083          	ld	ra,8(sp)
    8000246c:	00013403          	ld	s0,0(sp)
    80002470:	00000513          	li	a0,0
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret
    8000247c:	00003517          	auipc	a0,0x3
    80002480:	cf450513          	addi	a0,a0,-780 # 80005170 <_ZZ12printIntegermE6digits+0x80>
    80002484:	00001097          	auipc	ra,0x1
    80002488:	928080e7          	jalr	-1752(ra) # 80002dac <panic>

000000008000248c <either_copyin>:
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813023          	sd	s0,0(sp)
    80002494:	00113423          	sd	ra,8(sp)
    80002498:	01010413          	addi	s0,sp,16
    8000249c:	02059463          	bnez	a1,800024c4 <either_copyin+0x38>
    800024a0:	00060593          	mv	a1,a2
    800024a4:	0006861b          	sext.w	a2,a3
    800024a8:	00002097          	auipc	ra,0x2
    800024ac:	c0c080e7          	jalr	-1012(ra) # 800040b4 <__memmove>
    800024b0:	00813083          	ld	ra,8(sp)
    800024b4:	00013403          	ld	s0,0(sp)
    800024b8:	00000513          	li	a0,0
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret
    800024c4:	00003517          	auipc	a0,0x3
    800024c8:	cd450513          	addi	a0,a0,-812 # 80005198 <_ZZ12printIntegermE6digits+0xa8>
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	8e0080e7          	jalr	-1824(ra) # 80002dac <panic>

00000000800024d4 <trapinit>:
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813423          	sd	s0,8(sp)
    800024dc:	01010413          	addi	s0,sp,16
    800024e0:	00813403          	ld	s0,8(sp)
    800024e4:	00003597          	auipc	a1,0x3
    800024e8:	cdc58593          	addi	a1,a1,-804 # 800051c0 <_ZZ12printIntegermE6digits+0xd0>
    800024ec:	00004517          	auipc	a0,0x4
    800024f0:	49450513          	addi	a0,a0,1172 # 80006980 <tickslock>
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00001317          	auipc	t1,0x1
    800024fc:	5c030067          	jr	1472(t1) # 80003ab8 <initlock>

0000000080002500 <trapinithart>:
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813423          	sd	s0,8(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	00000797          	auipc	a5,0x0
    80002510:	2f478793          	addi	a5,a5,756 # 80002800 <kernelvec>
    80002514:	10579073          	csrw	stvec,a5
    80002518:	00813403          	ld	s0,8(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret

0000000080002524 <usertrap>:
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
    80002530:	00813403          	ld	s0,8(sp)
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00008067          	ret

000000008000253c <usertrapret>:
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00813423          	sd	s0,8(sp)
    80002544:	01010413          	addi	s0,sp,16
    80002548:	00813403          	ld	s0,8(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret

0000000080002554 <kerneltrap>:
    80002554:	fe010113          	addi	sp,sp,-32
    80002558:	00813823          	sd	s0,16(sp)
    8000255c:	00113c23          	sd	ra,24(sp)
    80002560:	00913423          	sd	s1,8(sp)
    80002564:	02010413          	addi	s0,sp,32
    80002568:	142025f3          	csrr	a1,scause
    8000256c:	100027f3          	csrr	a5,sstatus
    80002570:	0027f793          	andi	a5,a5,2
    80002574:	10079c63          	bnez	a5,8000268c <kerneltrap+0x138>
    80002578:	142027f3          	csrr	a5,scause
    8000257c:	0207ce63          	bltz	a5,800025b8 <kerneltrap+0x64>
    80002580:	00003517          	auipc	a0,0x3
    80002584:	c8850513          	addi	a0,a0,-888 # 80005208 <_ZZ12printIntegermE6digits+0x118>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	880080e7          	jalr	-1920(ra) # 80002e08 <__printf>
    80002590:	141025f3          	csrr	a1,sepc
    80002594:	14302673          	csrr	a2,stval
    80002598:	00003517          	auipc	a0,0x3
    8000259c:	c8050513          	addi	a0,a0,-896 # 80005218 <_ZZ12printIntegermE6digits+0x128>
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	868080e7          	jalr	-1944(ra) # 80002e08 <__printf>
    800025a8:	00003517          	auipc	a0,0x3
    800025ac:	c8850513          	addi	a0,a0,-888 # 80005230 <_ZZ12printIntegermE6digits+0x140>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	7fc080e7          	jalr	2044(ra) # 80002dac <panic>
    800025b8:	0ff7f713          	andi	a4,a5,255
    800025bc:	00900693          	li	a3,9
    800025c0:	04d70063          	beq	a4,a3,80002600 <kerneltrap+0xac>
    800025c4:	fff00713          	li	a4,-1
    800025c8:	03f71713          	slli	a4,a4,0x3f
    800025cc:	00170713          	addi	a4,a4,1
    800025d0:	fae798e3          	bne	a5,a4,80002580 <kerneltrap+0x2c>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	e00080e7          	jalr	-512(ra) # 800023d4 <cpuid>
    800025dc:	06050663          	beqz	a0,80002648 <kerneltrap+0xf4>
    800025e0:	144027f3          	csrr	a5,sip
    800025e4:	ffd7f793          	andi	a5,a5,-3
    800025e8:	14479073          	csrw	sip,a5
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret
    80002600:	00000097          	auipc	ra,0x0
    80002604:	3c4080e7          	jalr	964(ra) # 800029c4 <plic_claim>
    80002608:	00a00793          	li	a5,10
    8000260c:	00050493          	mv	s1,a0
    80002610:	06f50863          	beq	a0,a5,80002680 <kerneltrap+0x12c>
    80002614:	fc050ce3          	beqz	a0,800025ec <kerneltrap+0x98>
    80002618:	00050593          	mv	a1,a0
    8000261c:	00003517          	auipc	a0,0x3
    80002620:	bcc50513          	addi	a0,a0,-1076 # 800051e8 <_ZZ12printIntegermE6digits+0xf8>
    80002624:	00000097          	auipc	ra,0x0
    80002628:	7e4080e7          	jalr	2020(ra) # 80002e08 <__printf>
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	00048513          	mv	a0,s1
    80002638:	00813483          	ld	s1,8(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00000317          	auipc	t1,0x0
    80002644:	3bc30067          	jr	956(t1) # 800029fc <plic_complete>
    80002648:	00004517          	auipc	a0,0x4
    8000264c:	33850513          	addi	a0,a0,824 # 80006980 <tickslock>
    80002650:	00001097          	auipc	ra,0x1
    80002654:	48c080e7          	jalr	1164(ra) # 80003adc <acquire>
    80002658:	00003717          	auipc	a4,0x3
    8000265c:	21c70713          	addi	a4,a4,540 # 80005874 <ticks>
    80002660:	00072783          	lw	a5,0(a4)
    80002664:	00004517          	auipc	a0,0x4
    80002668:	31c50513          	addi	a0,a0,796 # 80006980 <tickslock>
    8000266c:	0017879b          	addiw	a5,a5,1
    80002670:	00f72023          	sw	a5,0(a4)
    80002674:	00001097          	auipc	ra,0x1
    80002678:	534080e7          	jalr	1332(ra) # 80003ba8 <release>
    8000267c:	f65ff06f          	j	800025e0 <kerneltrap+0x8c>
    80002680:	00001097          	auipc	ra,0x1
    80002684:	090080e7          	jalr	144(ra) # 80003710 <uartintr>
    80002688:	fa5ff06f          	j	8000262c <kerneltrap+0xd8>
    8000268c:	00003517          	auipc	a0,0x3
    80002690:	b3c50513          	addi	a0,a0,-1220 # 800051c8 <_ZZ12printIntegermE6digits+0xd8>
    80002694:	00000097          	auipc	ra,0x0
    80002698:	718080e7          	jalr	1816(ra) # 80002dac <panic>

000000008000269c <clockintr>:
    8000269c:	fe010113          	addi	sp,sp,-32
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	00113c23          	sd	ra,24(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00004497          	auipc	s1,0x4
    800026b4:	2d048493          	addi	s1,s1,720 # 80006980 <tickslock>
    800026b8:	00048513          	mv	a0,s1
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	420080e7          	jalr	1056(ra) # 80003adc <acquire>
    800026c4:	00003717          	auipc	a4,0x3
    800026c8:	1b070713          	addi	a4,a4,432 # 80005874 <ticks>
    800026cc:	00072783          	lw	a5,0(a4)
    800026d0:	01013403          	ld	s0,16(sp)
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	00048513          	mv	a0,s1
    800026dc:	0017879b          	addiw	a5,a5,1
    800026e0:	00813483          	ld	s1,8(sp)
    800026e4:	00f72023          	sw	a5,0(a4)
    800026e8:	02010113          	addi	sp,sp,32
    800026ec:	00001317          	auipc	t1,0x1
    800026f0:	4bc30067          	jr	1212(t1) # 80003ba8 <release>

00000000800026f4 <devintr>:
    800026f4:	142027f3          	csrr	a5,scause
    800026f8:	00000513          	li	a0,0
    800026fc:	0007c463          	bltz	a5,80002704 <devintr+0x10>
    80002700:	00008067          	ret
    80002704:	fe010113          	addi	sp,sp,-32
    80002708:	00813823          	sd	s0,16(sp)
    8000270c:	00113c23          	sd	ra,24(sp)
    80002710:	00913423          	sd	s1,8(sp)
    80002714:	02010413          	addi	s0,sp,32
    80002718:	0ff7f713          	andi	a4,a5,255
    8000271c:	00900693          	li	a3,9
    80002720:	04d70c63          	beq	a4,a3,80002778 <devintr+0x84>
    80002724:	fff00713          	li	a4,-1
    80002728:	03f71713          	slli	a4,a4,0x3f
    8000272c:	00170713          	addi	a4,a4,1
    80002730:	00e78c63          	beq	a5,a4,80002748 <devintr+0x54>
    80002734:	01813083          	ld	ra,24(sp)
    80002738:	01013403          	ld	s0,16(sp)
    8000273c:	00813483          	ld	s1,8(sp)
    80002740:	02010113          	addi	sp,sp,32
    80002744:	00008067          	ret
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	c8c080e7          	jalr	-884(ra) # 800023d4 <cpuid>
    80002750:	06050663          	beqz	a0,800027bc <devintr+0xc8>
    80002754:	144027f3          	csrr	a5,sip
    80002758:	ffd7f793          	andi	a5,a5,-3
    8000275c:	14479073          	csrw	sip,a5
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	00813483          	ld	s1,8(sp)
    8000276c:	00200513          	li	a0,2
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	24c080e7          	jalr	588(ra) # 800029c4 <plic_claim>
    80002780:	00a00793          	li	a5,10
    80002784:	00050493          	mv	s1,a0
    80002788:	06f50663          	beq	a0,a5,800027f4 <devintr+0x100>
    8000278c:	00100513          	li	a0,1
    80002790:	fa0482e3          	beqz	s1,80002734 <devintr+0x40>
    80002794:	00048593          	mv	a1,s1
    80002798:	00003517          	auipc	a0,0x3
    8000279c:	a5050513          	addi	a0,a0,-1456 # 800051e8 <_ZZ12printIntegermE6digits+0xf8>
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	668080e7          	jalr	1640(ra) # 80002e08 <__printf>
    800027a8:	00048513          	mv	a0,s1
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	250080e7          	jalr	592(ra) # 800029fc <plic_complete>
    800027b4:	00100513          	li	a0,1
    800027b8:	f7dff06f          	j	80002734 <devintr+0x40>
    800027bc:	00004517          	auipc	a0,0x4
    800027c0:	1c450513          	addi	a0,a0,452 # 80006980 <tickslock>
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	318080e7          	jalr	792(ra) # 80003adc <acquire>
    800027cc:	00003717          	auipc	a4,0x3
    800027d0:	0a870713          	addi	a4,a4,168 # 80005874 <ticks>
    800027d4:	00072783          	lw	a5,0(a4)
    800027d8:	00004517          	auipc	a0,0x4
    800027dc:	1a850513          	addi	a0,a0,424 # 80006980 <tickslock>
    800027e0:	0017879b          	addiw	a5,a5,1
    800027e4:	00f72023          	sw	a5,0(a4)
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	3c0080e7          	jalr	960(ra) # 80003ba8 <release>
    800027f0:	f65ff06f          	j	80002754 <devintr+0x60>
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	f1c080e7          	jalr	-228(ra) # 80003710 <uartintr>
    800027fc:	fadff06f          	j	800027a8 <devintr+0xb4>

0000000080002800 <kernelvec>:
    80002800:	f0010113          	addi	sp,sp,-256
    80002804:	00113023          	sd	ra,0(sp)
    80002808:	00213423          	sd	sp,8(sp)
    8000280c:	00313823          	sd	gp,16(sp)
    80002810:	00413c23          	sd	tp,24(sp)
    80002814:	02513023          	sd	t0,32(sp)
    80002818:	02613423          	sd	t1,40(sp)
    8000281c:	02713823          	sd	t2,48(sp)
    80002820:	02813c23          	sd	s0,56(sp)
    80002824:	04913023          	sd	s1,64(sp)
    80002828:	04a13423          	sd	a0,72(sp)
    8000282c:	04b13823          	sd	a1,80(sp)
    80002830:	04c13c23          	sd	a2,88(sp)
    80002834:	06d13023          	sd	a3,96(sp)
    80002838:	06e13423          	sd	a4,104(sp)
    8000283c:	06f13823          	sd	a5,112(sp)
    80002840:	07013c23          	sd	a6,120(sp)
    80002844:	09113023          	sd	a7,128(sp)
    80002848:	09213423          	sd	s2,136(sp)
    8000284c:	09313823          	sd	s3,144(sp)
    80002850:	09413c23          	sd	s4,152(sp)
    80002854:	0b513023          	sd	s5,160(sp)
    80002858:	0b613423          	sd	s6,168(sp)
    8000285c:	0b713823          	sd	s7,176(sp)
    80002860:	0b813c23          	sd	s8,184(sp)
    80002864:	0d913023          	sd	s9,192(sp)
    80002868:	0da13423          	sd	s10,200(sp)
    8000286c:	0db13823          	sd	s11,208(sp)
    80002870:	0dc13c23          	sd	t3,216(sp)
    80002874:	0fd13023          	sd	t4,224(sp)
    80002878:	0fe13423          	sd	t5,232(sp)
    8000287c:	0ff13823          	sd	t6,240(sp)
    80002880:	cd5ff0ef          	jal	ra,80002554 <kerneltrap>
    80002884:	00013083          	ld	ra,0(sp)
    80002888:	00813103          	ld	sp,8(sp)
    8000288c:	01013183          	ld	gp,16(sp)
    80002890:	02013283          	ld	t0,32(sp)
    80002894:	02813303          	ld	t1,40(sp)
    80002898:	03013383          	ld	t2,48(sp)
    8000289c:	03813403          	ld	s0,56(sp)
    800028a0:	04013483          	ld	s1,64(sp)
    800028a4:	04813503          	ld	a0,72(sp)
    800028a8:	05013583          	ld	a1,80(sp)
    800028ac:	05813603          	ld	a2,88(sp)
    800028b0:	06013683          	ld	a3,96(sp)
    800028b4:	06813703          	ld	a4,104(sp)
    800028b8:	07013783          	ld	a5,112(sp)
    800028bc:	07813803          	ld	a6,120(sp)
    800028c0:	08013883          	ld	a7,128(sp)
    800028c4:	08813903          	ld	s2,136(sp)
    800028c8:	09013983          	ld	s3,144(sp)
    800028cc:	09813a03          	ld	s4,152(sp)
    800028d0:	0a013a83          	ld	s5,160(sp)
    800028d4:	0a813b03          	ld	s6,168(sp)
    800028d8:	0b013b83          	ld	s7,176(sp)
    800028dc:	0b813c03          	ld	s8,184(sp)
    800028e0:	0c013c83          	ld	s9,192(sp)
    800028e4:	0c813d03          	ld	s10,200(sp)
    800028e8:	0d013d83          	ld	s11,208(sp)
    800028ec:	0d813e03          	ld	t3,216(sp)
    800028f0:	0e013e83          	ld	t4,224(sp)
    800028f4:	0e813f03          	ld	t5,232(sp)
    800028f8:	0f013f83          	ld	t6,240(sp)
    800028fc:	10010113          	addi	sp,sp,256
    80002900:	10200073          	sret
    80002904:	00000013          	nop
    80002908:	00000013          	nop
    8000290c:	00000013          	nop

0000000080002910 <timervec>:
    80002910:	34051573          	csrrw	a0,mscratch,a0
    80002914:	00b53023          	sd	a1,0(a0)
    80002918:	00c53423          	sd	a2,8(a0)
    8000291c:	00d53823          	sd	a3,16(a0)
    80002920:	01853583          	ld	a1,24(a0)
    80002924:	02053603          	ld	a2,32(a0)
    80002928:	0005b683          	ld	a3,0(a1)
    8000292c:	00c686b3          	add	a3,a3,a2
    80002930:	00d5b023          	sd	a3,0(a1)
    80002934:	00200593          	li	a1,2
    80002938:	14459073          	csrw	sip,a1
    8000293c:	01053683          	ld	a3,16(a0)
    80002940:	00853603          	ld	a2,8(a0)
    80002944:	00053583          	ld	a1,0(a0)
    80002948:	34051573          	csrrw	a0,mscratch,a0
    8000294c:	30200073          	mret

0000000080002950 <plicinit>:
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00813423          	sd	s0,8(sp)
    80002958:	01010413          	addi	s0,sp,16
    8000295c:	00813403          	ld	s0,8(sp)
    80002960:	0c0007b7          	lui	a5,0xc000
    80002964:	00100713          	li	a4,1
    80002968:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000296c:	00e7a223          	sw	a4,4(a5)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <plicinithart>:
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813023          	sd	s0,0(sp)
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	01010413          	addi	s0,sp,16
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	a4c080e7          	jalr	-1460(ra) # 800023d4 <cpuid>
    80002990:	0085171b          	slliw	a4,a0,0x8
    80002994:	0c0027b7          	lui	a5,0xc002
    80002998:	00e787b3          	add	a5,a5,a4
    8000299c:	40200713          	li	a4,1026
    800029a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	00d5151b          	slliw	a0,a0,0xd
    800029b0:	0c2017b7          	lui	a5,0xc201
    800029b4:	00a78533          	add	a0,a5,a0
    800029b8:	00052023          	sw	zero,0(a0)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <plic_claim>:
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00813023          	sd	s0,0(sp)
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	01010413          	addi	s0,sp,16
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	a00080e7          	jalr	-1536(ra) # 800023d4 <cpuid>
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	00d5151b          	slliw	a0,a0,0xd
    800029e8:	0c2017b7          	lui	a5,0xc201
    800029ec:	00a78533          	add	a0,a5,a0
    800029f0:	00452503          	lw	a0,4(a0)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <plic_complete>:
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050493          	mv	s1,a0
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	9c0080e7          	jalr	-1600(ra) # 800023d4 <cpuid>
    80002a1c:	01813083          	ld	ra,24(sp)
    80002a20:	01013403          	ld	s0,16(sp)
    80002a24:	00d5179b          	slliw	a5,a0,0xd
    80002a28:	0c201737          	lui	a4,0xc201
    80002a2c:	00f707b3          	add	a5,a4,a5
    80002a30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret

0000000080002a40 <consolewrite>:
    80002a40:	fb010113          	addi	sp,sp,-80
    80002a44:	04813023          	sd	s0,64(sp)
    80002a48:	04113423          	sd	ra,72(sp)
    80002a4c:	02913c23          	sd	s1,56(sp)
    80002a50:	03213823          	sd	s2,48(sp)
    80002a54:	03313423          	sd	s3,40(sp)
    80002a58:	03413023          	sd	s4,32(sp)
    80002a5c:	01513c23          	sd	s5,24(sp)
    80002a60:	05010413          	addi	s0,sp,80
    80002a64:	06c05c63          	blez	a2,80002adc <consolewrite+0x9c>
    80002a68:	00060993          	mv	s3,a2
    80002a6c:	00050a13          	mv	s4,a0
    80002a70:	00058493          	mv	s1,a1
    80002a74:	00000913          	li	s2,0
    80002a78:	fff00a93          	li	s5,-1
    80002a7c:	01c0006f          	j	80002a98 <consolewrite+0x58>
    80002a80:	fbf44503          	lbu	a0,-65(s0)
    80002a84:	0019091b          	addiw	s2,s2,1
    80002a88:	00148493          	addi	s1,s1,1
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	a9c080e7          	jalr	-1380(ra) # 80003528 <uartputc>
    80002a94:	03298063          	beq	s3,s2,80002ab4 <consolewrite+0x74>
    80002a98:	00048613          	mv	a2,s1
    80002a9c:	00100693          	li	a3,1
    80002aa0:	000a0593          	mv	a1,s4
    80002aa4:	fbf40513          	addi	a0,s0,-65
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	9e4080e7          	jalr	-1564(ra) # 8000248c <either_copyin>
    80002ab0:	fd5518e3          	bne	a0,s5,80002a80 <consolewrite+0x40>
    80002ab4:	04813083          	ld	ra,72(sp)
    80002ab8:	04013403          	ld	s0,64(sp)
    80002abc:	03813483          	ld	s1,56(sp)
    80002ac0:	02813983          	ld	s3,40(sp)
    80002ac4:	02013a03          	ld	s4,32(sp)
    80002ac8:	01813a83          	ld	s5,24(sp)
    80002acc:	00090513          	mv	a0,s2
    80002ad0:	03013903          	ld	s2,48(sp)
    80002ad4:	05010113          	addi	sp,sp,80
    80002ad8:	00008067          	ret
    80002adc:	00000913          	li	s2,0
    80002ae0:	fd5ff06f          	j	80002ab4 <consolewrite+0x74>

0000000080002ae4 <consoleread>:
    80002ae4:	f9010113          	addi	sp,sp,-112
    80002ae8:	06813023          	sd	s0,96(sp)
    80002aec:	04913c23          	sd	s1,88(sp)
    80002af0:	05213823          	sd	s2,80(sp)
    80002af4:	05313423          	sd	s3,72(sp)
    80002af8:	05413023          	sd	s4,64(sp)
    80002afc:	03513c23          	sd	s5,56(sp)
    80002b00:	03613823          	sd	s6,48(sp)
    80002b04:	03713423          	sd	s7,40(sp)
    80002b08:	03813023          	sd	s8,32(sp)
    80002b0c:	06113423          	sd	ra,104(sp)
    80002b10:	01913c23          	sd	s9,24(sp)
    80002b14:	07010413          	addi	s0,sp,112
    80002b18:	00060b93          	mv	s7,a2
    80002b1c:	00050913          	mv	s2,a0
    80002b20:	00058c13          	mv	s8,a1
    80002b24:	00060b1b          	sext.w	s6,a2
    80002b28:	00004497          	auipc	s1,0x4
    80002b2c:	e7048493          	addi	s1,s1,-400 # 80006998 <cons>
    80002b30:	00400993          	li	s3,4
    80002b34:	fff00a13          	li	s4,-1
    80002b38:	00a00a93          	li	s5,10
    80002b3c:	05705e63          	blez	s7,80002b98 <consoleread+0xb4>
    80002b40:	09c4a703          	lw	a4,156(s1)
    80002b44:	0984a783          	lw	a5,152(s1)
    80002b48:	0007071b          	sext.w	a4,a4
    80002b4c:	08e78463          	beq	a5,a4,80002bd4 <consoleread+0xf0>
    80002b50:	07f7f713          	andi	a4,a5,127
    80002b54:	00e48733          	add	a4,s1,a4
    80002b58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002b5c:	0017869b          	addiw	a3,a5,1
    80002b60:	08d4ac23          	sw	a3,152(s1)
    80002b64:	00070c9b          	sext.w	s9,a4
    80002b68:	0b370663          	beq	a4,s3,80002c14 <consoleread+0x130>
    80002b6c:	00100693          	li	a3,1
    80002b70:	f9f40613          	addi	a2,s0,-97
    80002b74:	000c0593          	mv	a1,s8
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	f8e40fa3          	sb	a4,-97(s0)
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	8c0080e7          	jalr	-1856(ra) # 80002440 <either_copyout>
    80002b88:	01450863          	beq	a0,s4,80002b98 <consoleread+0xb4>
    80002b8c:	001c0c13          	addi	s8,s8,1
    80002b90:	fffb8b9b          	addiw	s7,s7,-1
    80002b94:	fb5c94e3          	bne	s9,s5,80002b3c <consoleread+0x58>
    80002b98:	000b851b          	sext.w	a0,s7
    80002b9c:	06813083          	ld	ra,104(sp)
    80002ba0:	06013403          	ld	s0,96(sp)
    80002ba4:	05813483          	ld	s1,88(sp)
    80002ba8:	05013903          	ld	s2,80(sp)
    80002bac:	04813983          	ld	s3,72(sp)
    80002bb0:	04013a03          	ld	s4,64(sp)
    80002bb4:	03813a83          	ld	s5,56(sp)
    80002bb8:	02813b83          	ld	s7,40(sp)
    80002bbc:	02013c03          	ld	s8,32(sp)
    80002bc0:	01813c83          	ld	s9,24(sp)
    80002bc4:	40ab053b          	subw	a0,s6,a0
    80002bc8:	03013b03          	ld	s6,48(sp)
    80002bcc:	07010113          	addi	sp,sp,112
    80002bd0:	00008067          	ret
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	1d8080e7          	jalr	472(ra) # 80003dac <push_on>
    80002bdc:	0984a703          	lw	a4,152(s1)
    80002be0:	09c4a783          	lw	a5,156(s1)
    80002be4:	0007879b          	sext.w	a5,a5
    80002be8:	fef70ce3          	beq	a4,a5,80002be0 <consoleread+0xfc>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	234080e7          	jalr	564(ra) # 80003e20 <pop_on>
    80002bf4:	0984a783          	lw	a5,152(s1)
    80002bf8:	07f7f713          	andi	a4,a5,127
    80002bfc:	00e48733          	add	a4,s1,a4
    80002c00:	01874703          	lbu	a4,24(a4)
    80002c04:	0017869b          	addiw	a3,a5,1
    80002c08:	08d4ac23          	sw	a3,152(s1)
    80002c0c:	00070c9b          	sext.w	s9,a4
    80002c10:	f5371ee3          	bne	a4,s3,80002b6c <consoleread+0x88>
    80002c14:	000b851b          	sext.w	a0,s7
    80002c18:	f96bf2e3          	bgeu	s7,s6,80002b9c <consoleread+0xb8>
    80002c1c:	08f4ac23          	sw	a5,152(s1)
    80002c20:	f7dff06f          	j	80002b9c <consoleread+0xb8>

0000000080002c24 <consputc>:
    80002c24:	10000793          	li	a5,256
    80002c28:	00f50663          	beq	a0,a5,80002c34 <consputc+0x10>
    80002c2c:	00001317          	auipc	t1,0x1
    80002c30:	9f430067          	jr	-1548(t1) # 80003620 <uartputc_sync>
    80002c34:	ff010113          	addi	sp,sp,-16
    80002c38:	00113423          	sd	ra,8(sp)
    80002c3c:	00813023          	sd	s0,0(sp)
    80002c40:	01010413          	addi	s0,sp,16
    80002c44:	00800513          	li	a0,8
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	9d8080e7          	jalr	-1576(ra) # 80003620 <uartputc_sync>
    80002c50:	02000513          	li	a0,32
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	9cc080e7          	jalr	-1588(ra) # 80003620 <uartputc_sync>
    80002c5c:	00013403          	ld	s0,0(sp)
    80002c60:	00813083          	ld	ra,8(sp)
    80002c64:	00800513          	li	a0,8
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00001317          	auipc	t1,0x1
    80002c70:	9b430067          	jr	-1612(t1) # 80003620 <uartputc_sync>

0000000080002c74 <consoleintr>:
    80002c74:	fe010113          	addi	sp,sp,-32
    80002c78:	00813823          	sd	s0,16(sp)
    80002c7c:	00913423          	sd	s1,8(sp)
    80002c80:	01213023          	sd	s2,0(sp)
    80002c84:	00113c23          	sd	ra,24(sp)
    80002c88:	02010413          	addi	s0,sp,32
    80002c8c:	00004917          	auipc	s2,0x4
    80002c90:	d0c90913          	addi	s2,s2,-756 # 80006998 <cons>
    80002c94:	00050493          	mv	s1,a0
    80002c98:	00090513          	mv	a0,s2
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	e40080e7          	jalr	-448(ra) # 80003adc <acquire>
    80002ca4:	02048c63          	beqz	s1,80002cdc <consoleintr+0x68>
    80002ca8:	0a092783          	lw	a5,160(s2)
    80002cac:	09892703          	lw	a4,152(s2)
    80002cb0:	07f00693          	li	a3,127
    80002cb4:	40e7873b          	subw	a4,a5,a4
    80002cb8:	02e6e263          	bltu	a3,a4,80002cdc <consoleintr+0x68>
    80002cbc:	00d00713          	li	a4,13
    80002cc0:	04e48063          	beq	s1,a4,80002d00 <consoleintr+0x8c>
    80002cc4:	07f7f713          	andi	a4,a5,127
    80002cc8:	00e90733          	add	a4,s2,a4
    80002ccc:	0017879b          	addiw	a5,a5,1
    80002cd0:	0af92023          	sw	a5,160(s2)
    80002cd4:	00970c23          	sb	s1,24(a4)
    80002cd8:	08f92e23          	sw	a5,156(s2)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	00013903          	ld	s2,0(sp)
    80002cec:	00004517          	auipc	a0,0x4
    80002cf0:	cac50513          	addi	a0,a0,-852 # 80006998 <cons>
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00001317          	auipc	t1,0x1
    80002cfc:	eb030067          	jr	-336(t1) # 80003ba8 <release>
    80002d00:	00a00493          	li	s1,10
    80002d04:	fc1ff06f          	j	80002cc4 <consoleintr+0x50>

0000000080002d08 <consoleinit>:
    80002d08:	fe010113          	addi	sp,sp,-32
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	00813823          	sd	s0,16(sp)
    80002d14:	00913423          	sd	s1,8(sp)
    80002d18:	02010413          	addi	s0,sp,32
    80002d1c:	00004497          	auipc	s1,0x4
    80002d20:	c7c48493          	addi	s1,s1,-900 # 80006998 <cons>
    80002d24:	00048513          	mv	a0,s1
    80002d28:	00002597          	auipc	a1,0x2
    80002d2c:	51858593          	addi	a1,a1,1304 # 80005240 <_ZZ12printIntegermE6digits+0x150>
    80002d30:	00001097          	auipc	ra,0x1
    80002d34:	d88080e7          	jalr	-632(ra) # 80003ab8 <initlock>
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	7ac080e7          	jalr	1964(ra) # 800034e4 <uartinit>
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00000797          	auipc	a5,0x0
    80002d4c:	d9c78793          	addi	a5,a5,-612 # 80002ae4 <consoleread>
    80002d50:	0af4bc23          	sd	a5,184(s1)
    80002d54:	00000797          	auipc	a5,0x0
    80002d58:	cec78793          	addi	a5,a5,-788 # 80002a40 <consolewrite>
    80002d5c:	0cf4b023          	sd	a5,192(s1)
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	02010113          	addi	sp,sp,32
    80002d68:	00008067          	ret

0000000080002d6c <console_read>:
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00813423          	sd	s0,8(sp)
    80002d74:	01010413          	addi	s0,sp,16
    80002d78:	00813403          	ld	s0,8(sp)
    80002d7c:	00004317          	auipc	t1,0x4
    80002d80:	cd433303          	ld	t1,-812(t1) # 80006a50 <devsw+0x10>
    80002d84:	01010113          	addi	sp,sp,16
    80002d88:	00030067          	jr	t1

0000000080002d8c <console_write>:
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00813423          	sd	s0,8(sp)
    80002d94:	01010413          	addi	s0,sp,16
    80002d98:	00813403          	ld	s0,8(sp)
    80002d9c:	00004317          	auipc	t1,0x4
    80002da0:	cbc33303          	ld	t1,-836(t1) # 80006a58 <devsw+0x18>
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00030067          	jr	t1

0000000080002dac <panic>:
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00113c23          	sd	ra,24(sp)
    80002db4:	00813823          	sd	s0,16(sp)
    80002db8:	00913423          	sd	s1,8(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00050493          	mv	s1,a0
    80002dc4:	00002517          	auipc	a0,0x2
    80002dc8:	48450513          	addi	a0,a0,1156 # 80005248 <_ZZ12printIntegermE6digits+0x158>
    80002dcc:	00004797          	auipc	a5,0x4
    80002dd0:	d207a623          	sw	zero,-724(a5) # 80006af8 <pr+0x18>
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	034080e7          	jalr	52(ra) # 80002e08 <__printf>
    80002ddc:	00048513          	mv	a0,s1
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	028080e7          	jalr	40(ra) # 80002e08 <__printf>
    80002de8:	00002517          	auipc	a0,0x2
    80002dec:	26850513          	addi	a0,a0,616 # 80005050 <CONSOLE_STATUS+0x40>
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	018080e7          	jalr	24(ra) # 80002e08 <__printf>
    80002df8:	00100793          	li	a5,1
    80002dfc:	00003717          	auipc	a4,0x3
    80002e00:	a6f72e23          	sw	a5,-1412(a4) # 80005878 <panicked>
    80002e04:	0000006f          	j	80002e04 <panic+0x58>

0000000080002e08 <__printf>:
    80002e08:	f3010113          	addi	sp,sp,-208
    80002e0c:	08813023          	sd	s0,128(sp)
    80002e10:	07313423          	sd	s3,104(sp)
    80002e14:	09010413          	addi	s0,sp,144
    80002e18:	05813023          	sd	s8,64(sp)
    80002e1c:	08113423          	sd	ra,136(sp)
    80002e20:	06913c23          	sd	s1,120(sp)
    80002e24:	07213823          	sd	s2,112(sp)
    80002e28:	07413023          	sd	s4,96(sp)
    80002e2c:	05513c23          	sd	s5,88(sp)
    80002e30:	05613823          	sd	s6,80(sp)
    80002e34:	05713423          	sd	s7,72(sp)
    80002e38:	03913c23          	sd	s9,56(sp)
    80002e3c:	03a13823          	sd	s10,48(sp)
    80002e40:	03b13423          	sd	s11,40(sp)
    80002e44:	00004317          	auipc	t1,0x4
    80002e48:	c9c30313          	addi	t1,t1,-868 # 80006ae0 <pr>
    80002e4c:	01832c03          	lw	s8,24(t1)
    80002e50:	00b43423          	sd	a1,8(s0)
    80002e54:	00c43823          	sd	a2,16(s0)
    80002e58:	00d43c23          	sd	a3,24(s0)
    80002e5c:	02e43023          	sd	a4,32(s0)
    80002e60:	02f43423          	sd	a5,40(s0)
    80002e64:	03043823          	sd	a6,48(s0)
    80002e68:	03143c23          	sd	a7,56(s0)
    80002e6c:	00050993          	mv	s3,a0
    80002e70:	4a0c1663          	bnez	s8,8000331c <__printf+0x514>
    80002e74:	60098c63          	beqz	s3,8000348c <__printf+0x684>
    80002e78:	0009c503          	lbu	a0,0(s3)
    80002e7c:	00840793          	addi	a5,s0,8
    80002e80:	f6f43c23          	sd	a5,-136(s0)
    80002e84:	00000493          	li	s1,0
    80002e88:	22050063          	beqz	a0,800030a8 <__printf+0x2a0>
    80002e8c:	00002a37          	lui	s4,0x2
    80002e90:	00018ab7          	lui	s5,0x18
    80002e94:	000f4b37          	lui	s6,0xf4
    80002e98:	00989bb7          	lui	s7,0x989
    80002e9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ea0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ea4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ea8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002eac:	00148c9b          	addiw	s9,s1,1
    80002eb0:	02500793          	li	a5,37
    80002eb4:	01998933          	add	s2,s3,s9
    80002eb8:	38f51263          	bne	a0,a5,8000323c <__printf+0x434>
    80002ebc:	00094783          	lbu	a5,0(s2)
    80002ec0:	00078c9b          	sext.w	s9,a5
    80002ec4:	1e078263          	beqz	a5,800030a8 <__printf+0x2a0>
    80002ec8:	0024849b          	addiw	s1,s1,2
    80002ecc:	07000713          	li	a4,112
    80002ed0:	00998933          	add	s2,s3,s1
    80002ed4:	38e78a63          	beq	a5,a4,80003268 <__printf+0x460>
    80002ed8:	20f76863          	bltu	a4,a5,800030e8 <__printf+0x2e0>
    80002edc:	42a78863          	beq	a5,a0,8000330c <__printf+0x504>
    80002ee0:	06400713          	li	a4,100
    80002ee4:	40e79663          	bne	a5,a4,800032f0 <__printf+0x4e8>
    80002ee8:	f7843783          	ld	a5,-136(s0)
    80002eec:	0007a603          	lw	a2,0(a5)
    80002ef0:	00878793          	addi	a5,a5,8
    80002ef4:	f6f43c23          	sd	a5,-136(s0)
    80002ef8:	42064a63          	bltz	a2,8000332c <__printf+0x524>
    80002efc:	00a00713          	li	a4,10
    80002f00:	02e677bb          	remuw	a5,a2,a4
    80002f04:	00002d97          	auipc	s11,0x2
    80002f08:	36cd8d93          	addi	s11,s11,876 # 80005270 <digits>
    80002f0c:	00900593          	li	a1,9
    80002f10:	0006051b          	sext.w	a0,a2
    80002f14:	00000c93          	li	s9,0
    80002f18:	02079793          	slli	a5,a5,0x20
    80002f1c:	0207d793          	srli	a5,a5,0x20
    80002f20:	00fd87b3          	add	a5,s11,a5
    80002f24:	0007c783          	lbu	a5,0(a5)
    80002f28:	02e656bb          	divuw	a3,a2,a4
    80002f2c:	f8f40023          	sb	a5,-128(s0)
    80002f30:	14c5d863          	bge	a1,a2,80003080 <__printf+0x278>
    80002f34:	06300593          	li	a1,99
    80002f38:	00100c93          	li	s9,1
    80002f3c:	02e6f7bb          	remuw	a5,a3,a4
    80002f40:	02079793          	slli	a5,a5,0x20
    80002f44:	0207d793          	srli	a5,a5,0x20
    80002f48:	00fd87b3          	add	a5,s11,a5
    80002f4c:	0007c783          	lbu	a5,0(a5)
    80002f50:	02e6d73b          	divuw	a4,a3,a4
    80002f54:	f8f400a3          	sb	a5,-127(s0)
    80002f58:	12a5f463          	bgeu	a1,a0,80003080 <__printf+0x278>
    80002f5c:	00a00693          	li	a3,10
    80002f60:	00900593          	li	a1,9
    80002f64:	02d777bb          	remuw	a5,a4,a3
    80002f68:	02079793          	slli	a5,a5,0x20
    80002f6c:	0207d793          	srli	a5,a5,0x20
    80002f70:	00fd87b3          	add	a5,s11,a5
    80002f74:	0007c503          	lbu	a0,0(a5)
    80002f78:	02d757bb          	divuw	a5,a4,a3
    80002f7c:	f8a40123          	sb	a0,-126(s0)
    80002f80:	48e5f263          	bgeu	a1,a4,80003404 <__printf+0x5fc>
    80002f84:	06300513          	li	a0,99
    80002f88:	02d7f5bb          	remuw	a1,a5,a3
    80002f8c:	02059593          	slli	a1,a1,0x20
    80002f90:	0205d593          	srli	a1,a1,0x20
    80002f94:	00bd85b3          	add	a1,s11,a1
    80002f98:	0005c583          	lbu	a1,0(a1)
    80002f9c:	02d7d7bb          	divuw	a5,a5,a3
    80002fa0:	f8b401a3          	sb	a1,-125(s0)
    80002fa4:	48e57263          	bgeu	a0,a4,80003428 <__printf+0x620>
    80002fa8:	3e700513          	li	a0,999
    80002fac:	02d7f5bb          	remuw	a1,a5,a3
    80002fb0:	02059593          	slli	a1,a1,0x20
    80002fb4:	0205d593          	srli	a1,a1,0x20
    80002fb8:	00bd85b3          	add	a1,s11,a1
    80002fbc:	0005c583          	lbu	a1,0(a1)
    80002fc0:	02d7d7bb          	divuw	a5,a5,a3
    80002fc4:	f8b40223          	sb	a1,-124(s0)
    80002fc8:	46e57663          	bgeu	a0,a4,80003434 <__printf+0x62c>
    80002fcc:	02d7f5bb          	remuw	a1,a5,a3
    80002fd0:	02059593          	slli	a1,a1,0x20
    80002fd4:	0205d593          	srli	a1,a1,0x20
    80002fd8:	00bd85b3          	add	a1,s11,a1
    80002fdc:	0005c583          	lbu	a1,0(a1)
    80002fe0:	02d7d7bb          	divuw	a5,a5,a3
    80002fe4:	f8b402a3          	sb	a1,-123(s0)
    80002fe8:	46ea7863          	bgeu	s4,a4,80003458 <__printf+0x650>
    80002fec:	02d7f5bb          	remuw	a1,a5,a3
    80002ff0:	02059593          	slli	a1,a1,0x20
    80002ff4:	0205d593          	srli	a1,a1,0x20
    80002ff8:	00bd85b3          	add	a1,s11,a1
    80002ffc:	0005c583          	lbu	a1,0(a1)
    80003000:	02d7d7bb          	divuw	a5,a5,a3
    80003004:	f8b40323          	sb	a1,-122(s0)
    80003008:	3eeaf863          	bgeu	s5,a4,800033f8 <__printf+0x5f0>
    8000300c:	02d7f5bb          	remuw	a1,a5,a3
    80003010:	02059593          	slli	a1,a1,0x20
    80003014:	0205d593          	srli	a1,a1,0x20
    80003018:	00bd85b3          	add	a1,s11,a1
    8000301c:	0005c583          	lbu	a1,0(a1)
    80003020:	02d7d7bb          	divuw	a5,a5,a3
    80003024:	f8b403a3          	sb	a1,-121(s0)
    80003028:	42eb7e63          	bgeu	s6,a4,80003464 <__printf+0x65c>
    8000302c:	02d7f5bb          	remuw	a1,a5,a3
    80003030:	02059593          	slli	a1,a1,0x20
    80003034:	0205d593          	srli	a1,a1,0x20
    80003038:	00bd85b3          	add	a1,s11,a1
    8000303c:	0005c583          	lbu	a1,0(a1)
    80003040:	02d7d7bb          	divuw	a5,a5,a3
    80003044:	f8b40423          	sb	a1,-120(s0)
    80003048:	42ebfc63          	bgeu	s7,a4,80003480 <__printf+0x678>
    8000304c:	02079793          	slli	a5,a5,0x20
    80003050:	0207d793          	srli	a5,a5,0x20
    80003054:	00fd8db3          	add	s11,s11,a5
    80003058:	000dc703          	lbu	a4,0(s11)
    8000305c:	00a00793          	li	a5,10
    80003060:	00900c93          	li	s9,9
    80003064:	f8e404a3          	sb	a4,-119(s0)
    80003068:	00065c63          	bgez	a2,80003080 <__printf+0x278>
    8000306c:	f9040713          	addi	a4,s0,-112
    80003070:	00f70733          	add	a4,a4,a5
    80003074:	02d00693          	li	a3,45
    80003078:	fed70823          	sb	a3,-16(a4)
    8000307c:	00078c93          	mv	s9,a5
    80003080:	f8040793          	addi	a5,s0,-128
    80003084:	01978cb3          	add	s9,a5,s9
    80003088:	f7f40d13          	addi	s10,s0,-129
    8000308c:	000cc503          	lbu	a0,0(s9)
    80003090:	fffc8c93          	addi	s9,s9,-1
    80003094:	00000097          	auipc	ra,0x0
    80003098:	b90080e7          	jalr	-1136(ra) # 80002c24 <consputc>
    8000309c:	ffac98e3          	bne	s9,s10,8000308c <__printf+0x284>
    800030a0:	00094503          	lbu	a0,0(s2)
    800030a4:	e00514e3          	bnez	a0,80002eac <__printf+0xa4>
    800030a8:	1a0c1663          	bnez	s8,80003254 <__printf+0x44c>
    800030ac:	08813083          	ld	ra,136(sp)
    800030b0:	08013403          	ld	s0,128(sp)
    800030b4:	07813483          	ld	s1,120(sp)
    800030b8:	07013903          	ld	s2,112(sp)
    800030bc:	06813983          	ld	s3,104(sp)
    800030c0:	06013a03          	ld	s4,96(sp)
    800030c4:	05813a83          	ld	s5,88(sp)
    800030c8:	05013b03          	ld	s6,80(sp)
    800030cc:	04813b83          	ld	s7,72(sp)
    800030d0:	04013c03          	ld	s8,64(sp)
    800030d4:	03813c83          	ld	s9,56(sp)
    800030d8:	03013d03          	ld	s10,48(sp)
    800030dc:	02813d83          	ld	s11,40(sp)
    800030e0:	0d010113          	addi	sp,sp,208
    800030e4:	00008067          	ret
    800030e8:	07300713          	li	a4,115
    800030ec:	1ce78a63          	beq	a5,a4,800032c0 <__printf+0x4b8>
    800030f0:	07800713          	li	a4,120
    800030f4:	1ee79e63          	bne	a5,a4,800032f0 <__printf+0x4e8>
    800030f8:	f7843783          	ld	a5,-136(s0)
    800030fc:	0007a703          	lw	a4,0(a5)
    80003100:	00878793          	addi	a5,a5,8
    80003104:	f6f43c23          	sd	a5,-136(s0)
    80003108:	28074263          	bltz	a4,8000338c <__printf+0x584>
    8000310c:	00002d97          	auipc	s11,0x2
    80003110:	164d8d93          	addi	s11,s11,356 # 80005270 <digits>
    80003114:	00f77793          	andi	a5,a4,15
    80003118:	00fd87b3          	add	a5,s11,a5
    8000311c:	0007c683          	lbu	a3,0(a5)
    80003120:	00f00613          	li	a2,15
    80003124:	0007079b          	sext.w	a5,a4
    80003128:	f8d40023          	sb	a3,-128(s0)
    8000312c:	0047559b          	srliw	a1,a4,0x4
    80003130:	0047569b          	srliw	a3,a4,0x4
    80003134:	00000c93          	li	s9,0
    80003138:	0ee65063          	bge	a2,a4,80003218 <__printf+0x410>
    8000313c:	00f6f693          	andi	a3,a3,15
    80003140:	00dd86b3          	add	a3,s11,a3
    80003144:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003148:	0087d79b          	srliw	a5,a5,0x8
    8000314c:	00100c93          	li	s9,1
    80003150:	f8d400a3          	sb	a3,-127(s0)
    80003154:	0cb67263          	bgeu	a2,a1,80003218 <__printf+0x410>
    80003158:	00f7f693          	andi	a3,a5,15
    8000315c:	00dd86b3          	add	a3,s11,a3
    80003160:	0006c583          	lbu	a1,0(a3)
    80003164:	00f00613          	li	a2,15
    80003168:	0047d69b          	srliw	a3,a5,0x4
    8000316c:	f8b40123          	sb	a1,-126(s0)
    80003170:	0047d593          	srli	a1,a5,0x4
    80003174:	28f67e63          	bgeu	a2,a5,80003410 <__printf+0x608>
    80003178:	00f6f693          	andi	a3,a3,15
    8000317c:	00dd86b3          	add	a3,s11,a3
    80003180:	0006c503          	lbu	a0,0(a3)
    80003184:	0087d813          	srli	a6,a5,0x8
    80003188:	0087d69b          	srliw	a3,a5,0x8
    8000318c:	f8a401a3          	sb	a0,-125(s0)
    80003190:	28b67663          	bgeu	a2,a1,8000341c <__printf+0x614>
    80003194:	00f6f693          	andi	a3,a3,15
    80003198:	00dd86b3          	add	a3,s11,a3
    8000319c:	0006c583          	lbu	a1,0(a3)
    800031a0:	00c7d513          	srli	a0,a5,0xc
    800031a4:	00c7d69b          	srliw	a3,a5,0xc
    800031a8:	f8b40223          	sb	a1,-124(s0)
    800031ac:	29067a63          	bgeu	a2,a6,80003440 <__printf+0x638>
    800031b0:	00f6f693          	andi	a3,a3,15
    800031b4:	00dd86b3          	add	a3,s11,a3
    800031b8:	0006c583          	lbu	a1,0(a3)
    800031bc:	0107d813          	srli	a6,a5,0x10
    800031c0:	0107d69b          	srliw	a3,a5,0x10
    800031c4:	f8b402a3          	sb	a1,-123(s0)
    800031c8:	28a67263          	bgeu	a2,a0,8000344c <__printf+0x644>
    800031cc:	00f6f693          	andi	a3,a3,15
    800031d0:	00dd86b3          	add	a3,s11,a3
    800031d4:	0006c683          	lbu	a3,0(a3)
    800031d8:	0147d79b          	srliw	a5,a5,0x14
    800031dc:	f8d40323          	sb	a3,-122(s0)
    800031e0:	21067663          	bgeu	a2,a6,800033ec <__printf+0x5e4>
    800031e4:	02079793          	slli	a5,a5,0x20
    800031e8:	0207d793          	srli	a5,a5,0x20
    800031ec:	00fd8db3          	add	s11,s11,a5
    800031f0:	000dc683          	lbu	a3,0(s11)
    800031f4:	00800793          	li	a5,8
    800031f8:	00700c93          	li	s9,7
    800031fc:	f8d403a3          	sb	a3,-121(s0)
    80003200:	00075c63          	bgez	a4,80003218 <__printf+0x410>
    80003204:	f9040713          	addi	a4,s0,-112
    80003208:	00f70733          	add	a4,a4,a5
    8000320c:	02d00693          	li	a3,45
    80003210:	fed70823          	sb	a3,-16(a4)
    80003214:	00078c93          	mv	s9,a5
    80003218:	f8040793          	addi	a5,s0,-128
    8000321c:	01978cb3          	add	s9,a5,s9
    80003220:	f7f40d13          	addi	s10,s0,-129
    80003224:	000cc503          	lbu	a0,0(s9)
    80003228:	fffc8c93          	addi	s9,s9,-1
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	9f8080e7          	jalr	-1544(ra) # 80002c24 <consputc>
    80003234:	ff9d18e3          	bne	s10,s9,80003224 <__printf+0x41c>
    80003238:	0100006f          	j	80003248 <__printf+0x440>
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	9e8080e7          	jalr	-1560(ra) # 80002c24 <consputc>
    80003244:	000c8493          	mv	s1,s9
    80003248:	00094503          	lbu	a0,0(s2)
    8000324c:	c60510e3          	bnez	a0,80002eac <__printf+0xa4>
    80003250:	e40c0ee3          	beqz	s8,800030ac <__printf+0x2a4>
    80003254:	00004517          	auipc	a0,0x4
    80003258:	88c50513          	addi	a0,a0,-1908 # 80006ae0 <pr>
    8000325c:	00001097          	auipc	ra,0x1
    80003260:	94c080e7          	jalr	-1716(ra) # 80003ba8 <release>
    80003264:	e49ff06f          	j	800030ac <__printf+0x2a4>
    80003268:	f7843783          	ld	a5,-136(s0)
    8000326c:	03000513          	li	a0,48
    80003270:	01000d13          	li	s10,16
    80003274:	00878713          	addi	a4,a5,8
    80003278:	0007bc83          	ld	s9,0(a5)
    8000327c:	f6e43c23          	sd	a4,-136(s0)
    80003280:	00000097          	auipc	ra,0x0
    80003284:	9a4080e7          	jalr	-1628(ra) # 80002c24 <consputc>
    80003288:	07800513          	li	a0,120
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	998080e7          	jalr	-1640(ra) # 80002c24 <consputc>
    80003294:	00002d97          	auipc	s11,0x2
    80003298:	fdcd8d93          	addi	s11,s11,-36 # 80005270 <digits>
    8000329c:	03ccd793          	srli	a5,s9,0x3c
    800032a0:	00fd87b3          	add	a5,s11,a5
    800032a4:	0007c503          	lbu	a0,0(a5)
    800032a8:	fffd0d1b          	addiw	s10,s10,-1
    800032ac:	004c9c93          	slli	s9,s9,0x4
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	974080e7          	jalr	-1676(ra) # 80002c24 <consputc>
    800032b8:	fe0d12e3          	bnez	s10,8000329c <__printf+0x494>
    800032bc:	f8dff06f          	j	80003248 <__printf+0x440>
    800032c0:	f7843783          	ld	a5,-136(s0)
    800032c4:	0007bc83          	ld	s9,0(a5)
    800032c8:	00878793          	addi	a5,a5,8
    800032cc:	f6f43c23          	sd	a5,-136(s0)
    800032d0:	000c9a63          	bnez	s9,800032e4 <__printf+0x4dc>
    800032d4:	1080006f          	j	800033dc <__printf+0x5d4>
    800032d8:	001c8c93          	addi	s9,s9,1
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	948080e7          	jalr	-1720(ra) # 80002c24 <consputc>
    800032e4:	000cc503          	lbu	a0,0(s9)
    800032e8:	fe0518e3          	bnez	a0,800032d8 <__printf+0x4d0>
    800032ec:	f5dff06f          	j	80003248 <__printf+0x440>
    800032f0:	02500513          	li	a0,37
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	930080e7          	jalr	-1744(ra) # 80002c24 <consputc>
    800032fc:	000c8513          	mv	a0,s9
    80003300:	00000097          	auipc	ra,0x0
    80003304:	924080e7          	jalr	-1756(ra) # 80002c24 <consputc>
    80003308:	f41ff06f          	j	80003248 <__printf+0x440>
    8000330c:	02500513          	li	a0,37
    80003310:	00000097          	auipc	ra,0x0
    80003314:	914080e7          	jalr	-1772(ra) # 80002c24 <consputc>
    80003318:	f31ff06f          	j	80003248 <__printf+0x440>
    8000331c:	00030513          	mv	a0,t1
    80003320:	00000097          	auipc	ra,0x0
    80003324:	7bc080e7          	jalr	1980(ra) # 80003adc <acquire>
    80003328:	b4dff06f          	j	80002e74 <__printf+0x6c>
    8000332c:	40c0053b          	negw	a0,a2
    80003330:	00a00713          	li	a4,10
    80003334:	02e576bb          	remuw	a3,a0,a4
    80003338:	00002d97          	auipc	s11,0x2
    8000333c:	f38d8d93          	addi	s11,s11,-200 # 80005270 <digits>
    80003340:	ff700593          	li	a1,-9
    80003344:	02069693          	slli	a3,a3,0x20
    80003348:	0206d693          	srli	a3,a3,0x20
    8000334c:	00dd86b3          	add	a3,s11,a3
    80003350:	0006c683          	lbu	a3,0(a3)
    80003354:	02e557bb          	divuw	a5,a0,a4
    80003358:	f8d40023          	sb	a3,-128(s0)
    8000335c:	10b65e63          	bge	a2,a1,80003478 <__printf+0x670>
    80003360:	06300593          	li	a1,99
    80003364:	02e7f6bb          	remuw	a3,a5,a4
    80003368:	02069693          	slli	a3,a3,0x20
    8000336c:	0206d693          	srli	a3,a3,0x20
    80003370:	00dd86b3          	add	a3,s11,a3
    80003374:	0006c683          	lbu	a3,0(a3)
    80003378:	02e7d73b          	divuw	a4,a5,a4
    8000337c:	00200793          	li	a5,2
    80003380:	f8d400a3          	sb	a3,-127(s0)
    80003384:	bca5ece3          	bltu	a1,a0,80002f5c <__printf+0x154>
    80003388:	ce5ff06f          	j	8000306c <__printf+0x264>
    8000338c:	40e007bb          	negw	a5,a4
    80003390:	00002d97          	auipc	s11,0x2
    80003394:	ee0d8d93          	addi	s11,s11,-288 # 80005270 <digits>
    80003398:	00f7f693          	andi	a3,a5,15
    8000339c:	00dd86b3          	add	a3,s11,a3
    800033a0:	0006c583          	lbu	a1,0(a3)
    800033a4:	ff100613          	li	a2,-15
    800033a8:	0047d69b          	srliw	a3,a5,0x4
    800033ac:	f8b40023          	sb	a1,-128(s0)
    800033b0:	0047d59b          	srliw	a1,a5,0x4
    800033b4:	0ac75e63          	bge	a4,a2,80003470 <__printf+0x668>
    800033b8:	00f6f693          	andi	a3,a3,15
    800033bc:	00dd86b3          	add	a3,s11,a3
    800033c0:	0006c603          	lbu	a2,0(a3)
    800033c4:	00f00693          	li	a3,15
    800033c8:	0087d79b          	srliw	a5,a5,0x8
    800033cc:	f8c400a3          	sb	a2,-127(s0)
    800033d0:	d8b6e4e3          	bltu	a3,a1,80003158 <__printf+0x350>
    800033d4:	00200793          	li	a5,2
    800033d8:	e2dff06f          	j	80003204 <__printf+0x3fc>
    800033dc:	00002c97          	auipc	s9,0x2
    800033e0:	e74c8c93          	addi	s9,s9,-396 # 80005250 <_ZZ12printIntegermE6digits+0x160>
    800033e4:	02800513          	li	a0,40
    800033e8:	ef1ff06f          	j	800032d8 <__printf+0x4d0>
    800033ec:	00700793          	li	a5,7
    800033f0:	00600c93          	li	s9,6
    800033f4:	e0dff06f          	j	80003200 <__printf+0x3f8>
    800033f8:	00700793          	li	a5,7
    800033fc:	00600c93          	li	s9,6
    80003400:	c69ff06f          	j	80003068 <__printf+0x260>
    80003404:	00300793          	li	a5,3
    80003408:	00200c93          	li	s9,2
    8000340c:	c5dff06f          	j	80003068 <__printf+0x260>
    80003410:	00300793          	li	a5,3
    80003414:	00200c93          	li	s9,2
    80003418:	de9ff06f          	j	80003200 <__printf+0x3f8>
    8000341c:	00400793          	li	a5,4
    80003420:	00300c93          	li	s9,3
    80003424:	dddff06f          	j	80003200 <__printf+0x3f8>
    80003428:	00400793          	li	a5,4
    8000342c:	00300c93          	li	s9,3
    80003430:	c39ff06f          	j	80003068 <__printf+0x260>
    80003434:	00500793          	li	a5,5
    80003438:	00400c93          	li	s9,4
    8000343c:	c2dff06f          	j	80003068 <__printf+0x260>
    80003440:	00500793          	li	a5,5
    80003444:	00400c93          	li	s9,4
    80003448:	db9ff06f          	j	80003200 <__printf+0x3f8>
    8000344c:	00600793          	li	a5,6
    80003450:	00500c93          	li	s9,5
    80003454:	dadff06f          	j	80003200 <__printf+0x3f8>
    80003458:	00600793          	li	a5,6
    8000345c:	00500c93          	li	s9,5
    80003460:	c09ff06f          	j	80003068 <__printf+0x260>
    80003464:	00800793          	li	a5,8
    80003468:	00700c93          	li	s9,7
    8000346c:	bfdff06f          	j	80003068 <__printf+0x260>
    80003470:	00100793          	li	a5,1
    80003474:	d91ff06f          	j	80003204 <__printf+0x3fc>
    80003478:	00100793          	li	a5,1
    8000347c:	bf1ff06f          	j	8000306c <__printf+0x264>
    80003480:	00900793          	li	a5,9
    80003484:	00800c93          	li	s9,8
    80003488:	be1ff06f          	j	80003068 <__printf+0x260>
    8000348c:	00002517          	auipc	a0,0x2
    80003490:	dcc50513          	addi	a0,a0,-564 # 80005258 <_ZZ12printIntegermE6digits+0x168>
    80003494:	00000097          	auipc	ra,0x0
    80003498:	918080e7          	jalr	-1768(ra) # 80002dac <panic>

000000008000349c <printfinit>:
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00813823          	sd	s0,16(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	02010413          	addi	s0,sp,32
    800034b0:	00003497          	auipc	s1,0x3
    800034b4:	63048493          	addi	s1,s1,1584 # 80006ae0 <pr>
    800034b8:	00048513          	mv	a0,s1
    800034bc:	00002597          	auipc	a1,0x2
    800034c0:	dac58593          	addi	a1,a1,-596 # 80005268 <_ZZ12printIntegermE6digits+0x178>
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	5f4080e7          	jalr	1524(ra) # 80003ab8 <initlock>
    800034cc:	01813083          	ld	ra,24(sp)
    800034d0:	01013403          	ld	s0,16(sp)
    800034d4:	0004ac23          	sw	zero,24(s1)
    800034d8:	00813483          	ld	s1,8(sp)
    800034dc:	02010113          	addi	sp,sp,32
    800034e0:	00008067          	ret

00000000800034e4 <uartinit>:
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00813423          	sd	s0,8(sp)
    800034ec:	01010413          	addi	s0,sp,16
    800034f0:	100007b7          	lui	a5,0x10000
    800034f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800034f8:	f8000713          	li	a4,-128
    800034fc:	00e781a3          	sb	a4,3(a5)
    80003500:	00300713          	li	a4,3
    80003504:	00e78023          	sb	a4,0(a5)
    80003508:	000780a3          	sb	zero,1(a5)
    8000350c:	00e781a3          	sb	a4,3(a5)
    80003510:	00700693          	li	a3,7
    80003514:	00d78123          	sb	a3,2(a5)
    80003518:	00e780a3          	sb	a4,1(a5)
    8000351c:	00813403          	ld	s0,8(sp)
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret

0000000080003528 <uartputc>:
    80003528:	00002797          	auipc	a5,0x2
    8000352c:	3507a783          	lw	a5,848(a5) # 80005878 <panicked>
    80003530:	00078463          	beqz	a5,80003538 <uartputc+0x10>
    80003534:	0000006f          	j	80003534 <uartputc+0xc>
    80003538:	fd010113          	addi	sp,sp,-48
    8000353c:	02813023          	sd	s0,32(sp)
    80003540:	00913c23          	sd	s1,24(sp)
    80003544:	01213823          	sd	s2,16(sp)
    80003548:	01313423          	sd	s3,8(sp)
    8000354c:	02113423          	sd	ra,40(sp)
    80003550:	03010413          	addi	s0,sp,48
    80003554:	00002917          	auipc	s2,0x2
    80003558:	32c90913          	addi	s2,s2,812 # 80005880 <uart_tx_r>
    8000355c:	00093783          	ld	a5,0(s2)
    80003560:	00002497          	auipc	s1,0x2
    80003564:	32848493          	addi	s1,s1,808 # 80005888 <uart_tx_w>
    80003568:	0004b703          	ld	a4,0(s1)
    8000356c:	02078693          	addi	a3,a5,32
    80003570:	00050993          	mv	s3,a0
    80003574:	02e69c63          	bne	a3,a4,800035ac <uartputc+0x84>
    80003578:	00001097          	auipc	ra,0x1
    8000357c:	834080e7          	jalr	-1996(ra) # 80003dac <push_on>
    80003580:	00093783          	ld	a5,0(s2)
    80003584:	0004b703          	ld	a4,0(s1)
    80003588:	02078793          	addi	a5,a5,32
    8000358c:	00e79463          	bne	a5,a4,80003594 <uartputc+0x6c>
    80003590:	0000006f          	j	80003590 <uartputc+0x68>
    80003594:	00001097          	auipc	ra,0x1
    80003598:	88c080e7          	jalr	-1908(ra) # 80003e20 <pop_on>
    8000359c:	00093783          	ld	a5,0(s2)
    800035a0:	0004b703          	ld	a4,0(s1)
    800035a4:	02078693          	addi	a3,a5,32
    800035a8:	fce688e3          	beq	a3,a4,80003578 <uartputc+0x50>
    800035ac:	01f77693          	andi	a3,a4,31
    800035b0:	00003597          	auipc	a1,0x3
    800035b4:	55058593          	addi	a1,a1,1360 # 80006b00 <uart_tx_buf>
    800035b8:	00d586b3          	add	a3,a1,a3
    800035bc:	00170713          	addi	a4,a4,1
    800035c0:	01368023          	sb	s3,0(a3)
    800035c4:	00e4b023          	sd	a4,0(s1)
    800035c8:	10000637          	lui	a2,0x10000
    800035cc:	02f71063          	bne	a4,a5,800035ec <uartputc+0xc4>
    800035d0:	0340006f          	j	80003604 <uartputc+0xdc>
    800035d4:	00074703          	lbu	a4,0(a4)
    800035d8:	00f93023          	sd	a5,0(s2)
    800035dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800035e0:	00093783          	ld	a5,0(s2)
    800035e4:	0004b703          	ld	a4,0(s1)
    800035e8:	00f70e63          	beq	a4,a5,80003604 <uartputc+0xdc>
    800035ec:	00564683          	lbu	a3,5(a2)
    800035f0:	01f7f713          	andi	a4,a5,31
    800035f4:	00e58733          	add	a4,a1,a4
    800035f8:	0206f693          	andi	a3,a3,32
    800035fc:	00178793          	addi	a5,a5,1
    80003600:	fc069ae3          	bnez	a3,800035d4 <uartputc+0xac>
    80003604:	02813083          	ld	ra,40(sp)
    80003608:	02013403          	ld	s0,32(sp)
    8000360c:	01813483          	ld	s1,24(sp)
    80003610:	01013903          	ld	s2,16(sp)
    80003614:	00813983          	ld	s3,8(sp)
    80003618:	03010113          	addi	sp,sp,48
    8000361c:	00008067          	ret

0000000080003620 <uartputc_sync>:
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00813423          	sd	s0,8(sp)
    80003628:	01010413          	addi	s0,sp,16
    8000362c:	00002717          	auipc	a4,0x2
    80003630:	24c72703          	lw	a4,588(a4) # 80005878 <panicked>
    80003634:	02071663          	bnez	a4,80003660 <uartputc_sync+0x40>
    80003638:	00050793          	mv	a5,a0
    8000363c:	100006b7          	lui	a3,0x10000
    80003640:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003644:	02077713          	andi	a4,a4,32
    80003648:	fe070ce3          	beqz	a4,80003640 <uartputc_sync+0x20>
    8000364c:	0ff7f793          	andi	a5,a5,255
    80003650:	00f68023          	sb	a5,0(a3)
    80003654:	00813403          	ld	s0,8(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret
    80003660:	0000006f          	j	80003660 <uartputc_sync+0x40>

0000000080003664 <uartstart>:
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00813423          	sd	s0,8(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	00002617          	auipc	a2,0x2
    80003674:	21060613          	addi	a2,a2,528 # 80005880 <uart_tx_r>
    80003678:	00002517          	auipc	a0,0x2
    8000367c:	21050513          	addi	a0,a0,528 # 80005888 <uart_tx_w>
    80003680:	00063783          	ld	a5,0(a2)
    80003684:	00053703          	ld	a4,0(a0)
    80003688:	04f70263          	beq	a4,a5,800036cc <uartstart+0x68>
    8000368c:	100005b7          	lui	a1,0x10000
    80003690:	00003817          	auipc	a6,0x3
    80003694:	47080813          	addi	a6,a6,1136 # 80006b00 <uart_tx_buf>
    80003698:	01c0006f          	j	800036b4 <uartstart+0x50>
    8000369c:	0006c703          	lbu	a4,0(a3)
    800036a0:	00f63023          	sd	a5,0(a2)
    800036a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036a8:	00063783          	ld	a5,0(a2)
    800036ac:	00053703          	ld	a4,0(a0)
    800036b0:	00f70e63          	beq	a4,a5,800036cc <uartstart+0x68>
    800036b4:	01f7f713          	andi	a4,a5,31
    800036b8:	00e806b3          	add	a3,a6,a4
    800036bc:	0055c703          	lbu	a4,5(a1)
    800036c0:	00178793          	addi	a5,a5,1
    800036c4:	02077713          	andi	a4,a4,32
    800036c8:	fc071ae3          	bnez	a4,8000369c <uartstart+0x38>
    800036cc:	00813403          	ld	s0,8(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <uartgetc>:
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00813423          	sd	s0,8(sp)
    800036e0:	01010413          	addi	s0,sp,16
    800036e4:	10000737          	lui	a4,0x10000
    800036e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800036ec:	0017f793          	andi	a5,a5,1
    800036f0:	00078c63          	beqz	a5,80003708 <uartgetc+0x30>
    800036f4:	00074503          	lbu	a0,0(a4)
    800036f8:	0ff57513          	andi	a0,a0,255
    800036fc:	00813403          	ld	s0,8(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret
    80003708:	fff00513          	li	a0,-1
    8000370c:	ff1ff06f          	j	800036fc <uartgetc+0x24>

0000000080003710 <uartintr>:
    80003710:	100007b7          	lui	a5,0x10000
    80003714:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003718:	0017f793          	andi	a5,a5,1
    8000371c:	0a078463          	beqz	a5,800037c4 <uartintr+0xb4>
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	00113c23          	sd	ra,24(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	100004b7          	lui	s1,0x10000
    80003738:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000373c:	0ff57513          	andi	a0,a0,255
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	534080e7          	jalr	1332(ra) # 80002c74 <consoleintr>
    80003748:	0054c783          	lbu	a5,5(s1)
    8000374c:	0017f793          	andi	a5,a5,1
    80003750:	fe0794e3          	bnez	a5,80003738 <uartintr+0x28>
    80003754:	00002617          	auipc	a2,0x2
    80003758:	12c60613          	addi	a2,a2,300 # 80005880 <uart_tx_r>
    8000375c:	00002517          	auipc	a0,0x2
    80003760:	12c50513          	addi	a0,a0,300 # 80005888 <uart_tx_w>
    80003764:	00063783          	ld	a5,0(a2)
    80003768:	00053703          	ld	a4,0(a0)
    8000376c:	04f70263          	beq	a4,a5,800037b0 <uartintr+0xa0>
    80003770:	100005b7          	lui	a1,0x10000
    80003774:	00003817          	auipc	a6,0x3
    80003778:	38c80813          	addi	a6,a6,908 # 80006b00 <uart_tx_buf>
    8000377c:	01c0006f          	j	80003798 <uartintr+0x88>
    80003780:	0006c703          	lbu	a4,0(a3)
    80003784:	00f63023          	sd	a5,0(a2)
    80003788:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000378c:	00063783          	ld	a5,0(a2)
    80003790:	00053703          	ld	a4,0(a0)
    80003794:	00f70e63          	beq	a4,a5,800037b0 <uartintr+0xa0>
    80003798:	01f7f713          	andi	a4,a5,31
    8000379c:	00e806b3          	add	a3,a6,a4
    800037a0:	0055c703          	lbu	a4,5(a1)
    800037a4:	00178793          	addi	a5,a5,1
    800037a8:	02077713          	andi	a4,a4,32
    800037ac:	fc071ae3          	bnez	a4,80003780 <uartintr+0x70>
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	02010113          	addi	sp,sp,32
    800037c0:	00008067          	ret
    800037c4:	00002617          	auipc	a2,0x2
    800037c8:	0bc60613          	addi	a2,a2,188 # 80005880 <uart_tx_r>
    800037cc:	00002517          	auipc	a0,0x2
    800037d0:	0bc50513          	addi	a0,a0,188 # 80005888 <uart_tx_w>
    800037d4:	00063783          	ld	a5,0(a2)
    800037d8:	00053703          	ld	a4,0(a0)
    800037dc:	04f70263          	beq	a4,a5,80003820 <uartintr+0x110>
    800037e0:	100005b7          	lui	a1,0x10000
    800037e4:	00003817          	auipc	a6,0x3
    800037e8:	31c80813          	addi	a6,a6,796 # 80006b00 <uart_tx_buf>
    800037ec:	01c0006f          	j	80003808 <uartintr+0xf8>
    800037f0:	0006c703          	lbu	a4,0(a3)
    800037f4:	00f63023          	sd	a5,0(a2)
    800037f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800037fc:	00063783          	ld	a5,0(a2)
    80003800:	00053703          	ld	a4,0(a0)
    80003804:	02f70063          	beq	a4,a5,80003824 <uartintr+0x114>
    80003808:	01f7f713          	andi	a4,a5,31
    8000380c:	00e806b3          	add	a3,a6,a4
    80003810:	0055c703          	lbu	a4,5(a1)
    80003814:	00178793          	addi	a5,a5,1
    80003818:	02077713          	andi	a4,a4,32
    8000381c:	fc071ae3          	bnez	a4,800037f0 <uartintr+0xe0>
    80003820:	00008067          	ret
    80003824:	00008067          	ret

0000000080003828 <kinit>:
    80003828:	fc010113          	addi	sp,sp,-64
    8000382c:	02913423          	sd	s1,40(sp)
    80003830:	fffff7b7          	lui	a5,0xfffff
    80003834:	00004497          	auipc	s1,0x4
    80003838:	2eb48493          	addi	s1,s1,747 # 80007b1f <end+0xfff>
    8000383c:	02813823          	sd	s0,48(sp)
    80003840:	01313c23          	sd	s3,24(sp)
    80003844:	00f4f4b3          	and	s1,s1,a5
    80003848:	02113c23          	sd	ra,56(sp)
    8000384c:	03213023          	sd	s2,32(sp)
    80003850:	01413823          	sd	s4,16(sp)
    80003854:	01513423          	sd	s5,8(sp)
    80003858:	04010413          	addi	s0,sp,64
    8000385c:	000017b7          	lui	a5,0x1
    80003860:	01100993          	li	s3,17
    80003864:	00f487b3          	add	a5,s1,a5
    80003868:	01b99993          	slli	s3,s3,0x1b
    8000386c:	06f9e063          	bltu	s3,a5,800038cc <kinit+0xa4>
    80003870:	00003a97          	auipc	s5,0x3
    80003874:	2b0a8a93          	addi	s5,s5,688 # 80006b20 <end>
    80003878:	0754ec63          	bltu	s1,s5,800038f0 <kinit+0xc8>
    8000387c:	0734fa63          	bgeu	s1,s3,800038f0 <kinit+0xc8>
    80003880:	00088a37          	lui	s4,0x88
    80003884:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003888:	00002917          	auipc	s2,0x2
    8000388c:	00890913          	addi	s2,s2,8 # 80005890 <kmem>
    80003890:	00ca1a13          	slli	s4,s4,0xc
    80003894:	0140006f          	j	800038a8 <kinit+0x80>
    80003898:	000017b7          	lui	a5,0x1
    8000389c:	00f484b3          	add	s1,s1,a5
    800038a0:	0554e863          	bltu	s1,s5,800038f0 <kinit+0xc8>
    800038a4:	0534f663          	bgeu	s1,s3,800038f0 <kinit+0xc8>
    800038a8:	00001637          	lui	a2,0x1
    800038ac:	00100593          	li	a1,1
    800038b0:	00048513          	mv	a0,s1
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	5e4080e7          	jalr	1508(ra) # 80003e98 <__memset>
    800038bc:	00093783          	ld	a5,0(s2)
    800038c0:	00f4b023          	sd	a5,0(s1)
    800038c4:	00993023          	sd	s1,0(s2)
    800038c8:	fd4498e3          	bne	s1,s4,80003898 <kinit+0x70>
    800038cc:	03813083          	ld	ra,56(sp)
    800038d0:	03013403          	ld	s0,48(sp)
    800038d4:	02813483          	ld	s1,40(sp)
    800038d8:	02013903          	ld	s2,32(sp)
    800038dc:	01813983          	ld	s3,24(sp)
    800038e0:	01013a03          	ld	s4,16(sp)
    800038e4:	00813a83          	ld	s5,8(sp)
    800038e8:	04010113          	addi	sp,sp,64
    800038ec:	00008067          	ret
    800038f0:	00002517          	auipc	a0,0x2
    800038f4:	99850513          	addi	a0,a0,-1640 # 80005288 <digits+0x18>
    800038f8:	fffff097          	auipc	ra,0xfffff
    800038fc:	4b4080e7          	jalr	1204(ra) # 80002dac <panic>

0000000080003900 <freerange>:
    80003900:	fc010113          	addi	sp,sp,-64
    80003904:	000017b7          	lui	a5,0x1
    80003908:	02913423          	sd	s1,40(sp)
    8000390c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003910:	009504b3          	add	s1,a0,s1
    80003914:	fffff537          	lui	a0,0xfffff
    80003918:	02813823          	sd	s0,48(sp)
    8000391c:	02113c23          	sd	ra,56(sp)
    80003920:	03213023          	sd	s2,32(sp)
    80003924:	01313c23          	sd	s3,24(sp)
    80003928:	01413823          	sd	s4,16(sp)
    8000392c:	01513423          	sd	s5,8(sp)
    80003930:	01613023          	sd	s6,0(sp)
    80003934:	04010413          	addi	s0,sp,64
    80003938:	00a4f4b3          	and	s1,s1,a0
    8000393c:	00f487b3          	add	a5,s1,a5
    80003940:	06f5e463          	bltu	a1,a5,800039a8 <freerange+0xa8>
    80003944:	00003a97          	auipc	s5,0x3
    80003948:	1dca8a93          	addi	s5,s5,476 # 80006b20 <end>
    8000394c:	0954e263          	bltu	s1,s5,800039d0 <freerange+0xd0>
    80003950:	01100993          	li	s3,17
    80003954:	01b99993          	slli	s3,s3,0x1b
    80003958:	0734fc63          	bgeu	s1,s3,800039d0 <freerange+0xd0>
    8000395c:	00058a13          	mv	s4,a1
    80003960:	00002917          	auipc	s2,0x2
    80003964:	f3090913          	addi	s2,s2,-208 # 80005890 <kmem>
    80003968:	00002b37          	lui	s6,0x2
    8000396c:	0140006f          	j	80003980 <freerange+0x80>
    80003970:	000017b7          	lui	a5,0x1
    80003974:	00f484b3          	add	s1,s1,a5
    80003978:	0554ec63          	bltu	s1,s5,800039d0 <freerange+0xd0>
    8000397c:	0534fa63          	bgeu	s1,s3,800039d0 <freerange+0xd0>
    80003980:	00001637          	lui	a2,0x1
    80003984:	00100593          	li	a1,1
    80003988:	00048513          	mv	a0,s1
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	50c080e7          	jalr	1292(ra) # 80003e98 <__memset>
    80003994:	00093703          	ld	a4,0(s2)
    80003998:	016487b3          	add	a5,s1,s6
    8000399c:	00e4b023          	sd	a4,0(s1)
    800039a0:	00993023          	sd	s1,0(s2)
    800039a4:	fcfa76e3          	bgeu	s4,a5,80003970 <freerange+0x70>
    800039a8:	03813083          	ld	ra,56(sp)
    800039ac:	03013403          	ld	s0,48(sp)
    800039b0:	02813483          	ld	s1,40(sp)
    800039b4:	02013903          	ld	s2,32(sp)
    800039b8:	01813983          	ld	s3,24(sp)
    800039bc:	01013a03          	ld	s4,16(sp)
    800039c0:	00813a83          	ld	s5,8(sp)
    800039c4:	00013b03          	ld	s6,0(sp)
    800039c8:	04010113          	addi	sp,sp,64
    800039cc:	00008067          	ret
    800039d0:	00002517          	auipc	a0,0x2
    800039d4:	8b850513          	addi	a0,a0,-1864 # 80005288 <digits+0x18>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	3d4080e7          	jalr	980(ra) # 80002dac <panic>

00000000800039e0 <kfree>:
    800039e0:	fe010113          	addi	sp,sp,-32
    800039e4:	00813823          	sd	s0,16(sp)
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	00913423          	sd	s1,8(sp)
    800039f0:	02010413          	addi	s0,sp,32
    800039f4:	03451793          	slli	a5,a0,0x34
    800039f8:	04079c63          	bnez	a5,80003a50 <kfree+0x70>
    800039fc:	00003797          	auipc	a5,0x3
    80003a00:	12478793          	addi	a5,a5,292 # 80006b20 <end>
    80003a04:	00050493          	mv	s1,a0
    80003a08:	04f56463          	bltu	a0,a5,80003a50 <kfree+0x70>
    80003a0c:	01100793          	li	a5,17
    80003a10:	01b79793          	slli	a5,a5,0x1b
    80003a14:	02f57e63          	bgeu	a0,a5,80003a50 <kfree+0x70>
    80003a18:	00001637          	lui	a2,0x1
    80003a1c:	00100593          	li	a1,1
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	478080e7          	jalr	1144(ra) # 80003e98 <__memset>
    80003a28:	00002797          	auipc	a5,0x2
    80003a2c:	e6878793          	addi	a5,a5,-408 # 80005890 <kmem>
    80003a30:	0007b703          	ld	a4,0(a5)
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00e4b023          	sd	a4,0(s1)
    80003a40:	0097b023          	sd	s1,0(a5)
    80003a44:	00813483          	ld	s1,8(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret
    80003a50:	00002517          	auipc	a0,0x2
    80003a54:	83850513          	addi	a0,a0,-1992 # 80005288 <digits+0x18>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	354080e7          	jalr	852(ra) # 80002dac <panic>

0000000080003a60 <kalloc>:
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	00113c23          	sd	ra,24(sp)
    80003a70:	02010413          	addi	s0,sp,32
    80003a74:	00002797          	auipc	a5,0x2
    80003a78:	e1c78793          	addi	a5,a5,-484 # 80005890 <kmem>
    80003a7c:	0007b483          	ld	s1,0(a5)
    80003a80:	02048063          	beqz	s1,80003aa0 <kalloc+0x40>
    80003a84:	0004b703          	ld	a4,0(s1)
    80003a88:	00001637          	lui	a2,0x1
    80003a8c:	00500593          	li	a1,5
    80003a90:	00048513          	mv	a0,s1
    80003a94:	00e7b023          	sd	a4,0(a5)
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	400080e7          	jalr	1024(ra) # 80003e98 <__memset>
    80003aa0:	01813083          	ld	ra,24(sp)
    80003aa4:	01013403          	ld	s0,16(sp)
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	02010113          	addi	sp,sp,32
    80003ab4:	00008067          	ret

0000000080003ab8 <initlock>:
    80003ab8:	ff010113          	addi	sp,sp,-16
    80003abc:	00813423          	sd	s0,8(sp)
    80003ac0:	01010413          	addi	s0,sp,16
    80003ac4:	00813403          	ld	s0,8(sp)
    80003ac8:	00b53423          	sd	a1,8(a0)
    80003acc:	00052023          	sw	zero,0(a0)
    80003ad0:	00053823          	sd	zero,16(a0)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret

0000000080003adc <acquire>:
    80003adc:	fe010113          	addi	sp,sp,-32
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	01213023          	sd	s2,0(sp)
    80003af0:	02010413          	addi	s0,sp,32
    80003af4:	00050493          	mv	s1,a0
    80003af8:	10002973          	csrr	s2,sstatus
    80003afc:	100027f3          	csrr	a5,sstatus
    80003b00:	ffd7f793          	andi	a5,a5,-3
    80003b04:	10079073          	csrw	sstatus,a5
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	8ec080e7          	jalr	-1812(ra) # 800023f4 <mycpu>
    80003b10:	07852783          	lw	a5,120(a0)
    80003b14:	06078e63          	beqz	a5,80003b90 <acquire+0xb4>
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	8dc080e7          	jalr	-1828(ra) # 800023f4 <mycpu>
    80003b20:	07852783          	lw	a5,120(a0)
    80003b24:	0004a703          	lw	a4,0(s1)
    80003b28:	0017879b          	addiw	a5,a5,1
    80003b2c:	06f52c23          	sw	a5,120(a0)
    80003b30:	04071063          	bnez	a4,80003b70 <acquire+0x94>
    80003b34:	00100713          	li	a4,1
    80003b38:	00070793          	mv	a5,a4
    80003b3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003b40:	0007879b          	sext.w	a5,a5
    80003b44:	fe079ae3          	bnez	a5,80003b38 <acquire+0x5c>
    80003b48:	0ff0000f          	fence
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	8a8080e7          	jalr	-1880(ra) # 800023f4 <mycpu>
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00a4b823          	sd	a0,16(s1)
    80003b60:	00013903          	ld	s2,0(sp)
    80003b64:	00813483          	ld	s1,8(sp)
    80003b68:	02010113          	addi	sp,sp,32
    80003b6c:	00008067          	ret
    80003b70:	0104b903          	ld	s2,16(s1)
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	880080e7          	jalr	-1920(ra) # 800023f4 <mycpu>
    80003b7c:	faa91ce3          	bne	s2,a0,80003b34 <acquire+0x58>
    80003b80:	00001517          	auipc	a0,0x1
    80003b84:	71050513          	addi	a0,a0,1808 # 80005290 <digits+0x20>
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	224080e7          	jalr	548(ra) # 80002dac <panic>
    80003b90:	00195913          	srli	s2,s2,0x1
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	860080e7          	jalr	-1952(ra) # 800023f4 <mycpu>
    80003b9c:	00197913          	andi	s2,s2,1
    80003ba0:	07252e23          	sw	s2,124(a0)
    80003ba4:	f75ff06f          	j	80003b18 <acquire+0x3c>

0000000080003ba8 <release>:
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00813823          	sd	s0,16(sp)
    80003bb0:	00113c23          	sd	ra,24(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	01213023          	sd	s2,0(sp)
    80003bbc:	02010413          	addi	s0,sp,32
    80003bc0:	00052783          	lw	a5,0(a0)
    80003bc4:	00079a63          	bnez	a5,80003bd8 <release+0x30>
    80003bc8:	00001517          	auipc	a0,0x1
    80003bcc:	6d050513          	addi	a0,a0,1744 # 80005298 <digits+0x28>
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	1dc080e7          	jalr	476(ra) # 80002dac <panic>
    80003bd8:	01053903          	ld	s2,16(a0)
    80003bdc:	00050493          	mv	s1,a0
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	814080e7          	jalr	-2028(ra) # 800023f4 <mycpu>
    80003be8:	fea910e3          	bne	s2,a0,80003bc8 <release+0x20>
    80003bec:	0004b823          	sd	zero,16(s1)
    80003bf0:	0ff0000f          	fence
    80003bf4:	0f50000f          	fence	iorw,ow
    80003bf8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	7f8080e7          	jalr	2040(ra) # 800023f4 <mycpu>
    80003c04:	100027f3          	csrr	a5,sstatus
    80003c08:	0027f793          	andi	a5,a5,2
    80003c0c:	04079a63          	bnez	a5,80003c60 <release+0xb8>
    80003c10:	07852783          	lw	a5,120(a0)
    80003c14:	02f05e63          	blez	a5,80003c50 <release+0xa8>
    80003c18:	fff7871b          	addiw	a4,a5,-1
    80003c1c:	06e52c23          	sw	a4,120(a0)
    80003c20:	00071c63          	bnez	a4,80003c38 <release+0x90>
    80003c24:	07c52783          	lw	a5,124(a0)
    80003c28:	00078863          	beqz	a5,80003c38 <release+0x90>
    80003c2c:	100027f3          	csrr	a5,sstatus
    80003c30:	0027e793          	ori	a5,a5,2
    80003c34:	10079073          	csrw	sstatus,a5
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	00013903          	ld	s2,0(sp)
    80003c48:	02010113          	addi	sp,sp,32
    80003c4c:	00008067          	ret
    80003c50:	00001517          	auipc	a0,0x1
    80003c54:	66850513          	addi	a0,a0,1640 # 800052b8 <digits+0x48>
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	154080e7          	jalr	340(ra) # 80002dac <panic>
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	64050513          	addi	a0,a0,1600 # 800052a0 <digits+0x30>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	144080e7          	jalr	324(ra) # 80002dac <panic>

0000000080003c70 <holding>:
    80003c70:	00052783          	lw	a5,0(a0)
    80003c74:	00079663          	bnez	a5,80003c80 <holding+0x10>
    80003c78:	00000513          	li	a0,0
    80003c7c:	00008067          	ret
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00813823          	sd	s0,16(sp)
    80003c88:	00913423          	sd	s1,8(sp)
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	02010413          	addi	s0,sp,32
    80003c94:	01053483          	ld	s1,16(a0)
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	75c080e7          	jalr	1884(ra) # 800023f4 <mycpu>
    80003ca0:	01813083          	ld	ra,24(sp)
    80003ca4:	01013403          	ld	s0,16(sp)
    80003ca8:	40a48533          	sub	a0,s1,a0
    80003cac:	00153513          	seqz	a0,a0
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	02010113          	addi	sp,sp,32
    80003cb8:	00008067          	ret

0000000080003cbc <push_off>:
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00813823          	sd	s0,16(sp)
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	100024f3          	csrr	s1,sstatus
    80003cd4:	100027f3          	csrr	a5,sstatus
    80003cd8:	ffd7f793          	andi	a5,a5,-3
    80003cdc:	10079073          	csrw	sstatus,a5
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	714080e7          	jalr	1812(ra) # 800023f4 <mycpu>
    80003ce8:	07852783          	lw	a5,120(a0)
    80003cec:	02078663          	beqz	a5,80003d18 <push_off+0x5c>
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	704080e7          	jalr	1796(ra) # 800023f4 <mycpu>
    80003cf8:	07852783          	lw	a5,120(a0)
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	01013403          	ld	s0,16(sp)
    80003d04:	0017879b          	addiw	a5,a5,1
    80003d08:	06f52c23          	sw	a5,120(a0)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret
    80003d18:	0014d493          	srli	s1,s1,0x1
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	6d8080e7          	jalr	1752(ra) # 800023f4 <mycpu>
    80003d24:	0014f493          	andi	s1,s1,1
    80003d28:	06952e23          	sw	s1,124(a0)
    80003d2c:	fc5ff06f          	j	80003cf0 <push_off+0x34>

0000000080003d30 <pop_off>:
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00813023          	sd	s0,0(sp)
    80003d38:	00113423          	sd	ra,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	6b4080e7          	jalr	1716(ra) # 800023f4 <mycpu>
    80003d48:	100027f3          	csrr	a5,sstatus
    80003d4c:	0027f793          	andi	a5,a5,2
    80003d50:	04079663          	bnez	a5,80003d9c <pop_off+0x6c>
    80003d54:	07852783          	lw	a5,120(a0)
    80003d58:	02f05a63          	blez	a5,80003d8c <pop_off+0x5c>
    80003d5c:	fff7871b          	addiw	a4,a5,-1
    80003d60:	06e52c23          	sw	a4,120(a0)
    80003d64:	00071c63          	bnez	a4,80003d7c <pop_off+0x4c>
    80003d68:	07c52783          	lw	a5,124(a0)
    80003d6c:	00078863          	beqz	a5,80003d7c <pop_off+0x4c>
    80003d70:	100027f3          	csrr	a5,sstatus
    80003d74:	0027e793          	ori	a5,a5,2
    80003d78:	10079073          	csrw	sstatus,a5
    80003d7c:	00813083          	ld	ra,8(sp)
    80003d80:	00013403          	ld	s0,0(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret
    80003d8c:	00001517          	auipc	a0,0x1
    80003d90:	52c50513          	addi	a0,a0,1324 # 800052b8 <digits+0x48>
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	018080e7          	jalr	24(ra) # 80002dac <panic>
    80003d9c:	00001517          	auipc	a0,0x1
    80003da0:	50450513          	addi	a0,a0,1284 # 800052a0 <digits+0x30>
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	008080e7          	jalr	8(ra) # 80002dac <panic>

0000000080003dac <push_on>:
    80003dac:	fe010113          	addi	sp,sp,-32
    80003db0:	00813823          	sd	s0,16(sp)
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00913423          	sd	s1,8(sp)
    80003dbc:	02010413          	addi	s0,sp,32
    80003dc0:	100024f3          	csrr	s1,sstatus
    80003dc4:	100027f3          	csrr	a5,sstatus
    80003dc8:	0027e793          	ori	a5,a5,2
    80003dcc:	10079073          	csrw	sstatus,a5
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	624080e7          	jalr	1572(ra) # 800023f4 <mycpu>
    80003dd8:	07852783          	lw	a5,120(a0)
    80003ddc:	02078663          	beqz	a5,80003e08 <push_on+0x5c>
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	614080e7          	jalr	1556(ra) # 800023f4 <mycpu>
    80003de8:	07852783          	lw	a5,120(a0)
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	0017879b          	addiw	a5,a5,1
    80003df8:	06f52c23          	sw	a5,120(a0)
    80003dfc:	00813483          	ld	s1,8(sp)
    80003e00:	02010113          	addi	sp,sp,32
    80003e04:	00008067          	ret
    80003e08:	0014d493          	srli	s1,s1,0x1
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	5e8080e7          	jalr	1512(ra) # 800023f4 <mycpu>
    80003e14:	0014f493          	andi	s1,s1,1
    80003e18:	06952e23          	sw	s1,124(a0)
    80003e1c:	fc5ff06f          	j	80003de0 <push_on+0x34>

0000000080003e20 <pop_on>:
    80003e20:	ff010113          	addi	sp,sp,-16
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	01010413          	addi	s0,sp,16
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	5c4080e7          	jalr	1476(ra) # 800023f4 <mycpu>
    80003e38:	100027f3          	csrr	a5,sstatus
    80003e3c:	0027f793          	andi	a5,a5,2
    80003e40:	04078463          	beqz	a5,80003e88 <pop_on+0x68>
    80003e44:	07852783          	lw	a5,120(a0)
    80003e48:	02f05863          	blez	a5,80003e78 <pop_on+0x58>
    80003e4c:	fff7879b          	addiw	a5,a5,-1
    80003e50:	06f52c23          	sw	a5,120(a0)
    80003e54:	07853783          	ld	a5,120(a0)
    80003e58:	00079863          	bnez	a5,80003e68 <pop_on+0x48>
    80003e5c:	100027f3          	csrr	a5,sstatus
    80003e60:	ffd7f793          	andi	a5,a5,-3
    80003e64:	10079073          	csrw	sstatus,a5
    80003e68:	00813083          	ld	ra,8(sp)
    80003e6c:	00013403          	ld	s0,0(sp)
    80003e70:	01010113          	addi	sp,sp,16
    80003e74:	00008067          	ret
    80003e78:	00001517          	auipc	a0,0x1
    80003e7c:	46850513          	addi	a0,a0,1128 # 800052e0 <digits+0x70>
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	f2c080e7          	jalr	-212(ra) # 80002dac <panic>
    80003e88:	00001517          	auipc	a0,0x1
    80003e8c:	43850513          	addi	a0,a0,1080 # 800052c0 <digits+0x50>
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	f1c080e7          	jalr	-228(ra) # 80002dac <panic>

0000000080003e98 <__memset>:
    80003e98:	ff010113          	addi	sp,sp,-16
    80003e9c:	00813423          	sd	s0,8(sp)
    80003ea0:	01010413          	addi	s0,sp,16
    80003ea4:	1a060e63          	beqz	a2,80004060 <__memset+0x1c8>
    80003ea8:	40a007b3          	neg	a5,a0
    80003eac:	0077f793          	andi	a5,a5,7
    80003eb0:	00778693          	addi	a3,a5,7
    80003eb4:	00b00813          	li	a6,11
    80003eb8:	0ff5f593          	andi	a1,a1,255
    80003ebc:	fff6071b          	addiw	a4,a2,-1
    80003ec0:	1b06e663          	bltu	a3,a6,8000406c <__memset+0x1d4>
    80003ec4:	1cd76463          	bltu	a4,a3,8000408c <__memset+0x1f4>
    80003ec8:	1a078e63          	beqz	a5,80004084 <__memset+0x1ec>
    80003ecc:	00b50023          	sb	a1,0(a0)
    80003ed0:	00100713          	li	a4,1
    80003ed4:	1ae78463          	beq	a5,a4,8000407c <__memset+0x1e4>
    80003ed8:	00b500a3          	sb	a1,1(a0)
    80003edc:	00200713          	li	a4,2
    80003ee0:	1ae78a63          	beq	a5,a4,80004094 <__memset+0x1fc>
    80003ee4:	00b50123          	sb	a1,2(a0)
    80003ee8:	00300713          	li	a4,3
    80003eec:	18e78463          	beq	a5,a4,80004074 <__memset+0x1dc>
    80003ef0:	00b501a3          	sb	a1,3(a0)
    80003ef4:	00400713          	li	a4,4
    80003ef8:	1ae78263          	beq	a5,a4,8000409c <__memset+0x204>
    80003efc:	00b50223          	sb	a1,4(a0)
    80003f00:	00500713          	li	a4,5
    80003f04:	1ae78063          	beq	a5,a4,800040a4 <__memset+0x20c>
    80003f08:	00b502a3          	sb	a1,5(a0)
    80003f0c:	00700713          	li	a4,7
    80003f10:	18e79e63          	bne	a5,a4,800040ac <__memset+0x214>
    80003f14:	00b50323          	sb	a1,6(a0)
    80003f18:	00700e93          	li	t4,7
    80003f1c:	00859713          	slli	a4,a1,0x8
    80003f20:	00e5e733          	or	a4,a1,a4
    80003f24:	01059e13          	slli	t3,a1,0x10
    80003f28:	01c76e33          	or	t3,a4,t3
    80003f2c:	01859313          	slli	t1,a1,0x18
    80003f30:	006e6333          	or	t1,t3,t1
    80003f34:	02059893          	slli	a7,a1,0x20
    80003f38:	40f60e3b          	subw	t3,a2,a5
    80003f3c:	011368b3          	or	a7,t1,a7
    80003f40:	02859813          	slli	a6,a1,0x28
    80003f44:	0108e833          	or	a6,a7,a6
    80003f48:	03059693          	slli	a3,a1,0x30
    80003f4c:	003e589b          	srliw	a7,t3,0x3
    80003f50:	00d866b3          	or	a3,a6,a3
    80003f54:	03859713          	slli	a4,a1,0x38
    80003f58:	00389813          	slli	a6,a7,0x3
    80003f5c:	00f507b3          	add	a5,a0,a5
    80003f60:	00e6e733          	or	a4,a3,a4
    80003f64:	000e089b          	sext.w	a7,t3
    80003f68:	00f806b3          	add	a3,a6,a5
    80003f6c:	00e7b023          	sd	a4,0(a5)
    80003f70:	00878793          	addi	a5,a5,8
    80003f74:	fed79ce3          	bne	a5,a3,80003f6c <__memset+0xd4>
    80003f78:	ff8e7793          	andi	a5,t3,-8
    80003f7c:	0007871b          	sext.w	a4,a5
    80003f80:	01d787bb          	addw	a5,a5,t4
    80003f84:	0ce88e63          	beq	a7,a4,80004060 <__memset+0x1c8>
    80003f88:	00f50733          	add	a4,a0,a5
    80003f8c:	00b70023          	sb	a1,0(a4)
    80003f90:	0017871b          	addiw	a4,a5,1
    80003f94:	0cc77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003f98:	00e50733          	add	a4,a0,a4
    80003f9c:	00b70023          	sb	a1,0(a4)
    80003fa0:	0027871b          	addiw	a4,a5,2
    80003fa4:	0ac77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fa8:	00e50733          	add	a4,a0,a4
    80003fac:	00b70023          	sb	a1,0(a4)
    80003fb0:	0037871b          	addiw	a4,a5,3
    80003fb4:	0ac77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fb8:	00e50733          	add	a4,a0,a4
    80003fbc:	00b70023          	sb	a1,0(a4)
    80003fc0:	0047871b          	addiw	a4,a5,4
    80003fc4:	08c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fc8:	00e50733          	add	a4,a0,a4
    80003fcc:	00b70023          	sb	a1,0(a4)
    80003fd0:	0057871b          	addiw	a4,a5,5
    80003fd4:	08c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fd8:	00e50733          	add	a4,a0,a4
    80003fdc:	00b70023          	sb	a1,0(a4)
    80003fe0:	0067871b          	addiw	a4,a5,6
    80003fe4:	06c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003fe8:	00e50733          	add	a4,a0,a4
    80003fec:	00b70023          	sb	a1,0(a4)
    80003ff0:	0077871b          	addiw	a4,a5,7
    80003ff4:	06c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80003ff8:	00e50733          	add	a4,a0,a4
    80003ffc:	00b70023          	sb	a1,0(a4)
    80004000:	0087871b          	addiw	a4,a5,8
    80004004:	04c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004008:	00e50733          	add	a4,a0,a4
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0097871b          	addiw	a4,a5,9
    80004014:	04c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	00a7871b          	addiw	a4,a5,10
    80004024:	02c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	00b7871b          	addiw	a4,a5,11
    80004034:	02c77663          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	00c7871b          	addiw	a4,a5,12
    80004044:	00c77e63          	bgeu	a4,a2,80004060 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	00d7879b          	addiw	a5,a5,13
    80004054:	00c7f663          	bgeu	a5,a2,80004060 <__memset+0x1c8>
    80004058:	00f507b3          	add	a5,a0,a5
    8000405c:	00b78023          	sb	a1,0(a5)
    80004060:	00813403          	ld	s0,8(sp)
    80004064:	01010113          	addi	sp,sp,16
    80004068:	00008067          	ret
    8000406c:	00b00693          	li	a3,11
    80004070:	e55ff06f          	j	80003ec4 <__memset+0x2c>
    80004074:	00300e93          	li	t4,3
    80004078:	ea5ff06f          	j	80003f1c <__memset+0x84>
    8000407c:	00100e93          	li	t4,1
    80004080:	e9dff06f          	j	80003f1c <__memset+0x84>
    80004084:	00000e93          	li	t4,0
    80004088:	e95ff06f          	j	80003f1c <__memset+0x84>
    8000408c:	00000793          	li	a5,0
    80004090:	ef9ff06f          	j	80003f88 <__memset+0xf0>
    80004094:	00200e93          	li	t4,2
    80004098:	e85ff06f          	j	80003f1c <__memset+0x84>
    8000409c:	00400e93          	li	t4,4
    800040a0:	e7dff06f          	j	80003f1c <__memset+0x84>
    800040a4:	00500e93          	li	t4,5
    800040a8:	e75ff06f          	j	80003f1c <__memset+0x84>
    800040ac:	00600e93          	li	t4,6
    800040b0:	e6dff06f          	j	80003f1c <__memset+0x84>

00000000800040b4 <__memmove>:
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00813423          	sd	s0,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
    800040c0:	0e060863          	beqz	a2,800041b0 <__memmove+0xfc>
    800040c4:	fff6069b          	addiw	a3,a2,-1
    800040c8:	0006881b          	sext.w	a6,a3
    800040cc:	0ea5e863          	bltu	a1,a0,800041bc <__memmove+0x108>
    800040d0:	00758713          	addi	a4,a1,7
    800040d4:	00a5e7b3          	or	a5,a1,a0
    800040d8:	40a70733          	sub	a4,a4,a0
    800040dc:	0077f793          	andi	a5,a5,7
    800040e0:	00f73713          	sltiu	a4,a4,15
    800040e4:	00174713          	xori	a4,a4,1
    800040e8:	0017b793          	seqz	a5,a5
    800040ec:	00e7f7b3          	and	a5,a5,a4
    800040f0:	10078863          	beqz	a5,80004200 <__memmove+0x14c>
    800040f4:	00900793          	li	a5,9
    800040f8:	1107f463          	bgeu	a5,a6,80004200 <__memmove+0x14c>
    800040fc:	0036581b          	srliw	a6,a2,0x3
    80004100:	fff8081b          	addiw	a6,a6,-1
    80004104:	02081813          	slli	a6,a6,0x20
    80004108:	01d85893          	srli	a7,a6,0x1d
    8000410c:	00858813          	addi	a6,a1,8
    80004110:	00058793          	mv	a5,a1
    80004114:	00050713          	mv	a4,a0
    80004118:	01088833          	add	a6,a7,a6
    8000411c:	0007b883          	ld	a7,0(a5)
    80004120:	00878793          	addi	a5,a5,8
    80004124:	00870713          	addi	a4,a4,8
    80004128:	ff173c23          	sd	a7,-8(a4)
    8000412c:	ff0798e3          	bne	a5,a6,8000411c <__memmove+0x68>
    80004130:	ff867713          	andi	a4,a2,-8
    80004134:	02071793          	slli	a5,a4,0x20
    80004138:	0207d793          	srli	a5,a5,0x20
    8000413c:	00f585b3          	add	a1,a1,a5
    80004140:	40e686bb          	subw	a3,a3,a4
    80004144:	00f507b3          	add	a5,a0,a5
    80004148:	06e60463          	beq	a2,a4,800041b0 <__memmove+0xfc>
    8000414c:	0005c703          	lbu	a4,0(a1)
    80004150:	00e78023          	sb	a4,0(a5)
    80004154:	04068e63          	beqz	a3,800041b0 <__memmove+0xfc>
    80004158:	0015c603          	lbu	a2,1(a1)
    8000415c:	00100713          	li	a4,1
    80004160:	00c780a3          	sb	a2,1(a5)
    80004164:	04e68663          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004168:	0025c603          	lbu	a2,2(a1)
    8000416c:	00200713          	li	a4,2
    80004170:	00c78123          	sb	a2,2(a5)
    80004174:	02e68e63          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004178:	0035c603          	lbu	a2,3(a1)
    8000417c:	00300713          	li	a4,3
    80004180:	00c781a3          	sb	a2,3(a5)
    80004184:	02e68663          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004188:	0045c603          	lbu	a2,4(a1)
    8000418c:	00400713          	li	a4,4
    80004190:	00c78223          	sb	a2,4(a5)
    80004194:	00e68e63          	beq	a3,a4,800041b0 <__memmove+0xfc>
    80004198:	0055c603          	lbu	a2,5(a1)
    8000419c:	00500713          	li	a4,5
    800041a0:	00c782a3          	sb	a2,5(a5)
    800041a4:	00e68663          	beq	a3,a4,800041b0 <__memmove+0xfc>
    800041a8:	0065c703          	lbu	a4,6(a1)
    800041ac:	00e78323          	sb	a4,6(a5)
    800041b0:	00813403          	ld	s0,8(sp)
    800041b4:	01010113          	addi	sp,sp,16
    800041b8:	00008067          	ret
    800041bc:	02061713          	slli	a4,a2,0x20
    800041c0:	02075713          	srli	a4,a4,0x20
    800041c4:	00e587b3          	add	a5,a1,a4
    800041c8:	f0f574e3          	bgeu	a0,a5,800040d0 <__memmove+0x1c>
    800041cc:	02069613          	slli	a2,a3,0x20
    800041d0:	02065613          	srli	a2,a2,0x20
    800041d4:	fff64613          	not	a2,a2
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00c78633          	add	a2,a5,a2
    800041e0:	fff7c683          	lbu	a3,-1(a5)
    800041e4:	fff78793          	addi	a5,a5,-1
    800041e8:	fff70713          	addi	a4,a4,-1
    800041ec:	00d70023          	sb	a3,0(a4)
    800041f0:	fec798e3          	bne	a5,a2,800041e0 <__memmove+0x12c>
    800041f4:	00813403          	ld	s0,8(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret
    80004200:	02069713          	slli	a4,a3,0x20
    80004204:	02075713          	srli	a4,a4,0x20
    80004208:	00170713          	addi	a4,a4,1
    8000420c:	00e50733          	add	a4,a0,a4
    80004210:	00050793          	mv	a5,a0
    80004214:	0005c683          	lbu	a3,0(a1)
    80004218:	00178793          	addi	a5,a5,1
    8000421c:	00158593          	addi	a1,a1,1
    80004220:	fed78fa3          	sb	a3,-1(a5)
    80004224:	fee798e3          	bne	a5,a4,80004214 <__memmove+0x160>
    80004228:	f89ff06f          	j	800041b0 <__memmove+0xfc>

000000008000422c <__putc>:
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	00050793          	mv	a5,a0
    80004240:	fef40593          	addi	a1,s0,-17
    80004244:	00100613          	li	a2,1
    80004248:	00000513          	li	a0,0
    8000424c:	fef407a3          	sb	a5,-17(s0)
    80004250:	fffff097          	auipc	ra,0xfffff
    80004254:	b3c080e7          	jalr	-1220(ra) # 80002d8c <console_write>
    80004258:	01813083          	ld	ra,24(sp)
    8000425c:	01013403          	ld	s0,16(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret

0000000080004268 <__getc>:
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00113c23          	sd	ra,24(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	fe840593          	addi	a1,s0,-24
    8000427c:	00100613          	li	a2,1
    80004280:	00000513          	li	a0,0
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	ae8080e7          	jalr	-1304(ra) # 80002d6c <console_read>
    8000428c:	fe844503          	lbu	a0,-24(s0)
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	02010113          	addi	sp,sp,32
    8000429c:	00008067          	ret

00000000800042a0 <console_handler>:
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	00813823          	sd	s0,16(sp)
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	02010413          	addi	s0,sp,32
    800042b4:	14202773          	csrr	a4,scause
    800042b8:	100027f3          	csrr	a5,sstatus
    800042bc:	0027f793          	andi	a5,a5,2
    800042c0:	06079e63          	bnez	a5,8000433c <console_handler+0x9c>
    800042c4:	00074c63          	bltz	a4,800042dc <console_handler+0x3c>
    800042c8:	01813083          	ld	ra,24(sp)
    800042cc:	01013403          	ld	s0,16(sp)
    800042d0:	00813483          	ld	s1,8(sp)
    800042d4:	02010113          	addi	sp,sp,32
    800042d8:	00008067          	ret
    800042dc:	0ff77713          	andi	a4,a4,255
    800042e0:	00900793          	li	a5,9
    800042e4:	fef712e3          	bne	a4,a5,800042c8 <console_handler+0x28>
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	6dc080e7          	jalr	1756(ra) # 800029c4 <plic_claim>
    800042f0:	00a00793          	li	a5,10
    800042f4:	00050493          	mv	s1,a0
    800042f8:	02f50c63          	beq	a0,a5,80004330 <console_handler+0x90>
    800042fc:	fc0506e3          	beqz	a0,800042c8 <console_handler+0x28>
    80004300:	00050593          	mv	a1,a0
    80004304:	00001517          	auipc	a0,0x1
    80004308:	ee450513          	addi	a0,a0,-284 # 800051e8 <_ZZ12printIntegermE6digits+0xf8>
    8000430c:	fffff097          	auipc	ra,0xfffff
    80004310:	afc080e7          	jalr	-1284(ra) # 80002e08 <__printf>
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	01813083          	ld	ra,24(sp)
    8000431c:	00048513          	mv	a0,s1
    80004320:	00813483          	ld	s1,8(sp)
    80004324:	02010113          	addi	sp,sp,32
    80004328:	ffffe317          	auipc	t1,0xffffe
    8000432c:	6d430067          	jr	1748(t1) # 800029fc <plic_complete>
    80004330:	fffff097          	auipc	ra,0xfffff
    80004334:	3e0080e7          	jalr	992(ra) # 80003710 <uartintr>
    80004338:	fddff06f          	j	80004314 <console_handler+0x74>
    8000433c:	00001517          	auipc	a0,0x1
    80004340:	fac50513          	addi	a0,a0,-84 # 800052e8 <digits+0x78>
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	a68080e7          	jalr	-1432(ra) # 80002dac <panic>
	...
