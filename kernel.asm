
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8f013103          	ld	sp,-1808(sp) # 800058f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	22c020ef          	jal	ra,80002248 <start>

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
    80001088:	7e0000ef          	jal	ra,80001868 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011d4:	c70080e7          	jalr	-912(ra) # 80001e40 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011d8:	00001097          	auipc	ra,0x1
    800011dc:	a78080e7          	jalr	-1416(ra) # 80001c50 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000121c:	c5c080e7          	jalr	-932(ra) # 80001e74 <_Z11printStringPKc>
    printInteger((uint64) *handle);
    80001220:	fc843783          	ld	a5,-56(s0)
    80001224:	0007b503          	ld	a0,0(a5)
    80001228:	00001097          	auipc	ra,0x1
    8000122c:	cbc080e7          	jalr	-836(ra) # 80001ee4 <_Z12printIntegerm>
    printString("\n");
    80001230:	00004517          	auipc	a0,0x4
    80001234:	e2050513          	addi	a0,a0,-480 # 80005050 <CONSOLE_STATUS+0x40>
    80001238:	00001097          	auipc	ra,0x1
    8000123c:	c3c080e7          	jalr	-964(ra) # 80001e74 <_Z11printStringPKc>

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
    8000137c:	afc080e7          	jalr	-1284(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(i);
    80001380:	00048513          	mv	a0,s1
    80001384:	00001097          	auipc	ra,0x1
    80001388:	b60080e7          	jalr	-1184(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    8000138c:	00004517          	auipc	a0,0x4
    80001390:	cc450513          	addi	a0,a0,-828 # 80005050 <CONSOLE_STATUS+0x40>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	ae0080e7          	jalr	-1312(ra) # 80001e74 <_Z11printStringPKc>
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
    80001414:	a64080e7          	jalr	-1436(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(i);
    80001418:	00048513          	mv	a0,s1
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	ac8080e7          	jalr	-1336(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c2c50513          	addi	a0,a0,-980 # 80005050 <CONSOLE_STATUS+0x40>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	a48080e7          	jalr	-1464(ra) # 80001e74 <_Z11printStringPKc>
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
    8000147c:	9fc080e7          	jalr	-1540(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(i);
    80001480:	00048513          	mv	a0,s1
    80001484:	00001097          	auipc	ra,0x1
    80001488:	a60080e7          	jalr	-1440(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bc450513          	addi	a0,a0,-1084 # 80005050 <CONSOLE_STATUS+0x40>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	9e0080e7          	jalr	-1568(ra) # 80001e74 <_Z11printStringPKc>
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
    800014b8:	9c0080e7          	jalr	-1600(ra) # 80001e74 <_Z11printStringPKc>
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
    800014d8:	9a0080e7          	jalr	-1632(ra) # 80001e74 <_Z11printStringPKc>
    printInteger(t1);
    800014dc:	00090513          	mv	a0,s2
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	a04080e7          	jalr	-1532(ra) # 80001ee4 <_Z12printIntegerm>
    printString("\n");
    800014e8:	00004517          	auipc	a0,0x4
    800014ec:	b6850513          	addi	a0,a0,-1176 # 80005050 <CONSOLE_STATUS+0x40>
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	984080e7          	jalr	-1660(ra) # 80001e74 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014f8:	00c00513          	li	a0,12
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	db0080e7          	jalr	-592(ra) # 800012ac <_ZL9fibonaccim>
    80001504:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	b5850513          	addi	a0,a0,-1192 # 80005060 <CONSOLE_STATUS+0x50>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	964080e7          	jalr	-1692(ra) # 80001e74 <_Z11printStringPKc>
    printInteger(result);
    80001518:	00090513          	mv	a0,s2
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	9c8080e7          	jalr	-1592(ra) # 80001ee4 <_Z12printIntegerm>
    printString("\n");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b2c50513          	addi	a0,a0,-1236 # 80005050 <CONSOLE_STATUS+0x40>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	948080e7          	jalr	-1720(ra) # 80001e74 <_Z11printStringPKc>
    80001534:	0380006f          	j	8000156c <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001538:	00004517          	auipc	a0,0x4
    8000153c:	b0850513          	addi	a0,a0,-1272 # 80005040 <CONSOLE_STATUS+0x30>
    80001540:	00001097          	auipc	ra,0x1
    80001544:	934080e7          	jalr	-1740(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(i);
    80001548:	00048513          	mv	a0,s1
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	998080e7          	jalr	-1640(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    80001554:	00004517          	auipc	a0,0x4
    80001558:	afc50513          	addi	a0,a0,-1284 # 80005050 <CONSOLE_STATUS+0x40>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	918080e7          	jalr	-1768(ra) # 80001e74 <_Z11printStringPKc>
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
    800015b8:	8c0080e7          	jalr	-1856(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(i);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	924080e7          	jalr	-1756(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    800015c8:	00004517          	auipc	a0,0x4
    800015cc:	a8850513          	addi	a0,a0,-1400 # 80005050 <CONSOLE_STATUS+0x40>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	8a4080e7          	jalr	-1884(ra) # 80001e74 <_Z11printStringPKc>
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
    800015f4:	884080e7          	jalr	-1916(ra) # 80001e74 <_Z11printStringPKc>
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
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	858080e7          	jalr	-1960(ra) # 80001e74 <_Z11printStringPKc>
    printInteger(result);
    80001624:	00090513          	mv	a0,s2
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	8bc080e7          	jalr	-1860(ra) # 80001ee4 <_Z12printIntegerm>
    printString("\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a2050513          	addi	a0,a0,-1504 # 80005050 <CONSOLE_STATUS+0x40>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	83c080e7          	jalr	-1988(ra) # 80001e74 <_Z11printStringPKc>
    80001640:	0380006f          	j	80001678 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001644:	00004517          	auipc	a0,0x4
    80001648:	a2c50513          	addi	a0,a0,-1492 # 80005070 <CONSOLE_STATUS+0x60>
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	828080e7          	jalr	-2008(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(i);
    80001654:	00048513          	mv	a0,s1
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	88c080e7          	jalr	-1908(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	9f050513          	addi	a0,a0,-1552 # 80005050 <CONSOLE_STATUS+0x40>
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	80c080e7          	jalr	-2036(ra) # 80001e74 <_Z11printStringPKc>
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

0000000080001698 <_Z4testPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

void test(void*)
{
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00113423          	sd	ra,8(sp)
    800016a0:	00813023          	sd	s0,0(sp)
    800016a4:	01010413          	addi	s0,sp,16
    printString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
    800016a8:	00004517          	auipc	a0,0x4
    800016ac:	9f050513          	addi	a0,a0,-1552 # 80005098 <CONSOLE_STATUS+0x88>
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	7c4080e7          	jalr	1988(ra) # 80001e74 <_Z11printStringPKc>
}
    800016b8:	00813083          	ld	ra,8(sp)
    800016bc:	00013403          	ld	s0,0(sp)
    800016c0:	01010113          	addi	sp,sp,16
    800016c4:	00008067          	ret

00000000800016c8 <_Z5test2Pv>:

void test2(void*)
{
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
    int i = 0;
    800016dc:	00000493          	li	s1,0
    800016e0:	0100006f          	j	800016f0 <_Z5test2Pv+0x28>
    while(i < 100)
    {
        printInteger(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	ba0080e7          	jalr	-1120(ra) # 80001284 <_Z15thread_dispatchv>

        i++;
    800016ec:	0014849b          	addiw	s1,s1,1
    while(i < 100)
    800016f0:	06300793          	li	a5,99
    800016f4:	0297c863          	blt	a5,s1,80001724 <_Z5test2Pv+0x5c>
        printInteger(i);
    800016f8:	00048513          	mv	a0,s1
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	7e8080e7          	jalr	2024(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    80001704:	00004517          	auipc	a0,0x4
    80001708:	94c50513          	addi	a0,a0,-1716 # 80005050 <CONSOLE_STATUS+0x40>
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	768080e7          	jalr	1896(ra) # 80001e74 <_Z11printStringPKc>
        if (i % 10 == 0)
    80001714:	00a00793          	li	a5,10
    80001718:	02f4e7bb          	remw	a5,s1,a5
    8000171c:	fc0798e3          	bnez	a5,800016ec <_Z5test2Pv+0x24>
    80001720:	fc5ff06f          	j	800016e4 <_Z5test2Pv+0x1c>
    }
}
    80001724:	01813083          	ld	ra,24(sp)
    80001728:	01013403          	ld	s0,16(sp)
    8000172c:	00813483          	ld	s1,8(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret

0000000080001738 <_Z8userMainv>:

void userMain()
{
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	02010413          	addi	s0,sp,32
    __putc('1');
    80001748:	03100513          	li	a0,49
    8000174c:	00003097          	auipc	ra,0x3
    80001750:	bc0080e7          	jalr	-1088(ra) # 8000430c <__putc>
    __putc('\n');
    80001754:	00a00513          	li	a0,10
    80001758:	00003097          	auipc	ra,0x3
    8000175c:	bb4080e7          	jalr	-1100(ra) # 8000430c <__putc>

    thread_t handle2 = nullptr;
    80001760:	fe043423          	sd	zero,-24(s0)
    thread_t handle3 = nullptr;
    80001764:	fe043023          	sd	zero,-32(s0)

    //handle2 = (_thread**) mem_alloc(sizeof(_thread*));
    //handle3 = (_thread**) mem_alloc(sizeof(_thread*));

    thread_create(&handle2, test, nullptr);
    80001768:	00000613          	li	a2,0
    8000176c:	00000597          	auipc	a1,0x0
    80001770:	f2c58593          	addi	a1,a1,-212 # 80001698 <_Z4testPv>
    80001774:	fe840513          	addi	a0,s0,-24
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	a38080e7          	jalr	-1480(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&handle3, test2, nullptr);
    80001780:	00000613          	li	a2,0
    80001784:	00000597          	auipc	a1,0x0
    80001788:	f4458593          	addi	a1,a1,-188 # 800016c8 <_Z5test2Pv>
    8000178c:	fe040513          	addi	a0,s0,-32
    80001790:	00000097          	auipc	ra,0x0
    80001794:	a20080e7          	jalr	-1504(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>
    80001798:	00c0006f          	j	800017a4 <_Z8userMainv+0x6c>

    while(!handle2->finished || !handle3->finished)
        thread_dispatch();
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	ae8080e7          	jalr	-1304(ra) # 80001284 <_Z15thread_dispatchv>
    while(!handle2->finished || !handle3->finished)
    800017a4:	fe843783          	ld	a5,-24(s0)
    800017a8:	0087c783          	lbu	a5,8(a5)
    800017ac:	fe0788e3          	beqz	a5,8000179c <_Z8userMainv+0x64>
    800017b0:	fe043783          	ld	a5,-32(s0)
    800017b4:	0087c783          	lbu	a5,8(a5)
    800017b8:	fe0782e3          	beqz	a5,8000179c <_Z8userMainv+0x64>

    printString("Finished!\n");
    800017bc:	00004517          	auipc	a0,0x4
    800017c0:	90450513          	addi	a0,a0,-1788 # 800050c0 <CONSOLE_STATUS+0xb0>
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	6b0080e7          	jalr	1712(ra) # 80001e74 <_Z11printStringPKc>
}
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret

00000000800017dc <main>:



void main(void*)
{
    800017dc:	fe010113          	addi	sp,sp,-32
    800017e0:	00113c23          	sd	ra,24(sp)
    800017e4:	00813823          	sd	s0,16(sp)
    800017e8:	02010413          	addi	s0,sp,32
    MemoryAllocator::initialise();
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	3f4080e7          	jalr	1012(ra) # 80001be0 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800017f4:	00004797          	auipc	a5,0x4
    800017f8:	0f47b783          	ld	a5,244(a5) # 800058e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800017fc:	10579073          	csrw	stvec,a5
    thread_t handle = nullptr;
    80001800:	fe043423          	sd	zero,-24(s0)

//    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread**));
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);

    thread_create(&handle, nullptr, nullptr);
    80001804:	00000613          	li	a2,0
    80001808:	00000593          	li	a1,0
    8000180c:	fe840513          	addi	a0,s0,-24
    80001810:	00000097          	auipc	ra,0x0
    80001814:	9a0080e7          	jalr	-1632(ra) # 800011b0 <_Z13thread_createPP7_threadPFvPvES2_>

//    printString("Main Thread handle: ");
//    printInteger((size_t)*handle);
//    printString("\n");

    _thread::running = handle;
    80001818:	00004797          	auipc	a5,0x4
    8000181c:	0c87b783          	ld	a5,200(a5) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001820:	fe843703          	ld	a4,-24(s0)
    80001824:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001828:	00200793          	li	a5,2
    8000182c:	1007a073          	csrs	sstatus,a5
//    printInteger(retVal);
//    printString("\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    80001830:	00000097          	auipc	ra,0x0
    80001834:	f08080e7          	jalr	-248(ra) # 80001738 <_Z8userMainv>

    // thread_exit();
}
    80001838:	01813083          	ld	ra,24(sp)
    8000183c:	01013403          	ld	s0,16(sp)
    80001840:	02010113          	addi	sp,sp,32
    80001844:	00008067          	ret

0000000080001848 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"

#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001854:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001858:	10200073          	sret
}
    8000185c:	00813403          	ld	s0,8(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001868:	f7010113          	addi	sp,sp,-144
    8000186c:	08113423          	sd	ra,136(sp)
    80001870:	08813023          	sd	s0,128(sp)
    80001874:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    80001878:	faa43823          	sd	a0,-80(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    8000187c:	fab43c23          	sd	a1,-72(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    80001880:	fcc43023          	sd	a2,-64(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80001884:	fcd43423          	sd	a3,-56(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80001888:	fce43823          	sd	a4,-48(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    8000188c:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    80001890:	ff043023          	sd	a6,-32(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80001894:	ff143423          	sd	a7,-24(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001898:	141027f3          	csrr	a5,sepc
    8000189c:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800018a0:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    800018a4:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800018a8:	100027f3          	csrr	a5,sstatus
    800018ac:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    800018b0:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    800018b4:	faf43023          	sd	a5,-96(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    800018b8:	140027f3          	csrr	a5,sscratch
    800018bc:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800018c0:	142027f3          	csrr	a5,scause
    800018c4:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    800018c8:	f7843783          	ld	a5,-136(s0)

    uint64 volatile scause = r_scause();
    800018cc:	f8f43823          	sd	a5,-112(s0)

//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800018d0:	f9043703          	ld	a4,-112(s0)
    800018d4:	00800793          	li	a5,8
    800018d8:	08f70863          	beq	a4,a5,80001968 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    800018dc:	f9043703          	ld	a4,-112(s0)
    800018e0:	00900793          	li	a5,9
    800018e4:	08f70263          	beq	a4,a5,80001968 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    800018e8:	f9043703          	ld	a4,-112(s0)
    800018ec:	fff00793          	li	a5,-1
    800018f0:	03f79793          	slli	a5,a5,0x3f
    800018f4:	00178793          	addi	a5,a5,1
    800018f8:	16f70c63          	beq	a4,a5,80001a70 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
//            _thread::threadDispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
    }
    else if (scause == 0x8000000000000009UL)
    800018fc:	f9043703          	ld	a4,-112(s0)
    80001900:	fff00793          	li	a5,-1
    80001904:	03f79793          	slli	a5,a5,0x3f
    80001908:	00978793          	addi	a5,a5,9
    8000190c:	16f70863          	beq	a4,a5,80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        console_handler();

    }
    else
    {
        printInteger(scause);
    80001910:	f9043503          	ld	a0,-112(s0)
    80001914:	00000097          	auipc	ra,0x0
    80001918:	5d0080e7          	jalr	1488(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    8000191c:	00003517          	auipc	a0,0x3
    80001920:	73450513          	addi	a0,a0,1844 # 80005050 <CONSOLE_STATUS+0x40>
    80001924:	00000097          	auipc	ra,0x0
    80001928:	550080e7          	jalr	1360(ra) # 80001e74 <_Z11printStringPKc>
        printString("sepc = ");
    8000192c:	00003517          	auipc	a0,0x3
    80001930:	7b450513          	addi	a0,a0,1972 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001934:	00000097          	auipc	ra,0x0
    80001938:	540080e7          	jalr	1344(ra) # 80001e74 <_Z11printStringPKc>
        printInteger(sepc);
    8000193c:	fa843503          	ld	a0,-88(s0)
    80001940:	00000097          	auipc	ra,0x0
    80001944:	5a4080e7          	jalr	1444(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\nUnexpected trap cause!\n");
    80001948:	00003517          	auipc	a0,0x3
    8000194c:	7a050513          	addi	a0,a0,1952 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001950:	00000097          	auipc	ra,0x0
    80001954:	524080e7          	jalr	1316(ra) # 80001e74 <_Z11printStringPKc>
        // unexpected trap cause
    }
    80001958:	08813083          	ld	ra,136(sp)
    8000195c:	08013403          	ld	s0,128(sp)
    80001960:	09010113          	addi	sp,sp,144
    80001964:	00008067          	ret
        sepc = sepc + 4;
    80001968:	fa843783          	ld	a5,-88(s0)
    8000196c:	00478793          	addi	a5,a5,4
    80001970:	faf43423          	sd	a5,-88(s0)
        w_sepc(sepc);
    80001974:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001978:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    8000197c:	fb043783          	ld	a5,-80(s0)
    80001980:	00100713          	li	a4,1
    80001984:	06e78063          	beq	a5,a4,800019e4 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        else if (a[0] == 0x0000000000000002UL)
    80001988:	00200713          	li	a4,2
    8000198c:	06e78e63          	beq	a5,a4,80001a08 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if (a[0] == 0x0000000000000011UL)
    80001990:	01100713          	li	a4,17
    80001994:	08e78863          	beq	a5,a4,80001a24 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
        else if (a[0] == 0x0000000000000012UL)
    80001998:	01200713          	li	a4,18
    8000199c:	0ae78863          	beq	a5,a4,80001a4c <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        else if (a[0] == 0x0000000000000013UL)
    800019a0:	01300713          	li	a4,19
    800019a4:	fae79ae3          	bne	a5,a4,80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->timeSlice = 0;
    800019a8:	00004797          	auipc	a5,0x4
    800019ac:	f387b783          	ld	a5,-200(a5) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	720080e7          	jalr	1824(ra) # 800020d8 <_ZN7_thread14threadDispatchEv>
            printString("Dispatched!\n");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	71050513          	addi	a0,a0,1808 # 800050d0 <CONSOLE_STATUS+0xc0>
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	4ac080e7          	jalr	1196(ra) # 80001e74 <_Z11printStringPKc>
            w_sstatus(sstatus);
    800019d0:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800019d4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800019d8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800019dc:	14179073          	csrw	sepc,a5
}
    800019e0:	f79ff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    800019e4:	fb843503          	ld	a0,-72(s0)
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	458080e7          	jalr	1112(ra) # 80001e40 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	260080e7          	jalr	608(ra) # 80001c50 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800019f8:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    800019fc:	f9843783          	ld	a5,-104(s0)
    80001a00:	04a7b823          	sd	a0,80(a5)
    80001a04:	f55ff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = MemoryAllocator::mem_free(ptr);
    80001a08:	fb843503          	ld	a0,-72(s0)
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	36c080e7          	jalr	876(ra) # 80001d78 <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a14:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001a18:	f9843783          	ld	a5,-104(s0)
    80001a1c:	04a7b823          	sd	a0,80(a5)
    80001a20:	f39ff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80001a24:	fd043683          	ld	a3,-48(s0)
    80001a28:	fc843603          	ld	a2,-56(s0)
    80001a2c:	fc043583          	ld	a1,-64(s0)
    80001a30:	fb843503          	ld	a0,-72(s0)
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	5b0080e7          	jalr	1456(ra) # 80001fe4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a3c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001a40:	f9843783          	ld	a5,-104(s0)
    80001a44:	04a7b823          	sd	a0,80(a5)
    80001a48:	f11ff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            _thread::running->finished = true;
    80001a4c:	00004797          	auipc	a5,0x4
    80001a50:	e947b783          	ld	a5,-364(a5) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a54:	0007b783          	ld	a5,0(a5)
    80001a58:	00100713          	li	a4,1
    80001a5c:	00e78423          	sb	a4,8(a5)
            _thread::threadDispatch();
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	678080e7          	jalr	1656(ra) # 800020d8 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001a68:	00050793          	mv	a5,a0
    80001a6c:	eedff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001a70:	00200793          	li	a5,2
    80001a74:	1447b073          	csrc	sip,a5
}
    80001a78:	ee1ff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        console_handler();
    80001a7c:	00003097          	auipc	ra,0x3
    80001a80:	904080e7          	jalr	-1788(ra) # 80004380 <console_handler>
    80001a84:	ed5ff06f          	j	80001958 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080001a88 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    80001a94:	00100793          	li	a5,1
    80001a98:	00f50863          	beq	a0,a5,80001aa8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001a9c:	00813403          	ld	s0,8(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret
    80001aa8:	000107b7          	lui	a5,0x10
    80001aac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ab0:	fef596e3          	bne	a1,a5,80001a9c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001ab4:	00004797          	auipc	a5,0x4
    80001ab8:	e9c78793          	addi	a5,a5,-356 # 80005950 <_ZN9Scheduler16readyThreadQueueE>
    80001abc:	0007b023          	sd	zero,0(a5)
    80001ac0:	0007b423          	sd	zero,8(a5)
    80001ac4:	fd9ff06f          	j	80001a9c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ac8 <_ZN9Scheduler3getEv>:
{
    80001ac8:	fe010113          	addi	sp,sp,-32
    80001acc:	00113c23          	sd	ra,24(sp)
    80001ad0:	00813823          	sd	s0,16(sp)
    80001ad4:	00913423          	sd	s1,8(sp)
    80001ad8:	02010413          	addi	s0,sp,32
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	e7453503          	ld	a0,-396(a0) # 80005950 <_ZN9Scheduler16readyThreadQueueE>
    80001ae4:	04050663          	beqz	a0,80001b30 <_ZN9Scheduler3getEv+0x68>
        return head->data;
    80001ae8:	00053483          	ld	s1,0(a0)
    if (readyThreadQueue.peekFirst() != 0)
    80001aec:	02048063          	beqz	s1,80001b0c <_ZN9Scheduler3getEv+0x44>
        head = head->next;
    80001af0:	00853783          	ld	a5,8(a0)
    80001af4:	00004717          	auipc	a4,0x4
    80001af8:	e4f73e23          	sd	a5,-420(a4) # 80005950 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001afc:	02078463          	beqz	a5,80001b24 <_ZN9Scheduler3getEv+0x5c>
        T *ret = elem->data;
    80001b00:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	274080e7          	jalr	628(ra) # 80001d78 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b0c:	00048513          	mv	a0,s1
    80001b10:	01813083          	ld	ra,24(sp)
    80001b14:	01013403          	ld	s0,16(sp)
    80001b18:	00813483          	ld	s1,8(sp)
    80001b1c:	02010113          	addi	sp,sp,32
    80001b20:	00008067          	ret
        if (!head) { tail = 0; }
    80001b24:	00004797          	auipc	a5,0x4
    80001b28:	e207ba23          	sd	zero,-460(a5) # 80005958 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b2c:	fd5ff06f          	j	80001b00 <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    80001b30:	00050493          	mv	s1,a0
    80001b34:	fd9ff06f          	j	80001b0c <_ZN9Scheduler3getEv+0x44>

0000000080001b38 <_ZN9Scheduler3putEP7_thread>:
{
    80001b38:	fe010113          	addi	sp,sp,-32
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	00813823          	sd	s0,16(sp)
    80001b44:	00913423          	sd	s1,8(sp)
    80001b48:	02010413          	addi	s0,sp,32
    80001b4c:	00050493          	mv	s1,a0
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80001b50:	01000513          	li	a0,16
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	2ec080e7          	jalr	748(ra) # 80001e40 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	0f4080e7          	jalr	244(ra) # 80001c50 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001b64:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80001b68:	00053423          	sd	zero,8(a0)
        if (tail)
    80001b6c:	00004797          	auipc	a5,0x4
    80001b70:	dec7b783          	ld	a5,-532(a5) # 80005958 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b74:	02078263          	beqz	a5,80001b98 <_ZN9Scheduler3putEP7_thread+0x60>
            tail->next = elem;
    80001b78:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b7c:	00004797          	auipc	a5,0x4
    80001b80:	dca7be23          	sd	a0,-548(a5) # 80005958 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b84:	01813083          	ld	ra,24(sp)
    80001b88:	01013403          	ld	s0,16(sp)
    80001b8c:	00813483          	ld	s1,8(sp)
    80001b90:	02010113          	addi	sp,sp,32
    80001b94:	00008067          	ret
            head = tail = elem;
    80001b98:	00004797          	auipc	a5,0x4
    80001b9c:	db878793          	addi	a5,a5,-584 # 80005950 <_ZN9Scheduler16readyThreadQueueE>
    80001ba0:	00a7b423          	sd	a0,8(a5)
    80001ba4:	00a7b023          	sd	a0,0(a5)
    80001ba8:	fddff06f          	j	80001b84 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080001bac <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00113423          	sd	ra,8(sp)
    80001bb4:	00813023          	sd	s0,0(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	000105b7          	lui	a1,0x10
    80001bc0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001bc4:	00100513          	li	a0,1
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	ec0080e7          	jalr	-320(ra) # 80001a88 <_Z41__static_initialization_and_destruction_0ii>
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00013403          	ld	s0,0(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001bec:	00004797          	auipc	a5,0x4
    80001bf0:	cec7b783          	ld	a5,-788(a5) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bf4:	0007b703          	ld	a4,0(a5)
    80001bf8:	fc077713          	andi	a4,a4,-64
    80001bfc:	04070613          	addi	a2,a4,64
    80001c00:	00004797          	auipc	a5,0x4
    80001c04:	d6078793          	addi	a5,a5,-672 # 80005960 <_ZN15MemoryAllocator8memStartE>
    80001c08:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001c0c:	00004697          	auipc	a3,0x4
    80001c10:	cf46b683          	ld	a3,-780(a3) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c14:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001c18:	fc06f693          	andi	a3,a3,-64
    80001c1c:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001c20:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001c24:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001c28:	0107b683          	ld	a3,16(a5)
    80001c2c:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001c30:	0087b703          	ld	a4,8(a5)
    80001c34:	0007b783          	ld	a5,0(a5)
    80001c38:	40f707b3          	sub	a5,a4,a5
    80001c3c:	0067d793          	srli	a5,a5,0x6
    80001c40:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001c44:	00813403          	ld	s0,8(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00813423          	sd	s0,8(sp)
    80001c58:	01010413          	addi	s0,sp,16
    if (size == 0)
    80001c5c:	0a050463          	beqz	a0,80001d04 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80001c60:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001c64:	00004697          	auipc	a3,0x4
    80001c68:	d0c6b683          	ld	a3,-756(a3) # 80005970 <_ZN15MemoryAllocator4headE>
    80001c6c:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001c70:	04050e63          	beqz	a0,80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001c74:	01053783          	ld	a5,16(a0)
    80001c78:	00e7fa63          	bgeu	a5,a4,80001c8c <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80001c7c:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001c80:	fea698e3          	bne	a3,a0,80001c70 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80001c84:	00000513          	li	a0,0
    80001c88:	0440006f          	j	80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    80001c8c:	40e787b3          	sub	a5,a5,a4
    80001c90:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80001c94:	02079263          	bnez	a5,80001cb8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    80001c98:	04d50063          	beq	a0,a3,80001cd8 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001c9c:	00053783          	ld	a5,0(a0)
    80001ca0:	04078463          	beqz	a5,80001ce8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80001ca4:	00853683          	ld	a3,8(a0)
    80001ca8:	04068063          	beqz	a3,80001ce8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    80001cac:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80001cb0:	00853683          	ld	a3,8(a0)
    80001cb4:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    80001cb8:	01053783          	ld	a5,16(a0)
    80001cbc:	00679793          	slli	a5,a5,0x6
    80001cc0:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    80001cc4:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001cc8:	00878513          	addi	a0,a5,8
}
    80001ccc:	00813403          	ld	s0,8(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001cd8:	0006b783          	ld	a5,0(a3)
    80001cdc:	00004697          	auipc	a3,0x4
    80001ce0:	c8f6ba23          	sd	a5,-876(a3) # 80005970 <_ZN15MemoryAllocator4headE>
    80001ce4:	fb9ff06f          	j	80001c9c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    80001ce8:	00853683          	ld	a3,8(a0)
    80001cec:	00068663          	beqz	a3,80001cf8 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80001cf0:	0006b023          	sd	zero,0(a3)
    80001cf4:	fc5ff06f          	j	80001cb8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    80001cf8:	fc0780e3          	beqz	a5,80001cb8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80001cfc:	0007b423          	sd	zero,8(a5)
    80001d00:	fb9ff06f          	j	80001cb8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80001d04:	00000513          	li	a0,0
    80001d08:	fc5ff06f          	j	80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080001d0c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001d18:	04050863          	beqz	a0,80001d68 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001d1c:	00053783          	ld	a5,0(a0)
    80001d20:	04078863          	beqz	a5,80001d70 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001d24:	01053683          	ld	a3,16(a0)
    80001d28:	00669713          	slli	a4,a3,0x6
    80001d2c:	00e50733          	add	a4,a0,a4
    80001d30:	00f70a63          	beq	a4,a5,80001d44 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001d34:	00000513          	li	a0,0
    }
}
    80001d38:	00813403          	ld	s0,8(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret
        curr->size += curr->next->size;
    80001d44:	0107b703          	ld	a4,16(a5)
    80001d48:	00e686b3          	add	a3,a3,a4
    80001d4c:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001d50:	0007b783          	ld	a5,0(a5)
    80001d54:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001d58:	00078463          	beqz	a5,80001d60 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001d5c:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001d60:	00100513          	li	a0,1
    80001d64:	fd5ff06f          	j	80001d38 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001d68:	00000513          	li	a0,0
    80001d6c:	fcdff06f          	j	80001d38 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001d70:	00000513          	li	a0,0
    80001d74:	fc5ff06f          	j	80001d38 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001d78 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    80001d78:	0c050063          	beqz	a0,80001e38 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    80001d7c:	fe010113          	addi	sp,sp,-32
    80001d80:	00113c23          	sd	ra,24(sp)
    80001d84:	00813823          	sd	s0,16(sp)
    80001d88:	00913423          	sd	s1,8(sp)
    80001d8c:	02010413          	addi	s0,sp,32
    80001d90:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80001d94:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80001d98:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001d9c:	00004697          	auipc	a3,0x4
    80001da0:	bd46b683          	ld	a3,-1068(a3) # 80005970 <_ZN15MemoryAllocator4headE>
    80001da4:	02068063          	beqz	a3,80001dc4 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    80001da8:	02d56263          	bltu	a0,a3,80001dcc <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001dac:	00068793          	mv	a5,a3
    80001db0:	00078493          	mv	s1,a5
    80001db4:	0007b783          	ld	a5,0(a5)
    80001db8:	00078c63          	beqz	a5,80001dd0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001dbc:	fea7eae3          	bltu	a5,a0,80001db0 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    80001dc0:	0100006f          	j	80001dd0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    80001dc4:	00068493          	mv	s1,a3
    80001dc8:	0080006f          	j	80001dd0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001dcc:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001dd0:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80001dd4:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80001dd8:	04048663          	beqz	s1,80001e24 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80001ddc:	0004b783          	ld	a5,0(s1)
    80001de0:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001de4:	ff873783          	ld	a5,-8(a4)
    80001de8:	00078463          	beqz	a5,80001df0 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80001dec:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001df0:	02048e63          	beqz	s1,80001e2c <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80001df4:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	f14080e7          	jalr	-236(ra) # 80001d0c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001e00:	00048513          	mv	a0,s1
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	f08080e7          	jalr	-248(ra) # 80001d0c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80001e0c:	00000513          	li	a0,0
}
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001e24:	fed73c23          	sd	a3,-8(a4)
    80001e28:	fbdff06f          	j	80001de4 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    80001e2c:	00004797          	auipc	a5,0x4
    80001e30:	b4a7b223          	sd	a0,-1212(a5) # 80005970 <_ZN15MemoryAllocator4headE>
    80001e34:	fc5ff06f          	j	80001df8 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    80001e38:	fff00513          	li	a0,-1
}
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001e4c:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001e50:	03f57793          	andi	a5,a0,63
    80001e54:	00078c63          	beqz	a5,80001e6c <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001e58:	00655513          	srli	a0,a0,0x6
    80001e5c:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80001e60:	00813403          	ld	s0,8(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001e6c:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80001e70:	ff1ff06f          	j	80001e60 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080001e74 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e74:	fd010113          	addi	sp,sp,-48
    80001e78:	02113423          	sd	ra,40(sp)
    80001e7c:	02813023          	sd	s0,32(sp)
    80001e80:	00913c23          	sd	s1,24(sp)
    80001e84:	01213823          	sd	s2,16(sp)
    80001e88:	03010413          	addi	s0,sp,48
    80001e8c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e90:	100027f3          	csrr	a5,sstatus
    80001e94:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e98:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e9c:	00200793          	li	a5,2
    80001ea0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001ea4:	0004c503          	lbu	a0,0(s1)
    80001ea8:	00050a63          	beqz	a0,80001ebc <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001eac:	00002097          	auipc	ra,0x2
    80001eb0:	460080e7          	jalr	1120(ra) # 8000430c <__putc>
        string++;
    80001eb4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001eb8:	fedff06f          	j	80001ea4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001ebc:	0009091b          	sext.w	s2,s2
    80001ec0:	00297913          	andi	s2,s2,2
    80001ec4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ec8:	10092073          	csrs	sstatus,s2
}
    80001ecc:	02813083          	ld	ra,40(sp)
    80001ed0:	02013403          	ld	s0,32(sp)
    80001ed4:	01813483          	ld	s1,24(sp)
    80001ed8:	01013903          	ld	s2,16(sp)
    80001edc:	03010113          	addi	sp,sp,48
    80001ee0:	00008067          	ret

0000000080001ee4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ee4:	fc010113          	addi	sp,sp,-64
    80001ee8:	02113c23          	sd	ra,56(sp)
    80001eec:	02813823          	sd	s0,48(sp)
    80001ef0:	02913423          	sd	s1,40(sp)
    80001ef4:	03213023          	sd	s2,32(sp)
    80001ef8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001efc:	100027f3          	csrr	a5,sstatus
    80001f00:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f04:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f08:	00200793          	li	a5,2
    80001f0c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f10:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001f14:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001f18:	00a00613          	li	a2,10
    80001f1c:	02c5773b          	remuw	a4,a0,a2
    80001f20:	02071693          	slli	a3,a4,0x20
    80001f24:	0206d693          	srli	a3,a3,0x20
    80001f28:	00003717          	auipc	a4,0x3
    80001f2c:	1e070713          	addi	a4,a4,480 # 80005108 <_ZZ12printIntegermE6digits>
    80001f30:	00d70733          	add	a4,a4,a3
    80001f34:	00074703          	lbu	a4,0(a4)
    80001f38:	fe040693          	addi	a3,s0,-32
    80001f3c:	009687b3          	add	a5,a3,s1
    80001f40:	0014849b          	addiw	s1,s1,1
    80001f44:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001f48:	0005071b          	sext.w	a4,a0
    80001f4c:	02c5553b          	divuw	a0,a0,a2
    80001f50:	00900793          	li	a5,9
    80001f54:	fce7e2e3          	bltu	a5,a4,80001f18 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001f58:	fff4849b          	addiw	s1,s1,-1
    80001f5c:	0004ce63          	bltz	s1,80001f78 <_Z12printIntegerm+0x94>
    80001f60:	fe040793          	addi	a5,s0,-32
    80001f64:	009787b3          	add	a5,a5,s1
    80001f68:	ff07c503          	lbu	a0,-16(a5)
    80001f6c:	00002097          	auipc	ra,0x2
    80001f70:	3a0080e7          	jalr	928(ra) # 8000430c <__putc>
    80001f74:	fe5ff06f          	j	80001f58 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f78:	0009091b          	sext.w	s2,s2
    80001f7c:	00297913          	andi	s2,s2,2
    80001f80:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f84:	10092073          	csrs	sstatus,s2
    80001f88:	03813083          	ld	ra,56(sp)
    80001f8c:	03013403          	ld	s0,48(sp)
    80001f90:	02813483          	ld	s1,40(sp)
    80001f94:	02013903          	ld	s2,32(sp)
    80001f98:	04010113          	addi	sp,sp,64
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN7_thread13threadWrapperEv>:

    return 0;
}

void _thread::threadWrapper()
{
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00113423          	sd	ra,8(sp)
    80001fa8:	00813023          	sd	s0,0(sp)
    80001fac:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	898080e7          	jalr	-1896(ra) # 80001848 <_ZN5Riscv10popSppSpieEv>

    //_thread::running->body(handle->arg);
    _thread::running->body(_thread::running->arg);
    80001fb8:	00004797          	auipc	a5,0x4
    80001fbc:	9c07b783          	ld	a5,-1600(a5) # 80005978 <_ZN7_thread7runningE>
    80001fc0:	0007b703          	ld	a4,0(a5)
    80001fc4:	0287b503          	ld	a0,40(a5)
    80001fc8:	000700e7          	jalr	a4

    thread_exit();
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	288080e7          	jalr	648(ra) # 80001254 <_Z11thread_exitv>
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate (thread_t* handle, void(*start_routine)(void*), void* arg, void* stack_space) {
    80001fe4:	fd010113          	addi	sp,sp,-48
    80001fe8:	02113423          	sd	ra,40(sp)
    80001fec:	02813023          	sd	s0,32(sp)
    80001ff0:	00913c23          	sd	s1,24(sp)
    80001ff4:	01213823          	sd	s2,16(sp)
    80001ff8:	01313423          	sd	s3,8(sp)
    80001ffc:	01413023          	sd	s4,0(sp)
    80002000:	03010413          	addi	s0,sp,48
    80002004:	00050493          	mv	s1,a0
    80002008:	00058913          	mv	s2,a1
    8000200c:	00060993          	mv	s3,a2
    80002010:	00068a13          	mv	s4,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80002014:	03800513          	li	a0,56
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	e28080e7          	jalr	-472(ra) # 80001e40 <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    80002020:	00000097          	auipc	ra,0x0
    80002024:	c30080e7          	jalr	-976(ra) # 80001c50 <_ZN15MemoryAllocator9mem_allocEm>
    80002028:	00a4b023          	sd	a0,0(s1)
    (*handle)->finished = false;
    8000202c:	00050423          	sb	zero,8(a0)
    (*handle)->timeSlice = 0;
    80002030:	0004b783          	ld	a5,0(s1)
    80002034:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    80002038:	0004b783          	ld	a5,0(s1)
    8000203c:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    80002040:	0004b783          	ld	a5,0(s1)
    80002044:	0337b423          	sd	s3,40(a5)
    if (start_routine != nullptr)
    80002048:	06090663          	beqz	s2,800020b4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd0>
        (*handle)->stack = (uint64*) stack_space;
    8000204c:	0004b783          	ld	a5,0(s1)
    80002050:	0147b823          	sd	s4,16(a5)
    if ((*handle)->stack != nullptr)
    80002054:	0004b703          	ld	a4,0(s1)
    80002058:	01073783          	ld	a5,16(a4)
    8000205c:	06078263          	beqz	a5,800020c0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xdc>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002060:	000086b7          	lui	a3,0x8
    80002064:	00d787b3          	add	a5,a5,a3
    80002068:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    8000206c:	0004b783          	ld	a5,0(s1)
    80002070:	00000717          	auipc	a4,0x0
    80002074:	f3070713          	addi	a4,a4,-208 # 80001fa0 <_ZN7_thread13threadWrapperEv>
    80002078:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    8000207c:	0004b503          	ld	a0,0(s1)
    80002080:	00053783          	ld	a5,0(a0)
    80002084:	00078663          	beqz	a5,80002090 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xac>
        Scheduler::put(*handle);
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	ab0080e7          	jalr	-1360(ra) # 80001b38 <_ZN9Scheduler3putEP7_thread>
}
    80002090:	00000513          	li	a0,0
    80002094:	02813083          	ld	ra,40(sp)
    80002098:	02013403          	ld	s0,32(sp)
    8000209c:	01813483          	ld	s1,24(sp)
    800020a0:	01013903          	ld	s2,16(sp)
    800020a4:	00813983          	ld	s3,8(sp)
    800020a8:	00013a03          	ld	s4,0(sp)
    800020ac:	03010113          	addi	sp,sp,48
    800020b0:	00008067          	ret
        (*handle)->stack = nullptr;
    800020b4:	0004b783          	ld	a5,0(s1)
    800020b8:	0007b823          	sd	zero,16(a5)
    800020bc:	f99ff06f          	j	80002054 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x70>
        (*handle)->context.ra = (uint64) &threadWrapper;
    800020c0:	00000797          	auipc	a5,0x0
    800020c4:	ee078793          	addi	a5,a5,-288 # 80001fa0 <_ZN7_thread13threadWrapperEv>
    800020c8:	00f73c23          	sd	a5,24(a4)
        (*handle)->context.sp = 0;
    800020cc:	0004b783          	ld	a5,0(s1)
    800020d0:	0207b023          	sd	zero,32(a5)
    800020d4:	fa9ff06f          	j	8000207c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x98>

00000000800020d8 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    800020d8:	fe010113          	addi	sp,sp,-32
    800020dc:	00113c23          	sd	ra,24(sp)
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	01213023          	sd	s2,0(sp)
    800020ec:	02010413          	addi	s0,sp,32
        return tail->data;
    }

    void printAll()
    {
        Elem* temp = head;
    800020f0:	00004797          	auipc	a5,0x4
    800020f4:	8087b783          	ld	a5,-2040(a5) # 800058f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020f8:	0007b483          	ld	s1,0(a5)
        printString("-----------------------------------------\n");
    800020fc:	00003517          	auipc	a0,0x3
    80002100:	01c50513          	addi	a0,a0,28 # 80005118 <_ZZ12printIntegermE6digits+0x10>
    80002104:	00000097          	auipc	ra,0x0
    80002108:	d70080e7          	jalr	-656(ra) # 80001e74 <_Z11printStringPKc>
        printString("PrintAll: ");
    8000210c:	00003517          	auipc	a0,0x3
    80002110:	03c50513          	addi	a0,a0,60 # 80005148 <_ZZ12printIntegermE6digits+0x40>
    80002114:	00000097          	auipc	ra,0x0
    80002118:	d60080e7          	jalr	-672(ra) # 80001e74 <_Z11printStringPKc>
        while(temp)
    8000211c:	02048463          	beqz	s1,80002144 <_ZN7_thread14threadDispatchEv+0x6c>
        {
            printInteger((size_t)temp->data);
    80002120:	0004b503          	ld	a0,0(s1)
    80002124:	00000097          	auipc	ra,0x0
    80002128:	dc0080e7          	jalr	-576(ra) # 80001ee4 <_Z12printIntegerm>
            printString("\n");
    8000212c:	00003517          	auipc	a0,0x3
    80002130:	f2450513          	addi	a0,a0,-220 # 80005050 <CONSOLE_STATUS+0x40>
    80002134:	00000097          	auipc	ra,0x0
    80002138:	d40080e7          	jalr	-704(ra) # 80001e74 <_Z11printStringPKc>

            temp = temp->next;
    8000213c:	0084b483          	ld	s1,8(s1)
        while(temp)
    80002140:	fddff06f          	j	8000211c <_ZN7_thread14threadDispatchEv+0x44>
        }
        printString("\nEndprint!\n");
    80002144:	00003517          	auipc	a0,0x3
    80002148:	01450513          	addi	a0,a0,20 # 80005158 <_ZZ12printIntegermE6digits+0x50>
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	d28080e7          	jalr	-728(ra) # 80001e74 <_Z11printStringPKc>
        printString("-----------------------------------------\n");
    80002154:	00003517          	auipc	a0,0x3
    80002158:	fc450513          	addi	a0,a0,-60 # 80005118 <_ZZ12printIntegermE6digits+0x10>
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	d18080e7          	jalr	-744(ra) # 80001e74 <_Z11printStringPKc>
    Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;
    80002164:	00004497          	auipc	s1,0x4
    80002168:	8144b483          	ld	s1,-2028(s1) # 80005978 <_ZN7_thread7runningE>

    if (!old->finished)
    8000216c:	0084c783          	lbu	a5,8(s1)
    80002170:	08079e63          	bnez	a5,8000220c <_ZN7_thread14threadDispatchEv+0x134>
    {
        Scheduler::put(old);
    80002174:	00048513          	mv	a0,s1
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	9c0080e7          	jalr	-1600(ra) # 80001b38 <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    80002180:	00000097          	auipc	ra,0x0
    80002184:	948080e7          	jalr	-1720(ra) # 80001ac8 <_ZN9Scheduler3getEv>
    80002188:	00003917          	auipc	s2,0x3
    8000218c:	7f090913          	addi	s2,s2,2032 # 80005978 <_ZN7_thread7runningE>
    80002190:	00a93023          	sd	a0,0(s2)

        printString("old: ");
    80002194:	00003517          	auipc	a0,0x3
    80002198:	fd450513          	addi	a0,a0,-44 # 80005168 <_ZZ12printIntegermE6digits+0x60>
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	cd8080e7          	jalr	-808(ra) # 80001e74 <_Z11printStringPKc>
        printInteger((uint64) old);
    800021a4:	00048513          	mv	a0,s1
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	d3c080e7          	jalr	-708(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\nnew running: ");
    800021b0:	00003517          	auipc	a0,0x3
    800021b4:	fc050513          	addi	a0,a0,-64 # 80005170 <_ZZ12printIntegermE6digits+0x68>
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	cbc080e7          	jalr	-836(ra) # 80001e74 <_Z11printStringPKc>
        printInteger((uint64) _thread::running);
    800021c0:	00093503          	ld	a0,0(s2)
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	d20080e7          	jalr	-736(ra) # 80001ee4 <_Z12printIntegerm>
        printString("\n");
    800021cc:	00003517          	auipc	a0,0x3
    800021d0:	e8450513          	addi	a0,a0,-380 # 80005050 <CONSOLE_STATUS+0x40>
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	ca0080e7          	jalr	-864(ra) # 80001e74 <_Z11printStringPKc>

        if(old != _thread::running)
    800021dc:	00093583          	ld	a1,0(s2)
    800021e0:	00958a63          	beq	a1,s1,800021f4 <_ZN7_thread14threadDispatchEv+0x11c>
            contextSwitch(&old->context, &_thread::running->context);
    800021e4:	01858593          	addi	a1,a1,24
    800021e8:	01848513          	addi	a0,s1,24
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	f34080e7          	jalr	-204(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    800021f4:	01813083          	ld	ra,24(sp)
    800021f8:	01013403          	ld	s0,16(sp)
    800021fc:	00813483          	ld	s1,8(sp)
    80002200:	00013903          	ld	s2,0(sp)
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00008067          	ret
        MemoryAllocator::mem_free(old->stack);
    8000220c:	0104b503          	ld	a0,16(s1)
    80002210:	00000097          	auipc	ra,0x0
    80002214:	b68080e7          	jalr	-1176(ra) # 80001d78 <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    80002218:	00048513          	mv	a0,s1
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	b5c080e7          	jalr	-1188(ra) # 80001d78 <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    80002224:	00000097          	auipc	ra,0x0
    80002228:	8a4080e7          	jalr	-1884(ra) # 80001ac8 <_ZN9Scheduler3getEv>
    8000222c:	00003797          	auipc	a5,0x3
    80002230:	74a7b623          	sd	a0,1868(a5) # 80005978 <_ZN7_thread7runningE>
        if (_thread::running)
    80002234:	fc0500e3          	beqz	a0,800021f4 <_ZN7_thread14threadDispatchEv+0x11c>
            contextSwitchThreadEnded(&_thread::running->context);
    80002238:	01850513          	addi	a0,a0,24
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	ef8080e7          	jalr	-264(ra) # 80001134 <contextSwitchThreadEnded>
}
    80002244:	fb1ff06f          	j	800021f4 <_ZN7_thread14threadDispatchEv+0x11c>

0000000080002248 <start>:
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    80002254:	300027f3          	csrr	a5,mstatus
    80002258:	ffffe737          	lui	a4,0xffffe
    8000225c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c2f>
    80002260:	00e7f7b3          	and	a5,a5,a4
    80002264:	00001737          	lui	a4,0x1
    80002268:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000226c:	00e7e7b3          	or	a5,a5,a4
    80002270:	30079073          	csrw	mstatus,a5
    80002274:	00000797          	auipc	a5,0x0
    80002278:	16078793          	addi	a5,a5,352 # 800023d4 <system_main>
    8000227c:	34179073          	csrw	mepc,a5
    80002280:	00000793          	li	a5,0
    80002284:	18079073          	csrw	satp,a5
    80002288:	000107b7          	lui	a5,0x10
    8000228c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002290:	30279073          	csrw	medeleg,a5
    80002294:	30379073          	csrw	mideleg,a5
    80002298:	104027f3          	csrr	a5,sie
    8000229c:	2227e793          	ori	a5,a5,546
    800022a0:	10479073          	csrw	sie,a5
    800022a4:	fff00793          	li	a5,-1
    800022a8:	00a7d793          	srli	a5,a5,0xa
    800022ac:	3b079073          	csrw	pmpaddr0,a5
    800022b0:	00f00793          	li	a5,15
    800022b4:	3a079073          	csrw	pmpcfg0,a5
    800022b8:	f14027f3          	csrr	a5,mhartid
    800022bc:	0200c737          	lui	a4,0x200c
    800022c0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800022c4:	0007869b          	sext.w	a3,a5
    800022c8:	00269713          	slli	a4,a3,0x2
    800022cc:	000f4637          	lui	a2,0xf4
    800022d0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800022d4:	00d70733          	add	a4,a4,a3
    800022d8:	0037979b          	slliw	a5,a5,0x3
    800022dc:	020046b7          	lui	a3,0x2004
    800022e0:	00d787b3          	add	a5,a5,a3
    800022e4:	00c585b3          	add	a1,a1,a2
    800022e8:	00371693          	slli	a3,a4,0x3
    800022ec:	00003717          	auipc	a4,0x3
    800022f0:	69470713          	addi	a4,a4,1684 # 80005980 <timer_scratch>
    800022f4:	00b7b023          	sd	a1,0(a5)
    800022f8:	00d70733          	add	a4,a4,a3
    800022fc:	00f73c23          	sd	a5,24(a4)
    80002300:	02c73023          	sd	a2,32(a4)
    80002304:	34071073          	csrw	mscratch,a4
    80002308:	00000797          	auipc	a5,0x0
    8000230c:	6e878793          	addi	a5,a5,1768 # 800029f0 <timervec>
    80002310:	30579073          	csrw	mtvec,a5
    80002314:	300027f3          	csrr	a5,mstatus
    80002318:	0087e793          	ori	a5,a5,8
    8000231c:	30079073          	csrw	mstatus,a5
    80002320:	304027f3          	csrr	a5,mie
    80002324:	0807e793          	ori	a5,a5,128
    80002328:	30479073          	csrw	mie,a5
    8000232c:	f14027f3          	csrr	a5,mhartid
    80002330:	0007879b          	sext.w	a5,a5
    80002334:	00078213          	mv	tp,a5
    80002338:	30200073          	mret
    8000233c:	00813403          	ld	s0,8(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <timerinit>:
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813423          	sd	s0,8(sp)
    80002350:	01010413          	addi	s0,sp,16
    80002354:	f14027f3          	csrr	a5,mhartid
    80002358:	0200c737          	lui	a4,0x200c
    8000235c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002360:	0007869b          	sext.w	a3,a5
    80002364:	00269713          	slli	a4,a3,0x2
    80002368:	000f4637          	lui	a2,0xf4
    8000236c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002370:	00d70733          	add	a4,a4,a3
    80002374:	0037979b          	slliw	a5,a5,0x3
    80002378:	020046b7          	lui	a3,0x2004
    8000237c:	00d787b3          	add	a5,a5,a3
    80002380:	00c585b3          	add	a1,a1,a2
    80002384:	00371693          	slli	a3,a4,0x3
    80002388:	00003717          	auipc	a4,0x3
    8000238c:	5f870713          	addi	a4,a4,1528 # 80005980 <timer_scratch>
    80002390:	00b7b023          	sd	a1,0(a5)
    80002394:	00d70733          	add	a4,a4,a3
    80002398:	00f73c23          	sd	a5,24(a4)
    8000239c:	02c73023          	sd	a2,32(a4)
    800023a0:	34071073          	csrw	mscratch,a4
    800023a4:	00000797          	auipc	a5,0x0
    800023a8:	64c78793          	addi	a5,a5,1612 # 800029f0 <timervec>
    800023ac:	30579073          	csrw	mtvec,a5
    800023b0:	300027f3          	csrr	a5,mstatus
    800023b4:	0087e793          	ori	a5,a5,8
    800023b8:	30079073          	csrw	mstatus,a5
    800023bc:	304027f3          	csrr	a5,mie
    800023c0:	0807e793          	ori	a5,a5,128
    800023c4:	30479073          	csrw	mie,a5
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <system_main>:
    800023d4:	fe010113          	addi	sp,sp,-32
    800023d8:	00813823          	sd	s0,16(sp)
    800023dc:	00913423          	sd	s1,8(sp)
    800023e0:	00113c23          	sd	ra,24(sp)
    800023e4:	02010413          	addi	s0,sp,32
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	0c4080e7          	jalr	196(ra) # 800024ac <cpuid>
    800023f0:	00003497          	auipc	s1,0x3
    800023f4:	53048493          	addi	s1,s1,1328 # 80005920 <started>
    800023f8:	02050263          	beqz	a0,8000241c <system_main+0x48>
    800023fc:	0004a783          	lw	a5,0(s1)
    80002400:	0007879b          	sext.w	a5,a5
    80002404:	fe078ce3          	beqz	a5,800023fc <system_main+0x28>
    80002408:	0ff0000f          	fence
    8000240c:	00003517          	auipc	a0,0x3
    80002410:	da450513          	addi	a0,a0,-604 # 800051b0 <_ZZ12printIntegermE6digits+0xa8>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	a78080e7          	jalr	-1416(ra) # 80002e8c <panic>
    8000241c:	00001097          	auipc	ra,0x1
    80002420:	9cc080e7          	jalr	-1588(ra) # 80002de8 <consoleinit>
    80002424:	00001097          	auipc	ra,0x1
    80002428:	158080e7          	jalr	344(ra) # 8000357c <printfinit>
    8000242c:	00003517          	auipc	a0,0x3
    80002430:	c2450513          	addi	a0,a0,-988 # 80005050 <CONSOLE_STATUS+0x40>
    80002434:	00001097          	auipc	ra,0x1
    80002438:	ab4080e7          	jalr	-1356(ra) # 80002ee8 <__printf>
    8000243c:	00003517          	auipc	a0,0x3
    80002440:	d4450513          	addi	a0,a0,-700 # 80005180 <_ZZ12printIntegermE6digits+0x78>
    80002444:	00001097          	auipc	ra,0x1
    80002448:	aa4080e7          	jalr	-1372(ra) # 80002ee8 <__printf>
    8000244c:	00003517          	auipc	a0,0x3
    80002450:	c0450513          	addi	a0,a0,-1020 # 80005050 <CONSOLE_STATUS+0x40>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	a94080e7          	jalr	-1388(ra) # 80002ee8 <__printf>
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	4ac080e7          	jalr	1196(ra) # 80003908 <kinit>
    80002464:	00000097          	auipc	ra,0x0
    80002468:	148080e7          	jalr	328(ra) # 800025ac <trapinit>
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	16c080e7          	jalr	364(ra) # 800025d8 <trapinithart>
    80002474:	00000097          	auipc	ra,0x0
    80002478:	5bc080e7          	jalr	1468(ra) # 80002a30 <plicinit>
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	5dc080e7          	jalr	1500(ra) # 80002a58 <plicinithart>
    80002484:	00000097          	auipc	ra,0x0
    80002488:	078080e7          	jalr	120(ra) # 800024fc <userinit>
    8000248c:	0ff0000f          	fence
    80002490:	00100793          	li	a5,1
    80002494:	00003517          	auipc	a0,0x3
    80002498:	d0450513          	addi	a0,a0,-764 # 80005198 <_ZZ12printIntegermE6digits+0x90>
    8000249c:	00f4a023          	sw	a5,0(s1)
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	a48080e7          	jalr	-1464(ra) # 80002ee8 <__printf>
    800024a8:	0000006f          	j	800024a8 <system_main+0xd4>

00000000800024ac <cpuid>:
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00813423          	sd	s0,8(sp)
    800024b4:	01010413          	addi	s0,sp,16
    800024b8:	00020513          	mv	a0,tp
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	0005051b          	sext.w	a0,a0
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret

00000000800024cc <mycpu>:
    800024cc:	ff010113          	addi	sp,sp,-16
    800024d0:	00813423          	sd	s0,8(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	00020793          	mv	a5,tp
    800024dc:	00813403          	ld	s0,8(sp)
    800024e0:	0007879b          	sext.w	a5,a5
    800024e4:	00779793          	slli	a5,a5,0x7
    800024e8:	00004517          	auipc	a0,0x4
    800024ec:	4c850513          	addi	a0,a0,1224 # 800069b0 <cpus>
    800024f0:	00f50533          	add	a0,a0,a5
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <userinit>:
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	fffff317          	auipc	t1,0xfffff
    80002514:	2cc30067          	jr	716(t1) # 800017dc <main>

0000000080002518 <either_copyout>:
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	00113423          	sd	ra,8(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	02051663          	bnez	a0,80002554 <either_copyout+0x3c>
    8000252c:	00058513          	mv	a0,a1
    80002530:	00060593          	mv	a1,a2
    80002534:	0006861b          	sext.w	a2,a3
    80002538:	00002097          	auipc	ra,0x2
    8000253c:	c5c080e7          	jalr	-932(ra) # 80004194 <__memmove>
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	00000513          	li	a0,0
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret
    80002554:	00003517          	auipc	a0,0x3
    80002558:	c8450513          	addi	a0,a0,-892 # 800051d8 <_ZZ12printIntegermE6digits+0xd0>
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	930080e7          	jalr	-1744(ra) # 80002e8c <panic>

0000000080002564 <either_copyin>:
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813023          	sd	s0,0(sp)
    8000256c:	00113423          	sd	ra,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	02059463          	bnez	a1,8000259c <either_copyin+0x38>
    80002578:	00060593          	mv	a1,a2
    8000257c:	0006861b          	sext.w	a2,a3
    80002580:	00002097          	auipc	ra,0x2
    80002584:	c14080e7          	jalr	-1004(ra) # 80004194 <__memmove>
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	00000513          	li	a0,0
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret
    8000259c:	00003517          	auipc	a0,0x3
    800025a0:	c6450513          	addi	a0,a0,-924 # 80005200 <_ZZ12printIntegermE6digits+0xf8>
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	8e8080e7          	jalr	-1816(ra) # 80002e8c <panic>

00000000800025ac <trapinit>:
    800025ac:	ff010113          	addi	sp,sp,-16
    800025b0:	00813423          	sd	s0,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	00813403          	ld	s0,8(sp)
    800025bc:	00003597          	auipc	a1,0x3
    800025c0:	c6c58593          	addi	a1,a1,-916 # 80005228 <_ZZ12printIntegermE6digits+0x120>
    800025c4:	00004517          	auipc	a0,0x4
    800025c8:	46c50513          	addi	a0,a0,1132 # 80006a30 <tickslock>
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00001317          	auipc	t1,0x1
    800025d4:	5c830067          	jr	1480(t1) # 80003b98 <initlock>

00000000800025d8 <trapinithart>:
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00813423          	sd	s0,8(sp)
    800025e0:	01010413          	addi	s0,sp,16
    800025e4:	00000797          	auipc	a5,0x0
    800025e8:	2fc78793          	addi	a5,a5,764 # 800028e0 <kernelvec>
    800025ec:	10579073          	csrw	stvec,a5
    800025f0:	00813403          	ld	s0,8(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <usertrap>:
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <usertrapret>:
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    80002620:	00813403          	ld	s0,8(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <kerneltrap>:
    8000262c:	fe010113          	addi	sp,sp,-32
    80002630:	00813823          	sd	s0,16(sp)
    80002634:	00113c23          	sd	ra,24(sp)
    80002638:	00913423          	sd	s1,8(sp)
    8000263c:	02010413          	addi	s0,sp,32
    80002640:	142025f3          	csrr	a1,scause
    80002644:	100027f3          	csrr	a5,sstatus
    80002648:	0027f793          	andi	a5,a5,2
    8000264c:	10079c63          	bnez	a5,80002764 <kerneltrap+0x138>
    80002650:	142027f3          	csrr	a5,scause
    80002654:	0207ce63          	bltz	a5,80002690 <kerneltrap+0x64>
    80002658:	00003517          	auipc	a0,0x3
    8000265c:	c1850513          	addi	a0,a0,-1000 # 80005270 <_ZZ12printIntegermE6digits+0x168>
    80002660:	00001097          	auipc	ra,0x1
    80002664:	888080e7          	jalr	-1912(ra) # 80002ee8 <__printf>
    80002668:	141025f3          	csrr	a1,sepc
    8000266c:	14302673          	csrr	a2,stval
    80002670:	00003517          	auipc	a0,0x3
    80002674:	c1050513          	addi	a0,a0,-1008 # 80005280 <_ZZ12printIntegermE6digits+0x178>
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	870080e7          	jalr	-1936(ra) # 80002ee8 <__printf>
    80002680:	00003517          	auipc	a0,0x3
    80002684:	c1850513          	addi	a0,a0,-1000 # 80005298 <_ZZ12printIntegermE6digits+0x190>
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	804080e7          	jalr	-2044(ra) # 80002e8c <panic>
    80002690:	0ff7f713          	andi	a4,a5,255
    80002694:	00900693          	li	a3,9
    80002698:	04d70063          	beq	a4,a3,800026d8 <kerneltrap+0xac>
    8000269c:	fff00713          	li	a4,-1
    800026a0:	03f71713          	slli	a4,a4,0x3f
    800026a4:	00170713          	addi	a4,a4,1
    800026a8:	fae798e3          	bne	a5,a4,80002658 <kerneltrap+0x2c>
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	e00080e7          	jalr	-512(ra) # 800024ac <cpuid>
    800026b4:	06050663          	beqz	a0,80002720 <kerneltrap+0xf4>
    800026b8:	144027f3          	csrr	a5,sip
    800026bc:	ffd7f793          	andi	a5,a5,-3
    800026c0:	14479073          	csrw	sip,a5
    800026c4:	01813083          	ld	ra,24(sp)
    800026c8:	01013403          	ld	s0,16(sp)
    800026cc:	00813483          	ld	s1,8(sp)
    800026d0:	02010113          	addi	sp,sp,32
    800026d4:	00008067          	ret
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	3cc080e7          	jalr	972(ra) # 80002aa4 <plic_claim>
    800026e0:	00a00793          	li	a5,10
    800026e4:	00050493          	mv	s1,a0
    800026e8:	06f50863          	beq	a0,a5,80002758 <kerneltrap+0x12c>
    800026ec:	fc050ce3          	beqz	a0,800026c4 <kerneltrap+0x98>
    800026f0:	00050593          	mv	a1,a0
    800026f4:	00003517          	auipc	a0,0x3
    800026f8:	b5c50513          	addi	a0,a0,-1188 # 80005250 <_ZZ12printIntegermE6digits+0x148>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	7ec080e7          	jalr	2028(ra) # 80002ee8 <__printf>
    80002704:	01013403          	ld	s0,16(sp)
    80002708:	01813083          	ld	ra,24(sp)
    8000270c:	00048513          	mv	a0,s1
    80002710:	00813483          	ld	s1,8(sp)
    80002714:	02010113          	addi	sp,sp,32
    80002718:	00000317          	auipc	t1,0x0
    8000271c:	3c430067          	jr	964(t1) # 80002adc <plic_complete>
    80002720:	00004517          	auipc	a0,0x4
    80002724:	31050513          	addi	a0,a0,784 # 80006a30 <tickslock>
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	494080e7          	jalr	1172(ra) # 80003bbc <acquire>
    80002730:	00003717          	auipc	a4,0x3
    80002734:	1f470713          	addi	a4,a4,500 # 80005924 <ticks>
    80002738:	00072783          	lw	a5,0(a4)
    8000273c:	00004517          	auipc	a0,0x4
    80002740:	2f450513          	addi	a0,a0,756 # 80006a30 <tickslock>
    80002744:	0017879b          	addiw	a5,a5,1
    80002748:	00f72023          	sw	a5,0(a4)
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	53c080e7          	jalr	1340(ra) # 80003c88 <release>
    80002754:	f65ff06f          	j	800026b8 <kerneltrap+0x8c>
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	098080e7          	jalr	152(ra) # 800037f0 <uartintr>
    80002760:	fa5ff06f          	j	80002704 <kerneltrap+0xd8>
    80002764:	00003517          	auipc	a0,0x3
    80002768:	acc50513          	addi	a0,a0,-1332 # 80005230 <_ZZ12printIntegermE6digits+0x128>
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	720080e7          	jalr	1824(ra) # 80002e8c <panic>

0000000080002774 <clockintr>:
    80002774:	fe010113          	addi	sp,sp,-32
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	02010413          	addi	s0,sp,32
    80002788:	00004497          	auipc	s1,0x4
    8000278c:	2a848493          	addi	s1,s1,680 # 80006a30 <tickslock>
    80002790:	00048513          	mv	a0,s1
    80002794:	00001097          	auipc	ra,0x1
    80002798:	428080e7          	jalr	1064(ra) # 80003bbc <acquire>
    8000279c:	00003717          	auipc	a4,0x3
    800027a0:	18870713          	addi	a4,a4,392 # 80005924 <ticks>
    800027a4:	00072783          	lw	a5,0(a4)
    800027a8:	01013403          	ld	s0,16(sp)
    800027ac:	01813083          	ld	ra,24(sp)
    800027b0:	00048513          	mv	a0,s1
    800027b4:	0017879b          	addiw	a5,a5,1
    800027b8:	00813483          	ld	s1,8(sp)
    800027bc:	00f72023          	sw	a5,0(a4)
    800027c0:	02010113          	addi	sp,sp,32
    800027c4:	00001317          	auipc	t1,0x1
    800027c8:	4c430067          	jr	1220(t1) # 80003c88 <release>

00000000800027cc <devintr>:
    800027cc:	142027f3          	csrr	a5,scause
    800027d0:	00000513          	li	a0,0
    800027d4:	0007c463          	bltz	a5,800027dc <devintr+0x10>
    800027d8:	00008067          	ret
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00113c23          	sd	ra,24(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	02010413          	addi	s0,sp,32
    800027f0:	0ff7f713          	andi	a4,a5,255
    800027f4:	00900693          	li	a3,9
    800027f8:	04d70c63          	beq	a4,a3,80002850 <devintr+0x84>
    800027fc:	fff00713          	li	a4,-1
    80002800:	03f71713          	slli	a4,a4,0x3f
    80002804:	00170713          	addi	a4,a4,1
    80002808:	00e78c63          	beq	a5,a4,80002820 <devintr+0x54>
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	01013403          	ld	s0,16(sp)
    80002814:	00813483          	ld	s1,8(sp)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret
    80002820:	00000097          	auipc	ra,0x0
    80002824:	c8c080e7          	jalr	-884(ra) # 800024ac <cpuid>
    80002828:	06050663          	beqz	a0,80002894 <devintr+0xc8>
    8000282c:	144027f3          	csrr	a5,sip
    80002830:	ffd7f793          	andi	a5,a5,-3
    80002834:	14479073          	csrw	sip,a5
    80002838:	01813083          	ld	ra,24(sp)
    8000283c:	01013403          	ld	s0,16(sp)
    80002840:	00813483          	ld	s1,8(sp)
    80002844:	00200513          	li	a0,2
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret
    80002850:	00000097          	auipc	ra,0x0
    80002854:	254080e7          	jalr	596(ra) # 80002aa4 <plic_claim>
    80002858:	00a00793          	li	a5,10
    8000285c:	00050493          	mv	s1,a0
    80002860:	06f50663          	beq	a0,a5,800028cc <devintr+0x100>
    80002864:	00100513          	li	a0,1
    80002868:	fa0482e3          	beqz	s1,8000280c <devintr+0x40>
    8000286c:	00048593          	mv	a1,s1
    80002870:	00003517          	auipc	a0,0x3
    80002874:	9e050513          	addi	a0,a0,-1568 # 80005250 <_ZZ12printIntegermE6digits+0x148>
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	670080e7          	jalr	1648(ra) # 80002ee8 <__printf>
    80002880:	00048513          	mv	a0,s1
    80002884:	00000097          	auipc	ra,0x0
    80002888:	258080e7          	jalr	600(ra) # 80002adc <plic_complete>
    8000288c:	00100513          	li	a0,1
    80002890:	f7dff06f          	j	8000280c <devintr+0x40>
    80002894:	00004517          	auipc	a0,0x4
    80002898:	19c50513          	addi	a0,a0,412 # 80006a30 <tickslock>
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	320080e7          	jalr	800(ra) # 80003bbc <acquire>
    800028a4:	00003717          	auipc	a4,0x3
    800028a8:	08070713          	addi	a4,a4,128 # 80005924 <ticks>
    800028ac:	00072783          	lw	a5,0(a4)
    800028b0:	00004517          	auipc	a0,0x4
    800028b4:	18050513          	addi	a0,a0,384 # 80006a30 <tickslock>
    800028b8:	0017879b          	addiw	a5,a5,1
    800028bc:	00f72023          	sw	a5,0(a4)
    800028c0:	00001097          	auipc	ra,0x1
    800028c4:	3c8080e7          	jalr	968(ra) # 80003c88 <release>
    800028c8:	f65ff06f          	j	8000282c <devintr+0x60>
    800028cc:	00001097          	auipc	ra,0x1
    800028d0:	f24080e7          	jalr	-220(ra) # 800037f0 <uartintr>
    800028d4:	fadff06f          	j	80002880 <devintr+0xb4>
	...

00000000800028e0 <kernelvec>:
    800028e0:	f0010113          	addi	sp,sp,-256
    800028e4:	00113023          	sd	ra,0(sp)
    800028e8:	00213423          	sd	sp,8(sp)
    800028ec:	00313823          	sd	gp,16(sp)
    800028f0:	00413c23          	sd	tp,24(sp)
    800028f4:	02513023          	sd	t0,32(sp)
    800028f8:	02613423          	sd	t1,40(sp)
    800028fc:	02713823          	sd	t2,48(sp)
    80002900:	02813c23          	sd	s0,56(sp)
    80002904:	04913023          	sd	s1,64(sp)
    80002908:	04a13423          	sd	a0,72(sp)
    8000290c:	04b13823          	sd	a1,80(sp)
    80002910:	04c13c23          	sd	a2,88(sp)
    80002914:	06d13023          	sd	a3,96(sp)
    80002918:	06e13423          	sd	a4,104(sp)
    8000291c:	06f13823          	sd	a5,112(sp)
    80002920:	07013c23          	sd	a6,120(sp)
    80002924:	09113023          	sd	a7,128(sp)
    80002928:	09213423          	sd	s2,136(sp)
    8000292c:	09313823          	sd	s3,144(sp)
    80002930:	09413c23          	sd	s4,152(sp)
    80002934:	0b513023          	sd	s5,160(sp)
    80002938:	0b613423          	sd	s6,168(sp)
    8000293c:	0b713823          	sd	s7,176(sp)
    80002940:	0b813c23          	sd	s8,184(sp)
    80002944:	0d913023          	sd	s9,192(sp)
    80002948:	0da13423          	sd	s10,200(sp)
    8000294c:	0db13823          	sd	s11,208(sp)
    80002950:	0dc13c23          	sd	t3,216(sp)
    80002954:	0fd13023          	sd	t4,224(sp)
    80002958:	0fe13423          	sd	t5,232(sp)
    8000295c:	0ff13823          	sd	t6,240(sp)
    80002960:	ccdff0ef          	jal	ra,8000262c <kerneltrap>
    80002964:	00013083          	ld	ra,0(sp)
    80002968:	00813103          	ld	sp,8(sp)
    8000296c:	01013183          	ld	gp,16(sp)
    80002970:	02013283          	ld	t0,32(sp)
    80002974:	02813303          	ld	t1,40(sp)
    80002978:	03013383          	ld	t2,48(sp)
    8000297c:	03813403          	ld	s0,56(sp)
    80002980:	04013483          	ld	s1,64(sp)
    80002984:	04813503          	ld	a0,72(sp)
    80002988:	05013583          	ld	a1,80(sp)
    8000298c:	05813603          	ld	a2,88(sp)
    80002990:	06013683          	ld	a3,96(sp)
    80002994:	06813703          	ld	a4,104(sp)
    80002998:	07013783          	ld	a5,112(sp)
    8000299c:	07813803          	ld	a6,120(sp)
    800029a0:	08013883          	ld	a7,128(sp)
    800029a4:	08813903          	ld	s2,136(sp)
    800029a8:	09013983          	ld	s3,144(sp)
    800029ac:	09813a03          	ld	s4,152(sp)
    800029b0:	0a013a83          	ld	s5,160(sp)
    800029b4:	0a813b03          	ld	s6,168(sp)
    800029b8:	0b013b83          	ld	s7,176(sp)
    800029bc:	0b813c03          	ld	s8,184(sp)
    800029c0:	0c013c83          	ld	s9,192(sp)
    800029c4:	0c813d03          	ld	s10,200(sp)
    800029c8:	0d013d83          	ld	s11,208(sp)
    800029cc:	0d813e03          	ld	t3,216(sp)
    800029d0:	0e013e83          	ld	t4,224(sp)
    800029d4:	0e813f03          	ld	t5,232(sp)
    800029d8:	0f013f83          	ld	t6,240(sp)
    800029dc:	10010113          	addi	sp,sp,256
    800029e0:	10200073          	sret
    800029e4:	00000013          	nop
    800029e8:	00000013          	nop
    800029ec:	00000013          	nop

00000000800029f0 <timervec>:
    800029f0:	34051573          	csrrw	a0,mscratch,a0
    800029f4:	00b53023          	sd	a1,0(a0)
    800029f8:	00c53423          	sd	a2,8(a0)
    800029fc:	00d53823          	sd	a3,16(a0)
    80002a00:	01853583          	ld	a1,24(a0)
    80002a04:	02053603          	ld	a2,32(a0)
    80002a08:	0005b683          	ld	a3,0(a1)
    80002a0c:	00c686b3          	add	a3,a3,a2
    80002a10:	00d5b023          	sd	a3,0(a1)
    80002a14:	00200593          	li	a1,2
    80002a18:	14459073          	csrw	sip,a1
    80002a1c:	01053683          	ld	a3,16(a0)
    80002a20:	00853603          	ld	a2,8(a0)
    80002a24:	00053583          	ld	a1,0(a0)
    80002a28:	34051573          	csrrw	a0,mscratch,a0
    80002a2c:	30200073          	mret

0000000080002a30 <plicinit>:
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00813423          	sd	s0,8(sp)
    80002a38:	01010413          	addi	s0,sp,16
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	0c0007b7          	lui	a5,0xc000
    80002a44:	00100713          	li	a4,1
    80002a48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002a4c:	00e7a223          	sw	a4,4(a5)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <plicinithart>:
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00813023          	sd	s0,0(sp)
    80002a60:	00113423          	sd	ra,8(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	a44080e7          	jalr	-1468(ra) # 800024ac <cpuid>
    80002a70:	0085171b          	slliw	a4,a0,0x8
    80002a74:	0c0027b7          	lui	a5,0xc002
    80002a78:	00e787b3          	add	a5,a5,a4
    80002a7c:	40200713          	li	a4,1026
    80002a80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	00d5151b          	slliw	a0,a0,0xd
    80002a90:	0c2017b7          	lui	a5,0xc201
    80002a94:	00a78533          	add	a0,a5,a0
    80002a98:	00052023          	sw	zero,0(a0)
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <plic_claim>:
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813023          	sd	s0,0(sp)
    80002aac:	00113423          	sd	ra,8(sp)
    80002ab0:	01010413          	addi	s0,sp,16
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	9f8080e7          	jalr	-1544(ra) # 800024ac <cpuid>
    80002abc:	00813083          	ld	ra,8(sp)
    80002ac0:	00013403          	ld	s0,0(sp)
    80002ac4:	00d5151b          	slliw	a0,a0,0xd
    80002ac8:	0c2017b7          	lui	a5,0xc201
    80002acc:	00a78533          	add	a0,a5,a0
    80002ad0:	00452503          	lw	a0,4(a0)
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret

0000000080002adc <plic_complete>:
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00813823          	sd	s0,16(sp)
    80002ae4:	00913423          	sd	s1,8(sp)
    80002ae8:	00113c23          	sd	ra,24(sp)
    80002aec:	02010413          	addi	s0,sp,32
    80002af0:	00050493          	mv	s1,a0
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	9b8080e7          	jalr	-1608(ra) # 800024ac <cpuid>
    80002afc:	01813083          	ld	ra,24(sp)
    80002b00:	01013403          	ld	s0,16(sp)
    80002b04:	00d5179b          	slliw	a5,a0,0xd
    80002b08:	0c201737          	lui	a4,0xc201
    80002b0c:	00f707b3          	add	a5,a4,a5
    80002b10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002b14:	00813483          	ld	s1,8(sp)
    80002b18:	02010113          	addi	sp,sp,32
    80002b1c:	00008067          	ret

0000000080002b20 <consolewrite>:
    80002b20:	fb010113          	addi	sp,sp,-80
    80002b24:	04813023          	sd	s0,64(sp)
    80002b28:	04113423          	sd	ra,72(sp)
    80002b2c:	02913c23          	sd	s1,56(sp)
    80002b30:	03213823          	sd	s2,48(sp)
    80002b34:	03313423          	sd	s3,40(sp)
    80002b38:	03413023          	sd	s4,32(sp)
    80002b3c:	01513c23          	sd	s5,24(sp)
    80002b40:	05010413          	addi	s0,sp,80
    80002b44:	06c05c63          	blez	a2,80002bbc <consolewrite+0x9c>
    80002b48:	00060993          	mv	s3,a2
    80002b4c:	00050a13          	mv	s4,a0
    80002b50:	00058493          	mv	s1,a1
    80002b54:	00000913          	li	s2,0
    80002b58:	fff00a93          	li	s5,-1
    80002b5c:	01c0006f          	j	80002b78 <consolewrite+0x58>
    80002b60:	fbf44503          	lbu	a0,-65(s0)
    80002b64:	0019091b          	addiw	s2,s2,1
    80002b68:	00148493          	addi	s1,s1,1
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	a9c080e7          	jalr	-1380(ra) # 80003608 <uartputc>
    80002b74:	03298063          	beq	s3,s2,80002b94 <consolewrite+0x74>
    80002b78:	00048613          	mv	a2,s1
    80002b7c:	00100693          	li	a3,1
    80002b80:	000a0593          	mv	a1,s4
    80002b84:	fbf40513          	addi	a0,s0,-65
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	9dc080e7          	jalr	-1572(ra) # 80002564 <either_copyin>
    80002b90:	fd5518e3          	bne	a0,s5,80002b60 <consolewrite+0x40>
    80002b94:	04813083          	ld	ra,72(sp)
    80002b98:	04013403          	ld	s0,64(sp)
    80002b9c:	03813483          	ld	s1,56(sp)
    80002ba0:	02813983          	ld	s3,40(sp)
    80002ba4:	02013a03          	ld	s4,32(sp)
    80002ba8:	01813a83          	ld	s5,24(sp)
    80002bac:	00090513          	mv	a0,s2
    80002bb0:	03013903          	ld	s2,48(sp)
    80002bb4:	05010113          	addi	sp,sp,80
    80002bb8:	00008067          	ret
    80002bbc:	00000913          	li	s2,0
    80002bc0:	fd5ff06f          	j	80002b94 <consolewrite+0x74>

0000000080002bc4 <consoleread>:
    80002bc4:	f9010113          	addi	sp,sp,-112
    80002bc8:	06813023          	sd	s0,96(sp)
    80002bcc:	04913c23          	sd	s1,88(sp)
    80002bd0:	05213823          	sd	s2,80(sp)
    80002bd4:	05313423          	sd	s3,72(sp)
    80002bd8:	05413023          	sd	s4,64(sp)
    80002bdc:	03513c23          	sd	s5,56(sp)
    80002be0:	03613823          	sd	s6,48(sp)
    80002be4:	03713423          	sd	s7,40(sp)
    80002be8:	03813023          	sd	s8,32(sp)
    80002bec:	06113423          	sd	ra,104(sp)
    80002bf0:	01913c23          	sd	s9,24(sp)
    80002bf4:	07010413          	addi	s0,sp,112
    80002bf8:	00060b93          	mv	s7,a2
    80002bfc:	00050913          	mv	s2,a0
    80002c00:	00058c13          	mv	s8,a1
    80002c04:	00060b1b          	sext.w	s6,a2
    80002c08:	00004497          	auipc	s1,0x4
    80002c0c:	e4048493          	addi	s1,s1,-448 # 80006a48 <cons>
    80002c10:	00400993          	li	s3,4
    80002c14:	fff00a13          	li	s4,-1
    80002c18:	00a00a93          	li	s5,10
    80002c1c:	05705e63          	blez	s7,80002c78 <consoleread+0xb4>
    80002c20:	09c4a703          	lw	a4,156(s1)
    80002c24:	0984a783          	lw	a5,152(s1)
    80002c28:	0007071b          	sext.w	a4,a4
    80002c2c:	08e78463          	beq	a5,a4,80002cb4 <consoleread+0xf0>
    80002c30:	07f7f713          	andi	a4,a5,127
    80002c34:	00e48733          	add	a4,s1,a4
    80002c38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c3c:	0017869b          	addiw	a3,a5,1
    80002c40:	08d4ac23          	sw	a3,152(s1)
    80002c44:	00070c9b          	sext.w	s9,a4
    80002c48:	0b370663          	beq	a4,s3,80002cf4 <consoleread+0x130>
    80002c4c:	00100693          	li	a3,1
    80002c50:	f9f40613          	addi	a2,s0,-97
    80002c54:	000c0593          	mv	a1,s8
    80002c58:	00090513          	mv	a0,s2
    80002c5c:	f8e40fa3          	sb	a4,-97(s0)
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	8b8080e7          	jalr	-1864(ra) # 80002518 <either_copyout>
    80002c68:	01450863          	beq	a0,s4,80002c78 <consoleread+0xb4>
    80002c6c:	001c0c13          	addi	s8,s8,1
    80002c70:	fffb8b9b          	addiw	s7,s7,-1
    80002c74:	fb5c94e3          	bne	s9,s5,80002c1c <consoleread+0x58>
    80002c78:	000b851b          	sext.w	a0,s7
    80002c7c:	06813083          	ld	ra,104(sp)
    80002c80:	06013403          	ld	s0,96(sp)
    80002c84:	05813483          	ld	s1,88(sp)
    80002c88:	05013903          	ld	s2,80(sp)
    80002c8c:	04813983          	ld	s3,72(sp)
    80002c90:	04013a03          	ld	s4,64(sp)
    80002c94:	03813a83          	ld	s5,56(sp)
    80002c98:	02813b83          	ld	s7,40(sp)
    80002c9c:	02013c03          	ld	s8,32(sp)
    80002ca0:	01813c83          	ld	s9,24(sp)
    80002ca4:	40ab053b          	subw	a0,s6,a0
    80002ca8:	03013b03          	ld	s6,48(sp)
    80002cac:	07010113          	addi	sp,sp,112
    80002cb0:	00008067          	ret
    80002cb4:	00001097          	auipc	ra,0x1
    80002cb8:	1d8080e7          	jalr	472(ra) # 80003e8c <push_on>
    80002cbc:	0984a703          	lw	a4,152(s1)
    80002cc0:	09c4a783          	lw	a5,156(s1)
    80002cc4:	0007879b          	sext.w	a5,a5
    80002cc8:	fef70ce3          	beq	a4,a5,80002cc0 <consoleread+0xfc>
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	234080e7          	jalr	564(ra) # 80003f00 <pop_on>
    80002cd4:	0984a783          	lw	a5,152(s1)
    80002cd8:	07f7f713          	andi	a4,a5,127
    80002cdc:	00e48733          	add	a4,s1,a4
    80002ce0:	01874703          	lbu	a4,24(a4)
    80002ce4:	0017869b          	addiw	a3,a5,1
    80002ce8:	08d4ac23          	sw	a3,152(s1)
    80002cec:	00070c9b          	sext.w	s9,a4
    80002cf0:	f5371ee3          	bne	a4,s3,80002c4c <consoleread+0x88>
    80002cf4:	000b851b          	sext.w	a0,s7
    80002cf8:	f96bf2e3          	bgeu	s7,s6,80002c7c <consoleread+0xb8>
    80002cfc:	08f4ac23          	sw	a5,152(s1)
    80002d00:	f7dff06f          	j	80002c7c <consoleread+0xb8>

0000000080002d04 <consputc>:
    80002d04:	10000793          	li	a5,256
    80002d08:	00f50663          	beq	a0,a5,80002d14 <consputc+0x10>
    80002d0c:	00001317          	auipc	t1,0x1
    80002d10:	9f430067          	jr	-1548(t1) # 80003700 <uartputc_sync>
    80002d14:	ff010113          	addi	sp,sp,-16
    80002d18:	00113423          	sd	ra,8(sp)
    80002d1c:	00813023          	sd	s0,0(sp)
    80002d20:	01010413          	addi	s0,sp,16
    80002d24:	00800513          	li	a0,8
    80002d28:	00001097          	auipc	ra,0x1
    80002d2c:	9d8080e7          	jalr	-1576(ra) # 80003700 <uartputc_sync>
    80002d30:	02000513          	li	a0,32
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	9cc080e7          	jalr	-1588(ra) # 80003700 <uartputc_sync>
    80002d3c:	00013403          	ld	s0,0(sp)
    80002d40:	00813083          	ld	ra,8(sp)
    80002d44:	00800513          	li	a0,8
    80002d48:	01010113          	addi	sp,sp,16
    80002d4c:	00001317          	auipc	t1,0x1
    80002d50:	9b430067          	jr	-1612(t1) # 80003700 <uartputc_sync>

0000000080002d54 <consoleintr>:
    80002d54:	fe010113          	addi	sp,sp,-32
    80002d58:	00813823          	sd	s0,16(sp)
    80002d5c:	00913423          	sd	s1,8(sp)
    80002d60:	01213023          	sd	s2,0(sp)
    80002d64:	00113c23          	sd	ra,24(sp)
    80002d68:	02010413          	addi	s0,sp,32
    80002d6c:	00004917          	auipc	s2,0x4
    80002d70:	cdc90913          	addi	s2,s2,-804 # 80006a48 <cons>
    80002d74:	00050493          	mv	s1,a0
    80002d78:	00090513          	mv	a0,s2
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	e40080e7          	jalr	-448(ra) # 80003bbc <acquire>
    80002d84:	02048c63          	beqz	s1,80002dbc <consoleintr+0x68>
    80002d88:	0a092783          	lw	a5,160(s2)
    80002d8c:	09892703          	lw	a4,152(s2)
    80002d90:	07f00693          	li	a3,127
    80002d94:	40e7873b          	subw	a4,a5,a4
    80002d98:	02e6e263          	bltu	a3,a4,80002dbc <consoleintr+0x68>
    80002d9c:	00d00713          	li	a4,13
    80002da0:	04e48063          	beq	s1,a4,80002de0 <consoleintr+0x8c>
    80002da4:	07f7f713          	andi	a4,a5,127
    80002da8:	00e90733          	add	a4,s2,a4
    80002dac:	0017879b          	addiw	a5,a5,1
    80002db0:	0af92023          	sw	a5,160(s2)
    80002db4:	00970c23          	sb	s1,24(a4)
    80002db8:	08f92e23          	sw	a5,156(s2)
    80002dbc:	01013403          	ld	s0,16(sp)
    80002dc0:	01813083          	ld	ra,24(sp)
    80002dc4:	00813483          	ld	s1,8(sp)
    80002dc8:	00013903          	ld	s2,0(sp)
    80002dcc:	00004517          	auipc	a0,0x4
    80002dd0:	c7c50513          	addi	a0,a0,-900 # 80006a48 <cons>
    80002dd4:	02010113          	addi	sp,sp,32
    80002dd8:	00001317          	auipc	t1,0x1
    80002ddc:	eb030067          	jr	-336(t1) # 80003c88 <release>
    80002de0:	00a00493          	li	s1,10
    80002de4:	fc1ff06f          	j	80002da4 <consoleintr+0x50>

0000000080002de8 <consoleinit>:
    80002de8:	fe010113          	addi	sp,sp,-32
    80002dec:	00113c23          	sd	ra,24(sp)
    80002df0:	00813823          	sd	s0,16(sp)
    80002df4:	00913423          	sd	s1,8(sp)
    80002df8:	02010413          	addi	s0,sp,32
    80002dfc:	00004497          	auipc	s1,0x4
    80002e00:	c4c48493          	addi	s1,s1,-948 # 80006a48 <cons>
    80002e04:	00048513          	mv	a0,s1
    80002e08:	00002597          	auipc	a1,0x2
    80002e0c:	4a058593          	addi	a1,a1,1184 # 800052a8 <_ZZ12printIntegermE6digits+0x1a0>
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	d88080e7          	jalr	-632(ra) # 80003b98 <initlock>
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	7ac080e7          	jalr	1964(ra) # 800035c4 <uartinit>
    80002e20:	01813083          	ld	ra,24(sp)
    80002e24:	01013403          	ld	s0,16(sp)
    80002e28:	00000797          	auipc	a5,0x0
    80002e2c:	d9c78793          	addi	a5,a5,-612 # 80002bc4 <consoleread>
    80002e30:	0af4bc23          	sd	a5,184(s1)
    80002e34:	00000797          	auipc	a5,0x0
    80002e38:	cec78793          	addi	a5,a5,-788 # 80002b20 <consolewrite>
    80002e3c:	0cf4b023          	sd	a5,192(s1)
    80002e40:	00813483          	ld	s1,8(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret

0000000080002e4c <console_read>:
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00813423          	sd	s0,8(sp)
    80002e54:	01010413          	addi	s0,sp,16
    80002e58:	00813403          	ld	s0,8(sp)
    80002e5c:	00004317          	auipc	t1,0x4
    80002e60:	ca433303          	ld	t1,-860(t1) # 80006b00 <devsw+0x10>
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00030067          	jr	t1

0000000080002e6c <console_write>:
    80002e6c:	ff010113          	addi	sp,sp,-16
    80002e70:	00813423          	sd	s0,8(sp)
    80002e74:	01010413          	addi	s0,sp,16
    80002e78:	00813403          	ld	s0,8(sp)
    80002e7c:	00004317          	auipc	t1,0x4
    80002e80:	c8c33303          	ld	t1,-884(t1) # 80006b08 <devsw+0x18>
    80002e84:	01010113          	addi	sp,sp,16
    80002e88:	00030067          	jr	t1

0000000080002e8c <panic>:
    80002e8c:	fe010113          	addi	sp,sp,-32
    80002e90:	00113c23          	sd	ra,24(sp)
    80002e94:	00813823          	sd	s0,16(sp)
    80002e98:	00913423          	sd	s1,8(sp)
    80002e9c:	02010413          	addi	s0,sp,32
    80002ea0:	00050493          	mv	s1,a0
    80002ea4:	00002517          	auipc	a0,0x2
    80002ea8:	40c50513          	addi	a0,a0,1036 # 800052b0 <_ZZ12printIntegermE6digits+0x1a8>
    80002eac:	00004797          	auipc	a5,0x4
    80002eb0:	ce07ae23          	sw	zero,-772(a5) # 80006ba8 <pr+0x18>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	034080e7          	jalr	52(ra) # 80002ee8 <__printf>
    80002ebc:	00048513          	mv	a0,s1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	028080e7          	jalr	40(ra) # 80002ee8 <__printf>
    80002ec8:	00002517          	auipc	a0,0x2
    80002ecc:	18850513          	addi	a0,a0,392 # 80005050 <CONSOLE_STATUS+0x40>
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	018080e7          	jalr	24(ra) # 80002ee8 <__printf>
    80002ed8:	00100793          	li	a5,1
    80002edc:	00003717          	auipc	a4,0x3
    80002ee0:	a4f72623          	sw	a5,-1460(a4) # 80005928 <panicked>
    80002ee4:	0000006f          	j	80002ee4 <panic+0x58>

0000000080002ee8 <__printf>:
    80002ee8:	f3010113          	addi	sp,sp,-208
    80002eec:	08813023          	sd	s0,128(sp)
    80002ef0:	07313423          	sd	s3,104(sp)
    80002ef4:	09010413          	addi	s0,sp,144
    80002ef8:	05813023          	sd	s8,64(sp)
    80002efc:	08113423          	sd	ra,136(sp)
    80002f00:	06913c23          	sd	s1,120(sp)
    80002f04:	07213823          	sd	s2,112(sp)
    80002f08:	07413023          	sd	s4,96(sp)
    80002f0c:	05513c23          	sd	s5,88(sp)
    80002f10:	05613823          	sd	s6,80(sp)
    80002f14:	05713423          	sd	s7,72(sp)
    80002f18:	03913c23          	sd	s9,56(sp)
    80002f1c:	03a13823          	sd	s10,48(sp)
    80002f20:	03b13423          	sd	s11,40(sp)
    80002f24:	00004317          	auipc	t1,0x4
    80002f28:	c6c30313          	addi	t1,t1,-916 # 80006b90 <pr>
    80002f2c:	01832c03          	lw	s8,24(t1)
    80002f30:	00b43423          	sd	a1,8(s0)
    80002f34:	00c43823          	sd	a2,16(s0)
    80002f38:	00d43c23          	sd	a3,24(s0)
    80002f3c:	02e43023          	sd	a4,32(s0)
    80002f40:	02f43423          	sd	a5,40(s0)
    80002f44:	03043823          	sd	a6,48(s0)
    80002f48:	03143c23          	sd	a7,56(s0)
    80002f4c:	00050993          	mv	s3,a0
    80002f50:	4a0c1663          	bnez	s8,800033fc <__printf+0x514>
    80002f54:	60098c63          	beqz	s3,8000356c <__printf+0x684>
    80002f58:	0009c503          	lbu	a0,0(s3)
    80002f5c:	00840793          	addi	a5,s0,8
    80002f60:	f6f43c23          	sd	a5,-136(s0)
    80002f64:	00000493          	li	s1,0
    80002f68:	22050063          	beqz	a0,80003188 <__printf+0x2a0>
    80002f6c:	00002a37          	lui	s4,0x2
    80002f70:	00018ab7          	lui	s5,0x18
    80002f74:	000f4b37          	lui	s6,0xf4
    80002f78:	00989bb7          	lui	s7,0x989
    80002f7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f8c:	00148c9b          	addiw	s9,s1,1
    80002f90:	02500793          	li	a5,37
    80002f94:	01998933          	add	s2,s3,s9
    80002f98:	38f51263          	bne	a0,a5,8000331c <__printf+0x434>
    80002f9c:	00094783          	lbu	a5,0(s2)
    80002fa0:	00078c9b          	sext.w	s9,a5
    80002fa4:	1e078263          	beqz	a5,80003188 <__printf+0x2a0>
    80002fa8:	0024849b          	addiw	s1,s1,2
    80002fac:	07000713          	li	a4,112
    80002fb0:	00998933          	add	s2,s3,s1
    80002fb4:	38e78a63          	beq	a5,a4,80003348 <__printf+0x460>
    80002fb8:	20f76863          	bltu	a4,a5,800031c8 <__printf+0x2e0>
    80002fbc:	42a78863          	beq	a5,a0,800033ec <__printf+0x504>
    80002fc0:	06400713          	li	a4,100
    80002fc4:	40e79663          	bne	a5,a4,800033d0 <__printf+0x4e8>
    80002fc8:	f7843783          	ld	a5,-136(s0)
    80002fcc:	0007a603          	lw	a2,0(a5)
    80002fd0:	00878793          	addi	a5,a5,8
    80002fd4:	f6f43c23          	sd	a5,-136(s0)
    80002fd8:	42064a63          	bltz	a2,8000340c <__printf+0x524>
    80002fdc:	00a00713          	li	a4,10
    80002fe0:	02e677bb          	remuw	a5,a2,a4
    80002fe4:	00002d97          	auipc	s11,0x2
    80002fe8:	2f4d8d93          	addi	s11,s11,756 # 800052d8 <digits>
    80002fec:	00900593          	li	a1,9
    80002ff0:	0006051b          	sext.w	a0,a2
    80002ff4:	00000c93          	li	s9,0
    80002ff8:	02079793          	slli	a5,a5,0x20
    80002ffc:	0207d793          	srli	a5,a5,0x20
    80003000:	00fd87b3          	add	a5,s11,a5
    80003004:	0007c783          	lbu	a5,0(a5)
    80003008:	02e656bb          	divuw	a3,a2,a4
    8000300c:	f8f40023          	sb	a5,-128(s0)
    80003010:	14c5d863          	bge	a1,a2,80003160 <__printf+0x278>
    80003014:	06300593          	li	a1,99
    80003018:	00100c93          	li	s9,1
    8000301c:	02e6f7bb          	remuw	a5,a3,a4
    80003020:	02079793          	slli	a5,a5,0x20
    80003024:	0207d793          	srli	a5,a5,0x20
    80003028:	00fd87b3          	add	a5,s11,a5
    8000302c:	0007c783          	lbu	a5,0(a5)
    80003030:	02e6d73b          	divuw	a4,a3,a4
    80003034:	f8f400a3          	sb	a5,-127(s0)
    80003038:	12a5f463          	bgeu	a1,a0,80003160 <__printf+0x278>
    8000303c:	00a00693          	li	a3,10
    80003040:	00900593          	li	a1,9
    80003044:	02d777bb          	remuw	a5,a4,a3
    80003048:	02079793          	slli	a5,a5,0x20
    8000304c:	0207d793          	srli	a5,a5,0x20
    80003050:	00fd87b3          	add	a5,s11,a5
    80003054:	0007c503          	lbu	a0,0(a5)
    80003058:	02d757bb          	divuw	a5,a4,a3
    8000305c:	f8a40123          	sb	a0,-126(s0)
    80003060:	48e5f263          	bgeu	a1,a4,800034e4 <__printf+0x5fc>
    80003064:	06300513          	li	a0,99
    80003068:	02d7f5bb          	remuw	a1,a5,a3
    8000306c:	02059593          	slli	a1,a1,0x20
    80003070:	0205d593          	srli	a1,a1,0x20
    80003074:	00bd85b3          	add	a1,s11,a1
    80003078:	0005c583          	lbu	a1,0(a1)
    8000307c:	02d7d7bb          	divuw	a5,a5,a3
    80003080:	f8b401a3          	sb	a1,-125(s0)
    80003084:	48e57263          	bgeu	a0,a4,80003508 <__printf+0x620>
    80003088:	3e700513          	li	a0,999
    8000308c:	02d7f5bb          	remuw	a1,a5,a3
    80003090:	02059593          	slli	a1,a1,0x20
    80003094:	0205d593          	srli	a1,a1,0x20
    80003098:	00bd85b3          	add	a1,s11,a1
    8000309c:	0005c583          	lbu	a1,0(a1)
    800030a0:	02d7d7bb          	divuw	a5,a5,a3
    800030a4:	f8b40223          	sb	a1,-124(s0)
    800030a8:	46e57663          	bgeu	a0,a4,80003514 <__printf+0x62c>
    800030ac:	02d7f5bb          	remuw	a1,a5,a3
    800030b0:	02059593          	slli	a1,a1,0x20
    800030b4:	0205d593          	srli	a1,a1,0x20
    800030b8:	00bd85b3          	add	a1,s11,a1
    800030bc:	0005c583          	lbu	a1,0(a1)
    800030c0:	02d7d7bb          	divuw	a5,a5,a3
    800030c4:	f8b402a3          	sb	a1,-123(s0)
    800030c8:	46ea7863          	bgeu	s4,a4,80003538 <__printf+0x650>
    800030cc:	02d7f5bb          	remuw	a1,a5,a3
    800030d0:	02059593          	slli	a1,a1,0x20
    800030d4:	0205d593          	srli	a1,a1,0x20
    800030d8:	00bd85b3          	add	a1,s11,a1
    800030dc:	0005c583          	lbu	a1,0(a1)
    800030e0:	02d7d7bb          	divuw	a5,a5,a3
    800030e4:	f8b40323          	sb	a1,-122(s0)
    800030e8:	3eeaf863          	bgeu	s5,a4,800034d8 <__printf+0x5f0>
    800030ec:	02d7f5bb          	remuw	a1,a5,a3
    800030f0:	02059593          	slli	a1,a1,0x20
    800030f4:	0205d593          	srli	a1,a1,0x20
    800030f8:	00bd85b3          	add	a1,s11,a1
    800030fc:	0005c583          	lbu	a1,0(a1)
    80003100:	02d7d7bb          	divuw	a5,a5,a3
    80003104:	f8b403a3          	sb	a1,-121(s0)
    80003108:	42eb7e63          	bgeu	s6,a4,80003544 <__printf+0x65c>
    8000310c:	02d7f5bb          	remuw	a1,a5,a3
    80003110:	02059593          	slli	a1,a1,0x20
    80003114:	0205d593          	srli	a1,a1,0x20
    80003118:	00bd85b3          	add	a1,s11,a1
    8000311c:	0005c583          	lbu	a1,0(a1)
    80003120:	02d7d7bb          	divuw	a5,a5,a3
    80003124:	f8b40423          	sb	a1,-120(s0)
    80003128:	42ebfc63          	bgeu	s7,a4,80003560 <__printf+0x678>
    8000312c:	02079793          	slli	a5,a5,0x20
    80003130:	0207d793          	srli	a5,a5,0x20
    80003134:	00fd8db3          	add	s11,s11,a5
    80003138:	000dc703          	lbu	a4,0(s11)
    8000313c:	00a00793          	li	a5,10
    80003140:	00900c93          	li	s9,9
    80003144:	f8e404a3          	sb	a4,-119(s0)
    80003148:	00065c63          	bgez	a2,80003160 <__printf+0x278>
    8000314c:	f9040713          	addi	a4,s0,-112
    80003150:	00f70733          	add	a4,a4,a5
    80003154:	02d00693          	li	a3,45
    80003158:	fed70823          	sb	a3,-16(a4)
    8000315c:	00078c93          	mv	s9,a5
    80003160:	f8040793          	addi	a5,s0,-128
    80003164:	01978cb3          	add	s9,a5,s9
    80003168:	f7f40d13          	addi	s10,s0,-129
    8000316c:	000cc503          	lbu	a0,0(s9)
    80003170:	fffc8c93          	addi	s9,s9,-1
    80003174:	00000097          	auipc	ra,0x0
    80003178:	b90080e7          	jalr	-1136(ra) # 80002d04 <consputc>
    8000317c:	ffac98e3          	bne	s9,s10,8000316c <__printf+0x284>
    80003180:	00094503          	lbu	a0,0(s2)
    80003184:	e00514e3          	bnez	a0,80002f8c <__printf+0xa4>
    80003188:	1a0c1663          	bnez	s8,80003334 <__printf+0x44c>
    8000318c:	08813083          	ld	ra,136(sp)
    80003190:	08013403          	ld	s0,128(sp)
    80003194:	07813483          	ld	s1,120(sp)
    80003198:	07013903          	ld	s2,112(sp)
    8000319c:	06813983          	ld	s3,104(sp)
    800031a0:	06013a03          	ld	s4,96(sp)
    800031a4:	05813a83          	ld	s5,88(sp)
    800031a8:	05013b03          	ld	s6,80(sp)
    800031ac:	04813b83          	ld	s7,72(sp)
    800031b0:	04013c03          	ld	s8,64(sp)
    800031b4:	03813c83          	ld	s9,56(sp)
    800031b8:	03013d03          	ld	s10,48(sp)
    800031bc:	02813d83          	ld	s11,40(sp)
    800031c0:	0d010113          	addi	sp,sp,208
    800031c4:	00008067          	ret
    800031c8:	07300713          	li	a4,115
    800031cc:	1ce78a63          	beq	a5,a4,800033a0 <__printf+0x4b8>
    800031d0:	07800713          	li	a4,120
    800031d4:	1ee79e63          	bne	a5,a4,800033d0 <__printf+0x4e8>
    800031d8:	f7843783          	ld	a5,-136(s0)
    800031dc:	0007a703          	lw	a4,0(a5)
    800031e0:	00878793          	addi	a5,a5,8
    800031e4:	f6f43c23          	sd	a5,-136(s0)
    800031e8:	28074263          	bltz	a4,8000346c <__printf+0x584>
    800031ec:	00002d97          	auipc	s11,0x2
    800031f0:	0ecd8d93          	addi	s11,s11,236 # 800052d8 <digits>
    800031f4:	00f77793          	andi	a5,a4,15
    800031f8:	00fd87b3          	add	a5,s11,a5
    800031fc:	0007c683          	lbu	a3,0(a5)
    80003200:	00f00613          	li	a2,15
    80003204:	0007079b          	sext.w	a5,a4
    80003208:	f8d40023          	sb	a3,-128(s0)
    8000320c:	0047559b          	srliw	a1,a4,0x4
    80003210:	0047569b          	srliw	a3,a4,0x4
    80003214:	00000c93          	li	s9,0
    80003218:	0ee65063          	bge	a2,a4,800032f8 <__printf+0x410>
    8000321c:	00f6f693          	andi	a3,a3,15
    80003220:	00dd86b3          	add	a3,s11,a3
    80003224:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003228:	0087d79b          	srliw	a5,a5,0x8
    8000322c:	00100c93          	li	s9,1
    80003230:	f8d400a3          	sb	a3,-127(s0)
    80003234:	0cb67263          	bgeu	a2,a1,800032f8 <__printf+0x410>
    80003238:	00f7f693          	andi	a3,a5,15
    8000323c:	00dd86b3          	add	a3,s11,a3
    80003240:	0006c583          	lbu	a1,0(a3)
    80003244:	00f00613          	li	a2,15
    80003248:	0047d69b          	srliw	a3,a5,0x4
    8000324c:	f8b40123          	sb	a1,-126(s0)
    80003250:	0047d593          	srli	a1,a5,0x4
    80003254:	28f67e63          	bgeu	a2,a5,800034f0 <__printf+0x608>
    80003258:	00f6f693          	andi	a3,a3,15
    8000325c:	00dd86b3          	add	a3,s11,a3
    80003260:	0006c503          	lbu	a0,0(a3)
    80003264:	0087d813          	srli	a6,a5,0x8
    80003268:	0087d69b          	srliw	a3,a5,0x8
    8000326c:	f8a401a3          	sb	a0,-125(s0)
    80003270:	28b67663          	bgeu	a2,a1,800034fc <__printf+0x614>
    80003274:	00f6f693          	andi	a3,a3,15
    80003278:	00dd86b3          	add	a3,s11,a3
    8000327c:	0006c583          	lbu	a1,0(a3)
    80003280:	00c7d513          	srli	a0,a5,0xc
    80003284:	00c7d69b          	srliw	a3,a5,0xc
    80003288:	f8b40223          	sb	a1,-124(s0)
    8000328c:	29067a63          	bgeu	a2,a6,80003520 <__printf+0x638>
    80003290:	00f6f693          	andi	a3,a3,15
    80003294:	00dd86b3          	add	a3,s11,a3
    80003298:	0006c583          	lbu	a1,0(a3)
    8000329c:	0107d813          	srli	a6,a5,0x10
    800032a0:	0107d69b          	srliw	a3,a5,0x10
    800032a4:	f8b402a3          	sb	a1,-123(s0)
    800032a8:	28a67263          	bgeu	a2,a0,8000352c <__printf+0x644>
    800032ac:	00f6f693          	andi	a3,a3,15
    800032b0:	00dd86b3          	add	a3,s11,a3
    800032b4:	0006c683          	lbu	a3,0(a3)
    800032b8:	0147d79b          	srliw	a5,a5,0x14
    800032bc:	f8d40323          	sb	a3,-122(s0)
    800032c0:	21067663          	bgeu	a2,a6,800034cc <__printf+0x5e4>
    800032c4:	02079793          	slli	a5,a5,0x20
    800032c8:	0207d793          	srli	a5,a5,0x20
    800032cc:	00fd8db3          	add	s11,s11,a5
    800032d0:	000dc683          	lbu	a3,0(s11)
    800032d4:	00800793          	li	a5,8
    800032d8:	00700c93          	li	s9,7
    800032dc:	f8d403a3          	sb	a3,-121(s0)
    800032e0:	00075c63          	bgez	a4,800032f8 <__printf+0x410>
    800032e4:	f9040713          	addi	a4,s0,-112
    800032e8:	00f70733          	add	a4,a4,a5
    800032ec:	02d00693          	li	a3,45
    800032f0:	fed70823          	sb	a3,-16(a4)
    800032f4:	00078c93          	mv	s9,a5
    800032f8:	f8040793          	addi	a5,s0,-128
    800032fc:	01978cb3          	add	s9,a5,s9
    80003300:	f7f40d13          	addi	s10,s0,-129
    80003304:	000cc503          	lbu	a0,0(s9)
    80003308:	fffc8c93          	addi	s9,s9,-1
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	9f8080e7          	jalr	-1544(ra) # 80002d04 <consputc>
    80003314:	ff9d18e3          	bne	s10,s9,80003304 <__printf+0x41c>
    80003318:	0100006f          	j	80003328 <__printf+0x440>
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	9e8080e7          	jalr	-1560(ra) # 80002d04 <consputc>
    80003324:	000c8493          	mv	s1,s9
    80003328:	00094503          	lbu	a0,0(s2)
    8000332c:	c60510e3          	bnez	a0,80002f8c <__printf+0xa4>
    80003330:	e40c0ee3          	beqz	s8,8000318c <__printf+0x2a4>
    80003334:	00004517          	auipc	a0,0x4
    80003338:	85c50513          	addi	a0,a0,-1956 # 80006b90 <pr>
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	94c080e7          	jalr	-1716(ra) # 80003c88 <release>
    80003344:	e49ff06f          	j	8000318c <__printf+0x2a4>
    80003348:	f7843783          	ld	a5,-136(s0)
    8000334c:	03000513          	li	a0,48
    80003350:	01000d13          	li	s10,16
    80003354:	00878713          	addi	a4,a5,8
    80003358:	0007bc83          	ld	s9,0(a5)
    8000335c:	f6e43c23          	sd	a4,-136(s0)
    80003360:	00000097          	auipc	ra,0x0
    80003364:	9a4080e7          	jalr	-1628(ra) # 80002d04 <consputc>
    80003368:	07800513          	li	a0,120
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	998080e7          	jalr	-1640(ra) # 80002d04 <consputc>
    80003374:	00002d97          	auipc	s11,0x2
    80003378:	f64d8d93          	addi	s11,s11,-156 # 800052d8 <digits>
    8000337c:	03ccd793          	srli	a5,s9,0x3c
    80003380:	00fd87b3          	add	a5,s11,a5
    80003384:	0007c503          	lbu	a0,0(a5)
    80003388:	fffd0d1b          	addiw	s10,s10,-1
    8000338c:	004c9c93          	slli	s9,s9,0x4
    80003390:	00000097          	auipc	ra,0x0
    80003394:	974080e7          	jalr	-1676(ra) # 80002d04 <consputc>
    80003398:	fe0d12e3          	bnez	s10,8000337c <__printf+0x494>
    8000339c:	f8dff06f          	j	80003328 <__printf+0x440>
    800033a0:	f7843783          	ld	a5,-136(s0)
    800033a4:	0007bc83          	ld	s9,0(a5)
    800033a8:	00878793          	addi	a5,a5,8
    800033ac:	f6f43c23          	sd	a5,-136(s0)
    800033b0:	000c9a63          	bnez	s9,800033c4 <__printf+0x4dc>
    800033b4:	1080006f          	j	800034bc <__printf+0x5d4>
    800033b8:	001c8c93          	addi	s9,s9,1
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	948080e7          	jalr	-1720(ra) # 80002d04 <consputc>
    800033c4:	000cc503          	lbu	a0,0(s9)
    800033c8:	fe0518e3          	bnez	a0,800033b8 <__printf+0x4d0>
    800033cc:	f5dff06f          	j	80003328 <__printf+0x440>
    800033d0:	02500513          	li	a0,37
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	930080e7          	jalr	-1744(ra) # 80002d04 <consputc>
    800033dc:	000c8513          	mv	a0,s9
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	924080e7          	jalr	-1756(ra) # 80002d04 <consputc>
    800033e8:	f41ff06f          	j	80003328 <__printf+0x440>
    800033ec:	02500513          	li	a0,37
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	914080e7          	jalr	-1772(ra) # 80002d04 <consputc>
    800033f8:	f31ff06f          	j	80003328 <__printf+0x440>
    800033fc:	00030513          	mv	a0,t1
    80003400:	00000097          	auipc	ra,0x0
    80003404:	7bc080e7          	jalr	1980(ra) # 80003bbc <acquire>
    80003408:	b4dff06f          	j	80002f54 <__printf+0x6c>
    8000340c:	40c0053b          	negw	a0,a2
    80003410:	00a00713          	li	a4,10
    80003414:	02e576bb          	remuw	a3,a0,a4
    80003418:	00002d97          	auipc	s11,0x2
    8000341c:	ec0d8d93          	addi	s11,s11,-320 # 800052d8 <digits>
    80003420:	ff700593          	li	a1,-9
    80003424:	02069693          	slli	a3,a3,0x20
    80003428:	0206d693          	srli	a3,a3,0x20
    8000342c:	00dd86b3          	add	a3,s11,a3
    80003430:	0006c683          	lbu	a3,0(a3)
    80003434:	02e557bb          	divuw	a5,a0,a4
    80003438:	f8d40023          	sb	a3,-128(s0)
    8000343c:	10b65e63          	bge	a2,a1,80003558 <__printf+0x670>
    80003440:	06300593          	li	a1,99
    80003444:	02e7f6bb          	remuw	a3,a5,a4
    80003448:	02069693          	slli	a3,a3,0x20
    8000344c:	0206d693          	srli	a3,a3,0x20
    80003450:	00dd86b3          	add	a3,s11,a3
    80003454:	0006c683          	lbu	a3,0(a3)
    80003458:	02e7d73b          	divuw	a4,a5,a4
    8000345c:	00200793          	li	a5,2
    80003460:	f8d400a3          	sb	a3,-127(s0)
    80003464:	bca5ece3          	bltu	a1,a0,8000303c <__printf+0x154>
    80003468:	ce5ff06f          	j	8000314c <__printf+0x264>
    8000346c:	40e007bb          	negw	a5,a4
    80003470:	00002d97          	auipc	s11,0x2
    80003474:	e68d8d93          	addi	s11,s11,-408 # 800052d8 <digits>
    80003478:	00f7f693          	andi	a3,a5,15
    8000347c:	00dd86b3          	add	a3,s11,a3
    80003480:	0006c583          	lbu	a1,0(a3)
    80003484:	ff100613          	li	a2,-15
    80003488:	0047d69b          	srliw	a3,a5,0x4
    8000348c:	f8b40023          	sb	a1,-128(s0)
    80003490:	0047d59b          	srliw	a1,a5,0x4
    80003494:	0ac75e63          	bge	a4,a2,80003550 <__printf+0x668>
    80003498:	00f6f693          	andi	a3,a3,15
    8000349c:	00dd86b3          	add	a3,s11,a3
    800034a0:	0006c603          	lbu	a2,0(a3)
    800034a4:	00f00693          	li	a3,15
    800034a8:	0087d79b          	srliw	a5,a5,0x8
    800034ac:	f8c400a3          	sb	a2,-127(s0)
    800034b0:	d8b6e4e3          	bltu	a3,a1,80003238 <__printf+0x350>
    800034b4:	00200793          	li	a5,2
    800034b8:	e2dff06f          	j	800032e4 <__printf+0x3fc>
    800034bc:	00002c97          	auipc	s9,0x2
    800034c0:	dfcc8c93          	addi	s9,s9,-516 # 800052b8 <_ZZ12printIntegermE6digits+0x1b0>
    800034c4:	02800513          	li	a0,40
    800034c8:	ef1ff06f          	j	800033b8 <__printf+0x4d0>
    800034cc:	00700793          	li	a5,7
    800034d0:	00600c93          	li	s9,6
    800034d4:	e0dff06f          	j	800032e0 <__printf+0x3f8>
    800034d8:	00700793          	li	a5,7
    800034dc:	00600c93          	li	s9,6
    800034e0:	c69ff06f          	j	80003148 <__printf+0x260>
    800034e4:	00300793          	li	a5,3
    800034e8:	00200c93          	li	s9,2
    800034ec:	c5dff06f          	j	80003148 <__printf+0x260>
    800034f0:	00300793          	li	a5,3
    800034f4:	00200c93          	li	s9,2
    800034f8:	de9ff06f          	j	800032e0 <__printf+0x3f8>
    800034fc:	00400793          	li	a5,4
    80003500:	00300c93          	li	s9,3
    80003504:	dddff06f          	j	800032e0 <__printf+0x3f8>
    80003508:	00400793          	li	a5,4
    8000350c:	00300c93          	li	s9,3
    80003510:	c39ff06f          	j	80003148 <__printf+0x260>
    80003514:	00500793          	li	a5,5
    80003518:	00400c93          	li	s9,4
    8000351c:	c2dff06f          	j	80003148 <__printf+0x260>
    80003520:	00500793          	li	a5,5
    80003524:	00400c93          	li	s9,4
    80003528:	db9ff06f          	j	800032e0 <__printf+0x3f8>
    8000352c:	00600793          	li	a5,6
    80003530:	00500c93          	li	s9,5
    80003534:	dadff06f          	j	800032e0 <__printf+0x3f8>
    80003538:	00600793          	li	a5,6
    8000353c:	00500c93          	li	s9,5
    80003540:	c09ff06f          	j	80003148 <__printf+0x260>
    80003544:	00800793          	li	a5,8
    80003548:	00700c93          	li	s9,7
    8000354c:	bfdff06f          	j	80003148 <__printf+0x260>
    80003550:	00100793          	li	a5,1
    80003554:	d91ff06f          	j	800032e4 <__printf+0x3fc>
    80003558:	00100793          	li	a5,1
    8000355c:	bf1ff06f          	j	8000314c <__printf+0x264>
    80003560:	00900793          	li	a5,9
    80003564:	00800c93          	li	s9,8
    80003568:	be1ff06f          	j	80003148 <__printf+0x260>
    8000356c:	00002517          	auipc	a0,0x2
    80003570:	d5450513          	addi	a0,a0,-684 # 800052c0 <_ZZ12printIntegermE6digits+0x1b8>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	918080e7          	jalr	-1768(ra) # 80002e8c <panic>

000000008000357c <printfinit>:
    8000357c:	fe010113          	addi	sp,sp,-32
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	00113c23          	sd	ra,24(sp)
    8000358c:	02010413          	addi	s0,sp,32
    80003590:	00003497          	auipc	s1,0x3
    80003594:	60048493          	addi	s1,s1,1536 # 80006b90 <pr>
    80003598:	00048513          	mv	a0,s1
    8000359c:	00002597          	auipc	a1,0x2
    800035a0:	d3458593          	addi	a1,a1,-716 # 800052d0 <_ZZ12printIntegermE6digits+0x1c8>
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	5f4080e7          	jalr	1524(ra) # 80003b98 <initlock>
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	0004ac23          	sw	zero,24(s1)
    800035b8:	00813483          	ld	s1,8(sp)
    800035bc:	02010113          	addi	sp,sp,32
    800035c0:	00008067          	ret

00000000800035c4 <uartinit>:
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00813423          	sd	s0,8(sp)
    800035cc:	01010413          	addi	s0,sp,16
    800035d0:	100007b7          	lui	a5,0x10000
    800035d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800035d8:	f8000713          	li	a4,-128
    800035dc:	00e781a3          	sb	a4,3(a5)
    800035e0:	00300713          	li	a4,3
    800035e4:	00e78023          	sb	a4,0(a5)
    800035e8:	000780a3          	sb	zero,1(a5)
    800035ec:	00e781a3          	sb	a4,3(a5)
    800035f0:	00700693          	li	a3,7
    800035f4:	00d78123          	sb	a3,2(a5)
    800035f8:	00e780a3          	sb	a4,1(a5)
    800035fc:	00813403          	ld	s0,8(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <uartputc>:
    80003608:	00002797          	auipc	a5,0x2
    8000360c:	3207a783          	lw	a5,800(a5) # 80005928 <panicked>
    80003610:	00078463          	beqz	a5,80003618 <uartputc+0x10>
    80003614:	0000006f          	j	80003614 <uartputc+0xc>
    80003618:	fd010113          	addi	sp,sp,-48
    8000361c:	02813023          	sd	s0,32(sp)
    80003620:	00913c23          	sd	s1,24(sp)
    80003624:	01213823          	sd	s2,16(sp)
    80003628:	01313423          	sd	s3,8(sp)
    8000362c:	02113423          	sd	ra,40(sp)
    80003630:	03010413          	addi	s0,sp,48
    80003634:	00002917          	auipc	s2,0x2
    80003638:	2fc90913          	addi	s2,s2,764 # 80005930 <uart_tx_r>
    8000363c:	00093783          	ld	a5,0(s2)
    80003640:	00002497          	auipc	s1,0x2
    80003644:	2f848493          	addi	s1,s1,760 # 80005938 <uart_tx_w>
    80003648:	0004b703          	ld	a4,0(s1)
    8000364c:	02078693          	addi	a3,a5,32
    80003650:	00050993          	mv	s3,a0
    80003654:	02e69c63          	bne	a3,a4,8000368c <uartputc+0x84>
    80003658:	00001097          	auipc	ra,0x1
    8000365c:	834080e7          	jalr	-1996(ra) # 80003e8c <push_on>
    80003660:	00093783          	ld	a5,0(s2)
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	02078793          	addi	a5,a5,32
    8000366c:	00e79463          	bne	a5,a4,80003674 <uartputc+0x6c>
    80003670:	0000006f          	j	80003670 <uartputc+0x68>
    80003674:	00001097          	auipc	ra,0x1
    80003678:	88c080e7          	jalr	-1908(ra) # 80003f00 <pop_on>
    8000367c:	00093783          	ld	a5,0(s2)
    80003680:	0004b703          	ld	a4,0(s1)
    80003684:	02078693          	addi	a3,a5,32
    80003688:	fce688e3          	beq	a3,a4,80003658 <uartputc+0x50>
    8000368c:	01f77693          	andi	a3,a4,31
    80003690:	00003597          	auipc	a1,0x3
    80003694:	52058593          	addi	a1,a1,1312 # 80006bb0 <uart_tx_buf>
    80003698:	00d586b3          	add	a3,a1,a3
    8000369c:	00170713          	addi	a4,a4,1
    800036a0:	01368023          	sb	s3,0(a3)
    800036a4:	00e4b023          	sd	a4,0(s1)
    800036a8:	10000637          	lui	a2,0x10000
    800036ac:	02f71063          	bne	a4,a5,800036cc <uartputc+0xc4>
    800036b0:	0340006f          	j	800036e4 <uartputc+0xdc>
    800036b4:	00074703          	lbu	a4,0(a4)
    800036b8:	00f93023          	sd	a5,0(s2)
    800036bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800036c0:	00093783          	ld	a5,0(s2)
    800036c4:	0004b703          	ld	a4,0(s1)
    800036c8:	00f70e63          	beq	a4,a5,800036e4 <uartputc+0xdc>
    800036cc:	00564683          	lbu	a3,5(a2)
    800036d0:	01f7f713          	andi	a4,a5,31
    800036d4:	00e58733          	add	a4,a1,a4
    800036d8:	0206f693          	andi	a3,a3,32
    800036dc:	00178793          	addi	a5,a5,1
    800036e0:	fc069ae3          	bnez	a3,800036b4 <uartputc+0xac>
    800036e4:	02813083          	ld	ra,40(sp)
    800036e8:	02013403          	ld	s0,32(sp)
    800036ec:	01813483          	ld	s1,24(sp)
    800036f0:	01013903          	ld	s2,16(sp)
    800036f4:	00813983          	ld	s3,8(sp)
    800036f8:	03010113          	addi	sp,sp,48
    800036fc:	00008067          	ret

0000000080003700 <uartputc_sync>:
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00813423          	sd	s0,8(sp)
    80003708:	01010413          	addi	s0,sp,16
    8000370c:	00002717          	auipc	a4,0x2
    80003710:	21c72703          	lw	a4,540(a4) # 80005928 <panicked>
    80003714:	02071663          	bnez	a4,80003740 <uartputc_sync+0x40>
    80003718:	00050793          	mv	a5,a0
    8000371c:	100006b7          	lui	a3,0x10000
    80003720:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003724:	02077713          	andi	a4,a4,32
    80003728:	fe070ce3          	beqz	a4,80003720 <uartputc_sync+0x20>
    8000372c:	0ff7f793          	andi	a5,a5,255
    80003730:	00f68023          	sb	a5,0(a3)
    80003734:	00813403          	ld	s0,8(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret
    80003740:	0000006f          	j	80003740 <uartputc_sync+0x40>

0000000080003744 <uartstart>:
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00813423          	sd	s0,8(sp)
    8000374c:	01010413          	addi	s0,sp,16
    80003750:	00002617          	auipc	a2,0x2
    80003754:	1e060613          	addi	a2,a2,480 # 80005930 <uart_tx_r>
    80003758:	00002517          	auipc	a0,0x2
    8000375c:	1e050513          	addi	a0,a0,480 # 80005938 <uart_tx_w>
    80003760:	00063783          	ld	a5,0(a2)
    80003764:	00053703          	ld	a4,0(a0)
    80003768:	04f70263          	beq	a4,a5,800037ac <uartstart+0x68>
    8000376c:	100005b7          	lui	a1,0x10000
    80003770:	00003817          	auipc	a6,0x3
    80003774:	44080813          	addi	a6,a6,1088 # 80006bb0 <uart_tx_buf>
    80003778:	01c0006f          	j	80003794 <uartstart+0x50>
    8000377c:	0006c703          	lbu	a4,0(a3)
    80003780:	00f63023          	sd	a5,0(a2)
    80003784:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003788:	00063783          	ld	a5,0(a2)
    8000378c:	00053703          	ld	a4,0(a0)
    80003790:	00f70e63          	beq	a4,a5,800037ac <uartstart+0x68>
    80003794:	01f7f713          	andi	a4,a5,31
    80003798:	00e806b3          	add	a3,a6,a4
    8000379c:	0055c703          	lbu	a4,5(a1)
    800037a0:	00178793          	addi	a5,a5,1
    800037a4:	02077713          	andi	a4,a4,32
    800037a8:	fc071ae3          	bnez	a4,8000377c <uartstart+0x38>
    800037ac:	00813403          	ld	s0,8(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <uartgetc>:
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00813423          	sd	s0,8(sp)
    800037c0:	01010413          	addi	s0,sp,16
    800037c4:	10000737          	lui	a4,0x10000
    800037c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800037cc:	0017f793          	andi	a5,a5,1
    800037d0:	00078c63          	beqz	a5,800037e8 <uartgetc+0x30>
    800037d4:	00074503          	lbu	a0,0(a4)
    800037d8:	0ff57513          	andi	a0,a0,255
    800037dc:	00813403          	ld	s0,8(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret
    800037e8:	fff00513          	li	a0,-1
    800037ec:	ff1ff06f          	j	800037dc <uartgetc+0x24>

00000000800037f0 <uartintr>:
    800037f0:	100007b7          	lui	a5,0x10000
    800037f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800037f8:	0017f793          	andi	a5,a5,1
    800037fc:	0a078463          	beqz	a5,800038a4 <uartintr+0xb4>
    80003800:	fe010113          	addi	sp,sp,-32
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	02010413          	addi	s0,sp,32
    80003814:	100004b7          	lui	s1,0x10000
    80003818:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000381c:	0ff57513          	andi	a0,a0,255
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	534080e7          	jalr	1332(ra) # 80002d54 <consoleintr>
    80003828:	0054c783          	lbu	a5,5(s1)
    8000382c:	0017f793          	andi	a5,a5,1
    80003830:	fe0794e3          	bnez	a5,80003818 <uartintr+0x28>
    80003834:	00002617          	auipc	a2,0x2
    80003838:	0fc60613          	addi	a2,a2,252 # 80005930 <uart_tx_r>
    8000383c:	00002517          	auipc	a0,0x2
    80003840:	0fc50513          	addi	a0,a0,252 # 80005938 <uart_tx_w>
    80003844:	00063783          	ld	a5,0(a2)
    80003848:	00053703          	ld	a4,0(a0)
    8000384c:	04f70263          	beq	a4,a5,80003890 <uartintr+0xa0>
    80003850:	100005b7          	lui	a1,0x10000
    80003854:	00003817          	auipc	a6,0x3
    80003858:	35c80813          	addi	a6,a6,860 # 80006bb0 <uart_tx_buf>
    8000385c:	01c0006f          	j	80003878 <uartintr+0x88>
    80003860:	0006c703          	lbu	a4,0(a3)
    80003864:	00f63023          	sd	a5,0(a2)
    80003868:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000386c:	00063783          	ld	a5,0(a2)
    80003870:	00053703          	ld	a4,0(a0)
    80003874:	00f70e63          	beq	a4,a5,80003890 <uartintr+0xa0>
    80003878:	01f7f713          	andi	a4,a5,31
    8000387c:	00e806b3          	add	a3,a6,a4
    80003880:	0055c703          	lbu	a4,5(a1)
    80003884:	00178793          	addi	a5,a5,1
    80003888:	02077713          	andi	a4,a4,32
    8000388c:	fc071ae3          	bnez	a4,80003860 <uartintr+0x70>
    80003890:	01813083          	ld	ra,24(sp)
    80003894:	01013403          	ld	s0,16(sp)
    80003898:	00813483          	ld	s1,8(sp)
    8000389c:	02010113          	addi	sp,sp,32
    800038a0:	00008067          	ret
    800038a4:	00002617          	auipc	a2,0x2
    800038a8:	08c60613          	addi	a2,a2,140 # 80005930 <uart_tx_r>
    800038ac:	00002517          	auipc	a0,0x2
    800038b0:	08c50513          	addi	a0,a0,140 # 80005938 <uart_tx_w>
    800038b4:	00063783          	ld	a5,0(a2)
    800038b8:	00053703          	ld	a4,0(a0)
    800038bc:	04f70263          	beq	a4,a5,80003900 <uartintr+0x110>
    800038c0:	100005b7          	lui	a1,0x10000
    800038c4:	00003817          	auipc	a6,0x3
    800038c8:	2ec80813          	addi	a6,a6,748 # 80006bb0 <uart_tx_buf>
    800038cc:	01c0006f          	j	800038e8 <uartintr+0xf8>
    800038d0:	0006c703          	lbu	a4,0(a3)
    800038d4:	00f63023          	sd	a5,0(a2)
    800038d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038dc:	00063783          	ld	a5,0(a2)
    800038e0:	00053703          	ld	a4,0(a0)
    800038e4:	02f70063          	beq	a4,a5,80003904 <uartintr+0x114>
    800038e8:	01f7f713          	andi	a4,a5,31
    800038ec:	00e806b3          	add	a3,a6,a4
    800038f0:	0055c703          	lbu	a4,5(a1)
    800038f4:	00178793          	addi	a5,a5,1
    800038f8:	02077713          	andi	a4,a4,32
    800038fc:	fc071ae3          	bnez	a4,800038d0 <uartintr+0xe0>
    80003900:	00008067          	ret
    80003904:	00008067          	ret

0000000080003908 <kinit>:
    80003908:	fc010113          	addi	sp,sp,-64
    8000390c:	02913423          	sd	s1,40(sp)
    80003910:	fffff7b7          	lui	a5,0xfffff
    80003914:	00004497          	auipc	s1,0x4
    80003918:	2bb48493          	addi	s1,s1,699 # 80007bcf <end+0xfff>
    8000391c:	02813823          	sd	s0,48(sp)
    80003920:	01313c23          	sd	s3,24(sp)
    80003924:	00f4f4b3          	and	s1,s1,a5
    80003928:	02113c23          	sd	ra,56(sp)
    8000392c:	03213023          	sd	s2,32(sp)
    80003930:	01413823          	sd	s4,16(sp)
    80003934:	01513423          	sd	s5,8(sp)
    80003938:	04010413          	addi	s0,sp,64
    8000393c:	000017b7          	lui	a5,0x1
    80003940:	01100993          	li	s3,17
    80003944:	00f487b3          	add	a5,s1,a5
    80003948:	01b99993          	slli	s3,s3,0x1b
    8000394c:	06f9e063          	bltu	s3,a5,800039ac <kinit+0xa4>
    80003950:	00003a97          	auipc	s5,0x3
    80003954:	280a8a93          	addi	s5,s5,640 # 80006bd0 <end>
    80003958:	0754ec63          	bltu	s1,s5,800039d0 <kinit+0xc8>
    8000395c:	0734fa63          	bgeu	s1,s3,800039d0 <kinit+0xc8>
    80003960:	00088a37          	lui	s4,0x88
    80003964:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003968:	00002917          	auipc	s2,0x2
    8000396c:	fd890913          	addi	s2,s2,-40 # 80005940 <kmem>
    80003970:	00ca1a13          	slli	s4,s4,0xc
    80003974:	0140006f          	j	80003988 <kinit+0x80>
    80003978:	000017b7          	lui	a5,0x1
    8000397c:	00f484b3          	add	s1,s1,a5
    80003980:	0554e863          	bltu	s1,s5,800039d0 <kinit+0xc8>
    80003984:	0534f663          	bgeu	s1,s3,800039d0 <kinit+0xc8>
    80003988:	00001637          	lui	a2,0x1
    8000398c:	00100593          	li	a1,1
    80003990:	00048513          	mv	a0,s1
    80003994:	00000097          	auipc	ra,0x0
    80003998:	5e4080e7          	jalr	1508(ra) # 80003f78 <__memset>
    8000399c:	00093783          	ld	a5,0(s2)
    800039a0:	00f4b023          	sd	a5,0(s1)
    800039a4:	00993023          	sd	s1,0(s2)
    800039a8:	fd4498e3          	bne	s1,s4,80003978 <kinit+0x70>
    800039ac:	03813083          	ld	ra,56(sp)
    800039b0:	03013403          	ld	s0,48(sp)
    800039b4:	02813483          	ld	s1,40(sp)
    800039b8:	02013903          	ld	s2,32(sp)
    800039bc:	01813983          	ld	s3,24(sp)
    800039c0:	01013a03          	ld	s4,16(sp)
    800039c4:	00813a83          	ld	s5,8(sp)
    800039c8:	04010113          	addi	sp,sp,64
    800039cc:	00008067          	ret
    800039d0:	00002517          	auipc	a0,0x2
    800039d4:	92050513          	addi	a0,a0,-1760 # 800052f0 <digits+0x18>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	4b4080e7          	jalr	1204(ra) # 80002e8c <panic>

00000000800039e0 <freerange>:
    800039e0:	fc010113          	addi	sp,sp,-64
    800039e4:	000017b7          	lui	a5,0x1
    800039e8:	02913423          	sd	s1,40(sp)
    800039ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800039f0:	009504b3          	add	s1,a0,s1
    800039f4:	fffff537          	lui	a0,0xfffff
    800039f8:	02813823          	sd	s0,48(sp)
    800039fc:	02113c23          	sd	ra,56(sp)
    80003a00:	03213023          	sd	s2,32(sp)
    80003a04:	01313c23          	sd	s3,24(sp)
    80003a08:	01413823          	sd	s4,16(sp)
    80003a0c:	01513423          	sd	s5,8(sp)
    80003a10:	01613023          	sd	s6,0(sp)
    80003a14:	04010413          	addi	s0,sp,64
    80003a18:	00a4f4b3          	and	s1,s1,a0
    80003a1c:	00f487b3          	add	a5,s1,a5
    80003a20:	06f5e463          	bltu	a1,a5,80003a88 <freerange+0xa8>
    80003a24:	00003a97          	auipc	s5,0x3
    80003a28:	1aca8a93          	addi	s5,s5,428 # 80006bd0 <end>
    80003a2c:	0954e263          	bltu	s1,s5,80003ab0 <freerange+0xd0>
    80003a30:	01100993          	li	s3,17
    80003a34:	01b99993          	slli	s3,s3,0x1b
    80003a38:	0734fc63          	bgeu	s1,s3,80003ab0 <freerange+0xd0>
    80003a3c:	00058a13          	mv	s4,a1
    80003a40:	00002917          	auipc	s2,0x2
    80003a44:	f0090913          	addi	s2,s2,-256 # 80005940 <kmem>
    80003a48:	00002b37          	lui	s6,0x2
    80003a4c:	0140006f          	j	80003a60 <freerange+0x80>
    80003a50:	000017b7          	lui	a5,0x1
    80003a54:	00f484b3          	add	s1,s1,a5
    80003a58:	0554ec63          	bltu	s1,s5,80003ab0 <freerange+0xd0>
    80003a5c:	0534fa63          	bgeu	s1,s3,80003ab0 <freerange+0xd0>
    80003a60:	00001637          	lui	a2,0x1
    80003a64:	00100593          	li	a1,1
    80003a68:	00048513          	mv	a0,s1
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	50c080e7          	jalr	1292(ra) # 80003f78 <__memset>
    80003a74:	00093703          	ld	a4,0(s2)
    80003a78:	016487b3          	add	a5,s1,s6
    80003a7c:	00e4b023          	sd	a4,0(s1)
    80003a80:	00993023          	sd	s1,0(s2)
    80003a84:	fcfa76e3          	bgeu	s4,a5,80003a50 <freerange+0x70>
    80003a88:	03813083          	ld	ra,56(sp)
    80003a8c:	03013403          	ld	s0,48(sp)
    80003a90:	02813483          	ld	s1,40(sp)
    80003a94:	02013903          	ld	s2,32(sp)
    80003a98:	01813983          	ld	s3,24(sp)
    80003a9c:	01013a03          	ld	s4,16(sp)
    80003aa0:	00813a83          	ld	s5,8(sp)
    80003aa4:	00013b03          	ld	s6,0(sp)
    80003aa8:	04010113          	addi	sp,sp,64
    80003aac:	00008067          	ret
    80003ab0:	00002517          	auipc	a0,0x2
    80003ab4:	84050513          	addi	a0,a0,-1984 # 800052f0 <digits+0x18>
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	3d4080e7          	jalr	980(ra) # 80002e8c <panic>

0000000080003ac0 <kfree>:
    80003ac0:	fe010113          	addi	sp,sp,-32
    80003ac4:	00813823          	sd	s0,16(sp)
    80003ac8:	00113c23          	sd	ra,24(sp)
    80003acc:	00913423          	sd	s1,8(sp)
    80003ad0:	02010413          	addi	s0,sp,32
    80003ad4:	03451793          	slli	a5,a0,0x34
    80003ad8:	04079c63          	bnez	a5,80003b30 <kfree+0x70>
    80003adc:	00003797          	auipc	a5,0x3
    80003ae0:	0f478793          	addi	a5,a5,244 # 80006bd0 <end>
    80003ae4:	00050493          	mv	s1,a0
    80003ae8:	04f56463          	bltu	a0,a5,80003b30 <kfree+0x70>
    80003aec:	01100793          	li	a5,17
    80003af0:	01b79793          	slli	a5,a5,0x1b
    80003af4:	02f57e63          	bgeu	a0,a5,80003b30 <kfree+0x70>
    80003af8:	00001637          	lui	a2,0x1
    80003afc:	00100593          	li	a1,1
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	478080e7          	jalr	1144(ra) # 80003f78 <__memset>
    80003b08:	00002797          	auipc	a5,0x2
    80003b0c:	e3878793          	addi	a5,a5,-456 # 80005940 <kmem>
    80003b10:	0007b703          	ld	a4,0(a5)
    80003b14:	01813083          	ld	ra,24(sp)
    80003b18:	01013403          	ld	s0,16(sp)
    80003b1c:	00e4b023          	sd	a4,0(s1)
    80003b20:	0097b023          	sd	s1,0(a5)
    80003b24:	00813483          	ld	s1,8(sp)
    80003b28:	02010113          	addi	sp,sp,32
    80003b2c:	00008067          	ret
    80003b30:	00001517          	auipc	a0,0x1
    80003b34:	7c050513          	addi	a0,a0,1984 # 800052f0 <digits+0x18>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	354080e7          	jalr	852(ra) # 80002e8c <panic>

0000000080003b40 <kalloc>:
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	00002797          	auipc	a5,0x2
    80003b58:	dec78793          	addi	a5,a5,-532 # 80005940 <kmem>
    80003b5c:	0007b483          	ld	s1,0(a5)
    80003b60:	02048063          	beqz	s1,80003b80 <kalloc+0x40>
    80003b64:	0004b703          	ld	a4,0(s1)
    80003b68:	00001637          	lui	a2,0x1
    80003b6c:	00500593          	li	a1,5
    80003b70:	00048513          	mv	a0,s1
    80003b74:	00e7b023          	sd	a4,0(a5)
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	400080e7          	jalr	1024(ra) # 80003f78 <__memset>
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	01013403          	ld	s0,16(sp)
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	00813483          	ld	s1,8(sp)
    80003b90:	02010113          	addi	sp,sp,32
    80003b94:	00008067          	ret

0000000080003b98 <initlock>:
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00813423          	sd	s0,8(sp)
    80003ba0:	01010413          	addi	s0,sp,16
    80003ba4:	00813403          	ld	s0,8(sp)
    80003ba8:	00b53423          	sd	a1,8(a0)
    80003bac:	00052023          	sw	zero,0(a0)
    80003bb0:	00053823          	sd	zero,16(a0)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret

0000000080003bbc <acquire>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00913423          	sd	s1,8(sp)
    80003bc8:	00113c23          	sd	ra,24(sp)
    80003bcc:	01213023          	sd	s2,0(sp)
    80003bd0:	02010413          	addi	s0,sp,32
    80003bd4:	00050493          	mv	s1,a0
    80003bd8:	10002973          	csrr	s2,sstatus
    80003bdc:	100027f3          	csrr	a5,sstatus
    80003be0:	ffd7f793          	andi	a5,a5,-3
    80003be4:	10079073          	csrw	sstatus,a5
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	8e4080e7          	jalr	-1820(ra) # 800024cc <mycpu>
    80003bf0:	07852783          	lw	a5,120(a0)
    80003bf4:	06078e63          	beqz	a5,80003c70 <acquire+0xb4>
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	8d4080e7          	jalr	-1836(ra) # 800024cc <mycpu>
    80003c00:	07852783          	lw	a5,120(a0)
    80003c04:	0004a703          	lw	a4,0(s1)
    80003c08:	0017879b          	addiw	a5,a5,1
    80003c0c:	06f52c23          	sw	a5,120(a0)
    80003c10:	04071063          	bnez	a4,80003c50 <acquire+0x94>
    80003c14:	00100713          	li	a4,1
    80003c18:	00070793          	mv	a5,a4
    80003c1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003c20:	0007879b          	sext.w	a5,a5
    80003c24:	fe079ae3          	bnez	a5,80003c18 <acquire+0x5c>
    80003c28:	0ff0000f          	fence
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	8a0080e7          	jalr	-1888(ra) # 800024cc <mycpu>
    80003c34:	01813083          	ld	ra,24(sp)
    80003c38:	01013403          	ld	s0,16(sp)
    80003c3c:	00a4b823          	sd	a0,16(s1)
    80003c40:	00013903          	ld	s2,0(sp)
    80003c44:	00813483          	ld	s1,8(sp)
    80003c48:	02010113          	addi	sp,sp,32
    80003c4c:	00008067          	ret
    80003c50:	0104b903          	ld	s2,16(s1)
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	878080e7          	jalr	-1928(ra) # 800024cc <mycpu>
    80003c5c:	faa91ce3          	bne	s2,a0,80003c14 <acquire+0x58>
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	69850513          	addi	a0,a0,1688 # 800052f8 <digits+0x20>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	224080e7          	jalr	548(ra) # 80002e8c <panic>
    80003c70:	00195913          	srli	s2,s2,0x1
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	858080e7          	jalr	-1960(ra) # 800024cc <mycpu>
    80003c7c:	00197913          	andi	s2,s2,1
    80003c80:	07252e23          	sw	s2,124(a0)
    80003c84:	f75ff06f          	j	80003bf8 <acquire+0x3c>

0000000080003c88 <release>:
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	01213023          	sd	s2,0(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    80003ca0:	00052783          	lw	a5,0(a0)
    80003ca4:	00079a63          	bnez	a5,80003cb8 <release+0x30>
    80003ca8:	00001517          	auipc	a0,0x1
    80003cac:	65850513          	addi	a0,a0,1624 # 80005300 <digits+0x28>
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	1dc080e7          	jalr	476(ra) # 80002e8c <panic>
    80003cb8:	01053903          	ld	s2,16(a0)
    80003cbc:	00050493          	mv	s1,a0
    80003cc0:	fffff097          	auipc	ra,0xfffff
    80003cc4:	80c080e7          	jalr	-2036(ra) # 800024cc <mycpu>
    80003cc8:	fea910e3          	bne	s2,a0,80003ca8 <release+0x20>
    80003ccc:	0004b823          	sd	zero,16(s1)
    80003cd0:	0ff0000f          	fence
    80003cd4:	0f50000f          	fence	iorw,ow
    80003cd8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	7f0080e7          	jalr	2032(ra) # 800024cc <mycpu>
    80003ce4:	100027f3          	csrr	a5,sstatus
    80003ce8:	0027f793          	andi	a5,a5,2
    80003cec:	04079a63          	bnez	a5,80003d40 <release+0xb8>
    80003cf0:	07852783          	lw	a5,120(a0)
    80003cf4:	02f05e63          	blez	a5,80003d30 <release+0xa8>
    80003cf8:	fff7871b          	addiw	a4,a5,-1
    80003cfc:	06e52c23          	sw	a4,120(a0)
    80003d00:	00071c63          	bnez	a4,80003d18 <release+0x90>
    80003d04:	07c52783          	lw	a5,124(a0)
    80003d08:	00078863          	beqz	a5,80003d18 <release+0x90>
    80003d0c:	100027f3          	csrr	a5,sstatus
    80003d10:	0027e793          	ori	a5,a5,2
    80003d14:	10079073          	csrw	sstatus,a5
    80003d18:	01813083          	ld	ra,24(sp)
    80003d1c:	01013403          	ld	s0,16(sp)
    80003d20:	00813483          	ld	s1,8(sp)
    80003d24:	00013903          	ld	s2,0(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	00008067          	ret
    80003d30:	00001517          	auipc	a0,0x1
    80003d34:	5f050513          	addi	a0,a0,1520 # 80005320 <digits+0x48>
    80003d38:	fffff097          	auipc	ra,0xfffff
    80003d3c:	154080e7          	jalr	340(ra) # 80002e8c <panic>
    80003d40:	00001517          	auipc	a0,0x1
    80003d44:	5c850513          	addi	a0,a0,1480 # 80005308 <digits+0x30>
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	144080e7          	jalr	324(ra) # 80002e8c <panic>

0000000080003d50 <holding>:
    80003d50:	00052783          	lw	a5,0(a0)
    80003d54:	00079663          	bnez	a5,80003d60 <holding+0x10>
    80003d58:	00000513          	li	a0,0
    80003d5c:	00008067          	ret
    80003d60:	fe010113          	addi	sp,sp,-32
    80003d64:	00813823          	sd	s0,16(sp)
    80003d68:	00913423          	sd	s1,8(sp)
    80003d6c:	00113c23          	sd	ra,24(sp)
    80003d70:	02010413          	addi	s0,sp,32
    80003d74:	01053483          	ld	s1,16(a0)
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	754080e7          	jalr	1876(ra) # 800024cc <mycpu>
    80003d80:	01813083          	ld	ra,24(sp)
    80003d84:	01013403          	ld	s0,16(sp)
    80003d88:	40a48533          	sub	a0,s1,a0
    80003d8c:	00153513          	seqz	a0,a0
    80003d90:	00813483          	ld	s1,8(sp)
    80003d94:	02010113          	addi	sp,sp,32
    80003d98:	00008067          	ret

0000000080003d9c <push_off>:
    80003d9c:	fe010113          	addi	sp,sp,-32
    80003da0:	00813823          	sd	s0,16(sp)
    80003da4:	00113c23          	sd	ra,24(sp)
    80003da8:	00913423          	sd	s1,8(sp)
    80003dac:	02010413          	addi	s0,sp,32
    80003db0:	100024f3          	csrr	s1,sstatus
    80003db4:	100027f3          	csrr	a5,sstatus
    80003db8:	ffd7f793          	andi	a5,a5,-3
    80003dbc:	10079073          	csrw	sstatus,a5
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	70c080e7          	jalr	1804(ra) # 800024cc <mycpu>
    80003dc8:	07852783          	lw	a5,120(a0)
    80003dcc:	02078663          	beqz	a5,80003df8 <push_off+0x5c>
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	6fc080e7          	jalr	1788(ra) # 800024cc <mycpu>
    80003dd8:	07852783          	lw	a5,120(a0)
    80003ddc:	01813083          	ld	ra,24(sp)
    80003de0:	01013403          	ld	s0,16(sp)
    80003de4:	0017879b          	addiw	a5,a5,1
    80003de8:	06f52c23          	sw	a5,120(a0)
    80003dec:	00813483          	ld	s1,8(sp)
    80003df0:	02010113          	addi	sp,sp,32
    80003df4:	00008067          	ret
    80003df8:	0014d493          	srli	s1,s1,0x1
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	6d0080e7          	jalr	1744(ra) # 800024cc <mycpu>
    80003e04:	0014f493          	andi	s1,s1,1
    80003e08:	06952e23          	sw	s1,124(a0)
    80003e0c:	fc5ff06f          	j	80003dd0 <push_off+0x34>

0000000080003e10 <pop_off>:
    80003e10:	ff010113          	addi	sp,sp,-16
    80003e14:	00813023          	sd	s0,0(sp)
    80003e18:	00113423          	sd	ra,8(sp)
    80003e1c:	01010413          	addi	s0,sp,16
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	6ac080e7          	jalr	1708(ra) # 800024cc <mycpu>
    80003e28:	100027f3          	csrr	a5,sstatus
    80003e2c:	0027f793          	andi	a5,a5,2
    80003e30:	04079663          	bnez	a5,80003e7c <pop_off+0x6c>
    80003e34:	07852783          	lw	a5,120(a0)
    80003e38:	02f05a63          	blez	a5,80003e6c <pop_off+0x5c>
    80003e3c:	fff7871b          	addiw	a4,a5,-1
    80003e40:	06e52c23          	sw	a4,120(a0)
    80003e44:	00071c63          	bnez	a4,80003e5c <pop_off+0x4c>
    80003e48:	07c52783          	lw	a5,124(a0)
    80003e4c:	00078863          	beqz	a5,80003e5c <pop_off+0x4c>
    80003e50:	100027f3          	csrr	a5,sstatus
    80003e54:	0027e793          	ori	a5,a5,2
    80003e58:	10079073          	csrw	sstatus,a5
    80003e5c:	00813083          	ld	ra,8(sp)
    80003e60:	00013403          	ld	s0,0(sp)
    80003e64:	01010113          	addi	sp,sp,16
    80003e68:	00008067          	ret
    80003e6c:	00001517          	auipc	a0,0x1
    80003e70:	4b450513          	addi	a0,a0,1204 # 80005320 <digits+0x48>
    80003e74:	fffff097          	auipc	ra,0xfffff
    80003e78:	018080e7          	jalr	24(ra) # 80002e8c <panic>
    80003e7c:	00001517          	auipc	a0,0x1
    80003e80:	48c50513          	addi	a0,a0,1164 # 80005308 <digits+0x30>
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	008080e7          	jalr	8(ra) # 80002e8c <panic>

0000000080003e8c <push_on>:
    80003e8c:	fe010113          	addi	sp,sp,-32
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00113c23          	sd	ra,24(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	100024f3          	csrr	s1,sstatus
    80003ea4:	100027f3          	csrr	a5,sstatus
    80003ea8:	0027e793          	ori	a5,a5,2
    80003eac:	10079073          	csrw	sstatus,a5
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	61c080e7          	jalr	1564(ra) # 800024cc <mycpu>
    80003eb8:	07852783          	lw	a5,120(a0)
    80003ebc:	02078663          	beqz	a5,80003ee8 <push_on+0x5c>
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	60c080e7          	jalr	1548(ra) # 800024cc <mycpu>
    80003ec8:	07852783          	lw	a5,120(a0)
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	0017879b          	addiw	a5,a5,1
    80003ed8:	06f52c23          	sw	a5,120(a0)
    80003edc:	00813483          	ld	s1,8(sp)
    80003ee0:	02010113          	addi	sp,sp,32
    80003ee4:	00008067          	ret
    80003ee8:	0014d493          	srli	s1,s1,0x1
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	5e0080e7          	jalr	1504(ra) # 800024cc <mycpu>
    80003ef4:	0014f493          	andi	s1,s1,1
    80003ef8:	06952e23          	sw	s1,124(a0)
    80003efc:	fc5ff06f          	j	80003ec0 <push_on+0x34>

0000000080003f00 <pop_on>:
    80003f00:	ff010113          	addi	sp,sp,-16
    80003f04:	00813023          	sd	s0,0(sp)
    80003f08:	00113423          	sd	ra,8(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	5bc080e7          	jalr	1468(ra) # 800024cc <mycpu>
    80003f18:	100027f3          	csrr	a5,sstatus
    80003f1c:	0027f793          	andi	a5,a5,2
    80003f20:	04078463          	beqz	a5,80003f68 <pop_on+0x68>
    80003f24:	07852783          	lw	a5,120(a0)
    80003f28:	02f05863          	blez	a5,80003f58 <pop_on+0x58>
    80003f2c:	fff7879b          	addiw	a5,a5,-1
    80003f30:	06f52c23          	sw	a5,120(a0)
    80003f34:	07853783          	ld	a5,120(a0)
    80003f38:	00079863          	bnez	a5,80003f48 <pop_on+0x48>
    80003f3c:	100027f3          	csrr	a5,sstatus
    80003f40:	ffd7f793          	andi	a5,a5,-3
    80003f44:	10079073          	csrw	sstatus,a5
    80003f48:	00813083          	ld	ra,8(sp)
    80003f4c:	00013403          	ld	s0,0(sp)
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret
    80003f58:	00001517          	auipc	a0,0x1
    80003f5c:	3f050513          	addi	a0,a0,1008 # 80005348 <digits+0x70>
    80003f60:	fffff097          	auipc	ra,0xfffff
    80003f64:	f2c080e7          	jalr	-212(ra) # 80002e8c <panic>
    80003f68:	00001517          	auipc	a0,0x1
    80003f6c:	3c050513          	addi	a0,a0,960 # 80005328 <digits+0x50>
    80003f70:	fffff097          	auipc	ra,0xfffff
    80003f74:	f1c080e7          	jalr	-228(ra) # 80002e8c <panic>

0000000080003f78 <__memset>:
    80003f78:	ff010113          	addi	sp,sp,-16
    80003f7c:	00813423          	sd	s0,8(sp)
    80003f80:	01010413          	addi	s0,sp,16
    80003f84:	1a060e63          	beqz	a2,80004140 <__memset+0x1c8>
    80003f88:	40a007b3          	neg	a5,a0
    80003f8c:	0077f793          	andi	a5,a5,7
    80003f90:	00778693          	addi	a3,a5,7
    80003f94:	00b00813          	li	a6,11
    80003f98:	0ff5f593          	andi	a1,a1,255
    80003f9c:	fff6071b          	addiw	a4,a2,-1
    80003fa0:	1b06e663          	bltu	a3,a6,8000414c <__memset+0x1d4>
    80003fa4:	1cd76463          	bltu	a4,a3,8000416c <__memset+0x1f4>
    80003fa8:	1a078e63          	beqz	a5,80004164 <__memset+0x1ec>
    80003fac:	00b50023          	sb	a1,0(a0)
    80003fb0:	00100713          	li	a4,1
    80003fb4:	1ae78463          	beq	a5,a4,8000415c <__memset+0x1e4>
    80003fb8:	00b500a3          	sb	a1,1(a0)
    80003fbc:	00200713          	li	a4,2
    80003fc0:	1ae78a63          	beq	a5,a4,80004174 <__memset+0x1fc>
    80003fc4:	00b50123          	sb	a1,2(a0)
    80003fc8:	00300713          	li	a4,3
    80003fcc:	18e78463          	beq	a5,a4,80004154 <__memset+0x1dc>
    80003fd0:	00b501a3          	sb	a1,3(a0)
    80003fd4:	00400713          	li	a4,4
    80003fd8:	1ae78263          	beq	a5,a4,8000417c <__memset+0x204>
    80003fdc:	00b50223          	sb	a1,4(a0)
    80003fe0:	00500713          	li	a4,5
    80003fe4:	1ae78063          	beq	a5,a4,80004184 <__memset+0x20c>
    80003fe8:	00b502a3          	sb	a1,5(a0)
    80003fec:	00700713          	li	a4,7
    80003ff0:	18e79e63          	bne	a5,a4,8000418c <__memset+0x214>
    80003ff4:	00b50323          	sb	a1,6(a0)
    80003ff8:	00700e93          	li	t4,7
    80003ffc:	00859713          	slli	a4,a1,0x8
    80004000:	00e5e733          	or	a4,a1,a4
    80004004:	01059e13          	slli	t3,a1,0x10
    80004008:	01c76e33          	or	t3,a4,t3
    8000400c:	01859313          	slli	t1,a1,0x18
    80004010:	006e6333          	or	t1,t3,t1
    80004014:	02059893          	slli	a7,a1,0x20
    80004018:	40f60e3b          	subw	t3,a2,a5
    8000401c:	011368b3          	or	a7,t1,a7
    80004020:	02859813          	slli	a6,a1,0x28
    80004024:	0108e833          	or	a6,a7,a6
    80004028:	03059693          	slli	a3,a1,0x30
    8000402c:	003e589b          	srliw	a7,t3,0x3
    80004030:	00d866b3          	or	a3,a6,a3
    80004034:	03859713          	slli	a4,a1,0x38
    80004038:	00389813          	slli	a6,a7,0x3
    8000403c:	00f507b3          	add	a5,a0,a5
    80004040:	00e6e733          	or	a4,a3,a4
    80004044:	000e089b          	sext.w	a7,t3
    80004048:	00f806b3          	add	a3,a6,a5
    8000404c:	00e7b023          	sd	a4,0(a5)
    80004050:	00878793          	addi	a5,a5,8
    80004054:	fed79ce3          	bne	a5,a3,8000404c <__memset+0xd4>
    80004058:	ff8e7793          	andi	a5,t3,-8
    8000405c:	0007871b          	sext.w	a4,a5
    80004060:	01d787bb          	addw	a5,a5,t4
    80004064:	0ce88e63          	beq	a7,a4,80004140 <__memset+0x1c8>
    80004068:	00f50733          	add	a4,a0,a5
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0017871b          	addiw	a4,a5,1
    80004074:	0cc77663          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0027871b          	addiw	a4,a5,2
    80004084:	0ac77e63          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0037871b          	addiw	a4,a5,3
    80004094:	0ac77663          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	0047871b          	addiw	a4,a5,4
    800040a4:	08c77e63          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	0057871b          	addiw	a4,a5,5
    800040b4:	08c77663          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	0067871b          	addiw	a4,a5,6
    800040c4:	06c77e63          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	0077871b          	addiw	a4,a5,7
    800040d4:	06c77663          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	0087871b          	addiw	a4,a5,8
    800040e4:	04c77e63          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	0097871b          	addiw	a4,a5,9
    800040f4:	04c77663          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	00a7871b          	addiw	a4,a5,10
    80004104:	02c77e63          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00b70023          	sb	a1,0(a4)
    80004110:	00b7871b          	addiw	a4,a5,11
    80004114:	02c77663          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    80004118:	00e50733          	add	a4,a0,a4
    8000411c:	00b70023          	sb	a1,0(a4)
    80004120:	00c7871b          	addiw	a4,a5,12
    80004124:	00c77e63          	bgeu	a4,a2,80004140 <__memset+0x1c8>
    80004128:	00e50733          	add	a4,a0,a4
    8000412c:	00b70023          	sb	a1,0(a4)
    80004130:	00d7879b          	addiw	a5,a5,13
    80004134:	00c7f663          	bgeu	a5,a2,80004140 <__memset+0x1c8>
    80004138:	00f507b3          	add	a5,a0,a5
    8000413c:	00b78023          	sb	a1,0(a5)
    80004140:	00813403          	ld	s0,8(sp)
    80004144:	01010113          	addi	sp,sp,16
    80004148:	00008067          	ret
    8000414c:	00b00693          	li	a3,11
    80004150:	e55ff06f          	j	80003fa4 <__memset+0x2c>
    80004154:	00300e93          	li	t4,3
    80004158:	ea5ff06f          	j	80003ffc <__memset+0x84>
    8000415c:	00100e93          	li	t4,1
    80004160:	e9dff06f          	j	80003ffc <__memset+0x84>
    80004164:	00000e93          	li	t4,0
    80004168:	e95ff06f          	j	80003ffc <__memset+0x84>
    8000416c:	00000793          	li	a5,0
    80004170:	ef9ff06f          	j	80004068 <__memset+0xf0>
    80004174:	00200e93          	li	t4,2
    80004178:	e85ff06f          	j	80003ffc <__memset+0x84>
    8000417c:	00400e93          	li	t4,4
    80004180:	e7dff06f          	j	80003ffc <__memset+0x84>
    80004184:	00500e93          	li	t4,5
    80004188:	e75ff06f          	j	80003ffc <__memset+0x84>
    8000418c:	00600e93          	li	t4,6
    80004190:	e6dff06f          	j	80003ffc <__memset+0x84>

0000000080004194 <__memmove>:
    80004194:	ff010113          	addi	sp,sp,-16
    80004198:	00813423          	sd	s0,8(sp)
    8000419c:	01010413          	addi	s0,sp,16
    800041a0:	0e060863          	beqz	a2,80004290 <__memmove+0xfc>
    800041a4:	fff6069b          	addiw	a3,a2,-1
    800041a8:	0006881b          	sext.w	a6,a3
    800041ac:	0ea5e863          	bltu	a1,a0,8000429c <__memmove+0x108>
    800041b0:	00758713          	addi	a4,a1,7
    800041b4:	00a5e7b3          	or	a5,a1,a0
    800041b8:	40a70733          	sub	a4,a4,a0
    800041bc:	0077f793          	andi	a5,a5,7
    800041c0:	00f73713          	sltiu	a4,a4,15
    800041c4:	00174713          	xori	a4,a4,1
    800041c8:	0017b793          	seqz	a5,a5
    800041cc:	00e7f7b3          	and	a5,a5,a4
    800041d0:	10078863          	beqz	a5,800042e0 <__memmove+0x14c>
    800041d4:	00900793          	li	a5,9
    800041d8:	1107f463          	bgeu	a5,a6,800042e0 <__memmove+0x14c>
    800041dc:	0036581b          	srliw	a6,a2,0x3
    800041e0:	fff8081b          	addiw	a6,a6,-1
    800041e4:	02081813          	slli	a6,a6,0x20
    800041e8:	01d85893          	srli	a7,a6,0x1d
    800041ec:	00858813          	addi	a6,a1,8
    800041f0:	00058793          	mv	a5,a1
    800041f4:	00050713          	mv	a4,a0
    800041f8:	01088833          	add	a6,a7,a6
    800041fc:	0007b883          	ld	a7,0(a5)
    80004200:	00878793          	addi	a5,a5,8
    80004204:	00870713          	addi	a4,a4,8
    80004208:	ff173c23          	sd	a7,-8(a4)
    8000420c:	ff0798e3          	bne	a5,a6,800041fc <__memmove+0x68>
    80004210:	ff867713          	andi	a4,a2,-8
    80004214:	02071793          	slli	a5,a4,0x20
    80004218:	0207d793          	srli	a5,a5,0x20
    8000421c:	00f585b3          	add	a1,a1,a5
    80004220:	40e686bb          	subw	a3,a3,a4
    80004224:	00f507b3          	add	a5,a0,a5
    80004228:	06e60463          	beq	a2,a4,80004290 <__memmove+0xfc>
    8000422c:	0005c703          	lbu	a4,0(a1)
    80004230:	00e78023          	sb	a4,0(a5)
    80004234:	04068e63          	beqz	a3,80004290 <__memmove+0xfc>
    80004238:	0015c603          	lbu	a2,1(a1)
    8000423c:	00100713          	li	a4,1
    80004240:	00c780a3          	sb	a2,1(a5)
    80004244:	04e68663          	beq	a3,a4,80004290 <__memmove+0xfc>
    80004248:	0025c603          	lbu	a2,2(a1)
    8000424c:	00200713          	li	a4,2
    80004250:	00c78123          	sb	a2,2(a5)
    80004254:	02e68e63          	beq	a3,a4,80004290 <__memmove+0xfc>
    80004258:	0035c603          	lbu	a2,3(a1)
    8000425c:	00300713          	li	a4,3
    80004260:	00c781a3          	sb	a2,3(a5)
    80004264:	02e68663          	beq	a3,a4,80004290 <__memmove+0xfc>
    80004268:	0045c603          	lbu	a2,4(a1)
    8000426c:	00400713          	li	a4,4
    80004270:	00c78223          	sb	a2,4(a5)
    80004274:	00e68e63          	beq	a3,a4,80004290 <__memmove+0xfc>
    80004278:	0055c603          	lbu	a2,5(a1)
    8000427c:	00500713          	li	a4,5
    80004280:	00c782a3          	sb	a2,5(a5)
    80004284:	00e68663          	beq	a3,a4,80004290 <__memmove+0xfc>
    80004288:	0065c703          	lbu	a4,6(a1)
    8000428c:	00e78323          	sb	a4,6(a5)
    80004290:	00813403          	ld	s0,8(sp)
    80004294:	01010113          	addi	sp,sp,16
    80004298:	00008067          	ret
    8000429c:	02061713          	slli	a4,a2,0x20
    800042a0:	02075713          	srli	a4,a4,0x20
    800042a4:	00e587b3          	add	a5,a1,a4
    800042a8:	f0f574e3          	bgeu	a0,a5,800041b0 <__memmove+0x1c>
    800042ac:	02069613          	slli	a2,a3,0x20
    800042b0:	02065613          	srli	a2,a2,0x20
    800042b4:	fff64613          	not	a2,a2
    800042b8:	00e50733          	add	a4,a0,a4
    800042bc:	00c78633          	add	a2,a5,a2
    800042c0:	fff7c683          	lbu	a3,-1(a5)
    800042c4:	fff78793          	addi	a5,a5,-1
    800042c8:	fff70713          	addi	a4,a4,-1
    800042cc:	00d70023          	sb	a3,0(a4)
    800042d0:	fec798e3          	bne	a5,a2,800042c0 <__memmove+0x12c>
    800042d4:	00813403          	ld	s0,8(sp)
    800042d8:	01010113          	addi	sp,sp,16
    800042dc:	00008067          	ret
    800042e0:	02069713          	slli	a4,a3,0x20
    800042e4:	02075713          	srli	a4,a4,0x20
    800042e8:	00170713          	addi	a4,a4,1
    800042ec:	00e50733          	add	a4,a0,a4
    800042f0:	00050793          	mv	a5,a0
    800042f4:	0005c683          	lbu	a3,0(a1)
    800042f8:	00178793          	addi	a5,a5,1
    800042fc:	00158593          	addi	a1,a1,1
    80004300:	fed78fa3          	sb	a3,-1(a5)
    80004304:	fee798e3          	bne	a5,a4,800042f4 <__memmove+0x160>
    80004308:	f89ff06f          	j	80004290 <__memmove+0xfc>

000000008000430c <__putc>:
    8000430c:	fe010113          	addi	sp,sp,-32
    80004310:	00813823          	sd	s0,16(sp)
    80004314:	00113c23          	sd	ra,24(sp)
    80004318:	02010413          	addi	s0,sp,32
    8000431c:	00050793          	mv	a5,a0
    80004320:	fef40593          	addi	a1,s0,-17
    80004324:	00100613          	li	a2,1
    80004328:	00000513          	li	a0,0
    8000432c:	fef407a3          	sb	a5,-17(s0)
    80004330:	fffff097          	auipc	ra,0xfffff
    80004334:	b3c080e7          	jalr	-1220(ra) # 80002e6c <console_write>
    80004338:	01813083          	ld	ra,24(sp)
    8000433c:	01013403          	ld	s0,16(sp)
    80004340:	02010113          	addi	sp,sp,32
    80004344:	00008067          	ret

0000000080004348 <__getc>:
    80004348:	fe010113          	addi	sp,sp,-32
    8000434c:	00813823          	sd	s0,16(sp)
    80004350:	00113c23          	sd	ra,24(sp)
    80004354:	02010413          	addi	s0,sp,32
    80004358:	fe840593          	addi	a1,s0,-24
    8000435c:	00100613          	li	a2,1
    80004360:	00000513          	li	a0,0
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	ae8080e7          	jalr	-1304(ra) # 80002e4c <console_read>
    8000436c:	fe844503          	lbu	a0,-24(s0)
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	02010113          	addi	sp,sp,32
    8000437c:	00008067          	ret

0000000080004380 <console_handler>:
    80004380:	fe010113          	addi	sp,sp,-32
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00913423          	sd	s1,8(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	14202773          	csrr	a4,scause
    80004398:	100027f3          	csrr	a5,sstatus
    8000439c:	0027f793          	andi	a5,a5,2
    800043a0:	06079e63          	bnez	a5,8000441c <console_handler+0x9c>
    800043a4:	00074c63          	bltz	a4,800043bc <console_handler+0x3c>
    800043a8:	01813083          	ld	ra,24(sp)
    800043ac:	01013403          	ld	s0,16(sp)
    800043b0:	00813483          	ld	s1,8(sp)
    800043b4:	02010113          	addi	sp,sp,32
    800043b8:	00008067          	ret
    800043bc:	0ff77713          	andi	a4,a4,255
    800043c0:	00900793          	li	a5,9
    800043c4:	fef712e3          	bne	a4,a5,800043a8 <console_handler+0x28>
    800043c8:	ffffe097          	auipc	ra,0xffffe
    800043cc:	6dc080e7          	jalr	1756(ra) # 80002aa4 <plic_claim>
    800043d0:	00a00793          	li	a5,10
    800043d4:	00050493          	mv	s1,a0
    800043d8:	02f50c63          	beq	a0,a5,80004410 <console_handler+0x90>
    800043dc:	fc0506e3          	beqz	a0,800043a8 <console_handler+0x28>
    800043e0:	00050593          	mv	a1,a0
    800043e4:	00001517          	auipc	a0,0x1
    800043e8:	e6c50513          	addi	a0,a0,-404 # 80005250 <_ZZ12printIntegermE6digits+0x148>
    800043ec:	fffff097          	auipc	ra,0xfffff
    800043f0:	afc080e7          	jalr	-1284(ra) # 80002ee8 <__printf>
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	01813083          	ld	ra,24(sp)
    800043fc:	00048513          	mv	a0,s1
    80004400:	00813483          	ld	s1,8(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	ffffe317          	auipc	t1,0xffffe
    8000440c:	6d430067          	jr	1748(t1) # 80002adc <plic_complete>
    80004410:	fffff097          	auipc	ra,0xfffff
    80004414:	3e0080e7          	jalr	992(ra) # 800037f0 <uartintr>
    80004418:	fddff06f          	j	800043f4 <console_handler+0x74>
    8000441c:	00001517          	auipc	a0,0x1
    80004420:	f3450513          	addi	a0,a0,-204 # 80005350 <digits+0x78>
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	a68080e7          	jalr	-1432(ra) # 80002e8c <panic>
	...
