
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	a2813103          	ld	sp,-1496(sp) # 8000ca28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6c5060ef          	jal	ra,80006ee0 <start>

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
    80001088:	6b4010ef          	jal	ra,8000273c <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001140 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001140:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001144:	00b29a63          	bne	t0,a1,80001158 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001148:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000114c:	fe029ae3          	bnez	t0,80001140 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001150:	00000513          	li	a0,0
    jr ra                  # Return.
    80001154:	00008067          	ret

0000000080001158 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001158:	00100513          	li	a0,1
    8000115c:	00008067          	ret

0000000080001160 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../lib/console.h"


void* mem_alloc (size_t size)
{
    80001160:	fd010113          	addi	sp,sp,-48
    80001164:	02813423          	sd	s0,40(sp)
    80001168:	03010413          	addi	s0,sp,48
    8000116c:	fca43c23          	sd	a0,-40(s0)
    //size_t blockNum = MemoryAllocator::convert2Blocks(size);

    size_t code = 0x0000000000000001UL;
    80001170:	00100793          	li	a5,1
    80001174:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("ld a0, %0" : : "m" (code));
    80001178:	fe843503          	ld	a0,-24(s0)

    //__asm__ volatile("ld a1, %0" : : "m" (blockNum));
    __asm__ volatile("ld a1, %0" : : "m" (size));
    8000117c:	fd843583          	ld	a1,-40(s0)

    __asm__ volatile("ecall");
    80001180:	00000073          	ecall

    void* ptr;

    asm volatile("sd a0, %0" : "=m" (ptr));
    80001184:	fea43023          	sd	a0,-32(s0)
//    printString("mem_alloc: ");
//    printInteger(size_t(ptr));
//    printString("\n");

    return ptr;
}
    80001188:	fe043503          	ld	a0,-32(s0)
    8000118c:	02813403          	ld	s0,40(sp)
    80001190:	03010113          	addi	sp,sp,48
    80001194:	00008067          	ret

0000000080001198 <_Z8mem_freePv>:

int mem_free (void* ptr)
{
    80001198:	fd010113          	addi	sp,sp,-48
    8000119c:	02813423          	sd	s0,40(sp)
    800011a0:	03010413          	addi	s0,sp,48
    800011a4:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000002UL;
    800011a8:	00200793          	li	a5,2
    800011ac:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800011b0:	fe843503          	ld	a0,-24(s0)

    asm volatile("ld a1, %0" : : "m" (ptr));
    800011b4:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    800011b8:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800011bc:	fea43223          	sd	a0,-28(s0)
//    printString("mem_free: ");
//    printInteger(val);
//    printString("\n");

    return val;
}
    800011c0:	fe442503          	lw	a0,-28(s0)
    800011c4:	02813403          	ld	s0,40(sp)
    800011c8:	03010113          	addi	sp,sp,48
    800011cc:	00008067          	ret

00000000800011d0 <_Z13thread_createPP7_threadPFvPvES2_>:


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
{
    800011d0:	fb010113          	addi	sp,sp,-80
    800011d4:	04113423          	sd	ra,72(sp)
    800011d8:	04813023          	sd	s0,64(sp)
    800011dc:	05010413          	addi	s0,sp,80
    800011e0:	fca43423          	sd	a0,-56(s0)
    800011e4:	fcb43023          	sd	a1,-64(s0)
    800011e8:	fac43c23          	sd	a2,-72(s0)
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800011ec:	00008537          	lui	a0,0x8
    800011f0:	00002097          	auipc	ra,0x2
    800011f4:	040080e7          	jalr	64(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011f8:	00002097          	auipc	ra,0x2
    800011fc:	e48080e7          	jalr	-440(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
    80001200:	fea43423          	sd	a0,-24(s0)
//    handle = (_thread**) MemoryAllocator::mem_alloc(blockNum);
//
//    blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread*));
//    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);

    size_t code = 0x0000000000000011UL;
    80001204:	01100793          	li	a5,17
    80001208:	fef43023          	sd	a5,-32(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    8000120c:	fe043503          	ld	a0,-32(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    80001210:	fc843583          	ld	a1,-56(s0)
    asm volatile("ld a2, %0" : : "m" (start_routine));
    80001214:	fc043603          	ld	a2,-64(s0)
    asm volatile("ld a3, %0" : : "m" (arg));
    80001218:	fb843683          	ld	a3,-72(s0)
    asm volatile("ld a4, %0" : : "m" (stack_space));
    8000121c:	fe843703          	ld	a4,-24(s0)

    asm volatile("ecall");
    80001220:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001224:	fca43e23          	sd	a0,-36(s0)
//    printString("\nnew thread: ");
//    printInteger((uint64) *handle);
//    printString("\n");

    return val;
}
    80001228:	fdc42503          	lw	a0,-36(s0)
    8000122c:	04813083          	ld	ra,72(sp)
    80001230:	04013403          	ld	s0,64(sp)
    80001234:	05010113          	addi	sp,sp,80
    80001238:	00008067          	ret

000000008000123c <_Z11thread_exitv>:

int thread_exit ()
{
    8000123c:	fe010113          	addi	sp,sp,-32
    80001240:	00813c23          	sd	s0,24(sp)
    80001244:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000012UL;
    80001248:	01200793          	li	a5,18
    8000124c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001250:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001254:	00000073          	ecall


    // if this code is executed -> error exiting thread
    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001258:	fea43223          	sd	a0,-28(s0)

    return val;
}
    8000125c:	fe442503          	lw	a0,-28(s0)
    80001260:	01813403          	ld	s0,24(sp)
    80001264:	02010113          	addi	sp,sp,32
    80001268:	00008067          	ret

000000008000126c <_Z15thread_dispatchv>:


void thread_dispatch ()
{
    8000126c:	fe010113          	addi	sp,sp,-32
    80001270:	00813c23          	sd	s0,24(sp)
    80001274:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000013UL;
    80001278:	01300793          	li	a5,19
    8000127c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001280:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001284:	00000073          	ecall
}
    80001288:	01813403          	ld	s0,24(sp)
    8000128c:	02010113          	addi	sp,sp,32
    80001290:	00008067          	ret

0000000080001294 <_Z11thread_joinP7_thread>:

void thread_join(_thread* handle)
{
    80001294:	fd010113          	addi	sp,sp,-48
    80001298:	02813423          	sd	s0,40(sp)
    8000129c:	03010413          	addi	s0,sp,48
    800012a0:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000014UL;
    800012a4:	01400793          	li	a5,20
    800012a8:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800012ac:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    800012b0:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    800012b4:	00000073          	ecall
}
    800012b8:	02813403          	ld	s0,40(sp)
    800012bc:	03010113          	addi	sp,sp,48
    800012c0:	00008067          	ret

00000000800012c4 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init)
{
    800012c4:	fd010113          	addi	sp,sp,-48
    800012c8:	02813423          	sd	s0,40(sp)
    800012cc:	03010413          	addi	s0,sp,48
    800012d0:	fca43c23          	sd	a0,-40(s0)
    800012d4:	fcb42a23          	sw	a1,-44(s0)
    size_t code = 0x0000000000000021UL;
    800012d8:	02100793          	li	a5,33
    800012dc:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800012e0:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    800012e4:	fd843583          	ld	a1,-40(s0)
    asm volatile("ld a2, %0" : : "m" (init));
    800012e8:	fd443603          	ld	a2,-44(s0)

    asm volatile("ecall");
    800012ec:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800012f0:	fea43223          	sd	a0,-28(s0)

    return val;
}
    800012f4:	fe442503          	lw	a0,-28(s0)
    800012f8:	02813403          	ld	s0,40(sp)
    800012fc:	03010113          	addi	sp,sp,48
    80001300:	00008067          	ret

0000000080001304 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle)
{
    80001304:	fd010113          	addi	sp,sp,-48
    80001308:	02813423          	sd	s0,40(sp)
    8000130c:	03010413          	addi	s0,sp,48
    80001310:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000022UL;
    80001314:	02200793          	li	a5,34
    80001318:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    8000131c:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (handle));
    80001320:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    80001324:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001328:	fea43223          	sd	a0,-28(s0)

    return val;
}
    8000132c:	fe442503          	lw	a0,-28(s0)
    80001330:	02813403          	ld	s0,40(sp)
    80001334:	03010113          	addi	sp,sp,48
    80001338:	00008067          	ret

000000008000133c <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000133c:	fd010113          	addi	sp,sp,-48
    80001340:	02813423          	sd	s0,40(sp)
    80001344:	03010413          	addi	s0,sp,48
    80001348:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000023UL;
    8000134c:	02300793          	li	a5,35
    80001350:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001354:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (id));
    80001358:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    8000135c:	00000073          	ecall
//
//    asm volatile("sd a0, %0" : "=m" (val));
//
//    return val;

    return _thread::running->semWaitVal;
    80001360:	0000b797          	auipc	a5,0xb
    80001364:	6b07b783          	ld	a5,1712(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001368:	0007b783          	ld	a5,0(a5)
}
    8000136c:	0387a503          	lw	a0,56(a5)
    80001370:	02813403          	ld	s0,40(sp)
    80001374:	03010113          	addi	sp,sp,48
    80001378:	00008067          	ret

000000008000137c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000137c:	fd010113          	addi	sp,sp,-48
    80001380:	02813423          	sd	s0,40(sp)
    80001384:	03010413          	addi	s0,sp,48
    80001388:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000024UL;
    8000138c:	02400793          	li	a5,36
    80001390:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001394:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (id));
    80001398:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    8000139c:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800013a0:	fea43223          	sd	a0,-28(s0)

    return val;
}
    800013a4:	fe442503          	lw	a0,-28(s0)
    800013a8:	02813403          	ld	s0,40(sp)
    800013ac:	03010113          	addi	sp,sp,48
    800013b0:	00008067          	ret

00000000800013b4 <_Z13enterUserModev>:




void enterUserMode()
{
    800013b4:	fe010113          	addi	sp,sp,-32
    800013b8:	00813c23          	sd	s0,24(sp)
    800013bc:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000025UL;
    800013c0:	02500793          	li	a5,37
    800013c4:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800013c8:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    800013cc:	00000073          	ecall
}
    800013d0:	01813403          	ld	s0,24(sp)
    800013d4:	02010113          	addi	sp,sp,32
    800013d8:	00008067          	ret

00000000800013dc <_Z10time_sleepm>:
//    asm volatile("ld a0, %0" : : "m" (code));
//
//    asm volatile("ecall");
//}

int time_sleep(time_t t) {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    return 0;
}
    800013e8:	00000513          	li	a0,0
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z4getcv>:

char getc() {
    800013f8:	fd010113          	addi	sp,sp,-48
    800013fc:	02113423          	sd	ra,40(sp)
    80001400:	02813023          	sd	s0,32(sp)
    80001404:	00913c23          	sd	s1,24(sp)
    80001408:	03010413          	addi	s0,sp,48

    // enterSysytemMode();
    // ne postoji enterSystemMode() funkcija kako bi se izbegao security breach
    // nego je ovde implementiran kod za nju direktno

    size_t code = 0x0000000000000026UL;
    8000140c:	02600793          	li	a5,38
    80001410:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001414:	fd843503          	ld	a0,-40(s0)

    asm volatile("ecall");
    80001418:	00000073          	ecall

    char val = __getc();
    8000141c:	00008097          	auipc	ra,0x8
    80001420:	bbc080e7          	jalr	-1092(ra) # 80008fd8 <__getc>
    80001424:	00050493          	mv	s1,a0

    enterUserMode();
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	f8c080e7          	jalr	-116(ra) # 800013b4 <_Z13enterUserModev>

    return val;
}
    80001430:	00048513          	mv	a0,s1
    80001434:	02813083          	ld	ra,40(sp)
    80001438:	02013403          	ld	s0,32(sp)
    8000143c:	01813483          	ld	s1,24(sp)
    80001440:	03010113          	addi	sp,sp,48
    80001444:	00008067          	ret

0000000080001448 <_Z4putcc>:

void putc(char c) {
    80001448:	fd010113          	addi	sp,sp,-48
    8000144c:	02813423          	sd	s0,40(sp)
    80001450:	03010413          	addi	s0,sp,48
    80001454:	fca40fa3          	sb	a0,-33(s0)
    size_t code = 0x0000000000000042UL;
    80001458:	04200793          	li	a5,66
    8000145c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001460:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (c));
    80001464:	fdf43583          	ld	a1,-33(s0)

    asm volatile("ecall");
    80001468:	00000073          	ecall
}
    8000146c:	02813403          	ld	s0,40(sp)
    80001470:	03010113          	addi	sp,sp,48
    80001474:	00008067          	ret

0000000080001478 <_Z4forkv>:

int fork()
{
    80001478:	fe010113          	addi	sp,sp,-32
    8000147c:	00813c23          	sd	s0,24(sp)
    80001480:	02010413          	addi	s0,sp,32
    size_t code = 0x0000000000000027UL;
    80001484:	02700793          	li	a5,39
    80001488:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    8000148c:	fe843503          	ld	a0,-24(s0)

    asm volatile("ecall");
    80001490:	00000073          	ecall

    return _thread::running->forkRetVal;
    80001494:	0000b797          	auipc	a5,0xb
    80001498:	57c7b783          	ld	a5,1404(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000149c:	0007b783          	ld	a5,0(a5)
}
    800014a0:	0487a503          	lw	a0,72(a5)
    800014a4:	01813403          	ld	s0,24(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret

00000000800014b0 <_Z6execv1PFvPvES_>:

void execv1(void(*body)(void *), void* arg)
{
    800014b0:	fe010113          	addi	sp,sp,-32
    800014b4:	00113c23          	sd	ra,24(sp)
    800014b8:	00813823          	sd	s0,16(sp)
    800014bc:	02010413          	addi	s0,sp,32
    800014c0:	00058613          	mv	a2,a1
    _thread* newHandle;
    thread_create(&newHandle, body, arg);
    800014c4:	00050593          	mv	a1,a0
    800014c8:	fe840513          	addi	a0,s0,-24
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	d04080e7          	jalr	-764(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_join(newHandle);
    800014d4:	fe843503          	ld	a0,-24(s0)
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	dbc080e7          	jalr	-580(ra) # 80001294 <_Z11thread_joinP7_thread>
    thread_exit();
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	d5c080e7          	jalr	-676(ra) # 8000123c <_Z11thread_exitv>
}
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	02010113          	addi	sp,sp,32
    800014f4:	00008067          	ret

00000000800014f8 <_Z4execPFvPvES_>:

void exec(void(*body)(void *), void* arg)
{
    800014f8:	fd010113          	addi	sp,sp,-48
    800014fc:	02813423          	sd	s0,40(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	fca43c23          	sd	a0,-40(s0)
    80001508:	fcb43823          	sd	a1,-48(s0)
    size_t code = 0x0000000000000028UL;
    8000150c:	02800793          	li	a5,40
    80001510:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001514:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (body));
    80001518:	fd843583          	ld	a1,-40(s0)
    asm volatile("ld a2, %0" : : "m" (arg));
    8000151c:	fd043603          	ld	a2,-48(s0)

    asm volatile("ecall");
    80001520:	00000073          	ecall
}
    80001524:	02813403          	ld	s0,40(sp)
    80001528:	03010113          	addi	sp,sp,48
    8000152c:	00008067          	ret

0000000080001530 <_Z11thread_killi>:


int thread_kill(int threadId)
{
    80001530:	fd010113          	addi	sp,sp,-48
    80001534:	02813423          	sd	s0,40(sp)
    80001538:	03010413          	addi	s0,sp,48
    8000153c:	fca42e23          	sw	a0,-36(s0)
    size_t code = 0x0000000000000029UL;
    80001540:	02900793          	li	a5,41
    80001544:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001548:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (threadId));
    8000154c:	fdc43583          	ld	a1,-36(s0)

    asm volatile("ecall");
    80001550:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    80001554:	fea43223          	sd	a0,-28(s0)

    return val;
}
    80001558:	fe442503          	lw	a0,-28(s0)
    8000155c:	02813403          	ld	s0,40(sp)
    80001560:	03010113          	addi	sp,sp,48
    80001564:	00008067          	ret

0000000080001568 <_Z4testPv>:
#include "../h/resource.hpp"

void userMain();

void test(void*)
{
    80001568:	fe010113          	addi	sp,sp,-32
    8000156c:	00113c23          	sd	ra,24(sp)
    80001570:	00813823          	sd	s0,16(sp)
    80001574:	00913423          	sd	s1,8(sp)
    80001578:	02010413          	addi	s0,sp,32
    int i = 0;
    8000157c:	00000493          	li	s1,0
    80001580:	0100006f          	j	80001590 <_Z4testPv+0x28>
    {
        printString("\ntest - ");
        printInt(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
    80001584:	00000097          	auipc	ra,0x0
    80001588:	ce8080e7          	jalr	-792(ra) # 8000126c <_Z15thread_dispatchv>
        i++;
    8000158c:	0014849b          	addiw	s1,s1,1
        printString("\ntest - ");
    80001590:	00009517          	auipc	a0,0x9
    80001594:	a9050513          	addi	a0,a0,-1392 # 8000a020 <CONSOLE_STATUS+0x10>
    80001598:	00004097          	auipc	ra,0x4
    8000159c:	704080e7          	jalr	1796(ra) # 80005c9c <_Z11printStringPKc>
        printInt(i);
    800015a0:	00000613          	li	a2,0
    800015a4:	00a00593          	li	a1,10
    800015a8:	00048513          	mv	a0,s1
    800015ac:	00005097          	auipc	ra,0x5
    800015b0:	8a0080e7          	jalr	-1888(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    800015b4:	00009517          	auipc	a0,0x9
    800015b8:	01c50513          	addi	a0,a0,28 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800015bc:	00004097          	auipc	ra,0x4
    800015c0:	6e0080e7          	jalr	1760(ra) # 80005c9c <_Z11printStringPKc>
        if (i % 10 == 0)
    800015c4:	00a00793          	li	a5,10
    800015c8:	02f4e7bb          	remw	a5,s1,a5
    800015cc:	fc0790e3          	bnez	a5,8000158c <_Z4testPv+0x24>
    800015d0:	fb5ff06f          	j	80001584 <_Z4testPv+0x1c>

00000000800015d4 <_Z5test2Pv>:
    }
}

void test2(void*)
{
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	02010413          	addi	s0,sp,32
    int i = 0;
    800015e8:	00000493          	li	s1,0
    800015ec:	0100006f          	j	800015fc <_Z5test2Pv+0x28>
    {
        printString("\ntest2 - ");
        printInt(i);
        printString("\n");
        if (i % 10 == 0)
            thread_dispatch();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	c7c080e7          	jalr	-900(ra) # 8000126c <_Z15thread_dispatchv>

        i++;
    800015f8:	0014849b          	addiw	s1,s1,1
    while(i < 100)
    800015fc:	06300793          	li	a5,99
    80001600:	0497c463          	blt	a5,s1,80001648 <_Z5test2Pv+0x74>
        printString("\ntest2 - ");
    80001604:	00009517          	auipc	a0,0x9
    80001608:	a2c50513          	addi	a0,a0,-1492 # 8000a030 <CONSOLE_STATUS+0x20>
    8000160c:	00004097          	auipc	ra,0x4
    80001610:	690080e7          	jalr	1680(ra) # 80005c9c <_Z11printStringPKc>
        printInt(i);
    80001614:	00000613          	li	a2,0
    80001618:	00a00593          	li	a1,10
    8000161c:	00048513          	mv	a0,s1
    80001620:	00005097          	auipc	ra,0x5
    80001624:	82c080e7          	jalr	-2004(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001628:	00009517          	auipc	a0,0x9
    8000162c:	fa850513          	addi	a0,a0,-88 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001630:	00004097          	auipc	ra,0x4
    80001634:	66c080e7          	jalr	1644(ra) # 80005c9c <_Z11printStringPKc>
        if (i % 10 == 0)
    80001638:	00a00793          	li	a5,10
    8000163c:	02f4e7bb          	remw	a5,s1,a5
    80001640:	fa079ce3          	bnez	a5,800015f8 <_Z5test2Pv+0x24>
    80001644:	fadff06f          	j	800015f0 <_Z5test2Pv+0x1c>
    }
}
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_Z4pingPv>:


void pong(void*);

void ping(void* arg)
{
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	02010413          	addi	s0,sp,32
    80001670:	00050493          	mv	s1,a0
    size_t num = (size_t)arg;
    printString("Ping: ");
    80001674:	00009517          	auipc	a0,0x9
    80001678:	9cc50513          	addi	a0,a0,-1588 # 8000a040 <CONSOLE_STATUS+0x30>
    8000167c:	00004097          	auipc	ra,0x4
    80001680:	620080e7          	jalr	1568(ra) # 80005c9c <_Z11printStringPKc>
    printInt(num);
    80001684:	00000613          	li	a2,0
    80001688:	00a00593          	li	a1,10
    8000168c:	0004851b          	sext.w	a0,s1
    80001690:	00004097          	auipc	ra,0x4
    80001694:	7bc080e7          	jalr	1980(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80001698:	00009517          	auipc	a0,0x9
    8000169c:	f3850513          	addi	a0,a0,-200 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800016a0:	00004097          	auipc	ra,0x4
    800016a4:	5fc080e7          	jalr	1532(ra) # 80005c9c <_Z11printStringPKc>
    if(num > 30)
    800016a8:	01e00793          	li	a5,30
    800016ac:	0097fc63          	bgeu	a5,s1,800016c4 <_Z4pingPv+0x68>
        return;
    exec(pong, reinterpret_cast<void *>((size_t) arg + 1));
}
    800016b0:	01813083          	ld	ra,24(sp)
    800016b4:	01013403          	ld	s0,16(sp)
    800016b8:	00813483          	ld	s1,8(sp)
    800016bc:	02010113          	addi	sp,sp,32
    800016c0:	00008067          	ret
    exec(pong, reinterpret_cast<void *>((size_t) arg + 1));
    800016c4:	00148593          	addi	a1,s1,1
    800016c8:	00000517          	auipc	a0,0x0
    800016cc:	01450513          	addi	a0,a0,20 # 800016dc <_Z4pongPv>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	e28080e7          	jalr	-472(ra) # 800014f8 <_Z4execPFvPvES_>
    800016d8:	fd9ff06f          	j	800016b0 <_Z4pingPv+0x54>

00000000800016dc <_Z4pongPv>:

void pong(void* arg)
{
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	02010413          	addi	s0,sp,32
    800016f0:	00050493          	mv	s1,a0
    size_t num = (size_t)arg;
    printString("Pong: ");
    800016f4:	00009517          	auipc	a0,0x9
    800016f8:	95450513          	addi	a0,a0,-1708 # 8000a048 <CONSOLE_STATUS+0x38>
    800016fc:	00004097          	auipc	ra,0x4
    80001700:	5a0080e7          	jalr	1440(ra) # 80005c9c <_Z11printStringPKc>
    printInt(num);
    80001704:	00000613          	li	a2,0
    80001708:	00a00593          	li	a1,10
    8000170c:	0004851b          	sext.w	a0,s1
    80001710:	00004097          	auipc	ra,0x4
    80001714:	73c080e7          	jalr	1852(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80001718:	00009517          	auipc	a0,0x9
    8000171c:	eb850513          	addi	a0,a0,-328 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001720:	00004097          	auipc	ra,0x4
    80001724:	57c080e7          	jalr	1404(ra) # 80005c9c <_Z11printStringPKc>
    if(num > 30)
    80001728:	01e00793          	li	a5,30
    8000172c:	0097fc63          	bgeu	a5,s1,80001744 <_Z4pongPv+0x68>
        return;
    exec(ping, reinterpret_cast<void *>((size_t) arg + 1));
}
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	02010113          	addi	sp,sp,32
    80001740:	00008067          	ret
    exec(ping, reinterpret_cast<void *>((size_t) arg + 1));
    80001744:	00148593          	addi	a1,s1,1
    80001748:	00000517          	auipc	a0,0x0
    8000174c:	f1450513          	addi	a0,a0,-236 # 8000165c <_Z4pingPv>
    80001750:	00000097          	auipc	ra,0x0
    80001754:	da8080e7          	jalr	-600(ra) # 800014f8 <_Z4execPFvPvES_>
    80001758:	fd9ff06f          	j	80001730 <_Z4pongPv+0x54>

000000008000175c <_Z21threadKillSemFunctionPv>:

_thread* threadKillSem;
_sem* killSem;

void threadKillSemFunction(void*)
{
    8000175c:	ff010113          	addi	sp,sp,-16
    80001760:	00113423          	sd	ra,8(sp)
    80001764:	00813023          	sd	s0,0(sp)
    80001768:	01010413          	addi	s0,sp,16
    printString("threadKillFunction - Started waiting!\n");
    8000176c:	00009517          	auipc	a0,0x9
    80001770:	8e450513          	addi	a0,a0,-1820 # 8000a050 <CONSOLE_STATUS+0x40>
    80001774:	00004097          	auipc	ra,0x4
    80001778:	528080e7          	jalr	1320(ra) # 80005c9c <_Z11printStringPKc>
    sem_wait(killSem);
    8000177c:	0000b517          	auipc	a0,0xb
    80001780:	31453503          	ld	a0,788(a0) # 8000ca90 <killSem>
    80001784:	00000097          	auipc	ra,0x0
    80001788:	bb8080e7          	jalr	-1096(ra) # 8000133c <_Z8sem_waitP4_sem>
    printString("threadKillFunction - Finished waiting!\n");
    8000178c:	00009517          	auipc	a0,0x9
    80001790:	8ec50513          	addi	a0,a0,-1812 # 8000a078 <CONSOLE_STATUS+0x68>
    80001794:	00004097          	auipc	ra,0x4
    80001798:	508080e7          	jalr	1288(ra) # 80005c9c <_Z11printStringPKc>
}
    8000179c:	00813083          	ld	ra,8(sp)
    800017a0:	00013403          	ld	s0,0(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_Z8consumerPv>:
{
    800017ac:	fd010113          	addi	sp,sp,-48
    800017b0:	02113423          	sd	ra,40(sp)
    800017b4:	02813023          	sd	s0,32(sp)
    800017b8:	00913c23          	sd	s1,24(sp)
    800017bc:	01213823          	sd	s2,16(sp)
    800017c0:	01313423          	sd	s3,8(sp)
    800017c4:	03010413          	addi	s0,sp,48
    printString("\n\nPre fork-a\n");
    800017c8:	00009517          	auipc	a0,0x9
    800017cc:	8d850513          	addi	a0,a0,-1832 # 8000a0a0 <CONSOLE_STATUS+0x90>
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	4cc080e7          	jalr	1228(ra) # 80005c9c <_Z11printStringPKc>
    int forkRetVal = fork();
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	ca0080e7          	jalr	-864(ra) # 80001478 <_Z4forkv>
    800017e0:	00050493          	mv	s1,a0
    printString("forkRetVal: ");
    800017e4:	00009517          	auipc	a0,0x9
    800017e8:	8cc50513          	addi	a0,a0,-1844 # 8000a0b0 <CONSOLE_STATUS+0xa0>
    800017ec:	00004097          	auipc	ra,0x4
    800017f0:	4b0080e7          	jalr	1200(ra) # 80005c9c <_Z11printStringPKc>
    printInt(forkRetVal);
    800017f4:	00000613          	li	a2,0
    800017f8:	00a00593          	li	a1,10
    800017fc:	00048513          	mv	a0,s1
    80001800:	00004097          	auipc	ra,0x4
    80001804:	64c080e7          	jalr	1612(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80001808:	00009517          	auipc	a0,0x9
    8000180c:	dc850513          	addi	a0,a0,-568 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001810:	00004097          	auipc	ra,0x4
    80001814:	48c080e7          	jalr	1164(ra) # 80005c9c <_Z11printStringPKc>
    num = id;
    80001818:	0000b797          	auipc	a5,0xb
    8000181c:	fe878793          	addi	a5,a5,-24 # 8000c800 <id>
    80001820:	0007b983          	ld	s3,0(a5)
    id++;
    80001824:	00198713          	addi	a4,s3,1
    80001828:	00e7b023          	sd	a4,0(a5)
        if (sem_wait(full) < 0)
    8000182c:	0000b517          	auipc	a0,0xb
    80001830:	26c53503          	ld	a0,620(a0) # 8000ca98 <full>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	b08080e7          	jalr	-1272(ra) # 8000133c <_Z8sem_waitP4_sem>
    8000183c:	06054c63          	bltz	a0,800018b4 <_Z8consumerPv+0x108>
        int val = buffer;
    80001840:	0000b497          	auipc	s1,0xb
    80001844:	25048493          	addi	s1,s1,592 # 8000ca90 <killSem>
    80001848:	0104a903          	lw	s2,16(s1)
        printString("Consumer ID: ");
    8000184c:	00009517          	auipc	a0,0x9
    80001850:	87450513          	addi	a0,a0,-1932 # 8000a0c0 <CONSOLE_STATUS+0xb0>
    80001854:	00004097          	auipc	ra,0x4
    80001858:	448080e7          	jalr	1096(ra) # 80005c9c <_Z11printStringPKc>
        printInt(num);
    8000185c:	00000613          	li	a2,0
    80001860:	00a00593          	li	a1,10
    80001864:	0009851b          	sext.w	a0,s3
    80001868:	00004097          	auipc	ra,0x4
    8000186c:	5e4080e7          	jalr	1508(ra) # 80005e4c <_Z8printIntiii>
        printString(" Value: ");
    80001870:	00009517          	auipc	a0,0x9
    80001874:	86050513          	addi	a0,a0,-1952 # 8000a0d0 <CONSOLE_STATUS+0xc0>
    80001878:	00004097          	auipc	ra,0x4
    8000187c:	424080e7          	jalr	1060(ra) # 80005c9c <_Z11printStringPKc>
        printInt(val);
    80001880:	00000613          	li	a2,0
    80001884:	00a00593          	li	a1,10
    80001888:	00090513          	mv	a0,s2
    8000188c:	00004097          	auipc	ra,0x4
    80001890:	5c0080e7          	jalr	1472(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001894:	00009517          	auipc	a0,0x9
    80001898:	d3c50513          	addi	a0,a0,-708 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    8000189c:	00004097          	auipc	ra,0x4
    800018a0:	400080e7          	jalr	1024(ra) # 80005c9c <_Z11printStringPKc>
        sem_signal(empty);
    800018a4:	0184b503          	ld	a0,24(s1)
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	ad4080e7          	jalr	-1324(ra) # 8000137c <_Z10sem_signalP4_sem>
    }
    800018b0:	f7dff06f          	j	8000182c <_Z8consumerPv+0x80>
}
    800018b4:	02813083          	ld	ra,40(sp)
    800018b8:	02013403          	ld	s0,32(sp)
    800018bc:	01813483          	ld	s1,24(sp)
    800018c0:	01013903          	ld	s2,16(sp)
    800018c4:	00813983          	ld	s3,8(sp)
    800018c8:	03010113          	addi	sp,sp,48
    800018cc:	00008067          	ret

00000000800018d0 <_Z8producerPv>:
{
    800018d0:	fd010113          	addi	sp,sp,-48
    800018d4:	02113423          	sd	ra,40(sp)
    800018d8:	02813023          	sd	s0,32(sp)
    800018dc:	00913c23          	sd	s1,24(sp)
    800018e0:	01213823          	sd	s2,16(sp)
    800018e4:	01313423          	sd	s3,8(sp)
    800018e8:	03010413          	addi	s0,sp,48
    num = id;
    800018ec:	0000b797          	auipc	a5,0xb
    800018f0:	f1478793          	addi	a5,a5,-236 # 8000c800 <id>
    800018f4:	0007b983          	ld	s3,0(a5)
    id++;
    800018f8:	00198713          	addi	a4,s3,1
    800018fc:	00e7b023          	sd	a4,0(a5)
    int i = 1;
    80001900:	00100493          	li	s1,1
        if (sem_wait(empty) < 0)
    80001904:	0000b517          	auipc	a0,0xb
    80001908:	1a453503          	ld	a0,420(a0) # 8000caa8 <empty>
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	a30080e7          	jalr	-1488(ra) # 8000133c <_Z8sem_waitP4_sem>
    80001914:	0a054463          	bltz	a0,800019bc <_Z8producerPv+0xec>
        buffer = i;
    80001918:	0000b917          	auipc	s2,0xb
    8000191c:	17890913          	addi	s2,s2,376 # 8000ca90 <killSem>
    80001920:	00992823          	sw	s1,16(s2)
        i += 1 * 2 - 1;
    80001924:	0014849b          	addiw	s1,s1,1
        printString("Producer ID: ");
    80001928:	00008517          	auipc	a0,0x8
    8000192c:	7b850513          	addi	a0,a0,1976 # 8000a0e0 <CONSOLE_STATUS+0xd0>
    80001930:	00004097          	auipc	ra,0x4
    80001934:	36c080e7          	jalr	876(ra) # 80005c9c <_Z11printStringPKc>
        printInt(num);
    80001938:	00000613          	li	a2,0
    8000193c:	00a00593          	li	a1,10
    80001940:	0009851b          	sext.w	a0,s3
    80001944:	00004097          	auipc	ra,0x4
    80001948:	508080e7          	jalr	1288(ra) # 80005e4c <_Z8printIntiii>
        printString(" Value: ");
    8000194c:	00008517          	auipc	a0,0x8
    80001950:	78450513          	addi	a0,a0,1924 # 8000a0d0 <CONSOLE_STATUS+0xc0>
    80001954:	00004097          	auipc	ra,0x4
    80001958:	348080e7          	jalr	840(ra) # 80005c9c <_Z11printStringPKc>
        printInt(buffer);
    8000195c:	00000613          	li	a2,0
    80001960:	00a00593          	li	a1,10
    80001964:	01092503          	lw	a0,16(s2)
    80001968:	00004097          	auipc	ra,0x4
    8000196c:	4e4080e7          	jalr	1252(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001970:	00009517          	auipc	a0,0x9
    80001974:	c6050513          	addi	a0,a0,-928 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001978:	00004097          	auipc	ra,0x4
    8000197c:	324080e7          	jalr	804(ra) # 80005c9c <_Z11printStringPKc>
        if (i > 20)
    80001980:	01400793          	li	a5,20
    80001984:	0097cc63          	blt	a5,s1,8000199c <_Z8producerPv+0xcc>
        sem_signal(full);
    80001988:	0000b517          	auipc	a0,0xb
    8000198c:	11053503          	ld	a0,272(a0) # 8000ca98 <full>
    80001990:	00000097          	auipc	ra,0x0
    80001994:	9ec080e7          	jalr	-1556(ra) # 8000137c <_Z10sem_signalP4_sem>
        if (sem_wait(empty) < 0)
    80001998:	f6dff06f          	j	80001904 <_Z8producerPv+0x34>
            printString("CLOSING SEMAPHORE FULL!!! ");
    8000199c:	00008517          	auipc	a0,0x8
    800019a0:	75450513          	addi	a0,a0,1876 # 8000a0f0 <CONSOLE_STATUS+0xe0>
    800019a4:	00004097          	auipc	ra,0x4
    800019a8:	2f8080e7          	jalr	760(ra) # 80005c9c <_Z11printStringPKc>
            sem_close(full);
    800019ac:	0000b517          	auipc	a0,0xb
    800019b0:	0ec53503          	ld	a0,236(a0) # 8000ca98 <full>
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	950080e7          	jalr	-1712(ra) # 80001304 <_Z9sem_closeP4_sem>
}
    800019bc:	02813083          	ld	ra,40(sp)
    800019c0:	02013403          	ld	s0,32(sp)
    800019c4:	01813483          	ld	s1,24(sp)
    800019c8:	01013903          	ld	s2,16(sp)
    800019cc:	00813983          	ld	s3,8(sp)
    800019d0:	03010113          	addi	sp,sp,48
    800019d4:	00008067          	ret

00000000800019d8 <_Z10collumnSumPv>:
    for(int i = 0; i < data->m; i++)
    800019d8:	00000793          	li	a5,0
    int s = 0;
    800019dc:	00000613          	li	a2,0
    for(int i = 0; i < data->m; i++)
    800019e0:	00852703          	lw	a4,8(a0)
    800019e4:	02e7d863          	bge	a5,a4,80001a14 <_Z10collumnSumPv+0x3c>
        s += data->mat[i][data->targetN];
    800019e8:	00053703          	ld	a4,0(a0)
    800019ec:	00379693          	slli	a3,a5,0x3
    800019f0:	00d70733          	add	a4,a4,a3
    800019f4:	00073703          	ld	a4,0(a4)
    800019f8:	01052683          	lw	a3,16(a0)
    800019fc:	00269693          	slli	a3,a3,0x2
    80001a00:	00d70733          	add	a4,a4,a3
    80001a04:	00072703          	lw	a4,0(a4)
    80001a08:	00c7063b          	addw	a2,a4,a2
    for(int i = 0; i < data->m; i++)
    80001a0c:	0017879b          	addiw	a5,a5,1
    80001a10:	fd1ff06f          	j	800019e0 <_Z10collumnSumPv+0x8>
    *data->retLocation = s;
    80001a14:	01853783          	ld	a5,24(a0)
    80001a18:	00c7a023          	sw	a2,0(a5)
    delete data;
    80001a1c:	02050663          	beqz	a0,80001a48 <_Z10collumnSumPv+0x70>
{
    80001a20:	ff010113          	addi	sp,sp,-16
    80001a24:	00113423          	sd	ra,8(sp)
    80001a28:	00813023          	sd	s0,0(sp)
    80001a2c:	01010413          	addi	s0,sp,16
    delete data;
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	a0c080e7          	jalr	-1524(ra) # 8000243c <_ZdlPv>
}
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret
    80001a48:	00008067          	ret

0000000080001a4c <_Z13resourceGiverPv>:
    printString("Error: Killed self!\n");
}

resource* myResource;
void resourceGiver(void*)
{
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	02010413          	addi	s0,sp,32
    while (true)
    {
        myResource->releaseResource(3);
    80001a60:	0000b497          	auipc	s1,0xb
    80001a64:	03048493          	addi	s1,s1,48 # 8000ca90 <killSem>
    80001a68:	00300593          	li	a1,3
    80001a6c:	0204b503          	ld	a0,32(s1)
    80001a70:	00001097          	auipc	ra,0x1
    80001a74:	888080e7          	jalr	-1912(ra) # 800022f8 <_ZN8resource15releaseResourceEj>
        printString("Released 3 resource! Current balance = ");
    80001a78:	00008517          	auipc	a0,0x8
    80001a7c:	69850513          	addi	a0,a0,1688 # 8000a110 <CONSOLE_STATUS+0x100>
    80001a80:	00004097          	auipc	ra,0x4
    80001a84:	21c080e7          	jalr	540(ra) # 80005c9c <_Z11printStringPKc>
        printInt(myResource->val);
    80001a88:	0204b783          	ld	a5,32(s1)
    80001a8c:	00000613          	li	a2,0
    80001a90:	00a00593          	li	a1,10
    80001a94:	0007a503          	lw	a0,0(a5)
    80001a98:	00004097          	auipc	ra,0x4
    80001a9c:	3b4080e7          	jalr	948(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001aa0:	00009517          	auipc	a0,0x9
    80001aa4:	b3050513          	addi	a0,a0,-1232 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001aa8:	00004097          	auipc	ra,0x4
    80001aac:	1f4080e7          	jalr	500(ra) # 80005c9c <_Z11printStringPKc>
        thread_dispatch();
    80001ab0:	fffff097          	auipc	ra,0xfffff
    80001ab4:	7bc080e7          	jalr	1980(ra) # 8000126c <_Z15thread_dispatchv>
    while (true)
    80001ab8:	fa9ff06f          	j	80001a60 <_Z13resourceGiverPv+0x14>

0000000080001abc <_Z13resourceTakerPv>:
    }
}

void resourceTaker(void*)
{
    80001abc:	fe010113          	addi	sp,sp,-32
    80001ac0:	00113c23          	sd	ra,24(sp)
    80001ac4:	00813823          	sd	s0,16(sp)
    80001ac8:	00913423          	sd	s1,8(sp)
    80001acc:	02010413          	addi	s0,sp,32
    while (true)
    {
        myResource->aquireResource(5);
    80001ad0:	0000b497          	auipc	s1,0xb
    80001ad4:	fc048493          	addi	s1,s1,-64 # 8000ca90 <killSem>
    80001ad8:	00500593          	li	a1,5
    80001adc:	0204b503          	ld	a0,32(s1)
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	778080e7          	jalr	1912(ra) # 80002258 <_ZN8resource14aquireResourceEj>
        printString("Aquired 5 resource! Current balance = ");
    80001ae8:	00008517          	auipc	a0,0x8
    80001aec:	65050513          	addi	a0,a0,1616 # 8000a138 <CONSOLE_STATUS+0x128>
    80001af0:	00004097          	auipc	ra,0x4
    80001af4:	1ac080e7          	jalr	428(ra) # 80005c9c <_Z11printStringPKc>
        printInt(myResource->val);
    80001af8:	0204b783          	ld	a5,32(s1)
    80001afc:	00000613          	li	a2,0
    80001b00:	00a00593          	li	a1,10
    80001b04:	0007a503          	lw	a0,0(a5)
    80001b08:	00004097          	auipc	ra,0x4
    80001b0c:	344080e7          	jalr	836(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80001b10:	00009517          	auipc	a0,0x9
    80001b14:	ac050513          	addi	a0,a0,-1344 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001b18:	00004097          	auipc	ra,0x4
    80001b1c:	184080e7          	jalr	388(ra) # 80005c9c <_Z11printStringPKc>
        thread_dispatch();
    80001b20:	fffff097          	auipc	ra,0xfffff
    80001b24:	74c080e7          	jalr	1868(ra) # 8000126c <_Z15thread_dispatchv>
    while (true)
    80001b28:	fa9ff06f          	j	80001ad0 <_Z13resourceTakerPv+0x14>

0000000080001b2c <_Z10prosliMainv>:
{
    80001b2c:	fe010113          	addi	sp,sp,-32
    80001b30:	00113c23          	sd	ra,24(sp)
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00913423          	sd	s1,8(sp)
    80001b3c:	02010413          	addi	s0,sp,32
    sem_open(&empty, 1);
    80001b40:	0000b497          	auipc	s1,0xb
    80001b44:	f5048493          	addi	s1,s1,-176 # 8000ca90 <killSem>
    80001b48:	00100593          	li	a1,1
    80001b4c:	0000b517          	auipc	a0,0xb
    80001b50:	f5c50513          	addi	a0,a0,-164 # 8000caa8 <empty>
    80001b54:	fffff097          	auipc	ra,0xfffff
    80001b58:	770080e7          	jalr	1904(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&full, 0);
    80001b5c:	00000593          	li	a1,0
    80001b60:	0000b517          	auipc	a0,0xb
    80001b64:	f3850513          	addi	a0,a0,-200 # 8000ca98 <full>
    80001b68:	fffff097          	auipc	ra,0xfffff
    80001b6c:	75c080e7          	jalr	1884(ra) # 800012c4 <_Z8sem_openPP4_semj>
    thread_create(&globalThread1, producer, nullptr);
    80001b70:	00000613          	li	a2,0
    80001b74:	00000597          	auipc	a1,0x0
    80001b78:	d5c58593          	addi	a1,a1,-676 # 800018d0 <_Z8producerPv>
    80001b7c:	0000b517          	auipc	a0,0xb
    80001b80:	f3c50513          	addi	a0,a0,-196 # 8000cab8 <globalThread1>
    80001b84:	fffff097          	auipc	ra,0xfffff
    80001b88:	64c080e7          	jalr	1612(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&globalThread2, consumer, (void*)1);
    80001b8c:	00100613          	li	a2,1
    80001b90:	00000597          	auipc	a1,0x0
    80001b94:	c1c58593          	addi	a1,a1,-996 # 800017ac <_Z8consumerPv>
    80001b98:	0000b517          	auipc	a0,0xb
    80001b9c:	f2850513          	addi	a0,a0,-216 # 8000cac0 <globalThread2>
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	630080e7          	jalr	1584(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_join(globalThread1);
    80001ba8:	0284b503          	ld	a0,40(s1)
    80001bac:	fffff097          	auipc	ra,0xfffff
    80001bb0:	6e8080e7          	jalr	1768(ra) # 80001294 <_Z11thread_joinP7_thread>
    thread_join(globalThread2);
    80001bb4:	0304b503          	ld	a0,48(s1)
    80001bb8:	fffff097          	auipc	ra,0xfffff
    80001bbc:	6dc080e7          	jalr	1756(ra) # 80001294 <_Z11thread_joinP7_thread>
}
    80001bc0:	01813083          	ld	ra,24(sp)
    80001bc4:	01013403          	ld	s0,16(sp)
    80001bc8:	00813483          	ld	s1,8(sp)
    80001bcc:	02010113          	addi	sp,sp,32
    80001bd0:	00008067          	ret

0000000080001bd4 <_Z12modifMatricav>:
{
    80001bd4:	fb010113          	addi	sp,sp,-80
    80001bd8:	04113423          	sd	ra,72(sp)
    80001bdc:	04813023          	sd	s0,64(sp)
    80001be0:	02913c23          	sd	s1,56(sp)
    80001be4:	03213823          	sd	s2,48(sp)
    80001be8:	03313423          	sd	s3,40(sp)
    80001bec:	03413023          	sd	s4,32(sp)
    80001bf0:	01513c23          	sd	s5,24(sp)
    80001bf4:	01613823          	sd	s6,16(sp)
    80001bf8:	01713423          	sd	s7,8(sp)
    80001bfc:	01813023          	sd	s8,0(sp)
    80001c00:	05010413          	addi	s0,sp,80
    printString("\nm = ");
    80001c04:	00008517          	auipc	a0,0x8
    80001c08:	55c50513          	addi	a0,a0,1372 # 8000a160 <CONSOLE_STATUS+0x150>
    80001c0c:	00004097          	auipc	ra,0x4
    80001c10:	090080e7          	jalr	144(ra) # 80005c9c <_Z11printStringPKc>
    int m = (int)getc() - 48;
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	7e4080e7          	jalr	2020(ra) # 800013f8 <_Z4getcv>
    80001c1c:	0005049b          	sext.w	s1,a0
    80001c20:	fd050a1b          	addiw	s4,a0,-48
    printString("\nn = ");
    80001c24:	00008517          	auipc	a0,0x8
    80001c28:	54450513          	addi	a0,a0,1348 # 8000a168 <CONSOLE_STATUS+0x158>
    80001c2c:	00004097          	auipc	ra,0x4
    80001c30:	070080e7          	jalr	112(ra) # 80005c9c <_Z11printStringPKc>
    int n = (int)getc() - 48;
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	7c4080e7          	jalr	1988(ra) # 800013f8 <_Z4getcv>
    80001c3c:	fd05091b          	addiw	s2,a0,-48
    printString("\n");
    80001c40:	00009517          	auipc	a0,0x9
    80001c44:	99050513          	addi	a0,a0,-1648 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001c48:	00004097          	auipc	ra,0x4
    80001c4c:	054080e7          	jalr	84(ra) # 80005c9c <_Z11printStringPKc>
    int** mat = (int**)mem_alloc(sizeof(int*) * (m + 1));
    80001c50:	fd14851b          	addiw	a0,s1,-47
    80001c54:	00351513          	slli	a0,a0,0x3
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	508080e7          	jalr	1288(ra) # 80001160 <_Z9mem_allocm>
    80001c60:	00050993          	mv	s3,a0
    for(int i = 0; i < m + 1; i++)
    80001c64:	00000493          	li	s1,0
    80001c68:	029a4263          	blt	s4,s1,80001c8c <_Z12modifMatricav+0xb8>
        mat[i] = (int*)mem_alloc(sizeof(int) * (n));
    80001c6c:	00349a93          	slli	s5,s1,0x3
    80001c70:	01598ab3          	add	s5,s3,s5
    80001c74:	00291513          	slli	a0,s2,0x2
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	4e8080e7          	jalr	1256(ra) # 80001160 <_Z9mem_allocm>
    80001c80:	00aab023          	sd	a0,0(s5)
    for(int i = 0; i < m + 1; i++)
    80001c84:	0014849b          	addiw	s1,s1,1
    80001c88:	fe1ff06f          	j	80001c68 <_Z12modifMatricav+0x94>
    for(int i = 0; i < m; i++)
    80001c8c:	00000a93          	li	s5,0
    80001c90:	0080006f          	j	80001c98 <_Z12modifMatricav+0xc4>
    80001c94:	001a8a9b          	addiw	s5,s5,1
    80001c98:	034adc63          	bge	s5,s4,80001cd0 <_Z12modifMatricav+0xfc>
        for(int j = 0; j < n; j++)
    80001c9c:	00000493          	li	s1,0
    80001ca0:	ff24dae3          	bge	s1,s2,80001c94 <_Z12modifMatricav+0xc0>
            mat[i][j] = (int)getc() - 48;
    80001ca4:	fffff097          	auipc	ra,0xfffff
    80001ca8:	754080e7          	jalr	1876(ra) # 800013f8 <_Z4getcv>
    80001cac:	003a9793          	slli	a5,s5,0x3
    80001cb0:	00f987b3          	add	a5,s3,a5
    80001cb4:	0007b783          	ld	a5,0(a5)
    80001cb8:	00249713          	slli	a4,s1,0x2
    80001cbc:	00e787b3          	add	a5,a5,a4
    80001cc0:	fd05051b          	addiw	a0,a0,-48
    80001cc4:	00a7a023          	sw	a0,0(a5)
        for(int j = 0; j < n; j++)
    80001cc8:	0014849b          	addiw	s1,s1,1
    80001ccc:	fd5ff06f          	j	80001ca0 <_Z12modifMatricav+0xcc>
    printString("\nMatrica: \n");
    80001cd0:	00008517          	auipc	a0,0x8
    80001cd4:	4a050513          	addi	a0,a0,1184 # 8000a170 <CONSOLE_STATUS+0x160>
    80001cd8:	00004097          	auipc	ra,0x4
    80001cdc:	fc4080e7          	jalr	-60(ra) # 80005c9c <_Z11printStringPKc>
    for(int i = 0; i < m; i++)
    80001ce0:	00000a93          	li	s5,0
    80001ce4:	0180006f          	j	80001cfc <_Z12modifMatricav+0x128>
        printString("\n");
    80001ce8:	00009517          	auipc	a0,0x9
    80001cec:	8e850513          	addi	a0,a0,-1816 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001cf0:	00004097          	auipc	ra,0x4
    80001cf4:	fac080e7          	jalr	-84(ra) # 80005c9c <_Z11printStringPKc>
    for(int i = 0; i < m; i++)
    80001cf8:	001a8a9b          	addiw	s5,s5,1
    80001cfc:	054ad663          	bge	s5,s4,80001d48 <_Z12modifMatricav+0x174>
        for (int j = 0; j < n; j++)
    80001d00:	00000493          	li	s1,0
    80001d04:	ff24d2e3          	bge	s1,s2,80001ce8 <_Z12modifMatricav+0x114>
            printInt(mat[i][j]);
    80001d08:	003a9793          	slli	a5,s5,0x3
    80001d0c:	00f987b3          	add	a5,s3,a5
    80001d10:	0007b783          	ld	a5,0(a5)
    80001d14:	00249713          	slli	a4,s1,0x2
    80001d18:	00e787b3          	add	a5,a5,a4
    80001d1c:	00000613          	li	a2,0
    80001d20:	00a00593          	li	a1,10
    80001d24:	0007a503          	lw	a0,0(a5)
    80001d28:	00004097          	auipc	ra,0x4
    80001d2c:	124080e7          	jalr	292(ra) # 80005e4c <_Z8printIntiii>
            printString(" ");
    80001d30:	00008517          	auipc	a0,0x8
    80001d34:	30850513          	addi	a0,a0,776 # 8000a038 <CONSOLE_STATUS+0x28>
    80001d38:	00004097          	auipc	ra,0x4
    80001d3c:	f64080e7          	jalr	-156(ra) # 80005c9c <_Z11printStringPKc>
        for (int j = 0; j < n; j++)
    80001d40:	0014849b          	addiw	s1,s1,1
    80001d44:	fc1ff06f          	j	80001d04 <_Z12modifMatricav+0x130>
    _thread** handles = (_thread**)mem_alloc(sizeof(_thread*) * n);
    80001d48:	00391513          	slli	a0,s2,0x3
    80001d4c:	fffff097          	auipc	ra,0xfffff
    80001d50:	414080e7          	jalr	1044(ra) # 80001160 <_Z9mem_allocm>
    80001d54:	00050b93          	mv	s7,a0
    for (int i = 0; i < n; i++)
    80001d58:	00000a93          	li	s5,0
    80001d5c:	072ada63          	bge	s5,s2,80001dd0 <_Z12modifMatricav+0x1fc>
        matStruct* arg = (matStruct*) mem_alloc(sizeof(matStruct));
    80001d60:	02000513          	li	a0,32
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	3fc080e7          	jalr	1020(ra) # 80001160 <_Z9mem_allocm>
    80001d6c:	00050493          	mv	s1,a0
        arg->mat = mat;
    80001d70:	01353023          	sd	s3,0(a0)
        arg->m = m;
    80001d74:	01452423          	sw	s4,8(a0)
        arg->n = n;
    80001d78:	01252623          	sw	s2,12(a0)
        arg->targetN = i;
    80001d7c:	01552823          	sw	s5,16(a0)
        arg->retLocation = &mat[m][i];
    80001d80:	003a1793          	slli	a5,s4,0x3
    80001d84:	00f987b3          	add	a5,s3,a5
    80001d88:	0007b783          	ld	a5,0(a5)
    80001d8c:	002a9713          	slli	a4,s5,0x2
    80001d90:	00e787b3          	add	a5,a5,a4
    80001d94:	00f53c23          	sd	a5,24(a0)
        handles[i] = (_thread*) mem_alloc(sizeof(_thread));
    80001d98:	003a9b13          	slli	s6,s5,0x3
    80001d9c:	016b8b33          	add	s6,s7,s6
    80001da0:	06000513          	li	a0,96
    80001da4:	fffff097          	auipc	ra,0xfffff
    80001da8:	3bc080e7          	jalr	956(ra) # 80001160 <_Z9mem_allocm>
    80001dac:	00ab3023          	sd	a0,0(s6)
        thread_create(&handles[i], collumnSum, arg);
    80001db0:	00048613          	mv	a2,s1
    80001db4:	00000597          	auipc	a1,0x0
    80001db8:	c2458593          	addi	a1,a1,-988 # 800019d8 <_Z10collumnSumPv>
    80001dbc:	000b0513          	mv	a0,s6
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	410080e7          	jalr	1040(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < n; i++)
    80001dc8:	001a8a9b          	addiw	s5,s5,1
    80001dcc:	f91ff06f          	j	80001d5c <_Z12modifMatricav+0x188>
    for (int i = 0; i < n; i++)
    80001dd0:	00000493          	li	s1,0
    int sum = 0;
    80001dd4:	00000c13          	li	s8,0
    80001dd8:	0240006f          	j	80001dfc <_Z12modifMatricav+0x228>
        sum += mat[m][i];
    80001ddc:	003a1793          	slli	a5,s4,0x3
    80001de0:	00f987b3          	add	a5,s3,a5
    80001de4:	0007b783          	ld	a5,0(a5)
    80001de8:	002b1b13          	slli	s6,s6,0x2
    80001dec:	016787b3          	add	a5,a5,s6
    80001df0:	0007a783          	lw	a5,0(a5)
    80001df4:	01878c3b          	addw	s8,a5,s8
    for (int i = 0; i < n; i++)
    80001df8:	0014849b          	addiw	s1,s1,1
    80001dfc:	0324d863          	bge	s1,s2,80001e2c <_Z12modifMatricav+0x258>
        thread_join(handles[i]);
    80001e00:	00048b13          	mv	s6,s1
    80001e04:	00349a93          	slli	s5,s1,0x3
    80001e08:	015b8ab3          	add	s5,s7,s5
    80001e0c:	000ab503          	ld	a0,0(s5)
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	484080e7          	jalr	1156(ra) # 80001294 <_Z11thread_joinP7_thread>
        delete handles[i];
    80001e18:	000ab503          	ld	a0,0(s5)
    80001e1c:	fc0500e3          	beqz	a0,80001ddc <_Z12modifMatricav+0x208>
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	61c080e7          	jalr	1564(ra) # 8000243c <_ZdlPv>
    80001e28:	fb5ff06f          	j	80001ddc <_Z12modifMatricav+0x208>
    printString("sum = ");
    80001e2c:	00008517          	auipc	a0,0x8
    80001e30:	35450513          	addi	a0,a0,852 # 8000a180 <CONSOLE_STATUS+0x170>
    80001e34:	00004097          	auipc	ra,0x4
    80001e38:	e68080e7          	jalr	-408(ra) # 80005c9c <_Z11printStringPKc>
    printInt(sum);
    80001e3c:	00000613          	li	a2,0
    80001e40:	00a00593          	li	a1,10
    80001e44:	000c0513          	mv	a0,s8
    80001e48:	00004097          	auipc	ra,0x4
    80001e4c:	004080e7          	jalr	4(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80001e50:	00008517          	auipc	a0,0x8
    80001e54:	78050513          	addi	a0,a0,1920 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001e58:	00004097          	auipc	ra,0x4
    80001e5c:	e44080e7          	jalr	-444(ra) # 80005c9c <_Z11printStringPKc>
}
    80001e60:	04813083          	ld	ra,72(sp)
    80001e64:	04013403          	ld	s0,64(sp)
    80001e68:	03813483          	ld	s1,56(sp)
    80001e6c:	03013903          	ld	s2,48(sp)
    80001e70:	02813983          	ld	s3,40(sp)
    80001e74:	02013a03          	ld	s4,32(sp)
    80001e78:	01813a83          	ld	s5,24(sp)
    80001e7c:	01013b03          	ld	s6,16(sp)
    80001e80:	00813b83          	ld	s7,8(sp)
    80001e84:	00013c03          	ld	s8,0(sp)
    80001e88:	05010113          	addi	sp,sp,80
    80001e8c:	00008067          	ret

0000000080001e90 <_Z9modifKillv>:
{
    80001e90:	fd010113          	addi	sp,sp,-48
    80001e94:	02113423          	sd	ra,40(sp)
    80001e98:	02813023          	sd	s0,32(sp)
    80001e9c:	00913c23          	sd	s1,24(sp)
    80001ea0:	03010413          	addi	s0,sp,48
    thread_create(&a1, test, nullptr);
    80001ea4:	00000613          	li	a2,0
    80001ea8:	fffff597          	auipc	a1,0xfffff
    80001eac:	6c058593          	addi	a1,a1,1728 # 80001568 <_Z4testPv>
    80001eb0:	fd840513          	addi	a0,s0,-40
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	31c080e7          	jalr	796(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&a2, test2, nullptr);
    80001ebc:	00000613          	li	a2,0
    80001ec0:	fffff597          	auipc	a1,0xfffff
    80001ec4:	71458593          	addi	a1,a1,1812 # 800015d4 <_Z5test2Pv>
    80001ec8:	fd040513          	addi	a0,s0,-48
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	304080e7          	jalr	772(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    int i = 0;
    80001ed4:	00000493          	li	s1,0
    80001ed8:	0100006f          	j	80001ee8 <_Z9modifKillv+0x58>
        thread_dispatch();
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	390080e7          	jalr	912(ra) # 8000126c <_Z15thread_dispatchv>
        i++;
    80001ee4:	0014849b          	addiw	s1,s1,1
    while (i < 3)
    80001ee8:	00200793          	li	a5,2
    80001eec:	fe97d8e3          	bge	a5,s1,80001edc <_Z9modifKillv+0x4c>
    killRet = thread_kill(a1->myId);
    80001ef0:	fd843783          	ld	a5,-40(s0)
    80001ef4:	04c7a503          	lw	a0,76(a5)
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	638080e7          	jalr	1592(ra) # 80001530 <_Z11thread_killi>
    80001f00:	00050493          	mv	s1,a0
    printString("\na1 killRet = ");
    80001f04:	00008517          	auipc	a0,0x8
    80001f08:	28450513          	addi	a0,a0,644 # 8000a188 <CONSOLE_STATUS+0x178>
    80001f0c:	00004097          	auipc	ra,0x4
    80001f10:	d90080e7          	jalr	-624(ra) # 80005c9c <_Z11printStringPKc>
    printInt(killRet);
    80001f14:	00000613          	li	a2,0
    80001f18:	00a00593          	li	a1,10
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	00004097          	auipc	ra,0x4
    80001f24:	f2c080e7          	jalr	-212(ra) # 80005e4c <_Z8printIntiii>
    killRet = thread_kill(a2->myId);
    80001f28:	fd043783          	ld	a5,-48(s0)
    80001f2c:	04c7a503          	lw	a0,76(a5)
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	600080e7          	jalr	1536(ra) # 80001530 <_Z11thread_killi>
    80001f38:	00050493          	mv	s1,a0
    printString("\na2 killRet = ");
    80001f3c:	00008517          	auipc	a0,0x8
    80001f40:	25c50513          	addi	a0,a0,604 # 8000a198 <CONSOLE_STATUS+0x188>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	d58080e7          	jalr	-680(ra) # 80005c9c <_Z11printStringPKc>
    printInt(killRet);
    80001f4c:	00000613          	li	a2,0
    80001f50:	00a00593          	li	a1,10
    80001f54:	00048513          	mv	a0,s1
    80001f58:	00004097          	auipc	ra,0x4
    80001f5c:	ef4080e7          	jalr	-268(ra) # 80005e4c <_Z8printIntiii>
    printString("\nKilled a1 and a2!\n");
    80001f60:	00008517          	auipc	a0,0x8
    80001f64:	24850513          	addi	a0,a0,584 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80001f68:	00004097          	auipc	ra,0x4
    80001f6c:	d34080e7          	jalr	-716(ra) # 80005c9c <_Z11printStringPKc>
    killRet = thread_kill(7);
    80001f70:	00700513          	li	a0,7
    80001f74:	fffff097          	auipc	ra,0xfffff
    80001f78:	5bc080e7          	jalr	1468(ra) # 80001530 <_Z11thread_killi>
    80001f7c:	00050493          	mv	s1,a0
    printString("\nthread not found killRet = ");
    80001f80:	00008517          	auipc	a0,0x8
    80001f84:	24050513          	addi	a0,a0,576 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80001f88:	00004097          	auipc	ra,0x4
    80001f8c:	d14080e7          	jalr	-748(ra) # 80005c9c <_Z11printStringPKc>
    printInt(killRet);
    80001f90:	00000613          	li	a2,0
    80001f94:	00a00593          	li	a1,10
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	00004097          	auipc	ra,0x4
    80001fa0:	eb0080e7          	jalr	-336(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80001fa4:	00008517          	auipc	a0,0x8
    80001fa8:	62c50513          	addi	a0,a0,1580 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80001fac:	00004097          	auipc	ra,0x4
    80001fb0:	cf0080e7          	jalr	-784(ra) # 80005c9c <_Z11printStringPKc>
    sem_open(&killSem, 0);
    80001fb4:	0000b497          	auipc	s1,0xb
    80001fb8:	adc48493          	addi	s1,s1,-1316 # 8000ca90 <killSem>
    80001fbc:	00000593          	li	a1,0
    80001fc0:	00048513          	mv	a0,s1
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	300080e7          	jalr	768(ra) # 800012c4 <_Z8sem_openPP4_semj>
    thread_create(&threadKillSem, threadKillSemFunction, nullptr);
    80001fcc:	00000613          	li	a2,0
    80001fd0:	fffff597          	auipc	a1,0xfffff
    80001fd4:	78c58593          	addi	a1,a1,1932 # 8000175c <_Z21threadKillSemFunctionPv>
    80001fd8:	0000b517          	auipc	a0,0xb
    80001fdc:	af050513          	addi	a0,a0,-1296 # 8000cac8 <threadKillSem>
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	1f0080e7          	jalr	496(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_dispatch();
    80001fe8:	fffff097          	auipc	ra,0xfffff
    80001fec:	284080e7          	jalr	644(ra) # 8000126c <_Z15thread_dispatchv>
    killRet = thread_kill(threadKillSem->myId);
    80001ff0:	0384b783          	ld	a5,56(s1)
    80001ff4:	04c7a503          	lw	a0,76(a5)
    80001ff8:	fffff097          	auipc	ra,0xfffff
    80001ffc:	538080e7          	jalr	1336(ra) # 80001530 <_Z11thread_killi>
    80002000:	00050493          	mv	s1,a0
    printString("\nthread on semaphore killRet = ");
    80002004:	00008517          	auipc	a0,0x8
    80002008:	1dc50513          	addi	a0,a0,476 # 8000a1e0 <CONSOLE_STATUS+0x1d0>
    8000200c:	00004097          	auipc	ra,0x4
    80002010:	c90080e7          	jalr	-880(ra) # 80005c9c <_Z11printStringPKc>
    printInt(killRet);
    80002014:	00000613          	li	a2,0
    80002018:	00a00593          	li	a1,10
    8000201c:	00048513          	mv	a0,s1
    80002020:	00004097          	auipc	ra,0x4
    80002024:	e2c080e7          	jalr	-468(ra) # 80005e4c <_Z8printIntiii>
    printString("\n");
    80002028:	00008517          	auipc	a0,0x8
    8000202c:	5a850513          	addi	a0,a0,1448 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80002030:	00004097          	auipc	ra,0x4
    80002034:	c6c080e7          	jalr	-916(ra) # 80005c9c <_Z11printStringPKc>
    thread_kill(_thread::running->myId);
    80002038:	0000b797          	auipc	a5,0xb
    8000203c:	9d87b783          	ld	a5,-1576(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002040:	0007b783          	ld	a5,0(a5)
    80002044:	04c7a503          	lw	a0,76(a5)
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	4e8080e7          	jalr	1256(ra) # 80001530 <_Z11thread_killi>
    printString("Error: Killed self!\n");
    80002050:	00008517          	auipc	a0,0x8
    80002054:	1b050513          	addi	a0,a0,432 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80002058:	00004097          	auipc	ra,0x4
    8000205c:	c44080e7          	jalr	-956(ra) # 80005c9c <_Z11printStringPKc>
}
    80002060:	02813083          	ld	ra,40(sp)
    80002064:	02013403          	ld	s0,32(sp)
    80002068:	01813483          	ld	s1,24(sp)
    8000206c:	03010113          	addi	sp,sp,48
    80002070:	00008067          	ret

0000000080002074 <_Z13modifResourcev>:
    }
}

void modifResource()
{
    80002074:	fd010113          	addi	sp,sp,-48
    80002078:	02113423          	sd	ra,40(sp)
    8000207c:	02813023          	sd	s0,32(sp)
    80002080:	00913c23          	sd	s1,24(sp)
    80002084:	03010413          	addi	s0,sp,48
    _thread* giver;
    _thread* taker;

    myResource = resource::createResource(10);
    80002088:	00a00513          	li	a0,10
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	170080e7          	jalr	368(ra) # 800021fc <_ZN8resource14createResourceEj>
    80002094:	0000b797          	auipc	a5,0xb
    80002098:	a0a7be23          	sd	a0,-1508(a5) # 8000cab0 <myResource>

    thread_create(&giver, resourceGiver, nullptr);
    8000209c:	00000613          	li	a2,0
    800020a0:	00000597          	auipc	a1,0x0
    800020a4:	9ac58593          	addi	a1,a1,-1620 # 80001a4c <_Z13resourceGiverPv>
    800020a8:	fd840513          	addi	a0,s0,-40
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	124080e7          	jalr	292(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&taker, resourceTaker, nullptr);
    800020b4:	00000613          	li	a2,0
    800020b8:	00000597          	auipc	a1,0x0
    800020bc:	a0458593          	addi	a1,a1,-1532 # 80001abc <_Z13resourceTakerPv>
    800020c0:	fd040513          	addi	a0,s0,-48
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	10c080e7          	jalr	268(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>

    printString("Resource test started!\n");
    800020cc:	00008517          	auipc	a0,0x8
    800020d0:	14c50513          	addi	a0,a0,332 # 8000a218 <CONSOLE_STATUS+0x208>
    800020d4:	00004097          	auipc	ra,0x4
    800020d8:	bc8080e7          	jalr	-1080(ra) # 80005c9c <_Z11printStringPKc>
    thread_dispatch();
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	190080e7          	jalr	400(ra) # 8000126c <_Z15thread_dispatchv>

    int i = 0;
    800020e4:	00000493          	li	s1,0
    while(i < 10)
    800020e8:	00900793          	li	a5,9
    800020ec:	0097ca63          	blt	a5,s1,80002100 <_Z13modifResourcev+0x8c>
    {
        thread_dispatch();
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	17c080e7          	jalr	380(ra) # 8000126c <_Z15thread_dispatchv>
        i++;
    800020f8:	0014849b          	addiw	s1,s1,1
    while(i < 10)
    800020fc:	fedff06f          	j	800020e8 <_Z13modifResourcev+0x74>
    }

    thread_kill(giver->myId);
    80002100:	fd843783          	ld	a5,-40(s0)
    80002104:	04c7a503          	lw	a0,76(a5)
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	428080e7          	jalr	1064(ra) # 80001530 <_Z11thread_killi>
    thread_kill(taker->myId);
    80002110:	fd043783          	ld	a5,-48(s0)
    80002114:	04c7a503          	lw	a0,76(a5)
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	418080e7          	jalr	1048(ra) # 80001530 <_Z11thread_killi>
}
    80002120:	02813083          	ld	ra,40(sp)
    80002124:	02013403          	ld	s0,32(sp)
    80002128:	01813483          	ld	s1,24(sp)
    8000212c:	03010113          	addi	sp,sp,48
    80002130:	00008067          	ret

0000000080002134 <_Z11mainWrapperPv>:


void mainWrapper(void*)
{
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00113423          	sd	ra,8(sp)
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	01010413          	addi	s0,sp,16
    //exec(ping, reinterpret_cast<void *>(1));
    // prosliMain();
    // userMain();
    // modifMatrica();
    // modifKill();
    modifResource();
    80002144:	00000097          	auipc	ra,0x0
    80002148:	f30080e7          	jalr	-208(ra) # 80002074 <_Z13modifResourcev>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <main>:


void main()
{
    8000215c:	fd010113          	addi	sp,sp,-48
    80002160:	02113423          	sd	ra,40(sp)
    80002164:	02813023          	sd	s0,32(sp)
    80002168:	03010413          	addi	s0,sp,48
    MemoryAllocator::initialise();
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	e64080e7          	jalr	-412(ra) # 80002fd0 <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002174:	0000b797          	auipc	a5,0xb
    80002178:	8a47b783          	ld	a5,-1884(a5) # 8000ca18 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000217c:	10579073          	csrw	stvec,a5
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002180:	100027f3          	csrr	a5,sstatus
    80002184:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002188:	fd843783          	ld	a5,-40(s0)

    uint64 sstatus = Riscv::r_sstatus();
    sstatus |= Riscv::SSTATUS_SIE;
    sstatus |= Riscv::SSTATUS_SPP;
    8000218c:	1027e793          	ori	a5,a5,258
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002190:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(sstatus);

    thread_t handle = nullptr;
    80002194:	fe043423          	sd	zero,-24(s0)
    thread_t userMainHandle = nullptr;
    80002198:	fe043023          	sd	zero,-32(s0)

    thread_create(&handle, nullptr, nullptr);
    8000219c:	00000613          	li	a2,0
    800021a0:	00000593          	li	a1,0
    800021a4:	fe840513          	addi	a0,s0,-24
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	028080e7          	jalr	40(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = handle;
    800021b0:	0000b797          	auipc	a5,0xb
    800021b4:	8607b783          	ld	a5,-1952(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    800021b8:	fe843703          	ld	a4,-24(s0)
    800021bc:	00e7b023          	sd	a4,0(a5)


    thread_create(&userMainHandle, mainWrapper, nullptr);
    800021c0:	00000613          	li	a2,0
    800021c4:	00000597          	auipc	a1,0x0
    800021c8:	f7058593          	addi	a1,a1,-144 # 80002134 <_Z11mainWrapperPv>
    800021cc:	fe040513          	addi	a0,s0,-32
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	000080e7          	jalr	ra # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
//    printString("\n");

//    Scheduler::readyThreadQueue.printAll();
//    printString("\nPre join-a\n\n");

    enterUserMode();
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	1dc080e7          	jalr	476(ra) # 800013b4 <_Z13enterUserModev>
    thread_join(userMainHandle);
    800021e0:	fe043503          	ld	a0,-32(s0)
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	0b0080e7          	jalr	176(ra) # 80001294 <_Z11thread_joinP7_thread>
//    printString("\nPosle join-a\n\n");
//    Scheduler::readyThreadQueue.printAll();
}
    800021ec:	02813083          	ld	ra,40(sp)
    800021f0:	02013403          	ld	s0,32(sp)
    800021f4:	03010113          	addi	sp,sp,48
    800021f8:	00008067          	ret

00000000800021fc <_ZN8resource14createResourceEj>:
//

#include "../h/resource.hpp"


resource *resource::createResource(unsigned value) {
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00113c23          	sd	ra,24(sp)
    80002204:	00813823          	sd	s0,16(sp)
    80002208:	00913423          	sd	s1,8(sp)
    8000220c:	01213023          	sd	s2,0(sp)
    80002210:	02010413          	addi	s0,sp,32
    80002214:	00050913          	mv	s2,a0
    resource* newResource = (resource*) mem_alloc(sizeof(resource));
    80002218:	01000513          	li	a0,16
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	f44080e7          	jalr	-188(ra) # 80001160 <_Z9mem_allocm>
    80002224:	00050493          	mv	s1,a0
    newResource->val = value;
    80002228:	01252023          	sw	s2,0(a0)
    sem_open(&newResource->semaphore,0);
    8000222c:	00000593          	li	a1,0
    80002230:	00850513          	addi	a0,a0,8
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	090080e7          	jalr	144(ra) # 800012c4 <_Z8sem_openPP4_semj>

    return newResource;
}
    8000223c:	00048513          	mv	a0,s1
    80002240:	01813083          	ld	ra,24(sp)
    80002244:	01013403          	ld	s0,16(sp)
    80002248:	00813483          	ld	s1,8(sp)
    8000224c:	00013903          	ld	s2,0(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN8resource14aquireResourceEj>:


void resource::aquireResource(unsigned amount)
{
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	01213023          	sd	s2,0(sp)
    8000226c:	02010413          	addi	s0,sp,32
    80002270:	00050493          	mv	s1,a0
    80002274:	00058913          	mv	s2,a1
    // ako ima prvog onda cekaj
    if (this->semaphore->peekFirst())
    80002278:	00853503          	ld	a0,8(a0)
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	ab4080e7          	jalr	-1356(ra) # 80002d30 <_ZNK4_sem9peekFirstEv>
    80002284:	02050c63          	beqz	a0,800022bc <_ZN8resource14aquireResourceEj+0x64>
    {
        _thread::running->resourceWant = amount;
    80002288:	0000a797          	auipc	a5,0xa
    8000228c:	7887b783          	ld	a5,1928(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002290:	0007b783          	ld	a5,0(a5)
    80002294:	0527ac23          	sw	s2,88(a5)
        sem_wait(this->semaphore);
    80002298:	0084b503          	ld	a0,8(s1)
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	0a0080e7          	jalr	160(ra) # 8000133c <_Z8sem_waitP4_sem>
        sem_wait(this->semaphore);
    }
    // jedina je nit i ima dovoljno resoursa
    else
        this->val -= amount;
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	00013903          	ld	s2,0(sp)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00008067          	ret
    else if (this->val < amount)
    800022bc:	0004a583          	lw	a1,0(s1)
    800022c0:	0125e863          	bltu	a1,s2,800022d0 <_ZN8resource14aquireResourceEj+0x78>
        this->val -= amount;
    800022c4:	4125893b          	subw	s2,a1,s2
    800022c8:	0124a023          	sw	s2,0(s1)
}
    800022cc:	fd9ff06f          	j	800022a4 <_ZN8resource14aquireResourceEj+0x4c>
        _thread::running->resourceWant = amount - this->val;
    800022d0:	0000a797          	auipc	a5,0xa
    800022d4:	7407b783          	ld	a5,1856(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    800022d8:	0007b783          	ld	a5,0(a5)
    800022dc:	40b9093b          	subw	s2,s2,a1
    800022e0:	0527ac23          	sw	s2,88(a5)
        this->val = 0;
    800022e4:	0004a023          	sw	zero,0(s1)
        sem_wait(this->semaphore);
    800022e8:	0084b503          	ld	a0,8(s1)
    800022ec:	fffff097          	auipc	ra,0xfffff
    800022f0:	050080e7          	jalr	80(ra) # 8000133c <_Z8sem_waitP4_sem>
    800022f4:	fb1ff06f          	j	800022a4 <_ZN8resource14aquireResourceEj+0x4c>

00000000800022f8 <_ZN8resource15releaseResourceEj>:

void resource::releaseResource(unsigned amount)
{
    800022f8:	fe010113          	addi	sp,sp,-32
    800022fc:	00113c23          	sd	ra,24(sp)
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	02010413          	addi	s0,sp,32
    8000230c:	00050493          	mv	s1,a0
    this->val += amount;
    80002310:	00052783          	lw	a5,0(a0)
    80002314:	00b787bb          	addw	a5,a5,a1
    80002318:	00f52023          	sw	a5,0(a0)
    8000231c:	01c0006f          	j	80002338 <_ZN8resource15releaseResourceEj+0x40>
            _thread::running->resourceWant = firstThread->resourceWant - this->val;
            this->val = 0;
        }
        else // releasing thread
        {
            this->val -= firstThread->resourceWant;
    80002320:	40f707bb          	subw	a5,a4,a5
    80002324:	00f4a023          	sw	a5,0(s1)
            firstThread->resourceWant = 0;
    80002328:	04052c23          	sw	zero,88(a0)
            sem_signal(this->semaphore);
    8000232c:	0084b503          	ld	a0,8(s1)
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	04c080e7          	jalr	76(ra) # 8000137c <_Z10sem_signalP4_sem>
    while (this->semaphore->peekFirst() && this->val > 0)
    80002338:	0084b503          	ld	a0,8(s1)
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	9f4080e7          	jalr	-1548(ra) # 80002d30 <_ZNK4_sem9peekFirstEv>
    80002344:	04050063          	beqz	a0,80002384 <_ZN8resource15releaseResourceEj+0x8c>
    80002348:	0004a783          	lw	a5,0(s1)
    8000234c:	02078c63          	beqz	a5,80002384 <_ZN8resource15releaseResourceEj+0x8c>
        _thread* firstThread = this->semaphore->peekFirst();
    80002350:	0084b503          	ld	a0,8(s1)
    80002354:	00001097          	auipc	ra,0x1
    80002358:	9dc080e7          	jalr	-1572(ra) # 80002d30 <_ZNK4_sem9peekFirstEv>
        if (this->val < firstThread->resourceWant) // reducing by available amount
    8000235c:	0004a703          	lw	a4,0(s1)
    80002360:	05852783          	lw	a5,88(a0)
    80002364:	faf77ee3          	bgeu	a4,a5,80002320 <_ZN8resource15releaseResourceEj+0x28>
            _thread::running->resourceWant = firstThread->resourceWant - this->val;
    80002368:	0000a697          	auipc	a3,0xa
    8000236c:	6a86b683          	ld	a3,1704(a3) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002370:	0006b683          	ld	a3,0(a3)
    80002374:	40e787bb          	subw	a5,a5,a4
    80002378:	04f6ac23          	sw	a5,88(a3)
            this->val = 0;
    8000237c:	0004a023          	sw	zero,0(s1)
    80002380:	fb9ff06f          	j	80002338 <_ZN8resource15releaseResourceEj+0x40>
        }
    }
}
    80002384:	01813083          	ld	ra,24(sp)
    80002388:	01013403          	ld	s0,16(sp)
    8000238c:	00813483          	ld	s1,8(sp)
    80002390:	02010113          	addi	sp,sp,32
    80002394:	00008067          	ret

0000000080002398 <_ZN6ThreadD1Ev>:
    {
        Thread();
    }
}

Thread::~Thread()
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00813423          	sd	s0,8(sp)
    800023a0:	01010413          	addi	s0,sp,16
{
//    if (this->myHandle)
//        thread_exit();
}
    800023a4:	00813403          	ld	s0,8(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret

00000000800023b0 <_ZN6Thread7wrapperEPv>:
    body = &wrapper;
    arg = this;
}

void Thread::wrapper(void* thread)
{
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00113423          	sd	ra,8(sp)
    800023b8:	00813023          	sd	s0,0(sp)
    800023bc:	01010413          	addi	s0,sp,16
    Thread* t = static_cast<Thread *>(thread);
    t->run();
    800023c0:	00053783          	ld	a5,0(a0)
    800023c4:	0107b783          	ld	a5,16(a5)
    800023c8:	000780e7          	jalr	a5
}
    800023cc:	00813083          	ld	ra,8(sp)
    800023d0:	00013403          	ld	s0,0(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    800023ec:	0000a797          	auipc	a5,0xa
    800023f0:	45478793          	addi	a5,a5,1108 # 8000c840 <_ZTV9Semaphore+0x10>
    800023f4:	00f53023          	sd	a5,0(a0)
{
    sem_close(myHandle);
    800023f8:	00853503          	ld	a0,8(a0)
    800023fc:	fffff097          	auipc	ra,0xfffff
    80002400:	f08080e7          	jalr	-248(ra) # 80001304 <_Z9sem_closeP4_sem>
}
    80002404:	00813083          	ld	ra,8(sp)
    80002408:	00013403          	ld	s0,0(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_Znwm>:
{
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00113423          	sd	ra,8(sp)
    8000241c:	00813023          	sd	s0,0(sp)
    80002420:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	d3c080e7          	jalr	-708(ra) # 80001160 <_Z9mem_allocm>
}
    8000242c:	00813083          	ld	ra,8(sp)
    80002430:	00013403          	ld	s0,0(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <_ZdlPv>:
{
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00113423          	sd	ra,8(sp)
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	d4c080e7          	jalr	-692(ra) # 80001198 <_Z8mem_freePv>
}
    80002454:	00813083          	ld	ra,8(sp)
    80002458:	00013403          	ld	s0,0(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
}
    80002474:	00000097          	auipc	ra,0x0
    80002478:	fc8080e7          	jalr	-56(ra) # 8000243c <_ZdlPv>
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	02010413          	addi	s0,sp,32
    800024a0:	00050493          	mv	s1,a0
}
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	f38080e7          	jalr	-200(ra) # 800023dc <_ZN9SemaphoreD1Ev>
    800024ac:	00048513          	mv	a0,s1
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	f8c080e7          	jalr	-116(ra) # 8000243c <_ZdlPv>
    800024b8:	01813083          	ld	ra,24(sp)
    800024bc:	01013403          	ld	s0,16(sp)
    800024c0:	00813483          	ld	s1,8(sp)
    800024c4:	02010113          	addi	sp,sp,32
    800024c8:	00008067          	ret

00000000800024cc <_ZN6Thread5startEv>:
    if (this->body != nullptr)
    800024cc:	01053583          	ld	a1,16(a0)
    800024d0:	04058863          	beqz	a1,80002520 <_ZN6Thread5startEv+0x54>
{
    800024d4:	fe010113          	addi	sp,sp,-32
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	00813823          	sd	s0,16(sp)
    800024e0:	00913423          	sd	s1,8(sp)
    800024e4:	02010413          	addi	s0,sp,32
    800024e8:	00050493          	mv	s1,a0
        int retVal = thread_create(&this->myHandle, this->body, this->arg);
    800024ec:	01853603          	ld	a2,24(a0)
    800024f0:	00850513          	addi	a0,a0,8
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	cdc080e7          	jalr	-804(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
        if (retVal < 0)
    800024fc:	00054863          	bltz	a0,8000250c <_ZN6Thread5startEv+0x40>
        this->body = nullptr;
    80002500:	0004b823          	sd	zero,16(s1)
        this->arg = nullptr;
    80002504:	0004bc23          	sd	zero,24(s1)
        return 0; // thread started successfully
    80002508:	00000513          	li	a0,0
}
    8000250c:	01813083          	ld	ra,24(sp)
    80002510:	01013403          	ld	s0,16(sp)
    80002514:	00813483          	ld	s1,8(sp)
    80002518:	02010113          	addi	sp,sp,32
    8000251c:	00008067          	ret
    return -3; // thread already started
    80002520:	ffd00513          	li	a0,-3
}
    80002524:	00008067          	ret

0000000080002528 <_ZN6Thread4joinEv>:
    if (this->myHandle)
    80002528:	00853503          	ld	a0,8(a0)
    8000252c:	02050663          	beqz	a0,80002558 <_ZN6Thread4joinEv+0x30>
{
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00113423          	sd	ra,8(sp)
    80002538:	00813023          	sd	s0,0(sp)
    8000253c:	01010413          	addi	s0,sp,16
        thread_join(this->myHandle);
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	d54080e7          	jalr	-684(ra) # 80001294 <_Z11thread_joinP7_thread>
}
    80002548:	00813083          	ld	ra,8(sp)
    8000254c:	00013403          	ld	s0,0(sp)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret
    80002558:	00008067          	ret

000000008000255c <_ZN6Thread8dispatchEv>:
{
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	00813023          	sd	s0,0(sp)
    80002568:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	d00080e7          	jalr	-768(ra) # 8000126c <_Z15thread_dispatchv>
}
    80002574:	00813083          	ld	ra,8(sp)
    80002578:	00013403          	ld	s0,0(sp)
    8000257c:	01010113          	addi	sp,sp,16
    80002580:	00008067          	ret

0000000080002584 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80002584:	ff010113          	addi	sp,sp,-16
    80002588:	00813423          	sd	s0,8(sp)
    8000258c:	01010413          	addi	s0,sp,16
}
    80002590:	00000513          	li	a0,0
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	0000a797          	auipc	a5,0xa
    800025b0:	26c78793          	addi	a5,a5,620 # 8000c818 <_ZTV6Thread+0x10>
    800025b4:	00f53023          	sd	a5,0(a0)
    800025b8:	00053423          	sd	zero,8(a0)
    body = &wrapper;
    800025bc:	00000797          	auipc	a5,0x0
    800025c0:	df478793          	addi	a5,a5,-524 # 800023b0 <_ZN6Thread7wrapperEPv>
    800025c4:	00f53823          	sd	a5,16(a0)
    arg = this;
    800025c8:	00a53c23          	sd	a0,24(a0)
}
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    800025d8:	0000a797          	auipc	a5,0xa
    800025dc:	24078793          	addi	a5,a5,576 # 8000c818 <_ZTV6Thread+0x10>
    800025e0:	00f53023          	sd	a5,0(a0)
    800025e4:	00053423          	sd	zero,8(a0)
    if (body != nullptr)
    800025e8:	00058863          	beqz	a1,800025f8 <_ZN6ThreadC1EPFvPvES0_+0x20>
        this->body = body;
    800025ec:	00b53823          	sd	a1,16(a0)
        this->arg = arg;
    800025f0:	00c53c23          	sd	a2,24(a0)
        this->myHandle = nullptr;
    800025f4:	00008067          	ret
Thread::Thread(void (*body)(void *), void *arg)
    800025f8:	fd010113          	addi	sp,sp,-48
    800025fc:	02113423          	sd	ra,40(sp)
    80002600:	02813023          	sd	s0,32(sp)
    80002604:	03010413          	addi	s0,sp,48
        Thread();
    80002608:	fd040513          	addi	a0,s0,-48
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	f94080e7          	jalr	-108(ra) # 800025a0 <_ZN6ThreadC1Ev>
}
    80002614:	02813083          	ld	ra,40(sp)
    80002618:	02013403          	ld	s0,32(sp)
    8000261c:	03010113          	addi	sp,sp,48
    80002620:	00008067          	ret

0000000080002624 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00113423          	sd	ra,8(sp)
    8000262c:	00813023          	sd	s0,0(sp)
    80002630:	01010413          	addi	s0,sp,16
    80002634:	0000a797          	auipc	a5,0xa
    80002638:	20c78793          	addi	a5,a5,524 # 8000c840 <_ZTV9Semaphore+0x10>
    8000263c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002640:	00850513          	addi	a0,a0,8
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	c80080e7          	jalr	-896(ra) # 800012c4 <_Z8sem_openPP4_semj>
}
    8000264c:	00813083          	ld	ra,8(sp)
    80002650:	00013403          	ld	s0,0(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_ZN9Semaphore4waitEv>:

int Semaphore::wait()
{
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000266c:	00853503          	ld	a0,8(a0)
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	ccc080e7          	jalr	-820(ra) # 8000133c <_Z8sem_waitP4_sem>
}
    80002678:	00813083          	ld	ra,8(sp)
    8000267c:	00013403          	ld	s0,0(sp)
    80002680:	01010113          	addi	sp,sp,16
    80002684:	00008067          	ret

0000000080002688 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00113423          	sd	ra,8(sp)
    80002690:	00813023          	sd	s0,0(sp)
    80002694:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002698:	00853503          	ld	a0,8(a0)
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	ce0080e7          	jalr	-800(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN7Console4getcEv>:

char Console::getc() {
    800026b4:	ff010113          	addi	sp,sp,-16
    800026b8:	00113423          	sd	ra,8(sp)
    800026bc:	00813023          	sd	s0,0(sp)
    800026c0:	01010413          	addi	s0,sp,16
    return ::getc() ;
    800026c4:	fffff097          	auipc	ra,0xfffff
    800026c8:	d34080e7          	jalr	-716(ra) # 800013f8 <_Z4getcv>
}
    800026cc:	00813083          	ld	ra,8(sp)
    800026d0:	00013403          	ld	s0,0(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret

00000000800026dc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00113423          	sd	ra,8(sp)
    800026e4:	00813023          	sd	s0,0(sp)
    800026e8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	d5c080e7          	jalr	-676(ra) # 80001448 <_Z4putcc>
}
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813423          	sd	s0,8(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	00813403          	ld	s0,8(sp)
    80002714:	01010113          	addi	sp,sp,16
    80002718:	00008067          	ret

000000008000271c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie()
{
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00813423          	sd	s0,8(sp)
    80002724:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002728:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000272c:	10200073          	sret
}
    80002730:	00813403          	ld	s0,8(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000273c:	f6010113          	addi	sp,sp,-160
    80002740:	08113c23          	sd	ra,152(sp)
    80002744:	08813823          	sd	s0,144(sp)
    80002748:	08913423          	sd	s1,136(sp)
    8000274c:	09213023          	sd	s2,128(sp)
    80002750:	0a010413          	addi	s0,sp,160
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    80002754:	faa43023          	sd	a0,-96(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    80002758:	fab43423          	sd	a1,-88(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    8000275c:	fac43823          	sd	a2,-80(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80002760:	fad43c23          	sd	a3,-72(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80002764:	fce43023          	sd	a4,-64(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    80002768:	fcf43423          	sd	a5,-56(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    8000276c:	fd043823          	sd	a6,-48(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80002770:	fd143c23          	sd	a7,-40(s0)
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002774:	141027f3          	csrr	a5,sepc
    80002778:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    8000277c:	f7843783          	ld	a5,-136(s0)

    uint64 volatile sepc = r_sepc();
    80002780:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002784:	100027f3          	csrr	a5,sstatus
    80002788:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    8000278c:	f7043783          	ld	a5,-144(s0)
    uint64 volatile sstatus = r_sstatus();
    80002790:	f8f43823          	sd	a5,-112(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80002794:	140027f3          	csrr	a5,sscratch
    80002798:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000279c:	142027f3          	csrr	a5,scause
    800027a0:	f6f43423          	sd	a5,-152(s0)
    return scause;
    800027a4:	f6843783          	ld	a5,-152(s0)

    uint64 volatile scause = r_scause();
    800027a8:	f8f43023          	sd	a5,-128(s0)
//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");


    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800027ac:	f8043703          	ld	a4,-128(s0)
    800027b0:	00800793          	li	a5,8
    800027b4:	0af70663          	beq	a4,a5,80002860 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
    800027b8:	f8043703          	ld	a4,-128(s0)
    800027bc:	00900793          	li	a5,9
    800027c0:	0af70063          	beq	a4,a5,80002860 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    800027c4:	f8043703          	ld	a4,-128(s0)
    800027c8:	fff00793          	li	a5,-1
    800027cc:	03f79793          	slli	a5,a5,0x3f
    800027d0:	00178793          	addi	a5,a5,1
    800027d4:	34f70663          	beq	a4,a5,80002b20 <_ZN5Riscv20handleSupervisorTrapEv+0x3e4>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        */
    }
    else if (scause == 0x8000000000000009UL)
    800027d8:	f8043703          	ld	a4,-128(s0)
    800027dc:	fff00793          	li	a5,-1
    800027e0:	03f79793          	slli	a5,a5,0x3f
    800027e4:	00978793          	addi	a5,a5,9
    800027e8:	34f70c63          	beq	a4,a5,80002b40 <_ZN5Riscv20handleSupervisorTrapEv+0x404>

    }
    else
    {
        // unexpected trap cause
        printString("\nUnexpected trap cause!\n");
    800027ec:	00008517          	auipc	a0,0x8
    800027f0:	a4450513          	addi	a0,a0,-1468 # 8000a230 <CONSOLE_STATUS+0x220>
    800027f4:	00003097          	auipc	ra,0x3
    800027f8:	4a8080e7          	jalr	1192(ra) # 80005c9c <_Z11printStringPKc>
        printString("Scause: ");
    800027fc:	00008517          	auipc	a0,0x8
    80002800:	a5450513          	addi	a0,a0,-1452 # 8000a250 <CONSOLE_STATUS+0x240>
    80002804:	00003097          	auipc	ra,0x3
    80002808:	498080e7          	jalr	1176(ra) # 80005c9c <_Z11printStringPKc>
        printInt(scause);
    8000280c:	f8043503          	ld	a0,-128(s0)
    80002810:	00000613          	li	a2,0
    80002814:	00a00593          	li	a1,10
    80002818:	0005051b          	sext.w	a0,a0
    8000281c:	00003097          	auipc	ra,0x3
    80002820:	630080e7          	jalr	1584(ra) # 80005e4c <_Z8printIntiii>
        printString("\n");
    80002824:	00008517          	auipc	a0,0x8
    80002828:	dac50513          	addi	a0,a0,-596 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    8000282c:	00003097          	auipc	ra,0x3
    80002830:	470080e7          	jalr	1136(ra) # 80005c9c <_Z11printStringPKc>
        printString("sepc = ");
    80002834:	00008517          	auipc	a0,0x8
    80002838:	a2c50513          	addi	a0,a0,-1492 # 8000a260 <CONSOLE_STATUS+0x250>
    8000283c:	00003097          	auipc	ra,0x3
    80002840:	460080e7          	jalr	1120(ra) # 80005c9c <_Z11printStringPKc>
        printInt(sepc);
    80002844:	f9843503          	ld	a0,-104(s0)
    80002848:	00000613          	li	a2,0
    8000284c:	00a00593          	li	a1,10
    80002850:	0005051b          	sext.w	a0,a0
    80002854:	00003097          	auipc	ra,0x3
    80002858:	5f8080e7          	jalr	1528(ra) # 80005e4c <_Z8printIntiii>
        while(1);
    8000285c:	0000006f          	j	8000285c <_ZN5Riscv20handleSupervisorTrapEv+0x120>
        sepc = sepc + 4;
    80002860:	f9843783          	ld	a5,-104(s0)
    80002864:	00478793          	addi	a5,a5,4
    80002868:	f8f43c23          	sd	a5,-104(s0)
        w_sepc(sepc);
    8000286c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002870:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    80002874:	fa043783          	ld	a5,-96(s0)
    80002878:	00100713          	li	a4,1
    8000287c:	0ae78063          	beq	a5,a4,8000291c <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
        else if (a[0] == 0x0000000000000002UL)
    80002880:	00200713          	li	a4,2
    80002884:	0ae78e63          	beq	a5,a4,80002940 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
        else if (a[0] == 0x0000000000000011UL)
    80002888:	01100713          	li	a4,17
    8000288c:	0ce78863          	beq	a5,a4,8000295c <_ZN5Riscv20handleSupervisorTrapEv+0x220>
        else if (a[0] == 0x0000000000000012UL)
    80002890:	01200713          	li	a4,18
    80002894:	0ee78863          	beq	a5,a4,80002984 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
        else if (a[0] == 0x0000000000000013UL)
    80002898:	01300713          	li	a4,19
    8000289c:	10e78663          	beq	a5,a4,800029a8 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
        else if (a[0] == 0x0000000000000014UL)
    800028a0:	01400713          	li	a4,20
    800028a4:	12e78863          	beq	a5,a4,800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x298>
        else if (a[0] == 0x0000000000000021UL)
    800028a8:	02100713          	li	a4,33
    800028ac:	14e78c63          	beq	a5,a4,80002a04 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
        else if (a[0] == 0x0000000000000022UL)
    800028b0:	02200713          	li	a4,34
    800028b4:	16e78863          	beq	a5,a4,80002a24 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
        else if (a[0] == 0x0000000000000023UL)
    800028b8:	02300713          	li	a4,35
    800028bc:	18e78263          	beq	a5,a4,80002a40 <_ZN5Riscv20handleSupervisorTrapEv+0x304>
        else if (a[0] == 0x0000000000000024UL)
    800028c0:	02400713          	li	a4,36
    800028c4:	1ae78463          	beq	a5,a4,80002a6c <_ZN5Riscv20handleSupervisorTrapEv+0x330>
        else if (a[0] == 0x0000000000000025UL)
    800028c8:	02500713          	li	a4,37
    800028cc:	1ae78e63          	beq	a5,a4,80002a88 <_ZN5Riscv20handleSupervisorTrapEv+0x34c>
        else if (a[0] == 0x0000000000000026UL)
    800028d0:	02600713          	li	a4,38
    800028d4:	1ce78263          	beq	a5,a4,80002a98 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
        else if (a[0] == 0x0000000000000041UL)
    800028d8:	04100713          	li	a4,65
    800028dc:	1ce78663          	beq	a5,a4,80002aa8 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
        else if (a[0] == 0x0000000000000042UL)
    800028e0:	04200713          	li	a4,66
    800028e4:	1ce78e63          	beq	a5,a4,80002ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x384>
        else if (a[0] == 0x0000000000000027UL)
    800028e8:	02700713          	li	a4,39
    800028ec:	1ee78263          	beq	a5,a4,80002ad0 <_ZN5Riscv20handleSupervisorTrapEv+0x394>
        else if (a[0] == 0x0000000000000028UL)
    800028f0:	02800713          	li	a4,40
    800028f4:	1ee78463          	beq	a5,a4,80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x3a0>
        else if (a[0] == 0x0000000000000029UL)
    800028f8:	02900713          	li	a4,41
    800028fc:	22e79663          	bne	a5,a4,80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            uint64 retVal = _thread::threadKill(threadId);
    80002900:	fa842503          	lw	a0,-88(s0)
    80002904:	00001097          	auipc	ra,0x1
    80002908:	de0080e7          	jalr	-544(ra) # 800036e4 <_ZN7_thread10threadKillEi>
            asm volatile("mv %0, a0" : "=r" (retVal));
    8000290c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002910:	f8843783          	ld	a5,-120(s0)
    80002914:	04a7b823          	sd	a0,80(a5)
    80002918:	2100006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    8000291c:	fa843503          	ld	a0,-88(s0)
    80002920:	00001097          	auipc	ra,0x1
    80002924:	910080e7          	jalr	-1776(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	718080e7          	jalr	1816(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002930:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002934:	f8843783          	ld	a5,-120(s0)
    80002938:	04a7b823          	sd	a0,80(a5)
    8000293c:	1ec0006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            int retVal = MemoryAllocator::mem_free(ptr);
    80002940:	fa843503          	ld	a0,-88(s0)
    80002944:	00001097          	auipc	ra,0x1
    80002948:	824080e7          	jalr	-2012(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    8000294c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002950:	f8843783          	ld	a5,-120(s0)
    80002954:	04a7b823          	sd	a0,80(a5)
    80002958:	1d00006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    8000295c:	fc043683          	ld	a3,-64(s0)
    80002960:	fb843603          	ld	a2,-72(s0)
    80002964:	fb043583          	ld	a1,-80(s0)
    80002968:	fa843503          	ld	a0,-88(s0)
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	b10080e7          	jalr	-1264(ra) # 8000347c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002974:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002978:	f8843783          	ld	a5,-120(s0)
    8000297c:	04a7b823          	sd	a0,80(a5)
    80002980:	1a80006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            _thread::running->finished = true;
    80002984:	0000a797          	auipc	a5,0xa
    80002988:	08c7b783          	ld	a5,140(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000298c:	0007b783          	ld	a5,0(a5)
    80002990:	00100713          	li	a4,1
    80002994:	00e784a3          	sb	a4,9(a5)
            _thread::threadDispatch();
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	94c080e7          	jalr	-1716(ra) # 800032e4 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800029a0:	00050793          	mv	a5,a0
    800029a4:	1840006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            _thread::running->timeSlice = 0;
    800029a8:	0000a797          	auipc	a5,0xa
    800029ac:	0687b783          	ld	a5,104(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    800029b0:	0007b783          	ld	a5,0(a5)
    800029b4:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	92c080e7          	jalr	-1748(ra) # 800032e4 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    800029c0:	f9043783          	ld	a5,-112(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800029c4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800029c8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800029cc:	14179073          	csrw	sepc,a5
}
    800029d0:	1580006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            _thread* handle = reinterpret_cast<_thread*>(a[1]);
    800029d4:	fa843783          	ld	a5,-88(s0)
            if (!handle->finished)
    800029d8:	0097c703          	lbu	a4,9(a5)
    800029dc:	00070c63          	beqz	a4,800029f4 <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
            w_sstatus(sstatus);
    800029e0:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800029e4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800029e8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800029ec:	14179073          	csrw	sepc,a5
}
    800029f0:	1380006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
                _sem::semWait(handle->semaphore);
    800029f4:	0407b503          	ld	a0,64(a5)
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	238080e7          	jalr	568(ra) # 80002c30 <_ZN4_sem7semWaitEPS_>
    80002a00:	fe1ff06f          	j	800029e0 <_ZN5Riscv20handleSupervisorTrapEv+0x2a4>
            int retVal = _sem::semOpen(handle, init);
    80002a04:	fb042583          	lw	a1,-80(s0)
    80002a08:	fa843503          	ld	a0,-88(s0)
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	140080e7          	jalr	320(ra) # 80002b4c <_ZN4_sem7semOpenEPPS_j>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002a14:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002a18:	f8843783          	ld	a5,-120(s0)
    80002a1c:	04a7b823          	sd	a0,80(a5)
    80002a20:	1080006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            int retVal = _sem::semClose(handle);
    80002a24:	fa843503          	ld	a0,-88(s0)
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	32c080e7          	jalr	812(ra) # 80002d54 <_ZN4_sem8semCloseEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002a30:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002a34:	f8843783          	ld	a5,-120(s0)
    80002a38:	04a7b823          	sd	a0,80(a5)
    80002a3c:	0ec0006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            int retVal = _sem::semWait(id);
    80002a40:	fa843503          	ld	a0,-88(s0)
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	1ec080e7          	jalr	492(ra) # 80002c30 <_ZN4_sem7semWaitEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002a4c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002a50:	f8843783          	ld	a5,-120(s0)
    80002a54:	04a7b823          	sd	a0,80(a5)
            w_sstatus(sstatus);
    80002a58:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002a5c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002a60:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002a64:	14179073          	csrw	sepc,a5
}
    80002a68:	0c00006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            int retVal = _sem::semSignal(id);
    80002a6c:	fa843503          	ld	a0,-88(s0)
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	35c080e7          	jalr	860(ra) # 80002dcc <_ZN4_sem9semSignalEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002a78:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002a7c:	f8843783          	ld	a5,-120(s0)
    80002a80:	04a7b823          	sd	a0,80(a5)
    80002a84:	0a40006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            asm volatile("csrr %0, sstatus" : "=r" (sstatus));
    80002a88:	100027f3          	csrr	a5,sstatus
            sstatus &= ~0x100;
    80002a8c:	eff7f793          	andi	a5,a5,-257
            asm volatile("csrw sstatus, %0" : : "r" (sstatus));
    80002a90:	10079073          	csrw	sstatus,a5
    80002a94:	0940006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            asm volatile("csrr %0, sstatus" : "=r" (sstatus));
    80002a98:	100027f3          	csrr	a5,sstatus
            sstatus |= 0x100;
    80002a9c:	1007e793          	ori	a5,a5,256
            asm volatile("csrw sstatus, %0" : : "r" (sstatus));
    80002aa0:	10079073          	csrw	sstatus,a5
    80002aa4:	0840006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            uint64 retVal = __getc();
    80002aa8:	00006097          	auipc	ra,0x6
    80002aac:	530080e7          	jalr	1328(ra) # 80008fd8 <__getc>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002ab0:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002ab4:	f8843783          	ld	a5,-120(s0)
    80002ab8:	04a7b823          	sd	a0,80(a5)
    80002abc:	06c0006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            __putc(c);
    80002ac0:	fa844503          	lbu	a0,-88(s0)
    80002ac4:	00006097          	auipc	ra,0x6
    80002ac8:	4d8080e7          	jalr	1240(ra) # 80008f9c <__putc>
    80002acc:	05c0006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            _thread::threadFork();
    80002ad0:	00001097          	auipc	ra,0x1
    80002ad4:	af4080e7          	jalr	-1292(ra) # 800035c4 <_ZN7_thread10threadForkEv>
    80002ad8:	0500006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
            void(*start_routine)(void*) = reinterpret_cast<void (*)(void *)>(a[1]);
    80002adc:	fa843903          	ld	s2,-88(s0)
            void* arg = (void*)a[2];
    80002ae0:	fb043483          	ld	s1,-80(s0)
            _thread::threadExec();
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	8a4080e7          	jalr	-1884(ra) # 80003388 <_ZN7_thread10threadExecEv>
            _thread::running->body = start_routine;
    80002aec:	0000a797          	auipc	a5,0xa
    80002af0:	f247b783          	ld	a5,-220(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002af4:	0007b703          	ld	a4,0(a5)
    80002af8:	01273023          	sd	s2,0(a4)
            _thread::running->arg = arg;
    80002afc:	0007b503          	ld	a0,0(a5)
    80002b00:	02953423          	sd	s1,40(a0)
            _thread::running->context.ra = (uint64)_thread::threadWrapper;
    80002b04:	0000a797          	auipc	a5,0xa
    80002b08:	f1c7b783          	ld	a5,-228(a5) # 8000ca20 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b0c:	00f53c23          	sd	a5,24(a0)
            contextSwitchThreadEnded(&_thread::running->context);
    80002b10:	01850513          	addi	a0,a0,24
    80002b14:	ffffe097          	auipc	ra,0xffffe
    80002b18:	620080e7          	jalr	1568(ra) # 80001134 <contextSwitchThreadEnded>
    80002b1c:	00c0006f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b20:	00200793          	li	a5,2
    80002b24:	1447b073          	csrc	sip,a5
    }
}
    80002b28:	09813083          	ld	ra,152(sp)
    80002b2c:	09013403          	ld	s0,144(sp)
    80002b30:	08813483          	ld	s1,136(sp)
    80002b34:	08013903          	ld	s2,128(sp)
    80002b38:	0a010113          	addi	sp,sp,160
    80002b3c:	00008067          	ret
        console_handler();
    80002b40:	00006097          	auipc	ra,0x6
    80002b44:	4d0080e7          	jalr	1232(ra) # 80009010 <console_handler>
    80002b48:	fe1ff06f          	j	80002b28 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>

0000000080002b4c <_ZN4_sem7semOpenEPPS_j>:
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"
#include "../h/thread.hpp"

int _sem::semOpen(_sem **handle, unsigned init)
{
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	01213023          	sd	s2,0(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	00050493          	mv	s1,a0
    80002b68:	00058913          	mv	s2,a1
    *handle = (_sem*)MemoryAllocator::mem_alloc(sizeof(_sem));
    80002b6c:	01800513          	li	a0,24
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	4d0080e7          	jalr	1232(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
    80002b78:	00a4b023          	sd	a0,0(s1)

    if (*handle == nullptr)
    80002b7c:	02050a63          	beqz	a0,80002bb0 <_ZN4_sem7semOpenEPPS_j+0x64>
        return -1;

    (*handle)->val = (int)init;
    80002b80:	01252823          	sw	s2,16(a0)
    (*handle)->head = nullptr;
    80002b84:	0004b783          	ld	a5,0(s1)
    80002b88:	0007b023          	sd	zero,0(a5)
    (*handle)->tail = nullptr;
    80002b8c:	0004b783          	ld	a5,0(s1)
    80002b90:	0007b423          	sd	zero,8(a5)

    return 0;
    80002b94:	00000513          	li	a0,0
}
    80002b98:	01813083          	ld	ra,24(sp)
    80002b9c:	01013403          	ld	s0,16(sp)
    80002ba0:	00813483          	ld	s1,8(sp)
    80002ba4:	00013903          	ld	s2,0(sp)
    80002ba8:	02010113          	addi	sp,sp,32
    80002bac:	00008067          	ret
        return -1;
    80002bb0:	fff00513          	li	a0,-1
    80002bb4:	fe5ff06f          	j	80002b98 <_ZN4_sem7semOpenEPPS_j+0x4c>

0000000080002bb8 <_ZN4_sem7addLastEP7_thread>:

    return 0;
}

void _sem::addLast(_thread *t) {
    if (t == nullptr)
    80002bb8:	06058a63          	beqz	a1,80002c2c <_ZN4_sem7addLastEP7_thread+0x74>
void _sem::addLast(_thread *t) {
    80002bbc:	fe010113          	addi	sp,sp,-32
    80002bc0:	00113c23          	sd	ra,24(sp)
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	01213023          	sd	s2,0(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    80002bd4:	00050913          	mv	s2,a0
    80002bd8:	00058493          	mv	s1,a1
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80002bdc:	01000513          	li	a0,16
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	650080e7          	jalr	1616(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	458080e7          	jalr	1112(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>

    elem->data = t;
    80002bf0:	00953023          	sd	s1,0(a0)
    elem->next = nullptr;
    80002bf4:	00053423          	sd	zero,8(a0)

    //Elem *elem = new Elem(t, nullptr);

    if (tail)
    80002bf8:	00893783          	ld	a5,8(s2)
    80002bfc:	02078263          	beqz	a5,80002c20 <_ZN4_sem7addLastEP7_thread+0x68>
    {
        tail->next = elem;
    80002c00:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80002c04:	00a93423          	sd	a0,8(s2)
    }
    else
    {
        head = tail = elem;
    }
}
    80002c08:	01813083          	ld	ra,24(sp)
    80002c0c:	01013403          	ld	s0,16(sp)
    80002c10:	00813483          	ld	s1,8(sp)
    80002c14:	00013903          	ld	s2,0(sp)
    80002c18:	02010113          	addi	sp,sp,32
    80002c1c:	00008067          	ret
        head = tail = elem;
    80002c20:	00a93423          	sd	a0,8(s2)
    80002c24:	00a93023          	sd	a0,0(s2)
    80002c28:	fe1ff06f          	j	80002c08 <_ZN4_sem7addLastEP7_thread+0x50>
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN4_sem7semWaitEPS_>:
    if (id == nullptr)
    80002c30:	08050863          	beqz	a0,80002cc0 <_ZN4_sem7semWaitEPS_+0x90>
int _sem::semWait(_sem* id) {
    80002c34:	fe010113          	addi	sp,sp,-32
    80002c38:	00113c23          	sd	ra,24(sp)
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00913423          	sd	s1,8(sp)
    80002c44:	02010413          	addi	s0,sp,32
    id->val--;
    80002c48:	01052783          	lw	a5,16(a0)
    80002c4c:	fff7879b          	addiw	a5,a5,-1
    80002c50:	00f52823          	sw	a5,16(a0)
    _thread *old = _thread::running;
    80002c54:	0000a717          	auipc	a4,0xa
    80002c58:	dbc73703          	ld	a4,-580(a4) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c5c:	00073483          	ld	s1,0(a4)
    if (id->val < 0)
    80002c60:	02079713          	slli	a4,a5,0x20
    80002c64:	00074e63          	bltz	a4,80002c80 <_ZN4_sem7semWaitEPS_+0x50>
        return 0;
    80002c68:	00000513          	li	a0,0
}
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	02010113          	addi	sp,sp,32
    80002c7c:	00008067          	ret
        _thread::running->blockedOn = id;
    80002c80:	04a4b823          	sd	a0,80(s1)
        id->addLast(_thread::running);
    80002c84:	00048593          	mv	a1,s1
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	f30080e7          	jalr	-208(ra) # 80002bb8 <_ZN4_sem7addLastEP7_thread>
     _thread::running = Scheduler::get();
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	200080e7          	jalr	512(ra) # 80002e90 <_ZN9Scheduler3getEv>
    80002c98:	0000a797          	auipc	a5,0xa
    80002c9c:	d787b783          	ld	a5,-648(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ca0:	00a7b023          	sd	a0,0(a5)
    if (old != _thread::running)
    80002ca4:	02a48263          	beq	s1,a0,80002cc8 <_ZN4_sem7semWaitEPS_+0x98>
        contextSwitch(&old->context, &_thread::running->context);
    80002ca8:	01850593          	addi	a1,a0,24
    80002cac:	01848513          	addi	a0,s1,24
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	470080e7          	jalr	1136(ra) # 80001120 <contextSwitch>
    return 0;
    80002cb8:	00000513          	li	a0,0
    80002cbc:	fb1ff06f          	j	80002c6c <_ZN4_sem7semWaitEPS_+0x3c>
        return -1; // invalid id
    80002cc0:	fff00513          	li	a0,-1
}
    80002cc4:	00008067          	ret
    return 0;
    80002cc8:	00000513          	li	a0,0
    80002ccc:	fa1ff06f          	j	80002c6c <_ZN4_sem7semWaitEPS_+0x3c>

0000000080002cd0 <_ZN4_sem11removeFirstEv>:

_thread *_sem::removeFirst() {
    80002cd0:	fe010113          	addi	sp,sp,-32
    80002cd4:	00113c23          	sd	ra,24(sp)
    80002cd8:	00813823          	sd	s0,16(sp)
    80002cdc:	00913423          	sd	s1,8(sp)
    80002ce0:	02010413          	addi	s0,sp,32
    80002ce4:	00050793          	mv	a5,a0
    if (head == nullptr) { return 0; }
    80002ce8:	00053503          	ld	a0,0(a0)
    80002cec:	02050e63          	beqz	a0,80002d28 <_ZN4_sem11removeFirstEv+0x58>

    Elem *elem = head;
    head = head->next;
    80002cf0:	00853703          	ld	a4,8(a0)
    80002cf4:	00e7b023          	sd	a4,0(a5)
    if (head == nullptr) { tail = nullptr; }
    80002cf8:	02070463          	beqz	a4,80002d20 <_ZN4_sem11removeFirstEv+0x50>

    _thread* ret = elem->data;
    80002cfc:	00053483          	ld	s1,0(a0)
    //delete elem;
    MemoryAllocator::mem_free(elem);
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	468080e7          	jalr	1128(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>

    return ret;
}
    80002d08:	00048513          	mv	a0,s1
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	02010113          	addi	sp,sp,32
    80002d1c:	00008067          	ret
    if (head == nullptr) { tail = nullptr; }
    80002d20:	0007b423          	sd	zero,8(a5)
    80002d24:	fd9ff06f          	j	80002cfc <_ZN4_sem11removeFirstEv+0x2c>
    if (head == nullptr) { return 0; }
    80002d28:	00050493          	mv	s1,a0
    80002d2c:	fddff06f          	j	80002d08 <_ZN4_sem11removeFirstEv+0x38>

0000000080002d30 <_ZNK4_sem9peekFirstEv>:

_thread* _sem::peekFirst() const {
    80002d30:	ff010113          	addi	sp,sp,-16
    80002d34:	00813423          	sd	s0,8(sp)
    80002d38:	01010413          	addi	s0,sp,16
    if (head == nullptr)
    80002d3c:	00053503          	ld	a0,0(a0)
    80002d40:	00050463          	beqz	a0,80002d48 <_ZNK4_sem9peekFirstEv+0x18>
        return nullptr;

    return head->data;
    80002d44:	00053503          	ld	a0,0(a0)
}
    80002d48:	00813403          	ld	s0,8(sp)
    80002d4c:	01010113          	addi	sp,sp,16
    80002d50:	00008067          	ret

0000000080002d54 <_ZN4_sem8semCloseEPS_>:
{
    80002d54:	fe010113          	addi	sp,sp,-32
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	00813823          	sd	s0,16(sp)
    80002d60:	00913423          	sd	s1,8(sp)
    80002d64:	02010413          	addi	s0,sp,32
    80002d68:	00050493          	mv	s1,a0
    if (handle == nullptr) // error: sem is nullptr
    80002d6c:	04050c63          	beqz	a0,80002dc4 <_ZN4_sem8semCloseEPS_+0x70>
    while (handle->peekFirst())
    80002d70:	00048513          	mv	a0,s1
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	fbc080e7          	jalr	-68(ra) # 80002d30 <_ZNK4_sem9peekFirstEv>
    80002d7c:	02050263          	beqz	a0,80002da0 <_ZN4_sem8semCloseEPS_+0x4c>
        handle->peekFirst()->semWaitVal = -1;
    80002d80:	fff00793          	li	a5,-1
    80002d84:	02f52c23          	sw	a5,56(a0)
        Scheduler::put(handle->removeFirst());
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	f44080e7          	jalr	-188(ra) # 80002cd0 <_ZN4_sem11removeFirstEv>
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	17c080e7          	jalr	380(ra) # 80002f10 <_ZN9Scheduler3putEP7_thread>
    while (handle->peekFirst())
    80002d9c:	fd5ff06f          	j	80002d70 <_ZN4_sem8semCloseEPS_+0x1c>
    MemoryAllocator::mem_free(handle);
    80002da0:	00048513          	mv	a0,s1
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	3c4080e7          	jalr	964(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
    return 0;
    80002dac:	00000513          	li	a0,0
}
    80002db0:	01813083          	ld	ra,24(sp)
    80002db4:	01013403          	ld	s0,16(sp)
    80002db8:	00813483          	ld	s1,8(sp)
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret
        return -1;
    80002dc4:	fff00513          	li	a0,-1
    80002dc8:	fe9ff06f          	j	80002db0 <_ZN4_sem8semCloseEPS_+0x5c>

0000000080002dcc <_ZN4_sem9semSignalEPS_>:
    if (id == nullptr) // id is nullptr
    80002dcc:	06050a63          	beqz	a0,80002e40 <_ZN4_sem9semSignalEPS_+0x74>
{
    80002dd0:	fe010113          	addi	sp,sp,-32
    80002dd4:	00113c23          	sd	ra,24(sp)
    80002dd8:	00813823          	sd	s0,16(sp)
    80002ddc:	00913423          	sd	s1,8(sp)
    80002de0:	02010413          	addi	s0,sp,32
    80002de4:	00050493          	mv	s1,a0
    id->val++;
    80002de8:	01052783          	lw	a5,16(a0)
    80002dec:	0017879b          	addiw	a5,a5,1
    80002df0:	00f52823          	sw	a5,16(a0)
    if (id->peekFirst())
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	f3c080e7          	jalr	-196(ra) # 80002d30 <_ZNK4_sem9peekFirstEv>
    80002dfc:	04050663          	beqz	a0,80002e48 <_ZN4_sem9semSignalEPS_+0x7c>
        id->peekFirst()->semWaitVal = 0;
    80002e00:	02052c23          	sw	zero,56(a0)
        id->peekFirst()->blockedOn = nullptr;
    80002e04:	00048513          	mv	a0,s1
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	f28080e7          	jalr	-216(ra) # 80002d30 <_ZNK4_sem9peekFirstEv>
    80002e10:	04053823          	sd	zero,80(a0)
        Scheduler::put(id->removeFirst());
    80002e14:	00048513          	mv	a0,s1
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	eb8080e7          	jalr	-328(ra) # 80002cd0 <_ZN4_sem11removeFirstEv>
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	0f0080e7          	jalr	240(ra) # 80002f10 <_ZN9Scheduler3putEP7_thread>
    return 0;
    80002e28:	00000513          	li	a0,0
}
    80002e2c:	01813083          	ld	ra,24(sp)
    80002e30:	01013403          	ld	s0,16(sp)
    80002e34:	00813483          	ld	s1,8(sp)
    80002e38:	02010113          	addi	sp,sp,32
    80002e3c:	00008067          	ret
        return -1;
    80002e40:	fff00513          	li	a0,-1
}
    80002e44:	00008067          	ret
    return 0;
    80002e48:	00000513          	li	a0,0
    80002e4c:	fe1ff06f          	j	80002e2c <_ZN4_sem9semSignalEPS_+0x60>

0000000080002e50 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(_thread *ccb)
{
    threadNum++;
    readyThreadQueue.addLast(ccb);
}
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00813423          	sd	s0,8(sp)
    80002e58:	01010413          	addi	s0,sp,16
    80002e5c:	00100793          	li	a5,1
    80002e60:	00f50863          	beq	a0,a5,80002e70 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002e64:	00813403          	ld	s0,8(sp)
    80002e68:	01010113          	addi	sp,sp,16
    80002e6c:	00008067          	ret
    80002e70:	000107b7          	lui	a5,0x10
    80002e74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002e78:	fef596e3          	bne	a1,a5,80002e64 <_Z41__static_initialization_and_destruction_0ii+0x14>

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

public:
    List() : head(0), tail(0) {}
    80002e7c:	0000a797          	auipc	a5,0xa
    80002e80:	c5478793          	addi	a5,a5,-940 # 8000cad0 <_ZN9Scheduler16readyThreadQueueE>
    80002e84:	0007b023          	sd	zero,0(a5)
    80002e88:	0007b423          	sd	zero,8(a5)
    80002e8c:	fd9ff06f          	j	80002e64 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002e90 <_ZN9Scheduler3getEv>:
{
    80002e90:	fe010113          	addi	sp,sp,-32
    80002e94:	00113c23          	sd	ra,24(sp)
    80002e98:	00813823          	sd	s0,16(sp)
    80002e9c:	00913423          	sd	s1,8(sp)
    80002ea0:	02010413          	addi	s0,sp,32
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002ea4:	0000a517          	auipc	a0,0xa
    80002ea8:	c2c53503          	ld	a0,-980(a0) # 8000cad0 <_ZN9Scheduler16readyThreadQueueE>
    80002eac:	04050e63          	beqz	a0,80002f08 <_ZN9Scheduler3getEv+0x78>
//            printString("\n");
//            printInteger((size_t)((uint8*)head)[i]);
//            printString(" ");
//        }
//        printString("\n");
        return head->data;
    80002eb0:	00053483          	ld	s1,0(a0)
    if (readyThreadQueue.peekFirst() != 0) {
    80002eb4:	02048863          	beqz	s1,80002ee4 <_ZN9Scheduler3getEv+0x54>
        threadNum--;
    80002eb8:	0000a797          	auipc	a5,0xa
    80002ebc:	c1878793          	addi	a5,a5,-1000 # 8000cad0 <_ZN9Scheduler16readyThreadQueueE>
    80002ec0:	0107a703          	lw	a4,16(a5)
    80002ec4:	fff7071b          	addiw	a4,a4,-1
    80002ec8:	00e7a823          	sw	a4,16(a5)
        head = head->next;
    80002ecc:	00853703          	ld	a4,8(a0)
    80002ed0:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80002ed4:	02070463          	beqz	a4,80002efc <_ZN9Scheduler3getEv+0x6c>
        T *ret = elem->data;
    80002ed8:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	28c080e7          	jalr	652(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002ee4:	00048513          	mv	a0,s1
    80002ee8:	01813083          	ld	ra,24(sp)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	00813483          	ld	s1,8(sp)
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00008067          	ret
        if (!head) { tail = 0; }
    80002efc:	0000a797          	auipc	a5,0xa
    80002f00:	bc07be23          	sd	zero,-1060(a5) # 8000cad8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002f04:	fd5ff06f          	j	80002ed8 <_ZN9Scheduler3getEv+0x48>
    return nullptr;
    80002f08:	00050493          	mv	s1,a0
    80002f0c:	fd9ff06f          	j	80002ee4 <_ZN9Scheduler3getEv+0x54>

0000000080002f10 <_ZN9Scheduler3putEP7_thread>:
{
    80002f10:	fe010113          	addi	sp,sp,-32
    80002f14:	00113c23          	sd	ra,24(sp)
    80002f18:	00813823          	sd	s0,16(sp)
    80002f1c:	00913423          	sd	s1,8(sp)
    80002f20:	01213023          	sd	s2,0(sp)
    80002f24:	02010413          	addi	s0,sp,32
    80002f28:	00050913          	mv	s2,a0
    threadNum++;
    80002f2c:	0000a497          	auipc	s1,0xa
    80002f30:	ba448493          	addi	s1,s1,-1116 # 8000cad0 <_ZN9Scheduler16readyThreadQueueE>
    80002f34:	0104a783          	lw	a5,16(s1)
    80002f38:	0017879b          	addiw	a5,a5,1
    80002f3c:	00f4a823          	sw	a5,16(s1)
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(List<T>::Elem));
    80002f40:	01000513          	li	a0,16
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	2ec080e7          	jalr	748(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	0f4080e7          	jalr	244(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80002f54:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    80002f58:	00053423          	sd	zero,8(a0)
        if (tail != 0)
    80002f5c:	0084b783          	ld	a5,8(s1)
    80002f60:	02078463          	beqz	a5,80002f88 <_ZN9Scheduler3putEP7_thread+0x78>
            tail->next = elem;
    80002f64:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002f68:	0000a797          	auipc	a5,0xa
    80002f6c:	b6a7b823          	sd	a0,-1168(a5) # 8000cad8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002f70:	01813083          	ld	ra,24(sp)
    80002f74:	01013403          	ld	s0,16(sp)
    80002f78:	00813483          	ld	s1,8(sp)
    80002f7c:	00013903          	ld	s2,0(sp)
    80002f80:	02010113          	addi	sp,sp,32
    80002f84:	00008067          	ret
            head = tail = elem;
    80002f88:	0000a797          	auipc	a5,0xa
    80002f8c:	b4878793          	addi	a5,a5,-1208 # 8000cad0 <_ZN9Scheduler16readyThreadQueueE>
    80002f90:	00a7b423          	sd	a0,8(a5)
    80002f94:	00a7b023          	sd	a0,0(a5)
    80002f98:	fd9ff06f          	j	80002f70 <_ZN9Scheduler3putEP7_thread+0x60>

0000000080002f9c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002f9c:	ff010113          	addi	sp,sp,-16
    80002fa0:	00113423          	sd	ra,8(sp)
    80002fa4:	00813023          	sd	s0,0(sp)
    80002fa8:	01010413          	addi	s0,sp,16
    80002fac:	000105b7          	lui	a1,0x10
    80002fb0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002fb4:	00100513          	li	a0,1
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	e98080e7          	jalr	-360(ra) # 80002e50 <_Z41__static_initialization_and_destruction_0ii>
    80002fc0:	00813083          	ld	ra,8(sp)
    80002fc4:	00013403          	ld	s0,0(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret

0000000080002fd0 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80002fdc:	0000a797          	auipc	a5,0xa
    80002fe0:	a2c7b783          	ld	a5,-1492(a5) # 8000ca08 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fe4:	0007b703          	ld	a4,0(a5)
    80002fe8:	fc077713          	andi	a4,a4,-64
    80002fec:	04070613          	addi	a2,a4,64
    80002ff0:	0000a797          	auipc	a5,0xa
    80002ff4:	af878793          	addi	a5,a5,-1288 # 8000cae8 <_ZN15MemoryAllocator8memStartE>
    80002ff8:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80002ffc:	0000a697          	auipc	a3,0xa
    80003000:	a3c6b683          	ld	a3,-1476(a3) # 8000ca38 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003004:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80003008:	fc06f693          	andi	a3,a3,-64
    8000300c:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80003010:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80003014:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80003018:	0107b683          	ld	a3,16(a5)
    8000301c:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80003020:	0087b703          	ld	a4,8(a5)
    80003024:	0007b783          	ld	a5,0(a5)
    80003028:	40f707b3          	sub	a5,a4,a5
    8000302c:	0067d793          	srli	a5,a5,0x6
    80003030:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80003034:	00813403          	ld	s0,8(sp)
    80003038:	01010113          	addi	sp,sp,16
    8000303c:	00008067          	ret

0000000080003040 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00813423          	sd	s0,8(sp)
    80003048:	01010413          	addi	s0,sp,16
    if (size == 0)
    8000304c:	0a050463          	beqz	a0,800030f4 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80003050:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80003054:	0000a697          	auipc	a3,0xa
    80003058:	aa46b683          	ld	a3,-1372(a3) # 8000caf8 <_ZN15MemoryAllocator4headE>
    8000305c:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80003060:	04050e63          	beqz	a0,800030bc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80003064:	01053783          	ld	a5,16(a0)
    80003068:	00e7fa63          	bgeu	a5,a4,8000307c <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    8000306c:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80003070:	fea698e3          	bne	a3,a0,80003060 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    80003074:	00000513          	li	a0,0
    80003078:	0440006f          	j	800030bc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    8000307c:	40e787b3          	sub	a5,a5,a4
    80003080:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80003084:	02079263          	bnez	a5,800030a8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    80003088:	04d50063          	beq	a0,a3,800030c8 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    8000308c:	00053783          	ld	a5,0(a0)
    80003090:	04078463          	beqz	a5,800030d8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    80003094:	00853683          	ld	a3,8(a0)
    80003098:	04068063          	beqz	a3,800030d8 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    8000309c:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    800030a0:	00853683          	ld	a3,8(a0)
    800030a4:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    800030a8:	01053783          	ld	a5,16(a0)
    800030ac:	00679793          	slli	a5,a5,0x6
    800030b0:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    800030b4:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    800030b8:	00878513          	addi	a0,a5,8
}
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    800030c8:	0006b783          	ld	a5,0(a3)
    800030cc:	0000a697          	auipc	a3,0xa
    800030d0:	a2f6b623          	sd	a5,-1492(a3) # 8000caf8 <_ZN15MemoryAllocator4headE>
    800030d4:	fb9ff06f          	j	8000308c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    800030d8:	00853683          	ld	a3,8(a0)
    800030dc:	00068663          	beqz	a3,800030e8 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    800030e0:	0006b023          	sd	zero,0(a3)
    800030e4:	fc5ff06f          	j	800030a8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    800030e8:	fc0780e3          	beqz	a5,800030a8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    800030ec:	0007b423          	sd	zero,8(a5)
    800030f0:	fb9ff06f          	j	800030a8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    800030f4:	00000513          	li	a0,0
    800030f8:	fc5ff06f          	j	800030bc <_ZN15MemoryAllocator9mem_allocEm+0x7c>

00000000800030fc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00813423          	sd	s0,8(sp)
    80003104:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80003108:	04050863          	beqz	a0,80003158 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    8000310c:	00053783          	ld	a5,0(a0)
    80003110:	04078863          	beqz	a5,80003160 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80003114:	01053683          	ld	a3,16(a0)
    80003118:	00669713          	slli	a4,a3,0x6
    8000311c:	00e50733          	add	a4,a0,a4
    80003120:	00f70a63          	beq	a4,a5,80003134 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80003124:	00000513          	li	a0,0
    }
}
    80003128:	00813403          	ld	s0,8(sp)
    8000312c:	01010113          	addi	sp,sp,16
    80003130:	00008067          	ret
        curr->size += curr->next->size;
    80003134:	0107b703          	ld	a4,16(a5)
    80003138:	00e686b3          	add	a3,a3,a4
    8000313c:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80003140:	0007b783          	ld	a5,0(a5)
    80003144:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80003148:	00078463          	beqz	a5,80003150 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    8000314c:	00a7b423          	sd	a0,8(a5)
        return 1;
    80003150:	00100513          	li	a0,1
    80003154:	fd5ff06f          	j	80003128 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80003158:	00000513          	li	a0,0
    8000315c:	fcdff06f          	j	80003128 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80003160:	00000513          	li	a0,0
    80003164:	fc5ff06f          	j	80003128 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080003168 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    80003168:	0c050063          	beqz	a0,80003228 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    8000316c:	fe010113          	addi	sp,sp,-32
    80003170:	00113c23          	sd	ra,24(sp)
    80003174:	00813823          	sd	s0,16(sp)
    80003178:	00913423          	sd	s1,8(sp)
    8000317c:	02010413          	addi	s0,sp,32
    80003180:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80003184:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80003188:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    8000318c:	0000a697          	auipc	a3,0xa
    80003190:	96c6b683          	ld	a3,-1684(a3) # 8000caf8 <_ZN15MemoryAllocator4headE>
    80003194:	02068063          	beqz	a3,800031b4 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    80003198:	02d56263          	bltu	a0,a3,800031bc <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    8000319c:	00068793          	mv	a5,a3
    800031a0:	00078493          	mv	s1,a5
    800031a4:	0007b783          	ld	a5,0(a5)
    800031a8:	00078c63          	beqz	a5,800031c0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800031ac:	fea7eae3          	bltu	a5,a0,800031a0 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    800031b0:	0100006f          	j	800031c0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    800031b4:	00068493          	mv	s1,a3
    800031b8:	0080006f          	j	800031c0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800031bc:	00000493          	li	s1,0
    newSeg->size = blockNum;
    800031c0:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    800031c4:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    800031c8:	04048663          	beqz	s1,80003214 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    800031cc:	0004b783          	ld	a5,0(s1)
    800031d0:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    800031d4:	ff873783          	ld	a5,-8(a4)
    800031d8:	00078463          	beqz	a5,800031e0 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    800031dc:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    800031e0:	02048e63          	beqz	s1,8000321c <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    800031e4:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	f14080e7          	jalr	-236(ra) # 800030fc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    800031f0:	00048513          	mv	a0,s1
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	f08080e7          	jalr	-248(ra) # 800030fc <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    800031fc:	00000513          	li	a0,0
}
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	00813483          	ld	s1,8(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80003214:	fed73c23          	sd	a3,-8(a4)
    80003218:	fbdff06f          	j	800031d4 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    8000321c:	0000a797          	auipc	a5,0xa
    80003220:	8ca7be23          	sd	a0,-1828(a5) # 8000caf8 <_ZN15MemoryAllocator4headE>
    80003224:	fc5ff06f          	j	800031e8 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    80003228:	fff00513          	li	a0,-1
}
    8000322c:	00008067          	ret

0000000080003230 <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80003230:	ff010113          	addi	sp,sp,-16
    80003234:	00813423          	sd	s0,8(sp)
    80003238:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    8000323c:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80003240:	03f57793          	andi	a5,a0,63
    80003244:	00078c63          	beqz	a5,8000325c <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80003248:	00655513          	srli	a0,a0,0x6
    8000324c:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80003250:	00813403          	ld	s0,8(sp)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    8000325c:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80003260:	ff1ff06f          	j	80003250 <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080003264 <_ZN7_thread13threadWrapperEv>:
    return 0;
}


void _thread::threadWrapper()
{
    80003264:	ff010113          	addi	sp,sp,-16
    80003268:	00113423          	sd	ra,8(sp)
    8000326c:	00813023          	sd	s0,0(sp)
    80003270:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	4a8080e7          	jalr	1192(ra) # 8000271c <_ZN5Riscv10popSppSpieEv>

    _thread::running->body(_thread::running->arg);
    8000327c:	0000a797          	auipc	a5,0xa
    80003280:	8847b783          	ld	a5,-1916(a5) # 8000cb00 <_ZN7_thread7runningE>
    80003284:	0007b703          	ld	a4,0(a5)
    80003288:	0287b503          	ld	a0,40(a5)
    8000328c:	000700e7          	jalr	a4

    thread_exit();
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	fac080e7          	jalr	-84(ra) # 8000123c <_Z11thread_exitv>
}
    80003298:	00813083          	ld	ra,8(sp)
    8000329c:	00013403          	ld	s0,0(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret

00000000800032a8 <_ZN7_thread17threadWrapperExecEv>:

void _thread::threadWrapperExec()
{
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00113423          	sd	ra,8(sp)
    800032b0:	00813023          	sd	s0,0(sp)
    800032b4:	01010413          	addi	s0,sp,16
    _thread::running->body(_thread::running->arg);
    800032b8:	0000a797          	auipc	a5,0xa
    800032bc:	8487b783          	ld	a5,-1976(a5) # 8000cb00 <_ZN7_thread7runningE>
    800032c0:	0007b703          	ld	a4,0(a5)
    800032c4:	0287b503          	ld	a0,40(a5)
    800032c8:	000700e7          	jalr	a4

    thread_exit();
    800032cc:	ffffe097          	auipc	ra,0xffffe
    800032d0:	f70080e7          	jalr	-144(ra) # 8000123c <_Z11thread_exitv>
}
    800032d4:	00813083          	ld	ra,8(sp)
    800032d8:	00013403          	ld	s0,0(sp)
    800032dc:	01010113          	addi	sp,sp,16
    800032e0:	00008067          	ret

00000000800032e4 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    800032e4:	fe010113          	addi	sp,sp,-32
    800032e8:	00113c23          	sd	ra,24(sp)
    800032ec:	00813823          	sd	s0,16(sp)
    800032f0:	00913423          	sd	s1,8(sp)
    800032f4:	02010413          	addi	s0,sp,32
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;
    800032f8:	0000a497          	auipc	s1,0xa
    800032fc:	8084b483          	ld	s1,-2040(s1) # 8000cb00 <_ZN7_thread7runningE>

    if (!old->finished)
    80003300:	0094c783          	lbu	a5,9(s1)
    80003304:	04079463          	bnez	a5,8000334c <_ZN7_thread14threadDispatchEv+0x68>
    {
        Scheduler::put(old);
    80003308:	00048513          	mv	a0,s1
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	c04080e7          	jalr	-1020(ra) # 80002f10 <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    80003314:	00000097          	auipc	ra,0x0
    80003318:	b7c080e7          	jalr	-1156(ra) # 80002e90 <_ZN9Scheduler3getEv>
    8000331c:	00009797          	auipc	a5,0x9
    80003320:	7ea7b223          	sd	a0,2020(a5) # 8000cb00 <_ZN7_thread7runningE>

        if(old != _thread::running)
    80003324:	00a48a63          	beq	s1,a0,80003338 <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitch(&old->context, &_thread::running->context);
    80003328:	01850593          	addi	a1,a0,24
    8000332c:	01848513          	addi	a0,s1,24
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	df0080e7          	jalr	-528(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    80003338:	01813083          	ld	ra,24(sp)
    8000333c:	01013403          	ld	s0,16(sp)
    80003340:	00813483          	ld	s1,8(sp)
    80003344:	02010113          	addi	sp,sp,32
    80003348:	00008067          	ret
        _sem::semClose(_thread::running->semaphore);
    8000334c:	0404b503          	ld	a0,64(s1)
    80003350:	00000097          	auipc	ra,0x0
    80003354:	a04080e7          	jalr	-1532(ra) # 80002d54 <_ZN4_sem8semCloseEPS_>
        MemoryAllocator::mem_free(old->stack);
    80003358:	0104b503          	ld	a0,16(s1)
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	e0c080e7          	jalr	-500(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    80003364:	00000097          	auipc	ra,0x0
    80003368:	b2c080e7          	jalr	-1236(ra) # 80002e90 <_ZN9Scheduler3getEv>
    8000336c:	00009797          	auipc	a5,0x9
    80003370:	78a7ba23          	sd	a0,1940(a5) # 8000cb00 <_ZN7_thread7runningE>
        if (_thread::running)
    80003374:	fc0502e3          	beqz	a0,80003338 <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitchThreadEnded(&_thread::running->context);
    80003378:	01850513          	addi	a0,a0,24
    8000337c:	ffffe097          	auipc	ra,0xffffe
    80003380:	db8080e7          	jalr	-584(ra) # 80001134 <contextSwitchThreadEnded>
}
    80003384:	fb5ff06f          	j	80003338 <_ZN7_thread14threadDispatchEv+0x54>

0000000080003388 <_ZN7_thread10threadExecEv>:
//    asm volatile("sret");
}


void _thread::threadExec()
{
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    MemoryAllocator::mem_free(_thread::running->stack);
    800033a0:	00009497          	auipc	s1,0x9
    800033a4:	76048493          	addi	s1,s1,1888 # 8000cb00 <_ZN7_thread7runningE>
    800033a8:	0004b783          	ld	a5,0(s1)
    800033ac:	0107b503          	ld	a0,16(a5)
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	db8080e7          	jalr	-584(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>

    size_t blockNum2 = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800033b8:	00008537          	lui	a0,0x8
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	e74080e7          	jalr	-396(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    _thread::running->stack = (uint64*)MemoryAllocator::mem_alloc(blockNum2);
    800033c4:	0004b903          	ld	s2,0(s1)
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	c78080e7          	jalr	-904(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
    800033d0:	00a93823          	sd	a0,16(s2)

    _thread::running->context.sp = (uint64) &(_thread::running->stack[DEFAULT_STACK_SIZE]);
    800033d4:	0004b703          	ld	a4,0(s1)
    800033d8:	01073783          	ld	a5,16(a4)
    800033dc:	000086b7          	lui	a3,0x8
    800033e0:	00d787b3          	add	a5,a5,a3
    800033e4:	02f73023          	sd	a5,32(a4)
}
    800033e8:	01813083          	ld	ra,24(sp)
    800033ec:	01013403          	ld	s0,16(sp)
    800033f0:	00813483          	ld	s1,8(sp)
    800033f4:	00013903          	ld	s2,0(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret

0000000080003400 <_ZN7_thread7addLastEPS_>:


void _thread::addLast(_thread *t)
{
    if (t == nullptr)
    80003400:	06050c63          	beqz	a0,80003478 <_ZN7_thread7addLastEPS_+0x78>
{
    80003404:	fe010113          	addi	sp,sp,-32
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00813823          	sd	s0,16(sp)
    80003410:	00913423          	sd	s1,8(sp)
    80003414:	02010413          	addi	s0,sp,32
    80003418:	00050493          	mv	s1,a0
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    8000341c:	01000513          	li	a0,16
    80003420:	00000097          	auipc	ra,0x0
    80003424:	e10080e7          	jalr	-496(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	c18080e7          	jalr	-1000(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>

    elem->data = t;
    80003430:	00953023          	sd	s1,0(a0) # 8000 <_entry-0x7fff8000>
    elem->next = nullptr;
    80003434:	00053423          	sd	zero,8(a0)

    if (_thread::tail)
    80003438:	00009797          	auipc	a5,0x9
    8000343c:	6d07b783          	ld	a5,1744(a5) # 8000cb08 <_ZN7_thread4tailE>
    80003440:	02078263          	beqz	a5,80003464 <_ZN7_thread7addLastEPS_+0x64>
    {
        _thread::tail->next = elem;
    80003444:	00a7b423          	sd	a0,8(a5)
        _thread::tail = elem;
    80003448:	00009797          	auipc	a5,0x9
    8000344c:	6ca7b023          	sd	a0,1728(a5) # 8000cb08 <_ZN7_thread4tailE>
    }
    else
    {
        _thread::head = _thread::tail = elem;
    }
}
    80003450:	01813083          	ld	ra,24(sp)
    80003454:	01013403          	ld	s0,16(sp)
    80003458:	00813483          	ld	s1,8(sp)
    8000345c:	02010113          	addi	sp,sp,32
    80003460:	00008067          	ret
        _thread::head = _thread::tail = elem;
    80003464:	00009797          	auipc	a5,0x9
    80003468:	69c78793          	addi	a5,a5,1692 # 8000cb00 <_ZN7_thread7runningE>
    8000346c:	00a7b423          	sd	a0,8(a5)
    80003470:	00a7b823          	sd	a0,16(a5)
    80003474:	fddff06f          	j	80003450 <_ZN7_thread7addLastEPS_+0x50>
    80003478:	00008067          	ret

000000008000347c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
{
    8000347c:	fd010113          	addi	sp,sp,-48
    80003480:	02113423          	sd	ra,40(sp)
    80003484:	02813023          	sd	s0,32(sp)
    80003488:	00913c23          	sd	s1,24(sp)
    8000348c:	01213823          	sd	s2,16(sp)
    80003490:	01313423          	sd	s3,8(sp)
    80003494:	01413023          	sd	s4,0(sp)
    80003498:	03010413          	addi	s0,sp,48
    8000349c:	00050493          	mv	s1,a0
    800034a0:	00058913          	mv	s2,a1
    800034a4:	00060a13          	mv	s4,a2
    800034a8:	00068993          	mv	s3,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    800034ac:	06000513          	li	a0,96
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	d80080e7          	jalr	-640(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    800034b8:	00000097          	auipc	ra,0x0
    800034bc:	b88080e7          	jalr	-1144(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
    800034c0:	00a4b023          	sd	a0,0(s1)
    int retVal = _sem::semOpen(&(*handle)->semaphore, 0);
    800034c4:	00000593          	li	a1,0
    800034c8:	04050513          	addi	a0,a0,64
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	680080e7          	jalr	1664(ra) # 80002b4c <_ZN4_sem7semOpenEPPS_j>
    if (*handle == nullptr || retVal < 0)
    800034d4:	0004b783          	ld	a5,0(s1)
    800034d8:	0c078e63          	beqz	a5,800035b4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x138>
    800034dc:	0e054063          	bltz	a0,800035bc <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x140>
    (*handle)->semWaitVal = 0;
    800034e0:	0207ac23          	sw	zero,56(a5)
    (*handle)->finished = false;
    800034e4:	0004b783          	ld	a5,0(s1)
    800034e8:	000784a3          	sb	zero,9(a5)
    (*handle)->timeSlice = 0;
    800034ec:	0004b783          	ld	a5,0(s1)
    800034f0:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    800034f4:	0004b783          	ld	a5,0(s1)
    800034f8:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    800034fc:	0004b783          	ld	a5,0(s1)
    80003500:	0347b423          	sd	s4,40(a5)
    if (start_routine != nullptr)
    80003504:	08090e63          	beqz	s2,800035a0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x124>
        (*handle)->stack = (uint64*) stack_space;
    80003508:	0004b783          	ld	a5,0(s1)
    8000350c:	0137b823          	sd	s3,16(a5)
    if ((*handle)->stack != nullptr)
    80003510:	0004b703          	ld	a4,0(s1)
    80003514:	01073783          	ld	a5,16(a4)
    80003518:	08078a63          	beqz	a5,800035ac <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x130>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    8000351c:	000086b7          	lui	a3,0x8
    80003520:	00d787b3          	add	a5,a5,a3
    80003524:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    80003528:	0004b783          	ld	a5,0(s1)
    8000352c:	00000717          	auipc	a4,0x0
    80003530:	d3870713          	addi	a4,a4,-712 # 80003264 <_ZN7_thread13threadWrapperEv>
    80003534:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    80003538:	0004b503          	ld	a0,0(s1)
    8000353c:	00053783          	ld	a5,0(a0)
    80003540:	00078663          	beqz	a5,8000354c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd0>
        Scheduler::put(*handle);
    80003544:	00000097          	auipc	ra,0x0
    80003548:	9cc080e7          	jalr	-1588(ra) # 80002f10 <_ZN9Scheduler3putEP7_thread>
    (*handle)->myId = _thread::id++;
    8000354c:	00009717          	auipc	a4,0x9
    80003550:	5b470713          	addi	a4,a4,1460 # 8000cb00 <_ZN7_thread7runningE>
    80003554:	01872783          	lw	a5,24(a4)
    80003558:	0017869b          	addiw	a3,a5,1
    8000355c:	00d72c23          	sw	a3,24(a4)
    80003560:	0004b703          	ld	a4,0(s1)
    80003564:	04f72623          	sw	a5,76(a4)
    _thread::addLast(*handle);
    80003568:	0004b503          	ld	a0,0(s1)
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	e94080e7          	jalr	-364(ra) # 80003400 <_ZN7_thread7addLastEPS_>
    (*handle)->blockedOn = nullptr;
    80003574:	0004b783          	ld	a5,0(s1)
    80003578:	0407b823          	sd	zero,80(a5)
    return 0;
    8000357c:	00000513          	li	a0,0
}
    80003580:	02813083          	ld	ra,40(sp)
    80003584:	02013403          	ld	s0,32(sp)
    80003588:	01813483          	ld	s1,24(sp)
    8000358c:	01013903          	ld	s2,16(sp)
    80003590:	00813983          	ld	s3,8(sp)
    80003594:	00013a03          	ld	s4,0(sp)
    80003598:	03010113          	addi	sp,sp,48
    8000359c:	00008067          	ret
        (*handle)->stack = nullptr;
    800035a0:	0004b783          	ld	a5,0(s1)
    800035a4:	0007b823          	sd	zero,16(a5)
    800035a8:	f69ff06f          	j	80003510 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x94>
        (*handle)->context.sp = 0;
    800035ac:	02073023          	sd	zero,32(a4)
    800035b0:	f89ff06f          	j	80003538 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xbc>
        return -1;
    800035b4:	fff00513          	li	a0,-1
    800035b8:	fc9ff06f          	j	80003580 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x104>
    800035bc:	fff00513          	li	a0,-1
    800035c0:	fc1ff06f          	j	80003580 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x104>

00000000800035c4 <_ZN7_thread10threadForkEv>:
{
    800035c4:	fd010113          	addi	sp,sp,-48
    800035c8:	02113423          	sd	ra,40(sp)
    800035cc:	02813023          	sd	s0,32(sp)
    800035d0:	00913c23          	sd	s1,24(sp)
    800035d4:	03010413          	addi	s0,sp,48
    size_t blockNum2 = MemoryAllocator::convert2Blocks(sizeof(_thread));
    800035d8:	06000513          	li	a0,96
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	c54080e7          	jalr	-940(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    _thread* newHandle = (_thread *)(MemoryAllocator::mem_alloc(blockNum2));
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	a5c080e7          	jalr	-1444(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
    800035ec:	fca43c23          	sd	a0,-40(s0)
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    800035f0:	00008537          	lui	a0,0x8
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	c3c080e7          	jalr	-964(ra) # 80003230 <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	a44080e7          	jalr	-1468(ra) # 80003040 <_ZN15MemoryAllocator9mem_allocEm>
    80003604:	00050693          	mv	a3,a0
    threadCreate(&newHandle, _thread::running->body, _thread::running->arg, stack_space);
    80003608:	00009497          	auipc	s1,0x9
    8000360c:	4f848493          	addi	s1,s1,1272 # 8000cb00 <_ZN7_thread7runningE>
    80003610:	0004b783          	ld	a5,0(s1)
    80003614:	0287b603          	ld	a2,40(a5)
    80003618:	0007b583          	ld	a1,0(a5)
    8000361c:	fd840513          	addi	a0,s0,-40
    80003620:	00000097          	auipc	ra,0x0
    80003624:	e5c080e7          	jalr	-420(ra) # 8000347c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
    asm volatile ("csrr a0, sepc");
    80003628:	14102573          	csrr	a0,sepc
    asm volatile("sd a0, %0" : "=m" (newHandle->context.ra));
    8000362c:	fd843783          	ld	a5,-40(s0)
    80003630:	00a7bc23          	sd	a0,24(a5)
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80003634:	14002773          	csrr	a4,sscratch
    80003638:	fce43823          	sd	a4,-48(s0)
    uint64* startAddrOld = _thread::running->stack;
    8000363c:	0004b703          	ld	a4,0(s1)
    80003640:	01073583          	ld	a1,16(a4)
    uint64* startAddrNew = newHandle->stack;
    80003644:	0107b603          	ld	a2,16(a5)
    size_t i = 0;
    80003648:	00000713          	li	a4,0
    while (i < DEFAULT_STACK_SIZE)
    8000364c:	000017b7          	lui	a5,0x1
    80003650:	02f77063          	bgeu	a4,a5,80003670 <_ZN7_thread10threadForkEv+0xac>
        *(startAddrNew+i) = *(startAddrOld+i);
    80003654:	00371793          	slli	a5,a4,0x3
    80003658:	00f586b3          	add	a3,a1,a5
    8000365c:	00f607b3          	add	a5,a2,a5
    80003660:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    80003664:	00d7b023          	sd	a3,0(a5) # 1000 <_entry-0x7ffff000>
        i++;
    80003668:	00170713          	addi	a4,a4,1
    while (i < DEFAULT_STACK_SIZE)
    8000366c:	fe1ff06f          	j	8000364c <_ZN7_thread10threadForkEv+0x88>
    _thread::running->forkRetVal = newHandle->myId; // 1 - thread parent
    80003670:	fd843503          	ld	a0,-40(s0)
    80003674:	04c52703          	lw	a4,76(a0) # 804c <_entry-0x7fff7fb4>
    80003678:	00009797          	auipc	a5,0x9
    8000367c:	4887b783          	ld	a5,1160(a5) # 8000cb00 <_ZN7_thread7runningE>
    80003680:	04e7a423          	sw	a4,72(a5)
    newHandle->forkRetVal = 0; // 0 - child
    80003684:	04052423          	sw	zero,72(a0)
    Scheduler::put(newHandle);
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	888080e7          	jalr	-1912(ra) # 80002f10 <_ZN9Scheduler3putEP7_thread>
}
    80003690:	02813083          	ld	ra,40(sp)
    80003694:	02013403          	ld	s0,32(sp)
    80003698:	01813483          	ld	s1,24(sp)
    8000369c:	03010113          	addi	sp,sp,48
    800036a0:	00008067          	ret

00000000800036a4 <_ZN7_thread6searchEi>:

_thread *_thread::search(int searchId)
{
    800036a4:	ff010113          	addi	sp,sp,-16
    800036a8:	00813423          	sd	s0,8(sp)
    800036ac:	01010413          	addi	s0,sp,16
    800036b0:	00050693          	mv	a3,a0
    Elem* temp = _thread::head;
    800036b4:	00009517          	auipc	a0,0x9
    800036b8:	45c53503          	ld	a0,1116(a0) # 8000cb10 <_ZN7_thread4headE>

    while(temp)
    800036bc:	00050e63          	beqz	a0,800036d8 <_ZN7_thread6searchEi+0x34>
    {
        if (temp->data->myId == searchId)
    800036c0:	00053783          	ld	a5,0(a0)
    800036c4:	04c7a703          	lw	a4,76(a5)
    800036c8:	00d70663          	beq	a4,a3,800036d4 <_ZN7_thread6searchEi+0x30>
            return temp->data;

        temp = temp->next;
    800036cc:	00853503          	ld	a0,8(a0)
    while(temp)
    800036d0:	fedff06f          	j	800036bc <_ZN7_thread6searchEi+0x18>
            return temp->data;
    800036d4:	00078513          	mv	a0,a5
    }

    return nullptr;
}
    800036d8:	00813403          	ld	s0,8(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret

00000000800036e4 <_ZN7_thread10threadKillEi>:

int _thread::threadKill(int threadId)
{
    800036e4:	fd010113          	addi	sp,sp,-48
    800036e8:	02113423          	sd	ra,40(sp)
    800036ec:	02813023          	sd	s0,32(sp)
    800036f0:	00913c23          	sd	s1,24(sp)
    800036f4:	01213823          	sd	s2,16(sp)
    800036f8:	01313423          	sd	s3,8(sp)
    800036fc:	01413023          	sd	s4,0(sp)
    80003700:	03010413          	addi	s0,sp,48
    80003704:	00050993          	mv	s3,a0
    // current thread kills its self
    if (_thread::running->myId == threadId)
    80003708:	00009797          	auipc	a5,0x9
    8000370c:	3f87b783          	ld	a5,1016(a5) # 8000cb00 <_ZN7_thread7runningE>
    80003710:	04c7a703          	lw	a4,76(a5)
    80003714:	02a70c63          	beq	a4,a0,8000374c <_ZN7_thread10threadKillEi+0x68>
    {
        _thread::running->finished = true;
        _thread::threadDispatch();
    }

    _thread* targetThread = search(threadId);
    80003718:	00098513          	mv	a0,s3
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	f88080e7          	jalr	-120(ra) # 800036a4 <_ZN7_thread6searchEi>
    80003724:	00050913          	mv	s2,a0

    // thread with that id doesn't exist
    if (targetThread == nullptr)
    80003728:	0e050263          	beqz	a0,8000380c <_ZN7_thread10threadKillEi+0x128>
        return -1;

    // thread already finished
    if (targetThread->finished)
    8000372c:	00954783          	lbu	a5,9(a0)
    80003730:	0e079263          	bnez	a5,80003814 <_ZN7_thread10threadKillEi+0x130>
        return -2;

    // thread blocked on semaphore
    if (targetThread->blockedOn != nullptr)
    80003734:	05053783          	ld	a5,80(a0)
    80003738:	08078a63          	beqz	a5,800037cc <_ZN7_thread10threadKillEi+0xe8>
    {
        // sem val is -3 --> 3 threads waiting
        int numThreads = 0 - targetThread->blockedOn->val;
    8000373c:	0107aa03          	lw	s4,16(a5)
    80003740:	41400a3b          	negw	s4,s4

        // ne zovemo direktno semafor signal i wait da ne bi nit izgubila procesor
        // i promenila kontekst -> zato moramo rucno da inkrementiramo semafor val
        for (int i = 0; i < numThreads; i++)
    80003744:	00000493          	li	s1,0
    80003748:	02c0006f          	j	80003774 <_ZN7_thread10threadKillEi+0x90>
        _thread::running->finished = true;
    8000374c:	00100713          	li	a4,1
    80003750:	00e784a3          	sb	a4,9(a5)
        _thread::threadDispatch();
    80003754:	00000097          	auipc	ra,0x0
    80003758:	b90080e7          	jalr	-1136(ra) # 800032e4 <_ZN7_thread14threadDispatchEv>
    8000375c:	fbdff06f          	j	80003718 <_ZN7_thread10threadKillEi+0x34>
        {
            _thread* curr = targetThread->blockedOn->removeFirst();
            if(curr->myId == threadId)
                curr->finished = true;
            else
                targetThread->blockedOn->addLast(curr);
    80003760:	00050593          	mv	a1,a0
    80003764:	05093503          	ld	a0,80(s2)
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	450080e7          	jalr	1104(ra) # 80002bb8 <_ZN4_sem7addLastEP7_thread>
        for (int i = 0; i < numThreads; i++)
    80003770:	0014849b          	addiw	s1,s1,1
    80003774:	0344d263          	bge	s1,s4,80003798 <_ZN7_thread10threadKillEi+0xb4>
            _thread* curr = targetThread->blockedOn->removeFirst();
    80003778:	05093503          	ld	a0,80(s2)
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	554080e7          	jalr	1364(ra) # 80002cd0 <_ZN4_sem11removeFirstEv>
            if(curr->myId == threadId)
    80003784:	04c52783          	lw	a5,76(a0)
    80003788:	fd379ce3          	bne	a5,s3,80003760 <_ZN7_thread10threadKillEi+0x7c>
                curr->finished = true;
    8000378c:	00100793          	li	a5,1
    80003790:	00f504a3          	sb	a5,9(a0)
    80003794:	fddff06f          	j	80003770 <_ZN7_thread10threadKillEi+0x8c>
        }
        // target thread is removed so we increment val by 1
        targetThread->blockedOn->val++;
    80003798:	05093703          	ld	a4,80(s2)
    8000379c:	01072783          	lw	a5,16(a4)
    800037a0:	0017879b          	addiw	a5,a5,1
    800037a4:	00f72823          	sw	a5,16(a4)
        return 0;
    800037a8:	00000513          	li	a0,0
    // dealloc the targetThread


    // error
    return 0;
}
    800037ac:	02813083          	ld	ra,40(sp)
    800037b0:	02013403          	ld	s0,32(sp)
    800037b4:	01813483          	ld	s1,24(sp)
    800037b8:	01013903          	ld	s2,16(sp)
    800037bc:	00813983          	ld	s3,8(sp)
    800037c0:	00013a03          	ld	s4,0(sp)
    800037c4:	03010113          	addi	sp,sp,48
    800037c8:	00008067          	ret
        int threadNumber = Scheduler::threadNum;
    800037cc:	00009797          	auipc	a5,0x9
    800037d0:	2647b783          	ld	a5,612(a5) # 8000ca30 <_GLOBAL_OFFSET_TABLE_+0x30>
    800037d4:	0007a903          	lw	s2,0(a5)
        for (int i = 0; i < threadNumber; i++)
    800037d8:	00000493          	li	s1,0
    800037dc:	0100006f          	j	800037ec <_ZN7_thread10threadKillEi+0x108>
                Scheduler::put(curr);
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	730080e7          	jalr	1840(ra) # 80002f10 <_ZN9Scheduler3putEP7_thread>
        for (int i = 0; i < threadNumber; i++)
    800037e8:	0014849b          	addiw	s1,s1,1
    800037ec:	0324d863          	bge	s1,s2,8000381c <_ZN7_thread10threadKillEi+0x138>
            _thread* curr = Scheduler::get();
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	6a0080e7          	jalr	1696(ra) # 80002e90 <_ZN9Scheduler3getEv>
            if (curr->myId == threadId)
    800037f8:	04c52783          	lw	a5,76(a0)
    800037fc:	ff3792e3          	bne	a5,s3,800037e0 <_ZN7_thread10threadKillEi+0xfc>
                curr->finished = true;
    80003800:	00100793          	li	a5,1
    80003804:	00f504a3          	sb	a5,9(a0)
    80003808:	fe1ff06f          	j	800037e8 <_ZN7_thread10threadKillEi+0x104>
        return -1;
    8000380c:	fff00513          	li	a0,-1
    80003810:	f9dff06f          	j	800037ac <_ZN7_thread10threadKillEi+0xc8>
        return -2;
    80003814:	ffe00513          	li	a0,-2
    80003818:	f95ff06f          	j	800037ac <_ZN7_thread10threadKillEi+0xc8>
    return 0;
    8000381c:	00000513          	li	a0,0
    80003820:	f8dff06f          	j	800037ac <_ZN7_thread10threadKillEi+0xc8>

0000000080003824 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003824:	fe010113          	addi	sp,sp,-32
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	00813823          	sd	s0,16(sp)
    80003830:	00913423          	sd	s1,8(sp)
    80003834:	01213023          	sd	s2,0(sp)
    80003838:	02010413          	addi	s0,sp,32
    8000383c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003840:	00000913          	li	s2,0
    80003844:	00c0006f          	j	80003850 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	a24080e7          	jalr	-1500(ra) # 8000126c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	ba8080e7          	jalr	-1112(ra) # 800013f8 <_Z4getcv>
    80003858:	0005059b          	sext.w	a1,a0
    8000385c:	01b00793          	li	a5,27
    80003860:	02f58a63          	beq	a1,a5,80003894 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003864:	0084b503          	ld	a0,8(s1)
    80003868:	00003097          	auipc	ra,0x3
    8000386c:	3f4080e7          	jalr	1012(ra) # 80006c5c <_ZN6Buffer3putEi>
        i++;
    80003870:	0019071b          	addiw	a4,s2,1
    80003874:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003878:	0004a683          	lw	a3,0(s1)
    8000387c:	0026979b          	slliw	a5,a3,0x2
    80003880:	00d787bb          	addw	a5,a5,a3
    80003884:	0017979b          	slliw	a5,a5,0x1
    80003888:	02f767bb          	remw	a5,a4,a5
    8000388c:	fc0792e3          	bnez	a5,80003850 <_ZL16producerKeyboardPv+0x2c>
    80003890:	fb9ff06f          	j	80003848 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003894:	00100793          	li	a5,1
    80003898:	00009717          	auipc	a4,0x9
    8000389c:	28f72423          	sw	a5,648(a4) # 8000cb20 <_ZL9threadEnd>
    data->buffer->put('!');
    800038a0:	02100593          	li	a1,33
    800038a4:	0084b503          	ld	a0,8(s1)
    800038a8:	00003097          	auipc	ra,0x3
    800038ac:	3b4080e7          	jalr	948(ra) # 80006c5c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800038b0:	0104b503          	ld	a0,16(s1)
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	ac8080e7          	jalr	-1336(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	00813483          	ld	s1,8(sp)
    800038c8:	00013903          	ld	s2,0(sp)
    800038cc:	02010113          	addi	sp,sp,32
    800038d0:	00008067          	ret

00000000800038d4 <_ZL8producerPv>:

static void producer(void *arg) {
    800038d4:	fe010113          	addi	sp,sp,-32
    800038d8:	00113c23          	sd	ra,24(sp)
    800038dc:	00813823          	sd	s0,16(sp)
    800038e0:	00913423          	sd	s1,8(sp)
    800038e4:	01213023          	sd	s2,0(sp)
    800038e8:	02010413          	addi	s0,sp,32
    800038ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800038f0:	00000913          	li	s2,0
    800038f4:	00c0006f          	j	80003900 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	974080e7          	jalr	-1676(ra) # 8000126c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003900:	00009797          	auipc	a5,0x9
    80003904:	2207a783          	lw	a5,544(a5) # 8000cb20 <_ZL9threadEnd>
    80003908:	02079e63          	bnez	a5,80003944 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000390c:	0004a583          	lw	a1,0(s1)
    80003910:	0305859b          	addiw	a1,a1,48
    80003914:	0084b503          	ld	a0,8(s1)
    80003918:	00003097          	auipc	ra,0x3
    8000391c:	344080e7          	jalr	836(ra) # 80006c5c <_ZN6Buffer3putEi>
        i++;
    80003920:	0019071b          	addiw	a4,s2,1
    80003924:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003928:	0004a683          	lw	a3,0(s1)
    8000392c:	0026979b          	slliw	a5,a3,0x2
    80003930:	00d787bb          	addw	a5,a5,a3
    80003934:	0017979b          	slliw	a5,a5,0x1
    80003938:	02f767bb          	remw	a5,a4,a5
    8000393c:	fc0792e3          	bnez	a5,80003900 <_ZL8producerPv+0x2c>
    80003940:	fb9ff06f          	j	800038f8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003944:	0104b503          	ld	a0,16(s1)
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	a34080e7          	jalr	-1484(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    80003950:	01813083          	ld	ra,24(sp)
    80003954:	01013403          	ld	s0,16(sp)
    80003958:	00813483          	ld	s1,8(sp)
    8000395c:	00013903          	ld	s2,0(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret

0000000080003968 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003968:	fd010113          	addi	sp,sp,-48
    8000396c:	02113423          	sd	ra,40(sp)
    80003970:	02813023          	sd	s0,32(sp)
    80003974:	00913c23          	sd	s1,24(sp)
    80003978:	01213823          	sd	s2,16(sp)
    8000397c:	01313423          	sd	s3,8(sp)
    80003980:	03010413          	addi	s0,sp,48
    80003984:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003988:	00000993          	li	s3,0
    8000398c:	01c0006f          	j	800039a8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	8dc080e7          	jalr	-1828(ra) # 8000126c <_Z15thread_dispatchv>
    80003998:	0500006f          	j	800039e8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000399c:	00a00513          	li	a0,10
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	aa8080e7          	jalr	-1368(ra) # 80001448 <_Z4putcc>
    while (!threadEnd) {
    800039a8:	00009797          	auipc	a5,0x9
    800039ac:	1787a783          	lw	a5,376(a5) # 8000cb20 <_ZL9threadEnd>
    800039b0:	06079063          	bnez	a5,80003a10 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800039b4:	00893503          	ld	a0,8(s2)
    800039b8:	00003097          	auipc	ra,0x3
    800039bc:	334080e7          	jalr	820(ra) # 80006cec <_ZN6Buffer3getEv>
        i++;
    800039c0:	0019849b          	addiw	s1,s3,1
    800039c4:	0004899b          	sext.w	s3,s1
        putc(key);
    800039c8:	0ff57513          	andi	a0,a0,255
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	a7c080e7          	jalr	-1412(ra) # 80001448 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800039d4:	00092703          	lw	a4,0(s2)
    800039d8:	0027179b          	slliw	a5,a4,0x2
    800039dc:	00e787bb          	addw	a5,a5,a4
    800039e0:	02f4e7bb          	remw	a5,s1,a5
    800039e4:	fa0786e3          	beqz	a5,80003990 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800039e8:	05000793          	li	a5,80
    800039ec:	02f4e4bb          	remw	s1,s1,a5
    800039f0:	fa049ce3          	bnez	s1,800039a8 <_ZL8consumerPv+0x40>
    800039f4:	fa9ff06f          	j	8000399c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800039f8:	00893503          	ld	a0,8(s2)
    800039fc:	00003097          	auipc	ra,0x3
    80003a00:	2f0080e7          	jalr	752(ra) # 80006cec <_ZN6Buffer3getEv>
        putc(key);
    80003a04:	0ff57513          	andi	a0,a0,255
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	a40080e7          	jalr	-1472(ra) # 80001448 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003a10:	00893503          	ld	a0,8(s2)
    80003a14:	00003097          	auipc	ra,0x3
    80003a18:	364080e7          	jalr	868(ra) # 80006d78 <_ZN6Buffer6getCntEv>
    80003a1c:	fca04ee3          	bgtz	a0,800039f8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003a20:	01093503          	ld	a0,16(s2)
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	958080e7          	jalr	-1704(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    80003a2c:	02813083          	ld	ra,40(sp)
    80003a30:	02013403          	ld	s0,32(sp)
    80003a34:	01813483          	ld	s1,24(sp)
    80003a38:	01013903          	ld	s2,16(sp)
    80003a3c:	00813983          	ld	s3,8(sp)
    80003a40:	03010113          	addi	sp,sp,48
    80003a44:	00008067          	ret

0000000080003a48 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003a48:	f9010113          	addi	sp,sp,-112
    80003a4c:	06113423          	sd	ra,104(sp)
    80003a50:	06813023          	sd	s0,96(sp)
    80003a54:	04913c23          	sd	s1,88(sp)
    80003a58:	05213823          	sd	s2,80(sp)
    80003a5c:	05313423          	sd	s3,72(sp)
    80003a60:	05413023          	sd	s4,64(sp)
    80003a64:	03513c23          	sd	s5,56(sp)
    80003a68:	03613823          	sd	s6,48(sp)
    80003a6c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003a70:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a74:	00006517          	auipc	a0,0x6
    80003a78:	7f450513          	addi	a0,a0,2036 # 8000a268 <CONSOLE_STATUS+0x258>
    80003a7c:	00002097          	auipc	ra,0x2
    80003a80:	220080e7          	jalr	544(ra) # 80005c9c <_Z11printStringPKc>
    getString(input, 30);
    80003a84:	01e00593          	li	a1,30
    80003a88:	fa040493          	addi	s1,s0,-96
    80003a8c:	00048513          	mv	a0,s1
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	294080e7          	jalr	660(ra) # 80005d24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	00002097          	auipc	ra,0x2
    80003aa0:	360080e7          	jalr	864(ra) # 80005dfc <_Z11stringToIntPKc>
    80003aa4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003aa8:	00006517          	auipc	a0,0x6
    80003aac:	7e050513          	addi	a0,a0,2016 # 8000a288 <CONSOLE_STATUS+0x278>
    80003ab0:	00002097          	auipc	ra,0x2
    80003ab4:	1ec080e7          	jalr	492(ra) # 80005c9c <_Z11printStringPKc>
    getString(input, 30);
    80003ab8:	01e00593          	li	a1,30
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	264080e7          	jalr	612(ra) # 80005d24 <_Z9getStringPci>
    n = stringToInt(input);
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	330080e7          	jalr	816(ra) # 80005dfc <_Z11stringToIntPKc>
    80003ad4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003ad8:	00006517          	auipc	a0,0x6
    80003adc:	7d050513          	addi	a0,a0,2000 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80003ae0:	00002097          	auipc	ra,0x2
    80003ae4:	1bc080e7          	jalr	444(ra) # 80005c9c <_Z11printStringPKc>
    80003ae8:	00000613          	li	a2,0
    80003aec:	00a00593          	li	a1,10
    80003af0:	00090513          	mv	a0,s2
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	358080e7          	jalr	856(ra) # 80005e4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003afc:	00006517          	auipc	a0,0x6
    80003b00:	7c450513          	addi	a0,a0,1988 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80003b04:	00002097          	auipc	ra,0x2
    80003b08:	198080e7          	jalr	408(ra) # 80005c9c <_Z11printStringPKc>
    80003b0c:	00000613          	li	a2,0
    80003b10:	00a00593          	li	a1,10
    80003b14:	00048513          	mv	a0,s1
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	334080e7          	jalr	820(ra) # 80005e4c <_Z8printIntiii>
    printString(".\n");
    80003b20:	00006517          	auipc	a0,0x6
    80003b24:	7b850513          	addi	a0,a0,1976 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	174080e7          	jalr	372(ra) # 80005c9c <_Z11printStringPKc>
    if(threadNum > n) {
    80003b30:	0324c463          	blt	s1,s2,80003b58 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003b34:	03205c63          	blez	s2,80003b6c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003b38:	03800513          	li	a0,56
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	8d8080e7          	jalr	-1832(ra) # 80002414 <_Znwm>
    80003b44:	00050a13          	mv	s4,a0
    80003b48:	00048593          	mv	a1,s1
    80003b4c:	00003097          	auipc	ra,0x3
    80003b50:	074080e7          	jalr	116(ra) # 80006bc0 <_ZN6BufferC1Ei>
    80003b54:	0300006f          	j	80003b84 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b58:	00006517          	auipc	a0,0x6
    80003b5c:	78850513          	addi	a0,a0,1928 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	13c080e7          	jalr	316(ra) # 80005c9c <_Z11printStringPKc>
        return;
    80003b68:	0140006f          	j	80003b7c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b6c:	00006517          	auipc	a0,0x6
    80003b70:	7b450513          	addi	a0,a0,1972 # 8000a320 <CONSOLE_STATUS+0x310>
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	128080e7          	jalr	296(ra) # 80005c9c <_Z11printStringPKc>
        return;
    80003b7c:	000b0113          	mv	sp,s6
    80003b80:	1500006f          	j	80003cd0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003b84:	00000593          	li	a1,0
    80003b88:	00009517          	auipc	a0,0x9
    80003b8c:	fa050513          	addi	a0,a0,-96 # 8000cb28 <_ZL10waitForAll>
    80003b90:	ffffd097          	auipc	ra,0xffffd
    80003b94:	734080e7          	jalr	1844(ra) # 800012c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003b98:	00391793          	slli	a5,s2,0x3
    80003b9c:	00f78793          	addi	a5,a5,15
    80003ba0:	ff07f793          	andi	a5,a5,-16
    80003ba4:	40f10133          	sub	sp,sp,a5
    80003ba8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003bac:	0019071b          	addiw	a4,s2,1
    80003bb0:	00171793          	slli	a5,a4,0x1
    80003bb4:	00e787b3          	add	a5,a5,a4
    80003bb8:	00379793          	slli	a5,a5,0x3
    80003bbc:	00f78793          	addi	a5,a5,15
    80003bc0:	ff07f793          	andi	a5,a5,-16
    80003bc4:	40f10133          	sub	sp,sp,a5
    80003bc8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003bcc:	00191613          	slli	a2,s2,0x1
    80003bd0:	012607b3          	add	a5,a2,s2
    80003bd4:	00379793          	slli	a5,a5,0x3
    80003bd8:	00f987b3          	add	a5,s3,a5
    80003bdc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003be0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003be4:	00009717          	auipc	a4,0x9
    80003be8:	f4473703          	ld	a4,-188(a4) # 8000cb28 <_ZL10waitForAll>
    80003bec:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003bf0:	00078613          	mv	a2,a5
    80003bf4:	00000597          	auipc	a1,0x0
    80003bf8:	d7458593          	addi	a1,a1,-652 # 80003968 <_ZL8consumerPv>
    80003bfc:	f9840513          	addi	a0,s0,-104
    80003c00:	ffffd097          	auipc	ra,0xffffd
    80003c04:	5d0080e7          	jalr	1488(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c08:	00000493          	li	s1,0
    80003c0c:	0280006f          	j	80003c34 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003c10:	00000597          	auipc	a1,0x0
    80003c14:	c1458593          	addi	a1,a1,-1004 # 80003824 <_ZL16producerKeyboardPv>
                      data + i);
    80003c18:	00179613          	slli	a2,a5,0x1
    80003c1c:	00f60633          	add	a2,a2,a5
    80003c20:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003c24:	00c98633          	add	a2,s3,a2
    80003c28:	ffffd097          	auipc	ra,0xffffd
    80003c2c:	5a8080e7          	jalr	1448(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c30:	0014849b          	addiw	s1,s1,1
    80003c34:	0524d263          	bge	s1,s2,80003c78 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003c38:	00149793          	slli	a5,s1,0x1
    80003c3c:	009787b3          	add	a5,a5,s1
    80003c40:	00379793          	slli	a5,a5,0x3
    80003c44:	00f987b3          	add	a5,s3,a5
    80003c48:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c4c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c50:	00009717          	auipc	a4,0x9
    80003c54:	ed873703          	ld	a4,-296(a4) # 8000cb28 <_ZL10waitForAll>
    80003c58:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c5c:	00048793          	mv	a5,s1
    80003c60:	00349513          	slli	a0,s1,0x3
    80003c64:	00aa8533          	add	a0,s5,a0
    80003c68:	fa9054e3          	blez	s1,80003c10 <_Z22producerConsumer_C_APIv+0x1c8>
    80003c6c:	00000597          	auipc	a1,0x0
    80003c70:	c6858593          	addi	a1,a1,-920 # 800038d4 <_ZL8producerPv>
    80003c74:	fa5ff06f          	j	80003c18 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003c78:	ffffd097          	auipc	ra,0xffffd
    80003c7c:	5f4080e7          	jalr	1524(ra) # 8000126c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003c80:	00000493          	li	s1,0
    80003c84:	00994e63          	blt	s2,s1,80003ca0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003c88:	00009517          	auipc	a0,0x9
    80003c8c:	ea053503          	ld	a0,-352(a0) # 8000cb28 <_ZL10waitForAll>
    80003c90:	ffffd097          	auipc	ra,0xffffd
    80003c94:	6ac080e7          	jalr	1708(ra) # 8000133c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003c98:	0014849b          	addiw	s1,s1,1
    80003c9c:	fe9ff06f          	j	80003c84 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003ca0:	00009517          	auipc	a0,0x9
    80003ca4:	e8853503          	ld	a0,-376(a0) # 8000cb28 <_ZL10waitForAll>
    80003ca8:	ffffd097          	auipc	ra,0xffffd
    80003cac:	65c080e7          	jalr	1628(ra) # 80001304 <_Z9sem_closeP4_sem>
    delete buffer;
    80003cb0:	000a0e63          	beqz	s4,80003ccc <_Z22producerConsumer_C_APIv+0x284>
    80003cb4:	000a0513          	mv	a0,s4
    80003cb8:	00003097          	auipc	ra,0x3
    80003cbc:	148080e7          	jalr	328(ra) # 80006e00 <_ZN6BufferD1Ev>
    80003cc0:	000a0513          	mv	a0,s4
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	778080e7          	jalr	1912(ra) # 8000243c <_ZdlPv>
    80003ccc:	000b0113          	mv	sp,s6

}
    80003cd0:	f9040113          	addi	sp,s0,-112
    80003cd4:	06813083          	ld	ra,104(sp)
    80003cd8:	06013403          	ld	s0,96(sp)
    80003cdc:	05813483          	ld	s1,88(sp)
    80003ce0:	05013903          	ld	s2,80(sp)
    80003ce4:	04813983          	ld	s3,72(sp)
    80003ce8:	04013a03          	ld	s4,64(sp)
    80003cec:	03813a83          	ld	s5,56(sp)
    80003cf0:	03013b03          	ld	s6,48(sp)
    80003cf4:	07010113          	addi	sp,sp,112
    80003cf8:	00008067          	ret
    80003cfc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003d00:	000a0513          	mv	a0,s4
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	738080e7          	jalr	1848(ra) # 8000243c <_ZdlPv>
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	0000a097          	auipc	ra,0xa
    80003d14:	f28080e7          	jalr	-216(ra) # 8000dc38 <_Unwind_Resume>

0000000080003d18 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d18:	fe010113          	addi	sp,sp,-32
    80003d1c:	00113c23          	sd	ra,24(sp)
    80003d20:	00813823          	sd	s0,16(sp)
    80003d24:	00913423          	sd	s1,8(sp)
    80003d28:	01213023          	sd	s2,0(sp)
    80003d2c:	02010413          	addi	s0,sp,32
    80003d30:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d34:	00100793          	li	a5,1
    80003d38:	02a7f863          	bgeu	a5,a0,80003d68 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d3c:	00a00793          	li	a5,10
    80003d40:	02f577b3          	remu	a5,a0,a5
    80003d44:	02078e63          	beqz	a5,80003d80 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d48:	fff48513          	addi	a0,s1,-1
    80003d4c:	00000097          	auipc	ra,0x0
    80003d50:	fcc080e7          	jalr	-52(ra) # 80003d18 <_ZL9fibonaccim>
    80003d54:	00050913          	mv	s2,a0
    80003d58:	ffe48513          	addi	a0,s1,-2
    80003d5c:	00000097          	auipc	ra,0x0
    80003d60:	fbc080e7          	jalr	-68(ra) # 80003d18 <_ZL9fibonaccim>
    80003d64:	00a90533          	add	a0,s2,a0
}
    80003d68:	01813083          	ld	ra,24(sp)
    80003d6c:	01013403          	ld	s0,16(sp)
    80003d70:	00813483          	ld	s1,8(sp)
    80003d74:	00013903          	ld	s2,0(sp)
    80003d78:	02010113          	addi	sp,sp,32
    80003d7c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003d80:	ffffd097          	auipc	ra,0xffffd
    80003d84:	4ec080e7          	jalr	1260(ra) # 8000126c <_Z15thread_dispatchv>
    80003d88:	fc1ff06f          	j	80003d48 <_ZL9fibonaccim+0x30>

0000000080003d8c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003d8c:	fe010113          	addi	sp,sp,-32
    80003d90:	00113c23          	sd	ra,24(sp)
    80003d94:	00813823          	sd	s0,16(sp)
    80003d98:	00913423          	sd	s1,8(sp)
    80003d9c:	01213023          	sd	s2,0(sp)
    80003da0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003da4:	00000913          	li	s2,0
    80003da8:	0380006f          	j	80003de0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003dac:	ffffd097          	auipc	ra,0xffffd
    80003db0:	4c0080e7          	jalr	1216(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003db4:	00148493          	addi	s1,s1,1
    80003db8:	000027b7          	lui	a5,0x2
    80003dbc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003dc0:	0097ee63          	bltu	a5,s1,80003ddc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003dc4:	00000713          	li	a4,0
    80003dc8:	000077b7          	lui	a5,0x7
    80003dcc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003dd0:	fce7eee3          	bltu	a5,a4,80003dac <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003dd4:	00170713          	addi	a4,a4,1
    80003dd8:	ff1ff06f          	j	80003dc8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ddc:	00190913          	addi	s2,s2,1
    80003de0:	00900793          	li	a5,9
    80003de4:	0527e063          	bltu	a5,s2,80003e24 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003de8:	00006517          	auipc	a0,0x6
    80003dec:	56850513          	addi	a0,a0,1384 # 8000a350 <CONSOLE_STATUS+0x340>
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	eac080e7          	jalr	-340(ra) # 80005c9c <_Z11printStringPKc>
    80003df8:	00000613          	li	a2,0
    80003dfc:	00a00593          	li	a1,10
    80003e00:	0009051b          	sext.w	a0,s2
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	048080e7          	jalr	72(ra) # 80005e4c <_Z8printIntiii>
    80003e0c:	00006517          	auipc	a0,0x6
    80003e10:	7c450513          	addi	a0,a0,1988 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80003e14:	00002097          	auipc	ra,0x2
    80003e18:	e88080e7          	jalr	-376(ra) # 80005c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e1c:	00000493          	li	s1,0
    80003e20:	f99ff06f          	j	80003db8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e24:	00006517          	auipc	a0,0x6
    80003e28:	53450513          	addi	a0,a0,1332 # 8000a358 <CONSOLE_STATUS+0x348>
    80003e2c:	00002097          	auipc	ra,0x2
    80003e30:	e70080e7          	jalr	-400(ra) # 80005c9c <_Z11printStringPKc>
    finishedA = true;
    80003e34:	00100793          	li	a5,1
    80003e38:	00009717          	auipc	a4,0x9
    80003e3c:	cef70c23          	sb	a5,-776(a4) # 8000cb30 <_ZL9finishedA>
}
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	00013903          	ld	s2,0(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret

0000000080003e58 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e70:	00000913          	li	s2,0
    80003e74:	0380006f          	j	80003eac <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	3f4080e7          	jalr	1012(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e80:	00148493          	addi	s1,s1,1
    80003e84:	000027b7          	lui	a5,0x2
    80003e88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e8c:	0097ee63          	bltu	a5,s1,80003ea8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e90:	00000713          	li	a4,0
    80003e94:	000077b7          	lui	a5,0x7
    80003e98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e9c:	fce7eee3          	bltu	a5,a4,80003e78 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003ea0:	00170713          	addi	a4,a4,1
    80003ea4:	ff1ff06f          	j	80003e94 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ea8:	00190913          	addi	s2,s2,1
    80003eac:	00f00793          	li	a5,15
    80003eb0:	0527e063          	bltu	a5,s2,80003ef0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003eb4:	00006517          	auipc	a0,0x6
    80003eb8:	4b450513          	addi	a0,a0,1204 # 8000a368 <CONSOLE_STATUS+0x358>
    80003ebc:	00002097          	auipc	ra,0x2
    80003ec0:	de0080e7          	jalr	-544(ra) # 80005c9c <_Z11printStringPKc>
    80003ec4:	00000613          	li	a2,0
    80003ec8:	00a00593          	li	a1,10
    80003ecc:	0009051b          	sext.w	a0,s2
    80003ed0:	00002097          	auipc	ra,0x2
    80003ed4:	f7c080e7          	jalr	-132(ra) # 80005e4c <_Z8printIntiii>
    80003ed8:	00006517          	auipc	a0,0x6
    80003edc:	6f850513          	addi	a0,a0,1784 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	dbc080e7          	jalr	-580(ra) # 80005c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ee8:	00000493          	li	s1,0
    80003eec:	f99ff06f          	j	80003e84 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003ef0:	00006517          	auipc	a0,0x6
    80003ef4:	48050513          	addi	a0,a0,1152 # 8000a370 <CONSOLE_STATUS+0x360>
    80003ef8:	00002097          	auipc	ra,0x2
    80003efc:	da4080e7          	jalr	-604(ra) # 80005c9c <_Z11printStringPKc>
    finishedB = true;
    80003f00:	00100793          	li	a5,1
    80003f04:	00009717          	auipc	a4,0x9
    80003f08:	c2f706a3          	sb	a5,-979(a4) # 8000cb31 <_ZL9finishedB>
    thread_dispatch();
    80003f0c:	ffffd097          	auipc	ra,0xffffd
    80003f10:	360080e7          	jalr	864(ra) # 8000126c <_Z15thread_dispatchv>
}
    80003f14:	01813083          	ld	ra,24(sp)
    80003f18:	01013403          	ld	s0,16(sp)
    80003f1c:	00813483          	ld	s1,8(sp)
    80003f20:	00013903          	ld	s2,0(sp)
    80003f24:	02010113          	addi	sp,sp,32
    80003f28:	00008067          	ret

0000000080003f2c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f2c:	fe010113          	addi	sp,sp,-32
    80003f30:	00113c23          	sd	ra,24(sp)
    80003f34:	00813823          	sd	s0,16(sp)
    80003f38:	00913423          	sd	s1,8(sp)
    80003f3c:	01213023          	sd	s2,0(sp)
    80003f40:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f44:	00000493          	li	s1,0
    80003f48:	0400006f          	j	80003f88 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f4c:	00006517          	auipc	a0,0x6
    80003f50:	43450513          	addi	a0,a0,1076 # 8000a380 <CONSOLE_STATUS+0x370>
    80003f54:	00002097          	auipc	ra,0x2
    80003f58:	d48080e7          	jalr	-696(ra) # 80005c9c <_Z11printStringPKc>
    80003f5c:	00000613          	li	a2,0
    80003f60:	00a00593          	li	a1,10
    80003f64:	00048513          	mv	a0,s1
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	ee4080e7          	jalr	-284(ra) # 80005e4c <_Z8printIntiii>
    80003f70:	00006517          	auipc	a0,0x6
    80003f74:	66050513          	addi	a0,a0,1632 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80003f78:	00002097          	auipc	ra,0x2
    80003f7c:	d24080e7          	jalr	-732(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f80:	0014849b          	addiw	s1,s1,1
    80003f84:	0ff4f493          	andi	s1,s1,255
    80003f88:	00200793          	li	a5,2
    80003f8c:	fc97f0e3          	bgeu	a5,s1,80003f4c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003f90:	00006517          	auipc	a0,0x6
    80003f94:	3f850513          	addi	a0,a0,1016 # 8000a388 <CONSOLE_STATUS+0x378>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	d04080e7          	jalr	-764(ra) # 80005c9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fa0:	00700313          	li	t1,7
    thread_dispatch();
    80003fa4:	ffffd097          	auipc	ra,0xffffd
    80003fa8:	2c8080e7          	jalr	712(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003fac:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003fb0:	00006517          	auipc	a0,0x6
    80003fb4:	3e850513          	addi	a0,a0,1000 # 8000a398 <CONSOLE_STATUS+0x388>
    80003fb8:	00002097          	auipc	ra,0x2
    80003fbc:	ce4080e7          	jalr	-796(ra) # 80005c9c <_Z11printStringPKc>
    80003fc0:	00000613          	li	a2,0
    80003fc4:	00a00593          	li	a1,10
    80003fc8:	0009051b          	sext.w	a0,s2
    80003fcc:	00002097          	auipc	ra,0x2
    80003fd0:	e80080e7          	jalr	-384(ra) # 80005e4c <_Z8printIntiii>
    80003fd4:	00006517          	auipc	a0,0x6
    80003fd8:	5fc50513          	addi	a0,a0,1532 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80003fdc:	00002097          	auipc	ra,0x2
    80003fe0:	cc0080e7          	jalr	-832(ra) # 80005c9c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003fe4:	00c00513          	li	a0,12
    80003fe8:	00000097          	auipc	ra,0x0
    80003fec:	d30080e7          	jalr	-720(ra) # 80003d18 <_ZL9fibonaccim>
    80003ff0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ff4:	00006517          	auipc	a0,0x6
    80003ff8:	3ac50513          	addi	a0,a0,940 # 8000a3a0 <CONSOLE_STATUS+0x390>
    80003ffc:	00002097          	auipc	ra,0x2
    80004000:	ca0080e7          	jalr	-864(ra) # 80005c9c <_Z11printStringPKc>
    80004004:	00000613          	li	a2,0
    80004008:	00a00593          	li	a1,10
    8000400c:	0009051b          	sext.w	a0,s2
    80004010:	00002097          	auipc	ra,0x2
    80004014:	e3c080e7          	jalr	-452(ra) # 80005e4c <_Z8printIntiii>
    80004018:	00006517          	auipc	a0,0x6
    8000401c:	5b850513          	addi	a0,a0,1464 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80004020:	00002097          	auipc	ra,0x2
    80004024:	c7c080e7          	jalr	-900(ra) # 80005c9c <_Z11printStringPKc>
    80004028:	0400006f          	j	80004068 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000402c:	00006517          	auipc	a0,0x6
    80004030:	35450513          	addi	a0,a0,852 # 8000a380 <CONSOLE_STATUS+0x370>
    80004034:	00002097          	auipc	ra,0x2
    80004038:	c68080e7          	jalr	-920(ra) # 80005c9c <_Z11printStringPKc>
    8000403c:	00000613          	li	a2,0
    80004040:	00a00593          	li	a1,10
    80004044:	00048513          	mv	a0,s1
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	e04080e7          	jalr	-508(ra) # 80005e4c <_Z8printIntiii>
    80004050:	00006517          	auipc	a0,0x6
    80004054:	58050513          	addi	a0,a0,1408 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	c44080e7          	jalr	-956(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004060:	0014849b          	addiw	s1,s1,1
    80004064:	0ff4f493          	andi	s1,s1,255
    80004068:	00500793          	li	a5,5
    8000406c:	fc97f0e3          	bgeu	a5,s1,8000402c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004070:	00006517          	auipc	a0,0x6
    80004074:	2e850513          	addi	a0,a0,744 # 8000a358 <CONSOLE_STATUS+0x348>
    80004078:	00002097          	auipc	ra,0x2
    8000407c:	c24080e7          	jalr	-988(ra) # 80005c9c <_Z11printStringPKc>
    finishedC = true;
    80004080:	00100793          	li	a5,1
    80004084:	00009717          	auipc	a4,0x9
    80004088:	aaf70723          	sb	a5,-1362(a4) # 8000cb32 <_ZL9finishedC>
    thread_dispatch();
    8000408c:	ffffd097          	auipc	ra,0xffffd
    80004090:	1e0080e7          	jalr	480(ra) # 8000126c <_Z15thread_dispatchv>
}
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	00813483          	ld	s1,8(sp)
    800040a0:	00013903          	ld	s2,0(sp)
    800040a4:	02010113          	addi	sp,sp,32
    800040a8:	00008067          	ret

00000000800040ac <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800040ac:	fe010113          	addi	sp,sp,-32
    800040b0:	00113c23          	sd	ra,24(sp)
    800040b4:	00813823          	sd	s0,16(sp)
    800040b8:	00913423          	sd	s1,8(sp)
    800040bc:	01213023          	sd	s2,0(sp)
    800040c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800040c4:	00a00493          	li	s1,10
    800040c8:	0400006f          	j	80004108 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040cc:	00006517          	auipc	a0,0x6
    800040d0:	2e450513          	addi	a0,a0,740 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	bc8080e7          	jalr	-1080(ra) # 80005c9c <_Z11printStringPKc>
    800040dc:	00000613          	li	a2,0
    800040e0:	00a00593          	li	a1,10
    800040e4:	00048513          	mv	a0,s1
    800040e8:	00002097          	auipc	ra,0x2
    800040ec:	d64080e7          	jalr	-668(ra) # 80005e4c <_Z8printIntiii>
    800040f0:	00006517          	auipc	a0,0x6
    800040f4:	4e050513          	addi	a0,a0,1248 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800040f8:	00002097          	auipc	ra,0x2
    800040fc:	ba4080e7          	jalr	-1116(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004100:	0014849b          	addiw	s1,s1,1
    80004104:	0ff4f493          	andi	s1,s1,255
    80004108:	00c00793          	li	a5,12
    8000410c:	fc97f0e3          	bgeu	a5,s1,800040cc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004110:	00006517          	auipc	a0,0x6
    80004114:	2a850513          	addi	a0,a0,680 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    80004118:	00002097          	auipc	ra,0x2
    8000411c:	b84080e7          	jalr	-1148(ra) # 80005c9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004120:	00500313          	li	t1,5
    thread_dispatch();
    80004124:	ffffd097          	auipc	ra,0xffffd
    80004128:	148080e7          	jalr	328(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000412c:	01000513          	li	a0,16
    80004130:	00000097          	auipc	ra,0x0
    80004134:	be8080e7          	jalr	-1048(ra) # 80003d18 <_ZL9fibonaccim>
    80004138:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000413c:	00006517          	auipc	a0,0x6
    80004140:	28c50513          	addi	a0,a0,652 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    80004144:	00002097          	auipc	ra,0x2
    80004148:	b58080e7          	jalr	-1192(ra) # 80005c9c <_Z11printStringPKc>
    8000414c:	00000613          	li	a2,0
    80004150:	00a00593          	li	a1,10
    80004154:	0009051b          	sext.w	a0,s2
    80004158:	00002097          	auipc	ra,0x2
    8000415c:	cf4080e7          	jalr	-780(ra) # 80005e4c <_Z8printIntiii>
    80004160:	00006517          	auipc	a0,0x6
    80004164:	47050513          	addi	a0,a0,1136 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80004168:	00002097          	auipc	ra,0x2
    8000416c:	b34080e7          	jalr	-1228(ra) # 80005c9c <_Z11printStringPKc>
    80004170:	0400006f          	j	800041b0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004174:	00006517          	auipc	a0,0x6
    80004178:	23c50513          	addi	a0,a0,572 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    8000417c:	00002097          	auipc	ra,0x2
    80004180:	b20080e7          	jalr	-1248(ra) # 80005c9c <_Z11printStringPKc>
    80004184:	00000613          	li	a2,0
    80004188:	00a00593          	li	a1,10
    8000418c:	00048513          	mv	a0,s1
    80004190:	00002097          	auipc	ra,0x2
    80004194:	cbc080e7          	jalr	-836(ra) # 80005e4c <_Z8printIntiii>
    80004198:	00006517          	auipc	a0,0x6
    8000419c:	43850513          	addi	a0,a0,1080 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	afc080e7          	jalr	-1284(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800041a8:	0014849b          	addiw	s1,s1,1
    800041ac:	0ff4f493          	andi	s1,s1,255
    800041b0:	00f00793          	li	a5,15
    800041b4:	fc97f0e3          	bgeu	a5,s1,80004174 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800041b8:	00006517          	auipc	a0,0x6
    800041bc:	22050513          	addi	a0,a0,544 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    800041c0:	00002097          	auipc	ra,0x2
    800041c4:	adc080e7          	jalr	-1316(ra) # 80005c9c <_Z11printStringPKc>
    finishedD = true;
    800041c8:	00100793          	li	a5,1
    800041cc:	00009717          	auipc	a4,0x9
    800041d0:	96f703a3          	sb	a5,-1689(a4) # 8000cb33 <_ZL9finishedD>
    thread_dispatch();
    800041d4:	ffffd097          	auipc	ra,0xffffd
    800041d8:	098080e7          	jalr	152(ra) # 8000126c <_Z15thread_dispatchv>
}
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	00013903          	ld	s2,0(sp)
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret

00000000800041f4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800041f4:	fc010113          	addi	sp,sp,-64
    800041f8:	02113c23          	sd	ra,56(sp)
    800041fc:	02813823          	sd	s0,48(sp)
    80004200:	02913423          	sd	s1,40(sp)
    80004204:	03213023          	sd	s2,32(sp)
    80004208:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000420c:	02000513          	li	a0,32
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	204080e7          	jalr	516(ra) # 80002414 <_Znwm>
    80004218:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000421c:	ffffe097          	auipc	ra,0xffffe
    80004220:	384080e7          	jalr	900(ra) # 800025a0 <_ZN6ThreadC1Ev>
    80004224:	00008797          	auipc	a5,0x8
    80004228:	64478793          	addi	a5,a5,1604 # 8000c868 <_ZTV7WorkerA+0x10>
    8000422c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004230:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004234:	00006517          	auipc	a0,0x6
    80004238:	1b450513          	addi	a0,a0,436 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    8000423c:	00002097          	auipc	ra,0x2
    80004240:	a60080e7          	jalr	-1440(ra) # 80005c9c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004244:	02000513          	li	a0,32
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	1cc080e7          	jalr	460(ra) # 80002414 <_Znwm>
    80004250:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	34c080e7          	jalr	844(ra) # 800025a0 <_ZN6ThreadC1Ev>
    8000425c:	00008797          	auipc	a5,0x8
    80004260:	63478793          	addi	a5,a5,1588 # 8000c890 <_ZTV7WorkerB+0x10>
    80004264:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004268:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000426c:	00006517          	auipc	a0,0x6
    80004270:	19450513          	addi	a0,a0,404 # 8000a400 <CONSOLE_STATUS+0x3f0>
    80004274:	00002097          	auipc	ra,0x2
    80004278:	a28080e7          	jalr	-1496(ra) # 80005c9c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000427c:	02000513          	li	a0,32
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	194080e7          	jalr	404(ra) # 80002414 <_Znwm>
    80004288:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	314080e7          	jalr	788(ra) # 800025a0 <_ZN6ThreadC1Ev>
    80004294:	00008797          	auipc	a5,0x8
    80004298:	62478793          	addi	a5,a5,1572 # 8000c8b8 <_ZTV7WorkerC+0x10>
    8000429c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800042a0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800042a4:	00006517          	auipc	a0,0x6
    800042a8:	17450513          	addi	a0,a0,372 # 8000a418 <CONSOLE_STATUS+0x408>
    800042ac:	00002097          	auipc	ra,0x2
    800042b0:	9f0080e7          	jalr	-1552(ra) # 80005c9c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800042b4:	02000513          	li	a0,32
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	15c080e7          	jalr	348(ra) # 80002414 <_Znwm>
    800042c0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	2dc080e7          	jalr	732(ra) # 800025a0 <_ZN6ThreadC1Ev>
    800042cc:	00008797          	auipc	a5,0x8
    800042d0:	61478793          	addi	a5,a5,1556 # 8000c8e0 <_ZTV7WorkerD+0x10>
    800042d4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800042d8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800042dc:	00006517          	auipc	a0,0x6
    800042e0:	15450513          	addi	a0,a0,340 # 8000a430 <CONSOLE_STATUS+0x420>
    800042e4:	00002097          	auipc	ra,0x2
    800042e8:	9b8080e7          	jalr	-1608(ra) # 80005c9c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800042ec:	00000493          	li	s1,0
    800042f0:	00300793          	li	a5,3
    800042f4:	0297c663          	blt	a5,s1,80004320 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800042f8:	00349793          	slli	a5,s1,0x3
    800042fc:	fe040713          	addi	a4,s0,-32
    80004300:	00f707b3          	add	a5,a4,a5
    80004304:	fe07b503          	ld	a0,-32(a5)
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	1c4080e7          	jalr	452(ra) # 800024cc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004310:	0014849b          	addiw	s1,s1,1
    80004314:	fddff06f          	j	800042f0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	244080e7          	jalr	580(ra) # 8000255c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004320:	00009797          	auipc	a5,0x9
    80004324:	8107c783          	lbu	a5,-2032(a5) # 8000cb30 <_ZL9finishedA>
    80004328:	fe0788e3          	beqz	a5,80004318 <_Z20Threads_CPP_API_testv+0x124>
    8000432c:	00009797          	auipc	a5,0x9
    80004330:	8057c783          	lbu	a5,-2043(a5) # 8000cb31 <_ZL9finishedB>
    80004334:	fe0782e3          	beqz	a5,80004318 <_Z20Threads_CPP_API_testv+0x124>
    80004338:	00008797          	auipc	a5,0x8
    8000433c:	7fa7c783          	lbu	a5,2042(a5) # 8000cb32 <_ZL9finishedC>
    80004340:	fc078ce3          	beqz	a5,80004318 <_Z20Threads_CPP_API_testv+0x124>
    80004344:	00008797          	auipc	a5,0x8
    80004348:	7ef7c783          	lbu	a5,2031(a5) # 8000cb33 <_ZL9finishedD>
    8000434c:	fc0786e3          	beqz	a5,80004318 <_Z20Threads_CPP_API_testv+0x124>
    80004350:	fc040493          	addi	s1,s0,-64
    80004354:	0080006f          	j	8000435c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004358:	00848493          	addi	s1,s1,8
    8000435c:	fe040793          	addi	a5,s0,-32
    80004360:	08f48663          	beq	s1,a5,800043ec <_Z20Threads_CPP_API_testv+0x1f8>
    80004364:	0004b503          	ld	a0,0(s1)
    80004368:	fe0508e3          	beqz	a0,80004358 <_Z20Threads_CPP_API_testv+0x164>
    8000436c:	00053783          	ld	a5,0(a0)
    80004370:	0087b783          	ld	a5,8(a5)
    80004374:	000780e7          	jalr	a5
    80004378:	fe1ff06f          	j	80004358 <_Z20Threads_CPP_API_testv+0x164>
    8000437c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004380:	00048513          	mv	a0,s1
    80004384:	ffffe097          	auipc	ra,0xffffe
    80004388:	0b8080e7          	jalr	184(ra) # 8000243c <_ZdlPv>
    8000438c:	00090513          	mv	a0,s2
    80004390:	0000a097          	auipc	ra,0xa
    80004394:	8a8080e7          	jalr	-1880(ra) # 8000dc38 <_Unwind_Resume>
    80004398:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000439c:	00048513          	mv	a0,s1
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	09c080e7          	jalr	156(ra) # 8000243c <_ZdlPv>
    800043a8:	00090513          	mv	a0,s2
    800043ac:	0000a097          	auipc	ra,0xa
    800043b0:	88c080e7          	jalr	-1908(ra) # 8000dc38 <_Unwind_Resume>
    800043b4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800043b8:	00048513          	mv	a0,s1
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	080080e7          	jalr	128(ra) # 8000243c <_ZdlPv>
    800043c4:	00090513          	mv	a0,s2
    800043c8:	0000a097          	auipc	ra,0xa
    800043cc:	870080e7          	jalr	-1936(ra) # 8000dc38 <_Unwind_Resume>
    800043d0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800043d4:	00048513          	mv	a0,s1
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	064080e7          	jalr	100(ra) # 8000243c <_ZdlPv>
    800043e0:	00090513          	mv	a0,s2
    800043e4:	0000a097          	auipc	ra,0xa
    800043e8:	854080e7          	jalr	-1964(ra) # 8000dc38 <_Unwind_Resume>
}
    800043ec:	03813083          	ld	ra,56(sp)
    800043f0:	03013403          	ld	s0,48(sp)
    800043f4:	02813483          	ld	s1,40(sp)
    800043f8:	02013903          	ld	s2,32(sp)
    800043fc:	04010113          	addi	sp,sp,64
    80004400:	00008067          	ret

0000000080004404 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00113423          	sd	ra,8(sp)
    8000440c:	00813023          	sd	s0,0(sp)
    80004410:	01010413          	addi	s0,sp,16
    80004414:	00008797          	auipc	a5,0x8
    80004418:	45478793          	addi	a5,a5,1108 # 8000c868 <_ZTV7WorkerA+0x10>
    8000441c:	00f53023          	sd	a5,0(a0)
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	f78080e7          	jalr	-136(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004428:	00813083          	ld	ra,8(sp)
    8000442c:	00013403          	ld	s0,0(sp)
    80004430:	01010113          	addi	sp,sp,16
    80004434:	00008067          	ret

0000000080004438 <_ZN7WorkerAD0Ev>:
    80004438:	fe010113          	addi	sp,sp,-32
    8000443c:	00113c23          	sd	ra,24(sp)
    80004440:	00813823          	sd	s0,16(sp)
    80004444:	00913423          	sd	s1,8(sp)
    80004448:	02010413          	addi	s0,sp,32
    8000444c:	00050493          	mv	s1,a0
    80004450:	00008797          	auipc	a5,0x8
    80004454:	41878793          	addi	a5,a5,1048 # 8000c868 <_ZTV7WorkerA+0x10>
    80004458:	00f53023          	sd	a5,0(a0)
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	f3c080e7          	jalr	-196(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004464:	00048513          	mv	a0,s1
    80004468:	ffffe097          	auipc	ra,0xffffe
    8000446c:	fd4080e7          	jalr	-44(ra) # 8000243c <_ZdlPv>
    80004470:	01813083          	ld	ra,24(sp)
    80004474:	01013403          	ld	s0,16(sp)
    80004478:	00813483          	ld	s1,8(sp)
    8000447c:	02010113          	addi	sp,sp,32
    80004480:	00008067          	ret

0000000080004484 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004484:	ff010113          	addi	sp,sp,-16
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	00813023          	sd	s0,0(sp)
    80004490:	01010413          	addi	s0,sp,16
    80004494:	00008797          	auipc	a5,0x8
    80004498:	3fc78793          	addi	a5,a5,1020 # 8000c890 <_ZTV7WorkerB+0x10>
    8000449c:	00f53023          	sd	a5,0(a0)
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	ef8080e7          	jalr	-264(ra) # 80002398 <_ZN6ThreadD1Ev>
    800044a8:	00813083          	ld	ra,8(sp)
    800044ac:	00013403          	ld	s0,0(sp)
    800044b0:	01010113          	addi	sp,sp,16
    800044b4:	00008067          	ret

00000000800044b8 <_ZN7WorkerBD0Ev>:
    800044b8:	fe010113          	addi	sp,sp,-32
    800044bc:	00113c23          	sd	ra,24(sp)
    800044c0:	00813823          	sd	s0,16(sp)
    800044c4:	00913423          	sd	s1,8(sp)
    800044c8:	02010413          	addi	s0,sp,32
    800044cc:	00050493          	mv	s1,a0
    800044d0:	00008797          	auipc	a5,0x8
    800044d4:	3c078793          	addi	a5,a5,960 # 8000c890 <_ZTV7WorkerB+0x10>
    800044d8:	00f53023          	sd	a5,0(a0)
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	ebc080e7          	jalr	-324(ra) # 80002398 <_ZN6ThreadD1Ev>
    800044e4:	00048513          	mv	a0,s1
    800044e8:	ffffe097          	auipc	ra,0xffffe
    800044ec:	f54080e7          	jalr	-172(ra) # 8000243c <_ZdlPv>
    800044f0:	01813083          	ld	ra,24(sp)
    800044f4:	01013403          	ld	s0,16(sp)
    800044f8:	00813483          	ld	s1,8(sp)
    800044fc:	02010113          	addi	sp,sp,32
    80004500:	00008067          	ret

0000000080004504 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00113423          	sd	ra,8(sp)
    8000450c:	00813023          	sd	s0,0(sp)
    80004510:	01010413          	addi	s0,sp,16
    80004514:	00008797          	auipc	a5,0x8
    80004518:	3a478793          	addi	a5,a5,932 # 8000c8b8 <_ZTV7WorkerC+0x10>
    8000451c:	00f53023          	sd	a5,0(a0)
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	e78080e7          	jalr	-392(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004528:	00813083          	ld	ra,8(sp)
    8000452c:	00013403          	ld	s0,0(sp)
    80004530:	01010113          	addi	sp,sp,16
    80004534:	00008067          	ret

0000000080004538 <_ZN7WorkerCD0Ev>:
    80004538:	fe010113          	addi	sp,sp,-32
    8000453c:	00113c23          	sd	ra,24(sp)
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00913423          	sd	s1,8(sp)
    80004548:	02010413          	addi	s0,sp,32
    8000454c:	00050493          	mv	s1,a0
    80004550:	00008797          	auipc	a5,0x8
    80004554:	36878793          	addi	a5,a5,872 # 8000c8b8 <_ZTV7WorkerC+0x10>
    80004558:	00f53023          	sd	a5,0(a0)
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	e3c080e7          	jalr	-452(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004564:	00048513          	mv	a0,s1
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	ed4080e7          	jalr	-300(ra) # 8000243c <_ZdlPv>
    80004570:	01813083          	ld	ra,24(sp)
    80004574:	01013403          	ld	s0,16(sp)
    80004578:	00813483          	ld	s1,8(sp)
    8000457c:	02010113          	addi	sp,sp,32
    80004580:	00008067          	ret

0000000080004584 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004584:	ff010113          	addi	sp,sp,-16
    80004588:	00113423          	sd	ra,8(sp)
    8000458c:	00813023          	sd	s0,0(sp)
    80004590:	01010413          	addi	s0,sp,16
    80004594:	00008797          	auipc	a5,0x8
    80004598:	34c78793          	addi	a5,a5,844 # 8000c8e0 <_ZTV7WorkerD+0x10>
    8000459c:	00f53023          	sd	a5,0(a0)
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	df8080e7          	jalr	-520(ra) # 80002398 <_ZN6ThreadD1Ev>
    800045a8:	00813083          	ld	ra,8(sp)
    800045ac:	00013403          	ld	s0,0(sp)
    800045b0:	01010113          	addi	sp,sp,16
    800045b4:	00008067          	ret

00000000800045b8 <_ZN7WorkerDD0Ev>:
    800045b8:	fe010113          	addi	sp,sp,-32
    800045bc:	00113c23          	sd	ra,24(sp)
    800045c0:	00813823          	sd	s0,16(sp)
    800045c4:	00913423          	sd	s1,8(sp)
    800045c8:	02010413          	addi	s0,sp,32
    800045cc:	00050493          	mv	s1,a0
    800045d0:	00008797          	auipc	a5,0x8
    800045d4:	31078793          	addi	a5,a5,784 # 8000c8e0 <_ZTV7WorkerD+0x10>
    800045d8:	00f53023          	sd	a5,0(a0)
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	dbc080e7          	jalr	-580(ra) # 80002398 <_ZN6ThreadD1Ev>
    800045e4:	00048513          	mv	a0,s1
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	e54080e7          	jalr	-428(ra) # 8000243c <_ZdlPv>
    800045f0:	01813083          	ld	ra,24(sp)
    800045f4:	01013403          	ld	s0,16(sp)
    800045f8:	00813483          	ld	s1,8(sp)
    800045fc:	02010113          	addi	sp,sp,32
    80004600:	00008067          	ret

0000000080004604 <_ZN7WorkerA3runEv>:
    void run() override {
    80004604:	ff010113          	addi	sp,sp,-16
    80004608:	00113423          	sd	ra,8(sp)
    8000460c:	00813023          	sd	s0,0(sp)
    80004610:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004614:	00000593          	li	a1,0
    80004618:	fffff097          	auipc	ra,0xfffff
    8000461c:	774080e7          	jalr	1908(ra) # 80003d8c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004620:	00813083          	ld	ra,8(sp)
    80004624:	00013403          	ld	s0,0(sp)
    80004628:	01010113          	addi	sp,sp,16
    8000462c:	00008067          	ret

0000000080004630 <_ZN7WorkerB3runEv>:
    void run() override {
    80004630:	ff010113          	addi	sp,sp,-16
    80004634:	00113423          	sd	ra,8(sp)
    80004638:	00813023          	sd	s0,0(sp)
    8000463c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004640:	00000593          	li	a1,0
    80004644:	00000097          	auipc	ra,0x0
    80004648:	814080e7          	jalr	-2028(ra) # 80003e58 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000464c:	00813083          	ld	ra,8(sp)
    80004650:	00013403          	ld	s0,0(sp)
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00008067          	ret

000000008000465c <_ZN7WorkerC3runEv>:
    void run() override {
    8000465c:	ff010113          	addi	sp,sp,-16
    80004660:	00113423          	sd	ra,8(sp)
    80004664:	00813023          	sd	s0,0(sp)
    80004668:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000466c:	00000593          	li	a1,0
    80004670:	00000097          	auipc	ra,0x0
    80004674:	8bc080e7          	jalr	-1860(ra) # 80003f2c <_ZN7WorkerC11workerBodyCEPv>
    }
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_ZN7WorkerD3runEv>:
    void run() override {
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00113423          	sd	ra,8(sp)
    80004690:	00813023          	sd	s0,0(sp)
    80004694:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004698:	00000593          	li	a1,0
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	a10080e7          	jalr	-1520(ra) # 800040ac <_ZN7WorkerD11workerBodyDEPv>
    }
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	01010113          	addi	sp,sp,16
    800046b0:	00008067          	ret

00000000800046b4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800046b4:	f8010113          	addi	sp,sp,-128
    800046b8:	06113c23          	sd	ra,120(sp)
    800046bc:	06813823          	sd	s0,112(sp)
    800046c0:	06913423          	sd	s1,104(sp)
    800046c4:	07213023          	sd	s2,96(sp)
    800046c8:	05313c23          	sd	s3,88(sp)
    800046cc:	05413823          	sd	s4,80(sp)
    800046d0:	05513423          	sd	s5,72(sp)
    800046d4:	05613023          	sd	s6,64(sp)
    800046d8:	03713c23          	sd	s7,56(sp)
    800046dc:	03813823          	sd	s8,48(sp)
    800046e0:	03913423          	sd	s9,40(sp)
    800046e4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800046e8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800046ec:	00006517          	auipc	a0,0x6
    800046f0:	b7c50513          	addi	a0,a0,-1156 # 8000a268 <CONSOLE_STATUS+0x258>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	5a8080e7          	jalr	1448(ra) # 80005c9c <_Z11printStringPKc>
    getString(input, 30);
    800046fc:	01e00593          	li	a1,30
    80004700:	f8040493          	addi	s1,s0,-128
    80004704:	00048513          	mv	a0,s1
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	61c080e7          	jalr	1564(ra) # 80005d24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004710:	00048513          	mv	a0,s1
    80004714:	00001097          	auipc	ra,0x1
    80004718:	6e8080e7          	jalr	1768(ra) # 80005dfc <_Z11stringToIntPKc>
    8000471c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004720:	00006517          	auipc	a0,0x6
    80004724:	b6850513          	addi	a0,a0,-1176 # 8000a288 <CONSOLE_STATUS+0x278>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	574080e7          	jalr	1396(ra) # 80005c9c <_Z11printStringPKc>
    getString(input, 30);
    80004730:	01e00593          	li	a1,30
    80004734:	00048513          	mv	a0,s1
    80004738:	00001097          	auipc	ra,0x1
    8000473c:	5ec080e7          	jalr	1516(ra) # 80005d24 <_Z9getStringPci>
    n = stringToInt(input);
    80004740:	00048513          	mv	a0,s1
    80004744:	00001097          	auipc	ra,0x1
    80004748:	6b8080e7          	jalr	1720(ra) # 80005dfc <_Z11stringToIntPKc>
    8000474c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004750:	00006517          	auipc	a0,0x6
    80004754:	b5850513          	addi	a0,a0,-1192 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	544080e7          	jalr	1348(ra) # 80005c9c <_Z11printStringPKc>
    printInt(threadNum);
    80004760:	00000613          	li	a2,0
    80004764:	00a00593          	li	a1,10
    80004768:	00098513          	mv	a0,s3
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	6e0080e7          	jalr	1760(ra) # 80005e4c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004774:	00006517          	auipc	a0,0x6
    80004778:	b4c50513          	addi	a0,a0,-1204 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	520080e7          	jalr	1312(ra) # 80005c9c <_Z11printStringPKc>
    printInt(n);
    80004784:	00000613          	li	a2,0
    80004788:	00a00593          	li	a1,10
    8000478c:	00048513          	mv	a0,s1
    80004790:	00001097          	auipc	ra,0x1
    80004794:	6bc080e7          	jalr	1724(ra) # 80005e4c <_Z8printIntiii>
    printString(".\n");
    80004798:	00006517          	auipc	a0,0x6
    8000479c:	b4050513          	addi	a0,a0,-1216 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    800047a0:	00001097          	auipc	ra,0x1
    800047a4:	4fc080e7          	jalr	1276(ra) # 80005c9c <_Z11printStringPKc>
    if (threadNum > n) {
    800047a8:	0334c463          	blt	s1,s3,800047d0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800047ac:	03305c63          	blez	s3,800047e4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800047b0:	03800513          	li	a0,56
    800047b4:	ffffe097          	auipc	ra,0xffffe
    800047b8:	c60080e7          	jalr	-928(ra) # 80002414 <_Znwm>
    800047bc:	00050a93          	mv	s5,a0
    800047c0:	00048593          	mv	a1,s1
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	7a8080e7          	jalr	1960(ra) # 80005f6c <_ZN9BufferCPPC1Ei>
    800047cc:	0300006f          	j	800047fc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800047d0:	00006517          	auipc	a0,0x6
    800047d4:	b1050513          	addi	a0,a0,-1264 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	4c4080e7          	jalr	1220(ra) # 80005c9c <_Z11printStringPKc>
        return;
    800047e0:	0140006f          	j	800047f4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800047e4:	00006517          	auipc	a0,0x6
    800047e8:	b3c50513          	addi	a0,a0,-1220 # 8000a320 <CONSOLE_STATUS+0x310>
    800047ec:	00001097          	auipc	ra,0x1
    800047f0:	4b0080e7          	jalr	1200(ra) # 80005c9c <_Z11printStringPKc>
        return;
    800047f4:	000c0113          	mv	sp,s8
    800047f8:	2140006f          	j	80004a0c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800047fc:	01000513          	li	a0,16
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	c14080e7          	jalr	-1004(ra) # 80002414 <_Znwm>
    80004808:	00050913          	mv	s2,a0
    8000480c:	00000593          	li	a1,0
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	e14080e7          	jalr	-492(ra) # 80002624 <_ZN9SemaphoreC1Ej>
    80004818:	00008797          	auipc	a5,0x8
    8000481c:	3327b423          	sd	s2,808(a5) # 8000cb40 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004820:	00399793          	slli	a5,s3,0x3
    80004824:	00f78793          	addi	a5,a5,15
    80004828:	ff07f793          	andi	a5,a5,-16
    8000482c:	40f10133          	sub	sp,sp,a5
    80004830:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004834:	0019871b          	addiw	a4,s3,1
    80004838:	00171793          	slli	a5,a4,0x1
    8000483c:	00e787b3          	add	a5,a5,a4
    80004840:	00379793          	slli	a5,a5,0x3
    80004844:	00f78793          	addi	a5,a5,15
    80004848:	ff07f793          	andi	a5,a5,-16
    8000484c:	40f10133          	sub	sp,sp,a5
    80004850:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004854:	00199493          	slli	s1,s3,0x1
    80004858:	013484b3          	add	s1,s1,s3
    8000485c:	00349493          	slli	s1,s1,0x3
    80004860:	009b04b3          	add	s1,s6,s1
    80004864:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004868:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000486c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004870:	02800513          	li	a0,40
    80004874:	ffffe097          	auipc	ra,0xffffe
    80004878:	ba0080e7          	jalr	-1120(ra) # 80002414 <_Znwm>
    8000487c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	d20080e7          	jalr	-736(ra) # 800025a0 <_ZN6ThreadC1Ev>
    80004888:	00008797          	auipc	a5,0x8
    8000488c:	0d078793          	addi	a5,a5,208 # 8000c958 <_ZTV8Consumer+0x10>
    80004890:	00fbb023          	sd	a5,0(s7)
    80004894:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004898:	000b8513          	mv	a0,s7
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	c30080e7          	jalr	-976(ra) # 800024cc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800048a4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800048a8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800048ac:	00008797          	auipc	a5,0x8
    800048b0:	2947b783          	ld	a5,660(a5) # 8000cb40 <_ZL10waitForAll>
    800048b4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048b8:	02800513          	li	a0,40
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	b58080e7          	jalr	-1192(ra) # 80002414 <_Znwm>
    800048c4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800048c8:	ffffe097          	auipc	ra,0xffffe
    800048cc:	cd8080e7          	jalr	-808(ra) # 800025a0 <_ZN6ThreadC1Ev>
    800048d0:	00008797          	auipc	a5,0x8
    800048d4:	03878793          	addi	a5,a5,56 # 8000c908 <_ZTV16ProducerKeyborad+0x10>
    800048d8:	00f4b023          	sd	a5,0(s1)
    800048dc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048e0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800048e4:	00048513          	mv	a0,s1
    800048e8:	ffffe097          	auipc	ra,0xffffe
    800048ec:	be4080e7          	jalr	-1052(ra) # 800024cc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800048f0:	00100913          	li	s2,1
    800048f4:	0300006f          	j	80004924 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800048f8:	00008797          	auipc	a5,0x8
    800048fc:	03878793          	addi	a5,a5,56 # 8000c930 <_ZTV8Producer+0x10>
    80004900:	00fcb023          	sd	a5,0(s9)
    80004904:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004908:	00391793          	slli	a5,s2,0x3
    8000490c:	00fa07b3          	add	a5,s4,a5
    80004910:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004914:	000c8513          	mv	a0,s9
    80004918:	ffffe097          	auipc	ra,0xffffe
    8000491c:	bb4080e7          	jalr	-1100(ra) # 800024cc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004920:	0019091b          	addiw	s2,s2,1
    80004924:	05395263          	bge	s2,s3,80004968 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004928:	00191493          	slli	s1,s2,0x1
    8000492c:	012484b3          	add	s1,s1,s2
    80004930:	00349493          	slli	s1,s1,0x3
    80004934:	009b04b3          	add	s1,s6,s1
    80004938:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000493c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004940:	00008797          	auipc	a5,0x8
    80004944:	2007b783          	ld	a5,512(a5) # 8000cb40 <_ZL10waitForAll>
    80004948:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000494c:	02800513          	li	a0,40
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	ac4080e7          	jalr	-1340(ra) # 80002414 <_Znwm>
    80004958:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000495c:	ffffe097          	auipc	ra,0xffffe
    80004960:	c44080e7          	jalr	-956(ra) # 800025a0 <_ZN6ThreadC1Ev>
    80004964:	f95ff06f          	j	800048f8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004968:	ffffe097          	auipc	ra,0xffffe
    8000496c:	bf4080e7          	jalr	-1036(ra) # 8000255c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004970:	00000493          	li	s1,0
    80004974:	0099ce63          	blt	s3,s1,80004990 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004978:	00008517          	auipc	a0,0x8
    8000497c:	1c853503          	ld	a0,456(a0) # 8000cb40 <_ZL10waitForAll>
    80004980:	ffffe097          	auipc	ra,0xffffe
    80004984:	cdc080e7          	jalr	-804(ra) # 8000265c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004988:	0014849b          	addiw	s1,s1,1
    8000498c:	fe9ff06f          	j	80004974 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004990:	00008517          	auipc	a0,0x8
    80004994:	1b053503          	ld	a0,432(a0) # 8000cb40 <_ZL10waitForAll>
    80004998:	00050863          	beqz	a0,800049a8 <_Z20testConsumerProducerv+0x2f4>
    8000499c:	00053783          	ld	a5,0(a0)
    800049a0:	0087b783          	ld	a5,8(a5)
    800049a4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800049a8:	00000493          	li	s1,0
    800049ac:	0080006f          	j	800049b4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800049b0:	0014849b          	addiw	s1,s1,1
    800049b4:	0334d263          	bge	s1,s3,800049d8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800049b8:	00349793          	slli	a5,s1,0x3
    800049bc:	00fa07b3          	add	a5,s4,a5
    800049c0:	0007b503          	ld	a0,0(a5)
    800049c4:	fe0506e3          	beqz	a0,800049b0 <_Z20testConsumerProducerv+0x2fc>
    800049c8:	00053783          	ld	a5,0(a0)
    800049cc:	0087b783          	ld	a5,8(a5)
    800049d0:	000780e7          	jalr	a5
    800049d4:	fddff06f          	j	800049b0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800049d8:	000b8a63          	beqz	s7,800049ec <_Z20testConsumerProducerv+0x338>
    800049dc:	000bb783          	ld	a5,0(s7)
    800049e0:	0087b783          	ld	a5,8(a5)
    800049e4:	000b8513          	mv	a0,s7
    800049e8:	000780e7          	jalr	a5
    delete buffer;
    800049ec:	000a8e63          	beqz	s5,80004a08 <_Z20testConsumerProducerv+0x354>
    800049f0:	000a8513          	mv	a0,s5
    800049f4:	00002097          	auipc	ra,0x2
    800049f8:	870080e7          	jalr	-1936(ra) # 80006264 <_ZN9BufferCPPD1Ev>
    800049fc:	000a8513          	mv	a0,s5
    80004a00:	ffffe097          	auipc	ra,0xffffe
    80004a04:	a3c080e7          	jalr	-1476(ra) # 8000243c <_ZdlPv>
    80004a08:	000c0113          	mv	sp,s8
}
    80004a0c:	f8040113          	addi	sp,s0,-128
    80004a10:	07813083          	ld	ra,120(sp)
    80004a14:	07013403          	ld	s0,112(sp)
    80004a18:	06813483          	ld	s1,104(sp)
    80004a1c:	06013903          	ld	s2,96(sp)
    80004a20:	05813983          	ld	s3,88(sp)
    80004a24:	05013a03          	ld	s4,80(sp)
    80004a28:	04813a83          	ld	s5,72(sp)
    80004a2c:	04013b03          	ld	s6,64(sp)
    80004a30:	03813b83          	ld	s7,56(sp)
    80004a34:	03013c03          	ld	s8,48(sp)
    80004a38:	02813c83          	ld	s9,40(sp)
    80004a3c:	08010113          	addi	sp,sp,128
    80004a40:	00008067          	ret
    80004a44:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a48:	000a8513          	mv	a0,s5
    80004a4c:	ffffe097          	auipc	ra,0xffffe
    80004a50:	9f0080e7          	jalr	-1552(ra) # 8000243c <_ZdlPv>
    80004a54:	00048513          	mv	a0,s1
    80004a58:	00009097          	auipc	ra,0x9
    80004a5c:	1e0080e7          	jalr	480(ra) # 8000dc38 <_Unwind_Resume>
    80004a60:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004a64:	00090513          	mv	a0,s2
    80004a68:	ffffe097          	auipc	ra,0xffffe
    80004a6c:	9d4080e7          	jalr	-1580(ra) # 8000243c <_ZdlPv>
    80004a70:	00048513          	mv	a0,s1
    80004a74:	00009097          	auipc	ra,0x9
    80004a78:	1c4080e7          	jalr	452(ra) # 8000dc38 <_Unwind_Resume>
    80004a7c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004a80:	000b8513          	mv	a0,s7
    80004a84:	ffffe097          	auipc	ra,0xffffe
    80004a88:	9b8080e7          	jalr	-1608(ra) # 8000243c <_ZdlPv>
    80004a8c:	00048513          	mv	a0,s1
    80004a90:	00009097          	auipc	ra,0x9
    80004a94:	1a8080e7          	jalr	424(ra) # 8000dc38 <_Unwind_Resume>
    80004a98:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a9c:	00048513          	mv	a0,s1
    80004aa0:	ffffe097          	auipc	ra,0xffffe
    80004aa4:	99c080e7          	jalr	-1636(ra) # 8000243c <_ZdlPv>
    80004aa8:	00090513          	mv	a0,s2
    80004aac:	00009097          	auipc	ra,0x9
    80004ab0:	18c080e7          	jalr	396(ra) # 8000dc38 <_Unwind_Resume>
    80004ab4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004ab8:	000c8513          	mv	a0,s9
    80004abc:	ffffe097          	auipc	ra,0xffffe
    80004ac0:	980080e7          	jalr	-1664(ra) # 8000243c <_ZdlPv>
    80004ac4:	00048513          	mv	a0,s1
    80004ac8:	00009097          	auipc	ra,0x9
    80004acc:	170080e7          	jalr	368(ra) # 8000dc38 <_Unwind_Resume>

0000000080004ad0 <_ZN8Consumer3runEv>:
    void run() override {
    80004ad0:	fd010113          	addi	sp,sp,-48
    80004ad4:	02113423          	sd	ra,40(sp)
    80004ad8:	02813023          	sd	s0,32(sp)
    80004adc:	00913c23          	sd	s1,24(sp)
    80004ae0:	01213823          	sd	s2,16(sp)
    80004ae4:	01313423          	sd	s3,8(sp)
    80004ae8:	03010413          	addi	s0,sp,48
    80004aec:	00050913          	mv	s2,a0
        int i = 0;
    80004af0:	00000993          	li	s3,0
    80004af4:	0100006f          	j	80004b04 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004af8:	00a00513          	li	a0,10
    80004afc:	ffffe097          	auipc	ra,0xffffe
    80004b00:	be0080e7          	jalr	-1056(ra) # 800026dc <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004b04:	00008797          	auipc	a5,0x8
    80004b08:	0347a783          	lw	a5,52(a5) # 8000cb38 <_ZL9threadEnd>
    80004b0c:	04079a63          	bnez	a5,80004b60 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004b10:	02093783          	ld	a5,32(s2)
    80004b14:	0087b503          	ld	a0,8(a5)
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	638080e7          	jalr	1592(ra) # 80006150 <_ZN9BufferCPP3getEv>
            i++;
    80004b20:	0019849b          	addiw	s1,s3,1
    80004b24:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004b28:	0ff57513          	andi	a0,a0,255
    80004b2c:	ffffe097          	auipc	ra,0xffffe
    80004b30:	bb0080e7          	jalr	-1104(ra) # 800026dc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004b34:	05000793          	li	a5,80
    80004b38:	02f4e4bb          	remw	s1,s1,a5
    80004b3c:	fc0494e3          	bnez	s1,80004b04 <_ZN8Consumer3runEv+0x34>
    80004b40:	fb9ff06f          	j	80004af8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004b44:	02093783          	ld	a5,32(s2)
    80004b48:	0087b503          	ld	a0,8(a5)
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	604080e7          	jalr	1540(ra) # 80006150 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004b54:	0ff57513          	andi	a0,a0,255
    80004b58:	ffffe097          	auipc	ra,0xffffe
    80004b5c:	b84080e7          	jalr	-1148(ra) # 800026dc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004b60:	02093783          	ld	a5,32(s2)
    80004b64:	0087b503          	ld	a0,8(a5)
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	674080e7          	jalr	1652(ra) # 800061dc <_ZN9BufferCPP6getCntEv>
    80004b70:	fca04ae3          	bgtz	a0,80004b44 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004b74:	02093783          	ld	a5,32(s2)
    80004b78:	0107b503          	ld	a0,16(a5)
    80004b7c:	ffffe097          	auipc	ra,0xffffe
    80004b80:	b0c080e7          	jalr	-1268(ra) # 80002688 <_ZN9Semaphore6signalEv>
    }
    80004b84:	02813083          	ld	ra,40(sp)
    80004b88:	02013403          	ld	s0,32(sp)
    80004b8c:	01813483          	ld	s1,24(sp)
    80004b90:	01013903          	ld	s2,16(sp)
    80004b94:	00813983          	ld	s3,8(sp)
    80004b98:	03010113          	addi	sp,sp,48
    80004b9c:	00008067          	ret

0000000080004ba0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004ba0:	ff010113          	addi	sp,sp,-16
    80004ba4:	00113423          	sd	ra,8(sp)
    80004ba8:	00813023          	sd	s0,0(sp)
    80004bac:	01010413          	addi	s0,sp,16
    80004bb0:	00008797          	auipc	a5,0x8
    80004bb4:	da878793          	addi	a5,a5,-600 # 8000c958 <_ZTV8Consumer+0x10>
    80004bb8:	00f53023          	sd	a5,0(a0)
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	7dc080e7          	jalr	2012(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004bc4:	00813083          	ld	ra,8(sp)
    80004bc8:	00013403          	ld	s0,0(sp)
    80004bcc:	01010113          	addi	sp,sp,16
    80004bd0:	00008067          	ret

0000000080004bd4 <_ZN8ConsumerD0Ev>:
    80004bd4:	fe010113          	addi	sp,sp,-32
    80004bd8:	00113c23          	sd	ra,24(sp)
    80004bdc:	00813823          	sd	s0,16(sp)
    80004be0:	00913423          	sd	s1,8(sp)
    80004be4:	02010413          	addi	s0,sp,32
    80004be8:	00050493          	mv	s1,a0
    80004bec:	00008797          	auipc	a5,0x8
    80004bf0:	d6c78793          	addi	a5,a5,-660 # 8000c958 <_ZTV8Consumer+0x10>
    80004bf4:	00f53023          	sd	a5,0(a0)
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	7a0080e7          	jalr	1952(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004c00:	00048513          	mv	a0,s1
    80004c04:	ffffe097          	auipc	ra,0xffffe
    80004c08:	838080e7          	jalr	-1992(ra) # 8000243c <_ZdlPv>
    80004c0c:	01813083          	ld	ra,24(sp)
    80004c10:	01013403          	ld	s0,16(sp)
    80004c14:	00813483          	ld	s1,8(sp)
    80004c18:	02010113          	addi	sp,sp,32
    80004c1c:	00008067          	ret

0000000080004c20 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004c20:	ff010113          	addi	sp,sp,-16
    80004c24:	00113423          	sd	ra,8(sp)
    80004c28:	00813023          	sd	s0,0(sp)
    80004c2c:	01010413          	addi	s0,sp,16
    80004c30:	00008797          	auipc	a5,0x8
    80004c34:	cd878793          	addi	a5,a5,-808 # 8000c908 <_ZTV16ProducerKeyborad+0x10>
    80004c38:	00f53023          	sd	a5,0(a0)
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	75c080e7          	jalr	1884(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004c44:	00813083          	ld	ra,8(sp)
    80004c48:	00013403          	ld	s0,0(sp)
    80004c4c:	01010113          	addi	sp,sp,16
    80004c50:	00008067          	ret

0000000080004c54 <_ZN16ProducerKeyboradD0Ev>:
    80004c54:	fe010113          	addi	sp,sp,-32
    80004c58:	00113c23          	sd	ra,24(sp)
    80004c5c:	00813823          	sd	s0,16(sp)
    80004c60:	00913423          	sd	s1,8(sp)
    80004c64:	02010413          	addi	s0,sp,32
    80004c68:	00050493          	mv	s1,a0
    80004c6c:	00008797          	auipc	a5,0x8
    80004c70:	c9c78793          	addi	a5,a5,-868 # 8000c908 <_ZTV16ProducerKeyborad+0x10>
    80004c74:	00f53023          	sd	a5,0(a0)
    80004c78:	ffffd097          	auipc	ra,0xffffd
    80004c7c:	720080e7          	jalr	1824(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004c80:	00048513          	mv	a0,s1
    80004c84:	ffffd097          	auipc	ra,0xffffd
    80004c88:	7b8080e7          	jalr	1976(ra) # 8000243c <_ZdlPv>
    80004c8c:	01813083          	ld	ra,24(sp)
    80004c90:	01013403          	ld	s0,16(sp)
    80004c94:	00813483          	ld	s1,8(sp)
    80004c98:	02010113          	addi	sp,sp,32
    80004c9c:	00008067          	ret

0000000080004ca0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004ca0:	ff010113          	addi	sp,sp,-16
    80004ca4:	00113423          	sd	ra,8(sp)
    80004ca8:	00813023          	sd	s0,0(sp)
    80004cac:	01010413          	addi	s0,sp,16
    80004cb0:	00008797          	auipc	a5,0x8
    80004cb4:	c8078793          	addi	a5,a5,-896 # 8000c930 <_ZTV8Producer+0x10>
    80004cb8:	00f53023          	sd	a5,0(a0)
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	6dc080e7          	jalr	1756(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004cc4:	00813083          	ld	ra,8(sp)
    80004cc8:	00013403          	ld	s0,0(sp)
    80004ccc:	01010113          	addi	sp,sp,16
    80004cd0:	00008067          	ret

0000000080004cd4 <_ZN8ProducerD0Ev>:
    80004cd4:	fe010113          	addi	sp,sp,-32
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	00813823          	sd	s0,16(sp)
    80004ce0:	00913423          	sd	s1,8(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    80004ce8:	00050493          	mv	s1,a0
    80004cec:	00008797          	auipc	a5,0x8
    80004cf0:	c4478793          	addi	a5,a5,-956 # 8000c930 <_ZTV8Producer+0x10>
    80004cf4:	00f53023          	sd	a5,0(a0)
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	6a0080e7          	jalr	1696(ra) # 80002398 <_ZN6ThreadD1Ev>
    80004d00:	00048513          	mv	a0,s1
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	738080e7          	jalr	1848(ra) # 8000243c <_ZdlPv>
    80004d0c:	01813083          	ld	ra,24(sp)
    80004d10:	01013403          	ld	s0,16(sp)
    80004d14:	00813483          	ld	s1,8(sp)
    80004d18:	02010113          	addi	sp,sp,32
    80004d1c:	00008067          	ret

0000000080004d20 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004d20:	fe010113          	addi	sp,sp,-32
    80004d24:	00113c23          	sd	ra,24(sp)
    80004d28:	00813823          	sd	s0,16(sp)
    80004d2c:	00913423          	sd	s1,8(sp)
    80004d30:	02010413          	addi	s0,sp,32
    80004d34:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	6c0080e7          	jalr	1728(ra) # 800013f8 <_Z4getcv>
    80004d40:	0005059b          	sext.w	a1,a0
    80004d44:	01b00793          	li	a5,27
    80004d48:	00f58c63          	beq	a1,a5,80004d60 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004d4c:	0204b783          	ld	a5,32(s1)
    80004d50:	0087b503          	ld	a0,8(a5)
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	36c080e7          	jalr	876(ra) # 800060c0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004d5c:	fddff06f          	j	80004d38 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004d60:	00100793          	li	a5,1
    80004d64:	00008717          	auipc	a4,0x8
    80004d68:	dcf72a23          	sw	a5,-556(a4) # 8000cb38 <_ZL9threadEnd>
        td->buffer->put('!');
    80004d6c:	0204b783          	ld	a5,32(s1)
    80004d70:	02100593          	li	a1,33
    80004d74:	0087b503          	ld	a0,8(a5)
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	348080e7          	jalr	840(ra) # 800060c0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004d80:	0204b783          	ld	a5,32(s1)
    80004d84:	0107b503          	ld	a0,16(a5)
    80004d88:	ffffe097          	auipc	ra,0xffffe
    80004d8c:	900080e7          	jalr	-1792(ra) # 80002688 <_ZN9Semaphore6signalEv>
    }
    80004d90:	01813083          	ld	ra,24(sp)
    80004d94:	01013403          	ld	s0,16(sp)
    80004d98:	00813483          	ld	s1,8(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <_ZN8Producer3runEv>:
    void run() override {
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	01213023          	sd	s2,0(sp)
    80004db8:	02010413          	addi	s0,sp,32
    80004dbc:	00050493          	mv	s1,a0
        int i = 0;
    80004dc0:	00000913          	li	s2,0
        while (!threadEnd) {
    80004dc4:	00008797          	auipc	a5,0x8
    80004dc8:	d747a783          	lw	a5,-652(a5) # 8000cb38 <_ZL9threadEnd>
    80004dcc:	04079263          	bnez	a5,80004e10 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004dd0:	0204b783          	ld	a5,32(s1)
    80004dd4:	0007a583          	lw	a1,0(a5)
    80004dd8:	0305859b          	addiw	a1,a1,48
    80004ddc:	0087b503          	ld	a0,8(a5)
    80004de0:	00001097          	auipc	ra,0x1
    80004de4:	2e0080e7          	jalr	736(ra) # 800060c0 <_ZN9BufferCPP3putEi>
            i++;
    80004de8:	0019071b          	addiw	a4,s2,1
    80004dec:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004df0:	0204b783          	ld	a5,32(s1)
    80004df4:	0007a783          	lw	a5,0(a5)
    80004df8:	00e787bb          	addw	a5,a5,a4
    80004dfc:	00500513          	li	a0,5
    80004e00:	02a7e53b          	remw	a0,a5,a0
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	780080e7          	jalr	1920(ra) # 80002584 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004e0c:	fb9ff06f          	j	80004dc4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004e10:	0204b783          	ld	a5,32(s1)
    80004e14:	0107b503          	ld	a0,16(a5)
    80004e18:	ffffe097          	auipc	ra,0xffffe
    80004e1c:	870080e7          	jalr	-1936(ra) # 80002688 <_ZN9Semaphore6signalEv>
    }
    80004e20:	01813083          	ld	ra,24(sp)
    80004e24:	01013403          	ld	s0,16(sp)
    80004e28:	00813483          	ld	s1,8(sp)
    80004e2c:	00013903          	ld	s2,0(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret

0000000080004e38 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004e38:	fe010113          	addi	sp,sp,-32
    80004e3c:	00113c23          	sd	ra,24(sp)
    80004e40:	00813823          	sd	s0,16(sp)
    80004e44:	00913423          	sd	s1,8(sp)
    80004e48:	01213023          	sd	s2,0(sp)
    80004e4c:	02010413          	addi	s0,sp,32
    80004e50:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004e54:	00100793          	li	a5,1
    80004e58:	02a7f863          	bgeu	a5,a0,80004e88 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004e5c:	00a00793          	li	a5,10
    80004e60:	02f577b3          	remu	a5,a0,a5
    80004e64:	02078e63          	beqz	a5,80004ea0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004e68:	fff48513          	addi	a0,s1,-1
    80004e6c:	00000097          	auipc	ra,0x0
    80004e70:	fcc080e7          	jalr	-52(ra) # 80004e38 <_ZL9fibonaccim>
    80004e74:	00050913          	mv	s2,a0
    80004e78:	ffe48513          	addi	a0,s1,-2
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	fbc080e7          	jalr	-68(ra) # 80004e38 <_ZL9fibonaccim>
    80004e84:	00a90533          	add	a0,s2,a0
}
    80004e88:	01813083          	ld	ra,24(sp)
    80004e8c:	01013403          	ld	s0,16(sp)
    80004e90:	00813483          	ld	s1,8(sp)
    80004e94:	00013903          	ld	s2,0(sp)
    80004e98:	02010113          	addi	sp,sp,32
    80004e9c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004ea0:	ffffc097          	auipc	ra,0xffffc
    80004ea4:	3cc080e7          	jalr	972(ra) # 8000126c <_Z15thread_dispatchv>
    80004ea8:	fc1ff06f          	j	80004e68 <_ZL9fibonaccim+0x30>

0000000080004eac <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00113c23          	sd	ra,24(sp)
    80004eb4:	00813823          	sd	s0,16(sp)
    80004eb8:	00913423          	sd	s1,8(sp)
    80004ebc:	01213023          	sd	s2,0(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ec4:	00a00493          	li	s1,10
    80004ec8:	0400006f          	j	80004f08 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ecc:	00005517          	auipc	a0,0x5
    80004ed0:	4e450513          	addi	a0,a0,1252 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80004ed4:	00001097          	auipc	ra,0x1
    80004ed8:	dc8080e7          	jalr	-568(ra) # 80005c9c <_Z11printStringPKc>
    80004edc:	00000613          	li	a2,0
    80004ee0:	00a00593          	li	a1,10
    80004ee4:	00048513          	mv	a0,s1
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	f64080e7          	jalr	-156(ra) # 80005e4c <_Z8printIntiii>
    80004ef0:	00005517          	auipc	a0,0x5
    80004ef4:	6e050513          	addi	a0,a0,1760 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	da4080e7          	jalr	-604(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f00:	0014849b          	addiw	s1,s1,1
    80004f04:	0ff4f493          	andi	s1,s1,255
    80004f08:	00c00793          	li	a5,12
    80004f0c:	fc97f0e3          	bgeu	a5,s1,80004ecc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004f10:	00005517          	auipc	a0,0x5
    80004f14:	4a850513          	addi	a0,a0,1192 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	d84080e7          	jalr	-636(ra) # 80005c9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f20:	00500313          	li	t1,5
    thread_dispatch();
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	348080e7          	jalr	840(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004f2c:	01000513          	li	a0,16
    80004f30:	00000097          	auipc	ra,0x0
    80004f34:	f08080e7          	jalr	-248(ra) # 80004e38 <_ZL9fibonaccim>
    80004f38:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004f3c:	00005517          	auipc	a0,0x5
    80004f40:	48c50513          	addi	a0,a0,1164 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	d58080e7          	jalr	-680(ra) # 80005c9c <_Z11printStringPKc>
    80004f4c:	00000613          	li	a2,0
    80004f50:	00a00593          	li	a1,10
    80004f54:	0009051b          	sext.w	a0,s2
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	ef4080e7          	jalr	-268(ra) # 80005e4c <_Z8printIntiii>
    80004f60:	00005517          	auipc	a0,0x5
    80004f64:	67050513          	addi	a0,a0,1648 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80004f68:	00001097          	auipc	ra,0x1
    80004f6c:	d34080e7          	jalr	-716(ra) # 80005c9c <_Z11printStringPKc>
    80004f70:	0400006f          	j	80004fb0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f74:	00005517          	auipc	a0,0x5
    80004f78:	43c50513          	addi	a0,a0,1084 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	d20080e7          	jalr	-736(ra) # 80005c9c <_Z11printStringPKc>
    80004f84:	00000613          	li	a2,0
    80004f88:	00a00593          	li	a1,10
    80004f8c:	00048513          	mv	a0,s1
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	ebc080e7          	jalr	-324(ra) # 80005e4c <_Z8printIntiii>
    80004f98:	00005517          	auipc	a0,0x5
    80004f9c:	63850513          	addi	a0,a0,1592 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	cfc080e7          	jalr	-772(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004fa8:	0014849b          	addiw	s1,s1,1
    80004fac:	0ff4f493          	andi	s1,s1,255
    80004fb0:	00f00793          	li	a5,15
    80004fb4:	fc97f0e3          	bgeu	a5,s1,80004f74 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004fb8:	00005517          	auipc	a0,0x5
    80004fbc:	42050513          	addi	a0,a0,1056 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	cdc080e7          	jalr	-804(ra) # 80005c9c <_Z11printStringPKc>
    finishedD = true;
    80004fc8:	00100793          	li	a5,1
    80004fcc:	00008717          	auipc	a4,0x8
    80004fd0:	b6f70e23          	sb	a5,-1156(a4) # 8000cb48 <_ZL9finishedD>
    thread_dispatch();
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	298080e7          	jalr	664(ra) # 8000126c <_Z15thread_dispatchv>
}
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	00013903          	ld	s2,0(sp)
    80004fec:	02010113          	addi	sp,sp,32
    80004ff0:	00008067          	ret

0000000080004ff4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ff4:	fe010113          	addi	sp,sp,-32
    80004ff8:	00113c23          	sd	ra,24(sp)
    80004ffc:	00813823          	sd	s0,16(sp)
    80005000:	00913423          	sd	s1,8(sp)
    80005004:	01213023          	sd	s2,0(sp)
    80005008:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000500c:	00000493          	li	s1,0
    80005010:	0400006f          	j	80005050 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005014:	00005517          	auipc	a0,0x5
    80005018:	36c50513          	addi	a0,a0,876 # 8000a380 <CONSOLE_STATUS+0x370>
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	c80080e7          	jalr	-896(ra) # 80005c9c <_Z11printStringPKc>
    80005024:	00000613          	li	a2,0
    80005028:	00a00593          	li	a1,10
    8000502c:	00048513          	mv	a0,s1
    80005030:	00001097          	auipc	ra,0x1
    80005034:	e1c080e7          	jalr	-484(ra) # 80005e4c <_Z8printIntiii>
    80005038:	00005517          	auipc	a0,0x5
    8000503c:	59850513          	addi	a0,a0,1432 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	c5c080e7          	jalr	-932(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005048:	0014849b          	addiw	s1,s1,1
    8000504c:	0ff4f493          	andi	s1,s1,255
    80005050:	00200793          	li	a5,2
    80005054:	fc97f0e3          	bgeu	a5,s1,80005014 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005058:	00005517          	auipc	a0,0x5
    8000505c:	33050513          	addi	a0,a0,816 # 8000a388 <CONSOLE_STATUS+0x378>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	c3c080e7          	jalr	-964(ra) # 80005c9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005068:	00700313          	li	t1,7
    thread_dispatch();
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	200080e7          	jalr	512(ra) # 8000126c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005074:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005078:	00005517          	auipc	a0,0x5
    8000507c:	32050513          	addi	a0,a0,800 # 8000a398 <CONSOLE_STATUS+0x388>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	c1c080e7          	jalr	-996(ra) # 80005c9c <_Z11printStringPKc>
    80005088:	00000613          	li	a2,0
    8000508c:	00a00593          	li	a1,10
    80005090:	0009051b          	sext.w	a0,s2
    80005094:	00001097          	auipc	ra,0x1
    80005098:	db8080e7          	jalr	-584(ra) # 80005e4c <_Z8printIntiii>
    8000509c:	00005517          	auipc	a0,0x5
    800050a0:	53450513          	addi	a0,a0,1332 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	bf8080e7          	jalr	-1032(ra) # 80005c9c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800050ac:	00c00513          	li	a0,12
    800050b0:	00000097          	auipc	ra,0x0
    800050b4:	d88080e7          	jalr	-632(ra) # 80004e38 <_ZL9fibonaccim>
    800050b8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800050bc:	00005517          	auipc	a0,0x5
    800050c0:	2e450513          	addi	a0,a0,740 # 8000a3a0 <CONSOLE_STATUS+0x390>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	bd8080e7          	jalr	-1064(ra) # 80005c9c <_Z11printStringPKc>
    800050cc:	00000613          	li	a2,0
    800050d0:	00a00593          	li	a1,10
    800050d4:	0009051b          	sext.w	a0,s2
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	d74080e7          	jalr	-652(ra) # 80005e4c <_Z8printIntiii>
    800050e0:	00005517          	auipc	a0,0x5
    800050e4:	4f050513          	addi	a0,a0,1264 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800050e8:	00001097          	auipc	ra,0x1
    800050ec:	bb4080e7          	jalr	-1100(ra) # 80005c9c <_Z11printStringPKc>
    800050f0:	0400006f          	j	80005130 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800050f4:	00005517          	auipc	a0,0x5
    800050f8:	28c50513          	addi	a0,a0,652 # 8000a380 <CONSOLE_STATUS+0x370>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	ba0080e7          	jalr	-1120(ra) # 80005c9c <_Z11printStringPKc>
    80005104:	00000613          	li	a2,0
    80005108:	00a00593          	li	a1,10
    8000510c:	00048513          	mv	a0,s1
    80005110:	00001097          	auipc	ra,0x1
    80005114:	d3c080e7          	jalr	-708(ra) # 80005e4c <_Z8printIntiii>
    80005118:	00005517          	auipc	a0,0x5
    8000511c:	4b850513          	addi	a0,a0,1208 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80005120:	00001097          	auipc	ra,0x1
    80005124:	b7c080e7          	jalr	-1156(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005128:	0014849b          	addiw	s1,s1,1
    8000512c:	0ff4f493          	andi	s1,s1,255
    80005130:	00500793          	li	a5,5
    80005134:	fc97f0e3          	bgeu	a5,s1,800050f4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005138:	00005517          	auipc	a0,0x5
    8000513c:	22050513          	addi	a0,a0,544 # 8000a358 <CONSOLE_STATUS+0x348>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	b5c080e7          	jalr	-1188(ra) # 80005c9c <_Z11printStringPKc>
    finishedC = true;
    80005148:	00100793          	li	a5,1
    8000514c:	00008717          	auipc	a4,0x8
    80005150:	9ef70ea3          	sb	a5,-1539(a4) # 8000cb49 <_ZL9finishedC>
    thread_dispatch();
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	118080e7          	jalr	280(ra) # 8000126c <_Z15thread_dispatchv>
}
    8000515c:	01813083          	ld	ra,24(sp)
    80005160:	01013403          	ld	s0,16(sp)
    80005164:	00813483          	ld	s1,8(sp)
    80005168:	00013903          	ld	s2,0(sp)
    8000516c:	02010113          	addi	sp,sp,32
    80005170:	00008067          	ret

0000000080005174 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005174:	fe010113          	addi	sp,sp,-32
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	00813823          	sd	s0,16(sp)
    80005180:	00913423          	sd	s1,8(sp)
    80005184:	01213023          	sd	s2,0(sp)
    80005188:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000518c:	00000913          	li	s2,0
    80005190:	0380006f          	j	800051c8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	0d8080e7          	jalr	216(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000519c:	00148493          	addi	s1,s1,1
    800051a0:	000027b7          	lui	a5,0x2
    800051a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051a8:	0097ee63          	bltu	a5,s1,800051c4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051ac:	00000713          	li	a4,0
    800051b0:	000077b7          	lui	a5,0x7
    800051b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051b8:	fce7eee3          	bltu	a5,a4,80005194 <_ZL11workerBodyBPv+0x20>
    800051bc:	00170713          	addi	a4,a4,1
    800051c0:	ff1ff06f          	j	800051b0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800051c4:	00190913          	addi	s2,s2,1
    800051c8:	00f00793          	li	a5,15
    800051cc:	0527e063          	bltu	a5,s2,8000520c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800051d0:	00005517          	auipc	a0,0x5
    800051d4:	19850513          	addi	a0,a0,408 # 8000a368 <CONSOLE_STATUS+0x358>
    800051d8:	00001097          	auipc	ra,0x1
    800051dc:	ac4080e7          	jalr	-1340(ra) # 80005c9c <_Z11printStringPKc>
    800051e0:	00000613          	li	a2,0
    800051e4:	00a00593          	li	a1,10
    800051e8:	0009051b          	sext.w	a0,s2
    800051ec:	00001097          	auipc	ra,0x1
    800051f0:	c60080e7          	jalr	-928(ra) # 80005e4c <_Z8printIntiii>
    800051f4:	00005517          	auipc	a0,0x5
    800051f8:	3dc50513          	addi	a0,a0,988 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800051fc:	00001097          	auipc	ra,0x1
    80005200:	aa0080e7          	jalr	-1376(ra) # 80005c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005204:	00000493          	li	s1,0
    80005208:	f99ff06f          	j	800051a0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000520c:	00005517          	auipc	a0,0x5
    80005210:	16450513          	addi	a0,a0,356 # 8000a370 <CONSOLE_STATUS+0x360>
    80005214:	00001097          	auipc	ra,0x1
    80005218:	a88080e7          	jalr	-1400(ra) # 80005c9c <_Z11printStringPKc>
    finishedB = true;
    8000521c:	00100793          	li	a5,1
    80005220:	00008717          	auipc	a4,0x8
    80005224:	92f70523          	sb	a5,-1750(a4) # 8000cb4a <_ZL9finishedB>
    thread_dispatch();
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	044080e7          	jalr	68(ra) # 8000126c <_Z15thread_dispatchv>
}
    80005230:	01813083          	ld	ra,24(sp)
    80005234:	01013403          	ld	s0,16(sp)
    80005238:	00813483          	ld	s1,8(sp)
    8000523c:	00013903          	ld	s2,0(sp)
    80005240:	02010113          	addi	sp,sp,32
    80005244:	00008067          	ret

0000000080005248 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005248:	fe010113          	addi	sp,sp,-32
    8000524c:	00113c23          	sd	ra,24(sp)
    80005250:	00813823          	sd	s0,16(sp)
    80005254:	00913423          	sd	s1,8(sp)
    80005258:	01213023          	sd	s2,0(sp)
    8000525c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005260:	00000913          	li	s2,0
    80005264:	0380006f          	j	8000529c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005268:	ffffc097          	auipc	ra,0xffffc
    8000526c:	004080e7          	jalr	4(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005270:	00148493          	addi	s1,s1,1
    80005274:	000027b7          	lui	a5,0x2
    80005278:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000527c:	0097ee63          	bltu	a5,s1,80005298 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005280:	00000713          	li	a4,0
    80005284:	000077b7          	lui	a5,0x7
    80005288:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000528c:	fce7eee3          	bltu	a5,a4,80005268 <_ZL11workerBodyAPv+0x20>
    80005290:	00170713          	addi	a4,a4,1
    80005294:	ff1ff06f          	j	80005284 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005298:	00190913          	addi	s2,s2,1
    8000529c:	00900793          	li	a5,9
    800052a0:	0527e063          	bltu	a5,s2,800052e0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800052a4:	00005517          	auipc	a0,0x5
    800052a8:	0ac50513          	addi	a0,a0,172 # 8000a350 <CONSOLE_STATUS+0x340>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	9f0080e7          	jalr	-1552(ra) # 80005c9c <_Z11printStringPKc>
    800052b4:	00000613          	li	a2,0
    800052b8:	00a00593          	li	a1,10
    800052bc:	0009051b          	sext.w	a0,s2
    800052c0:	00001097          	auipc	ra,0x1
    800052c4:	b8c080e7          	jalr	-1140(ra) # 80005e4c <_Z8printIntiii>
    800052c8:	00005517          	auipc	a0,0x5
    800052cc:	30850513          	addi	a0,a0,776 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	9cc080e7          	jalr	-1588(ra) # 80005c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800052d8:	00000493          	li	s1,0
    800052dc:	f99ff06f          	j	80005274 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800052e0:	00005517          	auipc	a0,0x5
    800052e4:	07850513          	addi	a0,a0,120 # 8000a358 <CONSOLE_STATUS+0x348>
    800052e8:	00001097          	auipc	ra,0x1
    800052ec:	9b4080e7          	jalr	-1612(ra) # 80005c9c <_Z11printStringPKc>
    finishedA = true;
    800052f0:	00100793          	li	a5,1
    800052f4:	00008717          	auipc	a4,0x8
    800052f8:	84f70ba3          	sb	a5,-1961(a4) # 8000cb4b <_ZL9finishedA>
}
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	00013903          	ld	s2,0(sp)
    8000530c:	02010113          	addi	sp,sp,32
    80005310:	00008067          	ret

0000000080005314 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005314:	fd010113          	addi	sp,sp,-48
    80005318:	02113423          	sd	ra,40(sp)
    8000531c:	02813023          	sd	s0,32(sp)
    80005320:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005324:	00000613          	li	a2,0
    80005328:	00000597          	auipc	a1,0x0
    8000532c:	f2058593          	addi	a1,a1,-224 # 80005248 <_ZL11workerBodyAPv>
    80005330:	fd040513          	addi	a0,s0,-48
    80005334:	ffffc097          	auipc	ra,0xffffc
    80005338:	e9c080e7          	jalr	-356(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000533c:	00005517          	auipc	a0,0x5
    80005340:	0ac50513          	addi	a0,a0,172 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80005344:	00001097          	auipc	ra,0x1
    80005348:	958080e7          	jalr	-1704(ra) # 80005c9c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000534c:	00000613          	li	a2,0
    80005350:	00000597          	auipc	a1,0x0
    80005354:	e2458593          	addi	a1,a1,-476 # 80005174 <_ZL11workerBodyBPv>
    80005358:	fd840513          	addi	a0,s0,-40
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	e74080e7          	jalr	-396(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005364:	00005517          	auipc	a0,0x5
    80005368:	09c50513          	addi	a0,a0,156 # 8000a400 <CONSOLE_STATUS+0x3f0>
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	930080e7          	jalr	-1744(ra) # 80005c9c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005374:	00000613          	li	a2,0
    80005378:	00000597          	auipc	a1,0x0
    8000537c:	c7c58593          	addi	a1,a1,-900 # 80004ff4 <_ZL11workerBodyCPv>
    80005380:	fe040513          	addi	a0,s0,-32
    80005384:	ffffc097          	auipc	ra,0xffffc
    80005388:	e4c080e7          	jalr	-436(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000538c:	00005517          	auipc	a0,0x5
    80005390:	08c50513          	addi	a0,a0,140 # 8000a418 <CONSOLE_STATUS+0x408>
    80005394:	00001097          	auipc	ra,0x1
    80005398:	908080e7          	jalr	-1784(ra) # 80005c9c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000539c:	00000613          	li	a2,0
    800053a0:	00000597          	auipc	a1,0x0
    800053a4:	b0c58593          	addi	a1,a1,-1268 # 80004eac <_ZL11workerBodyDPv>
    800053a8:	fe840513          	addi	a0,s0,-24
    800053ac:	ffffc097          	auipc	ra,0xffffc
    800053b0:	e24080e7          	jalr	-476(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800053b4:	00005517          	auipc	a0,0x5
    800053b8:	07c50513          	addi	a0,a0,124 # 8000a430 <CONSOLE_STATUS+0x420>
    800053bc:	00001097          	auipc	ra,0x1
    800053c0:	8e0080e7          	jalr	-1824(ra) # 80005c9c <_Z11printStringPKc>
    800053c4:	00c0006f          	j	800053d0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800053c8:	ffffc097          	auipc	ra,0xffffc
    800053cc:	ea4080e7          	jalr	-348(ra) # 8000126c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800053d0:	00007797          	auipc	a5,0x7
    800053d4:	77b7c783          	lbu	a5,1915(a5) # 8000cb4b <_ZL9finishedA>
    800053d8:	fe0788e3          	beqz	a5,800053c8 <_Z18Threads_C_API_testv+0xb4>
    800053dc:	00007797          	auipc	a5,0x7
    800053e0:	76e7c783          	lbu	a5,1902(a5) # 8000cb4a <_ZL9finishedB>
    800053e4:	fe0782e3          	beqz	a5,800053c8 <_Z18Threads_C_API_testv+0xb4>
    800053e8:	00007797          	auipc	a5,0x7
    800053ec:	7617c783          	lbu	a5,1889(a5) # 8000cb49 <_ZL9finishedC>
    800053f0:	fc078ce3          	beqz	a5,800053c8 <_Z18Threads_C_API_testv+0xb4>
    800053f4:	00007797          	auipc	a5,0x7
    800053f8:	7547c783          	lbu	a5,1876(a5) # 8000cb48 <_ZL9finishedD>
    800053fc:	fc0786e3          	beqz	a5,800053c8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005400:	02813083          	ld	ra,40(sp)
    80005404:	02013403          	ld	s0,32(sp)
    80005408:	03010113          	addi	sp,sp,48
    8000540c:	00008067          	ret

0000000080005410 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005410:	fd010113          	addi	sp,sp,-48
    80005414:	02113423          	sd	ra,40(sp)
    80005418:	02813023          	sd	s0,32(sp)
    8000541c:	00913c23          	sd	s1,24(sp)
    80005420:	01213823          	sd	s2,16(sp)
    80005424:	01313423          	sd	s3,8(sp)
    80005428:	03010413          	addi	s0,sp,48
    8000542c:	00050993          	mv	s3,a0
    80005430:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005434:	00000913          	li	s2,0
    80005438:	00c0006f          	j	80005444 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	120080e7          	jalr	288(ra) # 8000255c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005444:	ffffc097          	auipc	ra,0xffffc
    80005448:	fb4080e7          	jalr	-76(ra) # 800013f8 <_Z4getcv>
    8000544c:	0005059b          	sext.w	a1,a0
    80005450:	01b00793          	li	a5,27
    80005454:	02f58a63          	beq	a1,a5,80005488 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005458:	0084b503          	ld	a0,8(s1)
    8000545c:	00001097          	auipc	ra,0x1
    80005460:	c64080e7          	jalr	-924(ra) # 800060c0 <_ZN9BufferCPP3putEi>
        i++;
    80005464:	0019071b          	addiw	a4,s2,1
    80005468:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000546c:	0004a683          	lw	a3,0(s1)
    80005470:	0026979b          	slliw	a5,a3,0x2
    80005474:	00d787bb          	addw	a5,a5,a3
    80005478:	0017979b          	slliw	a5,a5,0x1
    8000547c:	02f767bb          	remw	a5,a4,a5
    80005480:	fc0792e3          	bnez	a5,80005444 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005484:	fb9ff06f          	j	8000543c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005488:	00100793          	li	a5,1
    8000548c:	00007717          	auipc	a4,0x7
    80005490:	6cf72223          	sw	a5,1732(a4) # 8000cb50 <_ZL9threadEnd>
    td->buffer->put('!');
    80005494:	0209b783          	ld	a5,32(s3)
    80005498:	02100593          	li	a1,33
    8000549c:	0087b503          	ld	a0,8(a5)
    800054a0:	00001097          	auipc	ra,0x1
    800054a4:	c20080e7          	jalr	-992(ra) # 800060c0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800054a8:	0104b503          	ld	a0,16(s1)
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	1dc080e7          	jalr	476(ra) # 80002688 <_ZN9Semaphore6signalEv>
}
    800054b4:	02813083          	ld	ra,40(sp)
    800054b8:	02013403          	ld	s0,32(sp)
    800054bc:	01813483          	ld	s1,24(sp)
    800054c0:	01013903          	ld	s2,16(sp)
    800054c4:	00813983          	ld	s3,8(sp)
    800054c8:	03010113          	addi	sp,sp,48
    800054cc:	00008067          	ret

00000000800054d0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800054d0:	fe010113          	addi	sp,sp,-32
    800054d4:	00113c23          	sd	ra,24(sp)
    800054d8:	00813823          	sd	s0,16(sp)
    800054dc:	00913423          	sd	s1,8(sp)
    800054e0:	01213023          	sd	s2,0(sp)
    800054e4:	02010413          	addi	s0,sp,32
    800054e8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054ec:	00000913          	li	s2,0
    800054f0:	00c0006f          	j	800054fc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800054f4:	ffffd097          	auipc	ra,0xffffd
    800054f8:	068080e7          	jalr	104(ra) # 8000255c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800054fc:	00007797          	auipc	a5,0x7
    80005500:	6547a783          	lw	a5,1620(a5) # 8000cb50 <_ZL9threadEnd>
    80005504:	02079e63          	bnez	a5,80005540 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005508:	0004a583          	lw	a1,0(s1)
    8000550c:	0305859b          	addiw	a1,a1,48
    80005510:	0084b503          	ld	a0,8(s1)
    80005514:	00001097          	auipc	ra,0x1
    80005518:	bac080e7          	jalr	-1108(ra) # 800060c0 <_ZN9BufferCPP3putEi>
        i++;
    8000551c:	0019071b          	addiw	a4,s2,1
    80005520:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005524:	0004a683          	lw	a3,0(s1)
    80005528:	0026979b          	slliw	a5,a3,0x2
    8000552c:	00d787bb          	addw	a5,a5,a3
    80005530:	0017979b          	slliw	a5,a5,0x1
    80005534:	02f767bb          	remw	a5,a4,a5
    80005538:	fc0792e3          	bnez	a5,800054fc <_ZN12ProducerSync8producerEPv+0x2c>
    8000553c:	fb9ff06f          	j	800054f4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005540:	0104b503          	ld	a0,16(s1)
    80005544:	ffffd097          	auipc	ra,0xffffd
    80005548:	144080e7          	jalr	324(ra) # 80002688 <_ZN9Semaphore6signalEv>
}
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	00013903          	ld	s2,0(sp)
    8000555c:	02010113          	addi	sp,sp,32
    80005560:	00008067          	ret

0000000080005564 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005564:	fd010113          	addi	sp,sp,-48
    80005568:	02113423          	sd	ra,40(sp)
    8000556c:	02813023          	sd	s0,32(sp)
    80005570:	00913c23          	sd	s1,24(sp)
    80005574:	01213823          	sd	s2,16(sp)
    80005578:	01313423          	sd	s3,8(sp)
    8000557c:	01413023          	sd	s4,0(sp)
    80005580:	03010413          	addi	s0,sp,48
    80005584:	00050993          	mv	s3,a0
    80005588:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000558c:	00000a13          	li	s4,0
    80005590:	01c0006f          	j	800055ac <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	fc8080e7          	jalr	-56(ra) # 8000255c <_ZN6Thread8dispatchEv>
    8000559c:	0500006f          	j	800055ec <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800055a0:	00a00513          	li	a0,10
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	ea4080e7          	jalr	-348(ra) # 80001448 <_Z4putcc>
    while (!threadEnd) {
    800055ac:	00007797          	auipc	a5,0x7
    800055b0:	5a47a783          	lw	a5,1444(a5) # 8000cb50 <_ZL9threadEnd>
    800055b4:	06079263          	bnez	a5,80005618 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800055b8:	00893503          	ld	a0,8(s2)
    800055bc:	00001097          	auipc	ra,0x1
    800055c0:	b94080e7          	jalr	-1132(ra) # 80006150 <_ZN9BufferCPP3getEv>
        i++;
    800055c4:	001a049b          	addiw	s1,s4,1
    800055c8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800055cc:	0ff57513          	andi	a0,a0,255
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	e78080e7          	jalr	-392(ra) # 80001448 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800055d8:	00092703          	lw	a4,0(s2)
    800055dc:	0027179b          	slliw	a5,a4,0x2
    800055e0:	00e787bb          	addw	a5,a5,a4
    800055e4:	02f4e7bb          	remw	a5,s1,a5
    800055e8:	fa0786e3          	beqz	a5,80005594 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800055ec:	05000793          	li	a5,80
    800055f0:	02f4e4bb          	remw	s1,s1,a5
    800055f4:	fa049ce3          	bnez	s1,800055ac <_ZN12ConsumerSync8consumerEPv+0x48>
    800055f8:	fa9ff06f          	j	800055a0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800055fc:	0209b783          	ld	a5,32(s3)
    80005600:	0087b503          	ld	a0,8(a5)
    80005604:	00001097          	auipc	ra,0x1
    80005608:	b4c080e7          	jalr	-1204(ra) # 80006150 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000560c:	0ff57513          	andi	a0,a0,255
    80005610:	ffffd097          	auipc	ra,0xffffd
    80005614:	0cc080e7          	jalr	204(ra) # 800026dc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005618:	0209b783          	ld	a5,32(s3)
    8000561c:	0087b503          	ld	a0,8(a5)
    80005620:	00001097          	auipc	ra,0x1
    80005624:	bbc080e7          	jalr	-1092(ra) # 800061dc <_ZN9BufferCPP6getCntEv>
    80005628:	fca04ae3          	bgtz	a0,800055fc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000562c:	01093503          	ld	a0,16(s2)
    80005630:	ffffd097          	auipc	ra,0xffffd
    80005634:	058080e7          	jalr	88(ra) # 80002688 <_ZN9Semaphore6signalEv>
}
    80005638:	02813083          	ld	ra,40(sp)
    8000563c:	02013403          	ld	s0,32(sp)
    80005640:	01813483          	ld	s1,24(sp)
    80005644:	01013903          	ld	s2,16(sp)
    80005648:	00813983          	ld	s3,8(sp)
    8000564c:	00013a03          	ld	s4,0(sp)
    80005650:	03010113          	addi	sp,sp,48
    80005654:	00008067          	ret

0000000080005658 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005658:	f8010113          	addi	sp,sp,-128
    8000565c:	06113c23          	sd	ra,120(sp)
    80005660:	06813823          	sd	s0,112(sp)
    80005664:	06913423          	sd	s1,104(sp)
    80005668:	07213023          	sd	s2,96(sp)
    8000566c:	05313c23          	sd	s3,88(sp)
    80005670:	05413823          	sd	s4,80(sp)
    80005674:	05513423          	sd	s5,72(sp)
    80005678:	05613023          	sd	s6,64(sp)
    8000567c:	03713c23          	sd	s7,56(sp)
    80005680:	03813823          	sd	s8,48(sp)
    80005684:	03913423          	sd	s9,40(sp)
    80005688:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000568c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005690:	00005517          	auipc	a0,0x5
    80005694:	bd850513          	addi	a0,a0,-1064 # 8000a268 <CONSOLE_STATUS+0x258>
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	604080e7          	jalr	1540(ra) # 80005c9c <_Z11printStringPKc>
    getString(input, 30);
    800056a0:	01e00593          	li	a1,30
    800056a4:	f8040493          	addi	s1,s0,-128
    800056a8:	00048513          	mv	a0,s1
    800056ac:	00000097          	auipc	ra,0x0
    800056b0:	678080e7          	jalr	1656(ra) # 80005d24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800056b4:	00048513          	mv	a0,s1
    800056b8:	00000097          	auipc	ra,0x0
    800056bc:	744080e7          	jalr	1860(ra) # 80005dfc <_Z11stringToIntPKc>
    800056c0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800056c4:	00005517          	auipc	a0,0x5
    800056c8:	bc450513          	addi	a0,a0,-1084 # 8000a288 <CONSOLE_STATUS+0x278>
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	5d0080e7          	jalr	1488(ra) # 80005c9c <_Z11printStringPKc>
    getString(input, 30);
    800056d4:	01e00593          	li	a1,30
    800056d8:	00048513          	mv	a0,s1
    800056dc:	00000097          	auipc	ra,0x0
    800056e0:	648080e7          	jalr	1608(ra) # 80005d24 <_Z9getStringPci>
    n = stringToInt(input);
    800056e4:	00048513          	mv	a0,s1
    800056e8:	00000097          	auipc	ra,0x0
    800056ec:	714080e7          	jalr	1812(ra) # 80005dfc <_Z11stringToIntPKc>
    800056f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800056f4:	00005517          	auipc	a0,0x5
    800056f8:	bb450513          	addi	a0,a0,-1100 # 8000a2a8 <CONSOLE_STATUS+0x298>
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	5a0080e7          	jalr	1440(ra) # 80005c9c <_Z11printStringPKc>
    80005704:	00000613          	li	a2,0
    80005708:	00a00593          	li	a1,10
    8000570c:	00090513          	mv	a0,s2
    80005710:	00000097          	auipc	ra,0x0
    80005714:	73c080e7          	jalr	1852(ra) # 80005e4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005718:	00005517          	auipc	a0,0x5
    8000571c:	ba850513          	addi	a0,a0,-1112 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80005720:	00000097          	auipc	ra,0x0
    80005724:	57c080e7          	jalr	1404(ra) # 80005c9c <_Z11printStringPKc>
    80005728:	00000613          	li	a2,0
    8000572c:	00a00593          	li	a1,10
    80005730:	00048513          	mv	a0,s1
    80005734:	00000097          	auipc	ra,0x0
    80005738:	718080e7          	jalr	1816(ra) # 80005e4c <_Z8printIntiii>
    printString(".\n");
    8000573c:	00005517          	auipc	a0,0x5
    80005740:	b9c50513          	addi	a0,a0,-1124 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80005744:	00000097          	auipc	ra,0x0
    80005748:	558080e7          	jalr	1368(ra) # 80005c9c <_Z11printStringPKc>
    if(threadNum > n) {
    8000574c:	0324c463          	blt	s1,s2,80005774 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005750:	03205c63          	blez	s2,80005788 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005754:	03800513          	li	a0,56
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	cbc080e7          	jalr	-836(ra) # 80002414 <_Znwm>
    80005760:	00050a93          	mv	s5,a0
    80005764:	00048593          	mv	a1,s1
    80005768:	00001097          	auipc	ra,0x1
    8000576c:	804080e7          	jalr	-2044(ra) # 80005f6c <_ZN9BufferCPPC1Ei>
    80005770:	0300006f          	j	800057a0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005774:	00005517          	auipc	a0,0x5
    80005778:	b6c50513          	addi	a0,a0,-1172 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	520080e7          	jalr	1312(ra) # 80005c9c <_Z11printStringPKc>
        return;
    80005784:	0140006f          	j	80005798 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005788:	00005517          	auipc	a0,0x5
    8000578c:	b9850513          	addi	a0,a0,-1128 # 8000a320 <CONSOLE_STATUS+0x310>
    80005790:	00000097          	auipc	ra,0x0
    80005794:	50c080e7          	jalr	1292(ra) # 80005c9c <_Z11printStringPKc>
        return;
    80005798:	000b8113          	mv	sp,s7
    8000579c:	2380006f          	j	800059d4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800057a0:	01000513          	li	a0,16
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	c70080e7          	jalr	-912(ra) # 80002414 <_Znwm>
    800057ac:	00050493          	mv	s1,a0
    800057b0:	00000593          	li	a1,0
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	e70080e7          	jalr	-400(ra) # 80002624 <_ZN9SemaphoreC1Ej>
    800057bc:	00007797          	auipc	a5,0x7
    800057c0:	3897be23          	sd	s1,924(a5) # 8000cb58 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800057c4:	00391793          	slli	a5,s2,0x3
    800057c8:	00f78793          	addi	a5,a5,15
    800057cc:	ff07f793          	andi	a5,a5,-16
    800057d0:	40f10133          	sub	sp,sp,a5
    800057d4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800057d8:	0019071b          	addiw	a4,s2,1
    800057dc:	00171793          	slli	a5,a4,0x1
    800057e0:	00e787b3          	add	a5,a5,a4
    800057e4:	00379793          	slli	a5,a5,0x3
    800057e8:	00f78793          	addi	a5,a5,15
    800057ec:	ff07f793          	andi	a5,a5,-16
    800057f0:	40f10133          	sub	sp,sp,a5
    800057f4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800057f8:	00191c13          	slli	s8,s2,0x1
    800057fc:	012c07b3          	add	a5,s8,s2
    80005800:	00379793          	slli	a5,a5,0x3
    80005804:	00fa07b3          	add	a5,s4,a5
    80005808:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000580c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005810:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005814:	02800513          	li	a0,40
    80005818:	ffffd097          	auipc	ra,0xffffd
    8000581c:	bfc080e7          	jalr	-1028(ra) # 80002414 <_Znwm>
    80005820:	00050b13          	mv	s6,a0
    80005824:	012c0c33          	add	s8,s8,s2
    80005828:	003c1c13          	slli	s8,s8,0x3
    8000582c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	d70080e7          	jalr	-656(ra) # 800025a0 <_ZN6ThreadC1Ev>
    80005838:	00007797          	auipc	a5,0x7
    8000583c:	19878793          	addi	a5,a5,408 # 8000c9d0 <_ZTV12ConsumerSync+0x10>
    80005840:	00fb3023          	sd	a5,0(s6)
    80005844:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005848:	000b0513          	mv	a0,s6
    8000584c:	ffffd097          	auipc	ra,0xffffd
    80005850:	c80080e7          	jalr	-896(ra) # 800024cc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005854:	00000493          	li	s1,0
    80005858:	0380006f          	j	80005890 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000585c:	00007797          	auipc	a5,0x7
    80005860:	14c78793          	addi	a5,a5,332 # 8000c9a8 <_ZTV12ProducerSync+0x10>
    80005864:	00fcb023          	sd	a5,0(s9)
    80005868:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000586c:	00349793          	slli	a5,s1,0x3
    80005870:	00f987b3          	add	a5,s3,a5
    80005874:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005878:	00349793          	slli	a5,s1,0x3
    8000587c:	00f987b3          	add	a5,s3,a5
    80005880:	0007b503          	ld	a0,0(a5)
    80005884:	ffffd097          	auipc	ra,0xffffd
    80005888:	c48080e7          	jalr	-952(ra) # 800024cc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000588c:	0014849b          	addiw	s1,s1,1
    80005890:	0b24d063          	bge	s1,s2,80005930 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005894:	00149793          	slli	a5,s1,0x1
    80005898:	009787b3          	add	a5,a5,s1
    8000589c:	00379793          	slli	a5,a5,0x3
    800058a0:	00fa07b3          	add	a5,s4,a5
    800058a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800058a8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800058ac:	00007717          	auipc	a4,0x7
    800058b0:	2ac73703          	ld	a4,684(a4) # 8000cb58 <_ZL10waitForAll>
    800058b4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800058b8:	02905863          	blez	s1,800058e8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800058bc:	02800513          	li	a0,40
    800058c0:	ffffd097          	auipc	ra,0xffffd
    800058c4:	b54080e7          	jalr	-1196(ra) # 80002414 <_Znwm>
    800058c8:	00050c93          	mv	s9,a0
    800058cc:	00149c13          	slli	s8,s1,0x1
    800058d0:	009c0c33          	add	s8,s8,s1
    800058d4:	003c1c13          	slli	s8,s8,0x3
    800058d8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	cc4080e7          	jalr	-828(ra) # 800025a0 <_ZN6ThreadC1Ev>
    800058e4:	f79ff06f          	j	8000585c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800058e8:	02800513          	li	a0,40
    800058ec:	ffffd097          	auipc	ra,0xffffd
    800058f0:	b28080e7          	jalr	-1240(ra) # 80002414 <_Znwm>
    800058f4:	00050c93          	mv	s9,a0
    800058f8:	00149c13          	slli	s8,s1,0x1
    800058fc:	009c0c33          	add	s8,s8,s1
    80005900:	003c1c13          	slli	s8,s8,0x3
    80005904:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005908:	ffffd097          	auipc	ra,0xffffd
    8000590c:	c98080e7          	jalr	-872(ra) # 800025a0 <_ZN6ThreadC1Ev>
    80005910:	00007797          	auipc	a5,0x7
    80005914:	07078793          	addi	a5,a5,112 # 8000c980 <_ZTV16ProducerKeyboard+0x10>
    80005918:	00fcb023          	sd	a5,0(s9)
    8000591c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005920:	00349793          	slli	a5,s1,0x3
    80005924:	00f987b3          	add	a5,s3,a5
    80005928:	0197b023          	sd	s9,0(a5)
    8000592c:	f4dff06f          	j	80005878 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005930:	ffffd097          	auipc	ra,0xffffd
    80005934:	c2c080e7          	jalr	-980(ra) # 8000255c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005938:	00000493          	li	s1,0
    8000593c:	00994e63          	blt	s2,s1,80005958 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005940:	00007517          	auipc	a0,0x7
    80005944:	21853503          	ld	a0,536(a0) # 8000cb58 <_ZL10waitForAll>
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	d14080e7          	jalr	-748(ra) # 8000265c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005950:	0014849b          	addiw	s1,s1,1
    80005954:	fe9ff06f          	j	8000593c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005958:	00000493          	li	s1,0
    8000595c:	0080006f          	j	80005964 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005960:	0014849b          	addiw	s1,s1,1
    80005964:	0324d263          	bge	s1,s2,80005988 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005968:	00349793          	slli	a5,s1,0x3
    8000596c:	00f987b3          	add	a5,s3,a5
    80005970:	0007b503          	ld	a0,0(a5)
    80005974:	fe0506e3          	beqz	a0,80005960 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005978:	00053783          	ld	a5,0(a0)
    8000597c:	0087b783          	ld	a5,8(a5)
    80005980:	000780e7          	jalr	a5
    80005984:	fddff06f          	j	80005960 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005988:	000b0a63          	beqz	s6,8000599c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000598c:	000b3783          	ld	a5,0(s6)
    80005990:	0087b783          	ld	a5,8(a5)
    80005994:	000b0513          	mv	a0,s6
    80005998:	000780e7          	jalr	a5
    delete waitForAll;
    8000599c:	00007517          	auipc	a0,0x7
    800059a0:	1bc53503          	ld	a0,444(a0) # 8000cb58 <_ZL10waitForAll>
    800059a4:	00050863          	beqz	a0,800059b4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800059a8:	00053783          	ld	a5,0(a0)
    800059ac:	0087b783          	ld	a5,8(a5)
    800059b0:	000780e7          	jalr	a5
    delete buffer;
    800059b4:	000a8e63          	beqz	s5,800059d0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800059b8:	000a8513          	mv	a0,s5
    800059bc:	00001097          	auipc	ra,0x1
    800059c0:	8a8080e7          	jalr	-1880(ra) # 80006264 <_ZN9BufferCPPD1Ev>
    800059c4:	000a8513          	mv	a0,s5
    800059c8:	ffffd097          	auipc	ra,0xffffd
    800059cc:	a74080e7          	jalr	-1420(ra) # 8000243c <_ZdlPv>
    800059d0:	000b8113          	mv	sp,s7

}
    800059d4:	f8040113          	addi	sp,s0,-128
    800059d8:	07813083          	ld	ra,120(sp)
    800059dc:	07013403          	ld	s0,112(sp)
    800059e0:	06813483          	ld	s1,104(sp)
    800059e4:	06013903          	ld	s2,96(sp)
    800059e8:	05813983          	ld	s3,88(sp)
    800059ec:	05013a03          	ld	s4,80(sp)
    800059f0:	04813a83          	ld	s5,72(sp)
    800059f4:	04013b03          	ld	s6,64(sp)
    800059f8:	03813b83          	ld	s7,56(sp)
    800059fc:	03013c03          	ld	s8,48(sp)
    80005a00:	02813c83          	ld	s9,40(sp)
    80005a04:	08010113          	addi	sp,sp,128
    80005a08:	00008067          	ret
    80005a0c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005a10:	000a8513          	mv	a0,s5
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	a28080e7          	jalr	-1496(ra) # 8000243c <_ZdlPv>
    80005a1c:	00048513          	mv	a0,s1
    80005a20:	00008097          	auipc	ra,0x8
    80005a24:	218080e7          	jalr	536(ra) # 8000dc38 <_Unwind_Resume>
    80005a28:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	ffffd097          	auipc	ra,0xffffd
    80005a34:	a0c080e7          	jalr	-1524(ra) # 8000243c <_ZdlPv>
    80005a38:	00090513          	mv	a0,s2
    80005a3c:	00008097          	auipc	ra,0x8
    80005a40:	1fc080e7          	jalr	508(ra) # 8000dc38 <_Unwind_Resume>
    80005a44:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005a48:	000b0513          	mv	a0,s6
    80005a4c:	ffffd097          	auipc	ra,0xffffd
    80005a50:	9f0080e7          	jalr	-1552(ra) # 8000243c <_ZdlPv>
    80005a54:	00048513          	mv	a0,s1
    80005a58:	00008097          	auipc	ra,0x8
    80005a5c:	1e0080e7          	jalr	480(ra) # 8000dc38 <_Unwind_Resume>
    80005a60:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005a64:	000c8513          	mv	a0,s9
    80005a68:	ffffd097          	auipc	ra,0xffffd
    80005a6c:	9d4080e7          	jalr	-1580(ra) # 8000243c <_ZdlPv>
    80005a70:	00048513          	mv	a0,s1
    80005a74:	00008097          	auipc	ra,0x8
    80005a78:	1c4080e7          	jalr	452(ra) # 8000dc38 <_Unwind_Resume>
    80005a7c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005a80:	000c8513          	mv	a0,s9
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	9b8080e7          	jalr	-1608(ra) # 8000243c <_ZdlPv>
    80005a8c:	00048513          	mv	a0,s1
    80005a90:	00008097          	auipc	ra,0x8
    80005a94:	1a8080e7          	jalr	424(ra) # 8000dc38 <_Unwind_Resume>

0000000080005a98 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005a98:	ff010113          	addi	sp,sp,-16
    80005a9c:	00113423          	sd	ra,8(sp)
    80005aa0:	00813023          	sd	s0,0(sp)
    80005aa4:	01010413          	addi	s0,sp,16
    80005aa8:	00007797          	auipc	a5,0x7
    80005aac:	f2878793          	addi	a5,a5,-216 # 8000c9d0 <_ZTV12ConsumerSync+0x10>
    80005ab0:	00f53023          	sd	a5,0(a0)
    80005ab4:	ffffd097          	auipc	ra,0xffffd
    80005ab8:	8e4080e7          	jalr	-1820(ra) # 80002398 <_ZN6ThreadD1Ev>
    80005abc:	00813083          	ld	ra,8(sp)
    80005ac0:	00013403          	ld	s0,0(sp)
    80005ac4:	01010113          	addi	sp,sp,16
    80005ac8:	00008067          	ret

0000000080005acc <_ZN12ConsumerSyncD0Ev>:
    80005acc:	fe010113          	addi	sp,sp,-32
    80005ad0:	00113c23          	sd	ra,24(sp)
    80005ad4:	00813823          	sd	s0,16(sp)
    80005ad8:	00913423          	sd	s1,8(sp)
    80005adc:	02010413          	addi	s0,sp,32
    80005ae0:	00050493          	mv	s1,a0
    80005ae4:	00007797          	auipc	a5,0x7
    80005ae8:	eec78793          	addi	a5,a5,-276 # 8000c9d0 <_ZTV12ConsumerSync+0x10>
    80005aec:	00f53023          	sd	a5,0(a0)
    80005af0:	ffffd097          	auipc	ra,0xffffd
    80005af4:	8a8080e7          	jalr	-1880(ra) # 80002398 <_ZN6ThreadD1Ev>
    80005af8:	00048513          	mv	a0,s1
    80005afc:	ffffd097          	auipc	ra,0xffffd
    80005b00:	940080e7          	jalr	-1728(ra) # 8000243c <_ZdlPv>
    80005b04:	01813083          	ld	ra,24(sp)
    80005b08:	01013403          	ld	s0,16(sp)
    80005b0c:	00813483          	ld	s1,8(sp)
    80005b10:	02010113          	addi	sp,sp,32
    80005b14:	00008067          	ret

0000000080005b18 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005b18:	ff010113          	addi	sp,sp,-16
    80005b1c:	00113423          	sd	ra,8(sp)
    80005b20:	00813023          	sd	s0,0(sp)
    80005b24:	01010413          	addi	s0,sp,16
    80005b28:	00007797          	auipc	a5,0x7
    80005b2c:	e8078793          	addi	a5,a5,-384 # 8000c9a8 <_ZTV12ProducerSync+0x10>
    80005b30:	00f53023          	sd	a5,0(a0)
    80005b34:	ffffd097          	auipc	ra,0xffffd
    80005b38:	864080e7          	jalr	-1948(ra) # 80002398 <_ZN6ThreadD1Ev>
    80005b3c:	00813083          	ld	ra,8(sp)
    80005b40:	00013403          	ld	s0,0(sp)
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00008067          	ret

0000000080005b4c <_ZN12ProducerSyncD0Ev>:
    80005b4c:	fe010113          	addi	sp,sp,-32
    80005b50:	00113c23          	sd	ra,24(sp)
    80005b54:	00813823          	sd	s0,16(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	02010413          	addi	s0,sp,32
    80005b60:	00050493          	mv	s1,a0
    80005b64:	00007797          	auipc	a5,0x7
    80005b68:	e4478793          	addi	a5,a5,-444 # 8000c9a8 <_ZTV12ProducerSync+0x10>
    80005b6c:	00f53023          	sd	a5,0(a0)
    80005b70:	ffffd097          	auipc	ra,0xffffd
    80005b74:	828080e7          	jalr	-2008(ra) # 80002398 <_ZN6ThreadD1Ev>
    80005b78:	00048513          	mv	a0,s1
    80005b7c:	ffffd097          	auipc	ra,0xffffd
    80005b80:	8c0080e7          	jalr	-1856(ra) # 8000243c <_ZdlPv>
    80005b84:	01813083          	ld	ra,24(sp)
    80005b88:	01013403          	ld	s0,16(sp)
    80005b8c:	00813483          	ld	s1,8(sp)
    80005b90:	02010113          	addi	sp,sp,32
    80005b94:	00008067          	ret

0000000080005b98 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005b98:	ff010113          	addi	sp,sp,-16
    80005b9c:	00113423          	sd	ra,8(sp)
    80005ba0:	00813023          	sd	s0,0(sp)
    80005ba4:	01010413          	addi	s0,sp,16
    80005ba8:	00007797          	auipc	a5,0x7
    80005bac:	dd878793          	addi	a5,a5,-552 # 8000c980 <_ZTV16ProducerKeyboard+0x10>
    80005bb0:	00f53023          	sd	a5,0(a0)
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	7e4080e7          	jalr	2020(ra) # 80002398 <_ZN6ThreadD1Ev>
    80005bbc:	00813083          	ld	ra,8(sp)
    80005bc0:	00013403          	ld	s0,0(sp)
    80005bc4:	01010113          	addi	sp,sp,16
    80005bc8:	00008067          	ret

0000000080005bcc <_ZN16ProducerKeyboardD0Ev>:
    80005bcc:	fe010113          	addi	sp,sp,-32
    80005bd0:	00113c23          	sd	ra,24(sp)
    80005bd4:	00813823          	sd	s0,16(sp)
    80005bd8:	00913423          	sd	s1,8(sp)
    80005bdc:	02010413          	addi	s0,sp,32
    80005be0:	00050493          	mv	s1,a0
    80005be4:	00007797          	auipc	a5,0x7
    80005be8:	d9c78793          	addi	a5,a5,-612 # 8000c980 <_ZTV16ProducerKeyboard+0x10>
    80005bec:	00f53023          	sd	a5,0(a0)
    80005bf0:	ffffc097          	auipc	ra,0xffffc
    80005bf4:	7a8080e7          	jalr	1960(ra) # 80002398 <_ZN6ThreadD1Ev>
    80005bf8:	00048513          	mv	a0,s1
    80005bfc:	ffffd097          	auipc	ra,0xffffd
    80005c00:	840080e7          	jalr	-1984(ra) # 8000243c <_ZdlPv>
    80005c04:	01813083          	ld	ra,24(sp)
    80005c08:	01013403          	ld	s0,16(sp)
    80005c0c:	00813483          	ld	s1,8(sp)
    80005c10:	02010113          	addi	sp,sp,32
    80005c14:	00008067          	ret

0000000080005c18 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005c18:	ff010113          	addi	sp,sp,-16
    80005c1c:	00113423          	sd	ra,8(sp)
    80005c20:	00813023          	sd	s0,0(sp)
    80005c24:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005c28:	02053583          	ld	a1,32(a0)
    80005c2c:	fffff097          	auipc	ra,0xfffff
    80005c30:	7e4080e7          	jalr	2020(ra) # 80005410 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005c34:	00813083          	ld	ra,8(sp)
    80005c38:	00013403          	ld	s0,0(sp)
    80005c3c:	01010113          	addi	sp,sp,16
    80005c40:	00008067          	ret

0000000080005c44 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005c44:	ff010113          	addi	sp,sp,-16
    80005c48:	00113423          	sd	ra,8(sp)
    80005c4c:	00813023          	sd	s0,0(sp)
    80005c50:	01010413          	addi	s0,sp,16
        producer(td);
    80005c54:	02053583          	ld	a1,32(a0)
    80005c58:	00000097          	auipc	ra,0x0
    80005c5c:	878080e7          	jalr	-1928(ra) # 800054d0 <_ZN12ProducerSync8producerEPv>
    }
    80005c60:	00813083          	ld	ra,8(sp)
    80005c64:	00013403          	ld	s0,0(sp)
    80005c68:	01010113          	addi	sp,sp,16
    80005c6c:	00008067          	ret

0000000080005c70 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005c70:	ff010113          	addi	sp,sp,-16
    80005c74:	00113423          	sd	ra,8(sp)
    80005c78:	00813023          	sd	s0,0(sp)
    80005c7c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005c80:	02053583          	ld	a1,32(a0)
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	8e0080e7          	jalr	-1824(ra) # 80005564 <_ZN12ConsumerSync8consumerEPv>
    }
    80005c8c:	00813083          	ld	ra,8(sp)
    80005c90:	00013403          	ld	s0,0(sp)
    80005c94:	01010113          	addi	sp,sp,16
    80005c98:	00008067          	ret

0000000080005c9c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005c9c:	fe010113          	addi	sp,sp,-32
    80005ca0:	00113c23          	sd	ra,24(sp)
    80005ca4:	00813823          	sd	s0,16(sp)
    80005ca8:	00913423          	sd	s1,8(sp)
    80005cac:	02010413          	addi	s0,sp,32
    80005cb0:	00050493          	mv	s1,a0
    LOCK();
    80005cb4:	00100613          	li	a2,1
    80005cb8:	00000593          	li	a1,0
    80005cbc:	00007517          	auipc	a0,0x7
    80005cc0:	ea450513          	addi	a0,a0,-348 # 8000cb60 <lockPrint>
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	47c080e7          	jalr	1148(ra) # 80001140 <copy_and_swap>
    80005ccc:	00050863          	beqz	a0,80005cdc <_Z11printStringPKc+0x40>
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	59c080e7          	jalr	1436(ra) # 8000126c <_Z15thread_dispatchv>
    80005cd8:	fddff06f          	j	80005cb4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005cdc:	0004c503          	lbu	a0,0(s1)
    80005ce0:	00050a63          	beqz	a0,80005cf4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005ce4:	ffffb097          	auipc	ra,0xffffb
    80005ce8:	764080e7          	jalr	1892(ra) # 80001448 <_Z4putcc>
        string++;
    80005cec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005cf0:	fedff06f          	j	80005cdc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005cf4:	00000613          	li	a2,0
    80005cf8:	00100593          	li	a1,1
    80005cfc:	00007517          	auipc	a0,0x7
    80005d00:	e6450513          	addi	a0,a0,-412 # 8000cb60 <lockPrint>
    80005d04:	ffffb097          	auipc	ra,0xffffb
    80005d08:	43c080e7          	jalr	1084(ra) # 80001140 <copy_and_swap>
    80005d0c:	fe0514e3          	bnez	a0,80005cf4 <_Z11printStringPKc+0x58>
}
    80005d10:	01813083          	ld	ra,24(sp)
    80005d14:	01013403          	ld	s0,16(sp)
    80005d18:	00813483          	ld	s1,8(sp)
    80005d1c:	02010113          	addi	sp,sp,32
    80005d20:	00008067          	ret

0000000080005d24 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005d24:	fd010113          	addi	sp,sp,-48
    80005d28:	02113423          	sd	ra,40(sp)
    80005d2c:	02813023          	sd	s0,32(sp)
    80005d30:	00913c23          	sd	s1,24(sp)
    80005d34:	01213823          	sd	s2,16(sp)
    80005d38:	01313423          	sd	s3,8(sp)
    80005d3c:	01413023          	sd	s4,0(sp)
    80005d40:	03010413          	addi	s0,sp,48
    80005d44:	00050993          	mv	s3,a0
    80005d48:	00058a13          	mv	s4,a1
    LOCK();
    80005d4c:	00100613          	li	a2,1
    80005d50:	00000593          	li	a1,0
    80005d54:	00007517          	auipc	a0,0x7
    80005d58:	e0c50513          	addi	a0,a0,-500 # 8000cb60 <lockPrint>
    80005d5c:	ffffb097          	auipc	ra,0xffffb
    80005d60:	3e4080e7          	jalr	996(ra) # 80001140 <copy_and_swap>
    80005d64:	00050863          	beqz	a0,80005d74 <_Z9getStringPci+0x50>
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	504080e7          	jalr	1284(ra) # 8000126c <_Z15thread_dispatchv>
    80005d70:	fddff06f          	j	80005d4c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005d74:	00000913          	li	s2,0
    80005d78:	00090493          	mv	s1,s2
    80005d7c:	0019091b          	addiw	s2,s2,1
    80005d80:	03495a63          	bge	s2,s4,80005db4 <_Z9getStringPci+0x90>
        cc = getc();
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	674080e7          	jalr	1652(ra) # 800013f8 <_Z4getcv>
        if(cc < 1)
    80005d8c:	02050463          	beqz	a0,80005db4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005d90:	009984b3          	add	s1,s3,s1
    80005d94:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005d98:	00a00793          	li	a5,10
    80005d9c:	00f50a63          	beq	a0,a5,80005db0 <_Z9getStringPci+0x8c>
    80005da0:	00d00793          	li	a5,13
    80005da4:	fcf51ae3          	bne	a0,a5,80005d78 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005da8:	00090493          	mv	s1,s2
    80005dac:	0080006f          	j	80005db4 <_Z9getStringPci+0x90>
    80005db0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005db4:	009984b3          	add	s1,s3,s1
    80005db8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005dbc:	00000613          	li	a2,0
    80005dc0:	00100593          	li	a1,1
    80005dc4:	00007517          	auipc	a0,0x7
    80005dc8:	d9c50513          	addi	a0,a0,-612 # 8000cb60 <lockPrint>
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	374080e7          	jalr	884(ra) # 80001140 <copy_and_swap>
    80005dd4:	fe0514e3          	bnez	a0,80005dbc <_Z9getStringPci+0x98>
    return buf;
}
    80005dd8:	00098513          	mv	a0,s3
    80005ddc:	02813083          	ld	ra,40(sp)
    80005de0:	02013403          	ld	s0,32(sp)
    80005de4:	01813483          	ld	s1,24(sp)
    80005de8:	01013903          	ld	s2,16(sp)
    80005dec:	00813983          	ld	s3,8(sp)
    80005df0:	00013a03          	ld	s4,0(sp)
    80005df4:	03010113          	addi	sp,sp,48
    80005df8:	00008067          	ret

0000000080005dfc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005dfc:	ff010113          	addi	sp,sp,-16
    80005e00:	00813423          	sd	s0,8(sp)
    80005e04:	01010413          	addi	s0,sp,16
    80005e08:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e0c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e10:	0006c603          	lbu	a2,0(a3)
    80005e14:	fd06071b          	addiw	a4,a2,-48
    80005e18:	0ff77713          	andi	a4,a4,255
    80005e1c:	00900793          	li	a5,9
    80005e20:	02e7e063          	bltu	a5,a4,80005e40 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e24:	0025179b          	slliw	a5,a0,0x2
    80005e28:	00a787bb          	addw	a5,a5,a0
    80005e2c:	0017979b          	slliw	a5,a5,0x1
    80005e30:	00168693          	addi	a3,a3,1
    80005e34:	00c787bb          	addw	a5,a5,a2
    80005e38:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e3c:	fd5ff06f          	j	80005e10 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e40:	00813403          	ld	s0,8(sp)
    80005e44:	01010113          	addi	sp,sp,16
    80005e48:	00008067          	ret

0000000080005e4c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005e4c:	fc010113          	addi	sp,sp,-64
    80005e50:	02113c23          	sd	ra,56(sp)
    80005e54:	02813823          	sd	s0,48(sp)
    80005e58:	02913423          	sd	s1,40(sp)
    80005e5c:	03213023          	sd	s2,32(sp)
    80005e60:	01313c23          	sd	s3,24(sp)
    80005e64:	04010413          	addi	s0,sp,64
    80005e68:	00050493          	mv	s1,a0
    80005e6c:	00058913          	mv	s2,a1
    80005e70:	00060993          	mv	s3,a2
    LOCK();
    80005e74:	00100613          	li	a2,1
    80005e78:	00000593          	li	a1,0
    80005e7c:	00007517          	auipc	a0,0x7
    80005e80:	ce450513          	addi	a0,a0,-796 # 8000cb60 <lockPrint>
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	2bc080e7          	jalr	700(ra) # 80001140 <copy_and_swap>
    80005e8c:	00050863          	beqz	a0,80005e9c <_Z8printIntiii+0x50>
    80005e90:	ffffb097          	auipc	ra,0xffffb
    80005e94:	3dc080e7          	jalr	988(ra) # 8000126c <_Z15thread_dispatchv>
    80005e98:	fddff06f          	j	80005e74 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005e9c:	00098463          	beqz	s3,80005ea4 <_Z8printIntiii+0x58>
    80005ea0:	0804c463          	bltz	s1,80005f28 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ea4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ea8:	00000593          	li	a1,0
    }

    i = 0;
    80005eac:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005eb0:	0009079b          	sext.w	a5,s2
    80005eb4:	0325773b          	remuw	a4,a0,s2
    80005eb8:	00048613          	mv	a2,s1
    80005ebc:	0014849b          	addiw	s1,s1,1
    80005ec0:	02071693          	slli	a3,a4,0x20
    80005ec4:	0206d693          	srli	a3,a3,0x20
    80005ec8:	00007717          	auipc	a4,0x7
    80005ecc:	b2070713          	addi	a4,a4,-1248 # 8000c9e8 <digits>
    80005ed0:	00d70733          	add	a4,a4,a3
    80005ed4:	00074683          	lbu	a3,0(a4)
    80005ed8:	fd040713          	addi	a4,s0,-48
    80005edc:	00c70733          	add	a4,a4,a2
    80005ee0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005ee4:	0005071b          	sext.w	a4,a0
    80005ee8:	0325553b          	divuw	a0,a0,s2
    80005eec:	fcf772e3          	bgeu	a4,a5,80005eb0 <_Z8printIntiii+0x64>
    if(neg)
    80005ef0:	00058c63          	beqz	a1,80005f08 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005ef4:	fd040793          	addi	a5,s0,-48
    80005ef8:	009784b3          	add	s1,a5,s1
    80005efc:	02d00793          	li	a5,45
    80005f00:	fef48823          	sb	a5,-16(s1)
    80005f04:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f08:	fff4849b          	addiw	s1,s1,-1
    80005f0c:	0204c463          	bltz	s1,80005f34 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005f10:	fd040793          	addi	a5,s0,-48
    80005f14:	009787b3          	add	a5,a5,s1
    80005f18:	ff07c503          	lbu	a0,-16(a5)
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	52c080e7          	jalr	1324(ra) # 80001448 <_Z4putcc>
    80005f24:	fe5ff06f          	j	80005f08 <_Z8printIntiii+0xbc>
        x = -xx;
    80005f28:	4090053b          	negw	a0,s1
        neg = 1;
    80005f2c:	00100593          	li	a1,1
        x = -xx;
    80005f30:	f7dff06f          	j	80005eac <_Z8printIntiii+0x60>

    UNLOCK();
    80005f34:	00000613          	li	a2,0
    80005f38:	00100593          	li	a1,1
    80005f3c:	00007517          	auipc	a0,0x7
    80005f40:	c2450513          	addi	a0,a0,-988 # 8000cb60 <lockPrint>
    80005f44:	ffffb097          	auipc	ra,0xffffb
    80005f48:	1fc080e7          	jalr	508(ra) # 80001140 <copy_and_swap>
    80005f4c:	fe0514e3          	bnez	a0,80005f34 <_Z8printIntiii+0xe8>
    80005f50:	03813083          	ld	ra,56(sp)
    80005f54:	03013403          	ld	s0,48(sp)
    80005f58:	02813483          	ld	s1,40(sp)
    80005f5c:	02013903          	ld	s2,32(sp)
    80005f60:	01813983          	ld	s3,24(sp)
    80005f64:	04010113          	addi	sp,sp,64
    80005f68:	00008067          	ret

0000000080005f6c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f6c:	fd010113          	addi	sp,sp,-48
    80005f70:	02113423          	sd	ra,40(sp)
    80005f74:	02813023          	sd	s0,32(sp)
    80005f78:	00913c23          	sd	s1,24(sp)
    80005f7c:	01213823          	sd	s2,16(sp)
    80005f80:	01313423          	sd	s3,8(sp)
    80005f84:	03010413          	addi	s0,sp,48
    80005f88:	00050493          	mv	s1,a0
    80005f8c:	00058913          	mv	s2,a1
    80005f90:	0015879b          	addiw	a5,a1,1
    80005f94:	0007851b          	sext.w	a0,a5
    80005f98:	00f4a023          	sw	a5,0(s1)
    80005f9c:	0004a823          	sw	zero,16(s1)
    80005fa0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fa4:	00251513          	slli	a0,a0,0x2
    80005fa8:	ffffb097          	auipc	ra,0xffffb
    80005fac:	1b8080e7          	jalr	440(ra) # 80001160 <_Z9mem_allocm>
    80005fb0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005fb4:	01000513          	li	a0,16
    80005fb8:	ffffc097          	auipc	ra,0xffffc
    80005fbc:	45c080e7          	jalr	1116(ra) # 80002414 <_Znwm>
    80005fc0:	00050993          	mv	s3,a0
    80005fc4:	00000593          	li	a1,0
    80005fc8:	ffffc097          	auipc	ra,0xffffc
    80005fcc:	65c080e7          	jalr	1628(ra) # 80002624 <_ZN9SemaphoreC1Ej>
    80005fd0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005fd4:	01000513          	li	a0,16
    80005fd8:	ffffc097          	auipc	ra,0xffffc
    80005fdc:	43c080e7          	jalr	1084(ra) # 80002414 <_Znwm>
    80005fe0:	00050993          	mv	s3,a0
    80005fe4:	00090593          	mv	a1,s2
    80005fe8:	ffffc097          	auipc	ra,0xffffc
    80005fec:	63c080e7          	jalr	1596(ra) # 80002624 <_ZN9SemaphoreC1Ej>
    80005ff0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ff4:	01000513          	li	a0,16
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	41c080e7          	jalr	1052(ra) # 80002414 <_Znwm>
    80006000:	00050913          	mv	s2,a0
    80006004:	00100593          	li	a1,1
    80006008:	ffffc097          	auipc	ra,0xffffc
    8000600c:	61c080e7          	jalr	1564(ra) # 80002624 <_ZN9SemaphoreC1Ej>
    80006010:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006014:	01000513          	li	a0,16
    80006018:	ffffc097          	auipc	ra,0xffffc
    8000601c:	3fc080e7          	jalr	1020(ra) # 80002414 <_Znwm>
    80006020:	00050913          	mv	s2,a0
    80006024:	00100593          	li	a1,1
    80006028:	ffffc097          	auipc	ra,0xffffc
    8000602c:	5fc080e7          	jalr	1532(ra) # 80002624 <_ZN9SemaphoreC1Ej>
    80006030:	0324b823          	sd	s2,48(s1)
}
    80006034:	02813083          	ld	ra,40(sp)
    80006038:	02013403          	ld	s0,32(sp)
    8000603c:	01813483          	ld	s1,24(sp)
    80006040:	01013903          	ld	s2,16(sp)
    80006044:	00813983          	ld	s3,8(sp)
    80006048:	03010113          	addi	sp,sp,48
    8000604c:	00008067          	ret
    80006050:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006054:	00098513          	mv	a0,s3
    80006058:	ffffc097          	auipc	ra,0xffffc
    8000605c:	3e4080e7          	jalr	996(ra) # 8000243c <_ZdlPv>
    80006060:	00048513          	mv	a0,s1
    80006064:	00008097          	auipc	ra,0x8
    80006068:	bd4080e7          	jalr	-1068(ra) # 8000dc38 <_Unwind_Resume>
    8000606c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006070:	00098513          	mv	a0,s3
    80006074:	ffffc097          	auipc	ra,0xffffc
    80006078:	3c8080e7          	jalr	968(ra) # 8000243c <_ZdlPv>
    8000607c:	00048513          	mv	a0,s1
    80006080:	00008097          	auipc	ra,0x8
    80006084:	bb8080e7          	jalr	-1096(ra) # 8000dc38 <_Unwind_Resume>
    80006088:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000608c:	00090513          	mv	a0,s2
    80006090:	ffffc097          	auipc	ra,0xffffc
    80006094:	3ac080e7          	jalr	940(ra) # 8000243c <_ZdlPv>
    80006098:	00048513          	mv	a0,s1
    8000609c:	00008097          	auipc	ra,0x8
    800060a0:	b9c080e7          	jalr	-1124(ra) # 8000dc38 <_Unwind_Resume>
    800060a4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800060a8:	00090513          	mv	a0,s2
    800060ac:	ffffc097          	auipc	ra,0xffffc
    800060b0:	390080e7          	jalr	912(ra) # 8000243c <_ZdlPv>
    800060b4:	00048513          	mv	a0,s1
    800060b8:	00008097          	auipc	ra,0x8
    800060bc:	b80080e7          	jalr	-1152(ra) # 8000dc38 <_Unwind_Resume>

00000000800060c0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800060c0:	fe010113          	addi	sp,sp,-32
    800060c4:	00113c23          	sd	ra,24(sp)
    800060c8:	00813823          	sd	s0,16(sp)
    800060cc:	00913423          	sd	s1,8(sp)
    800060d0:	01213023          	sd	s2,0(sp)
    800060d4:	02010413          	addi	s0,sp,32
    800060d8:	00050493          	mv	s1,a0
    800060dc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800060e0:	01853503          	ld	a0,24(a0)
    800060e4:	ffffc097          	auipc	ra,0xffffc
    800060e8:	578080e7          	jalr	1400(ra) # 8000265c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800060ec:	0304b503          	ld	a0,48(s1)
    800060f0:	ffffc097          	auipc	ra,0xffffc
    800060f4:	56c080e7          	jalr	1388(ra) # 8000265c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800060f8:	0084b783          	ld	a5,8(s1)
    800060fc:	0144a703          	lw	a4,20(s1)
    80006100:	00271713          	slli	a4,a4,0x2
    80006104:	00e787b3          	add	a5,a5,a4
    80006108:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000610c:	0144a783          	lw	a5,20(s1)
    80006110:	0017879b          	addiw	a5,a5,1
    80006114:	0004a703          	lw	a4,0(s1)
    80006118:	02e7e7bb          	remw	a5,a5,a4
    8000611c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006120:	0304b503          	ld	a0,48(s1)
    80006124:	ffffc097          	auipc	ra,0xffffc
    80006128:	564080e7          	jalr	1380(ra) # 80002688 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000612c:	0204b503          	ld	a0,32(s1)
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	558080e7          	jalr	1368(ra) # 80002688 <_ZN9Semaphore6signalEv>

}
    80006138:	01813083          	ld	ra,24(sp)
    8000613c:	01013403          	ld	s0,16(sp)
    80006140:	00813483          	ld	s1,8(sp)
    80006144:	00013903          	ld	s2,0(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret

0000000080006150 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006150:	fe010113          	addi	sp,sp,-32
    80006154:	00113c23          	sd	ra,24(sp)
    80006158:	00813823          	sd	s0,16(sp)
    8000615c:	00913423          	sd	s1,8(sp)
    80006160:	01213023          	sd	s2,0(sp)
    80006164:	02010413          	addi	s0,sp,32
    80006168:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000616c:	02053503          	ld	a0,32(a0)
    80006170:	ffffc097          	auipc	ra,0xffffc
    80006174:	4ec080e7          	jalr	1260(ra) # 8000265c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006178:	0284b503          	ld	a0,40(s1)
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	4e0080e7          	jalr	1248(ra) # 8000265c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006184:	0084b703          	ld	a4,8(s1)
    80006188:	0104a783          	lw	a5,16(s1)
    8000618c:	00279693          	slli	a3,a5,0x2
    80006190:	00d70733          	add	a4,a4,a3
    80006194:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006198:	0017879b          	addiw	a5,a5,1
    8000619c:	0004a703          	lw	a4,0(s1)
    800061a0:	02e7e7bb          	remw	a5,a5,a4
    800061a4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800061a8:	0284b503          	ld	a0,40(s1)
    800061ac:	ffffc097          	auipc	ra,0xffffc
    800061b0:	4dc080e7          	jalr	1244(ra) # 80002688 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800061b4:	0184b503          	ld	a0,24(s1)
    800061b8:	ffffc097          	auipc	ra,0xffffc
    800061bc:	4d0080e7          	jalr	1232(ra) # 80002688 <_ZN9Semaphore6signalEv>

    return ret;
}
    800061c0:	00090513          	mv	a0,s2
    800061c4:	01813083          	ld	ra,24(sp)
    800061c8:	01013403          	ld	s0,16(sp)
    800061cc:	00813483          	ld	s1,8(sp)
    800061d0:	00013903          	ld	s2,0(sp)
    800061d4:	02010113          	addi	sp,sp,32
    800061d8:	00008067          	ret

00000000800061dc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800061dc:	fe010113          	addi	sp,sp,-32
    800061e0:	00113c23          	sd	ra,24(sp)
    800061e4:	00813823          	sd	s0,16(sp)
    800061e8:	00913423          	sd	s1,8(sp)
    800061ec:	01213023          	sd	s2,0(sp)
    800061f0:	02010413          	addi	s0,sp,32
    800061f4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800061f8:	02853503          	ld	a0,40(a0)
    800061fc:	ffffc097          	auipc	ra,0xffffc
    80006200:	460080e7          	jalr	1120(ra) # 8000265c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006204:	0304b503          	ld	a0,48(s1)
    80006208:	ffffc097          	auipc	ra,0xffffc
    8000620c:	454080e7          	jalr	1108(ra) # 8000265c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006210:	0144a783          	lw	a5,20(s1)
    80006214:	0104a903          	lw	s2,16(s1)
    80006218:	0327ce63          	blt	a5,s2,80006254 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000621c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006220:	0304b503          	ld	a0,48(s1)
    80006224:	ffffc097          	auipc	ra,0xffffc
    80006228:	464080e7          	jalr	1124(ra) # 80002688 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000622c:	0284b503          	ld	a0,40(s1)
    80006230:	ffffc097          	auipc	ra,0xffffc
    80006234:	458080e7          	jalr	1112(ra) # 80002688 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006238:	00090513          	mv	a0,s2
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	01013403          	ld	s0,16(sp)
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	00013903          	ld	s2,0(sp)
    8000624c:	02010113          	addi	sp,sp,32
    80006250:	00008067          	ret
        ret = cap - head + tail;
    80006254:	0004a703          	lw	a4,0(s1)
    80006258:	4127093b          	subw	s2,a4,s2
    8000625c:	00f9093b          	addw	s2,s2,a5
    80006260:	fc1ff06f          	j	80006220 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006264 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006264:	fe010113          	addi	sp,sp,-32
    80006268:	00113c23          	sd	ra,24(sp)
    8000626c:	00813823          	sd	s0,16(sp)
    80006270:	00913423          	sd	s1,8(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000627c:	00a00513          	li	a0,10
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	45c080e7          	jalr	1116(ra) # 800026dc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006288:	00004517          	auipc	a0,0x4
    8000628c:	1c050513          	addi	a0,a0,448 # 8000a448 <CONSOLE_STATUS+0x438>
    80006290:	00000097          	auipc	ra,0x0
    80006294:	a0c080e7          	jalr	-1524(ra) # 80005c9c <_Z11printStringPKc>
    while (getCnt()) {
    80006298:	00048513          	mv	a0,s1
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	f40080e7          	jalr	-192(ra) # 800061dc <_ZN9BufferCPP6getCntEv>
    800062a4:	02050c63          	beqz	a0,800062dc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800062a8:	0084b783          	ld	a5,8(s1)
    800062ac:	0104a703          	lw	a4,16(s1)
    800062b0:	00271713          	slli	a4,a4,0x2
    800062b4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800062b8:	0007c503          	lbu	a0,0(a5)
    800062bc:	ffffc097          	auipc	ra,0xffffc
    800062c0:	420080e7          	jalr	1056(ra) # 800026dc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800062c4:	0104a783          	lw	a5,16(s1)
    800062c8:	0017879b          	addiw	a5,a5,1
    800062cc:	0004a703          	lw	a4,0(s1)
    800062d0:	02e7e7bb          	remw	a5,a5,a4
    800062d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800062d8:	fc1ff06f          	j	80006298 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800062dc:	02100513          	li	a0,33
    800062e0:	ffffc097          	auipc	ra,0xffffc
    800062e4:	3fc080e7          	jalr	1020(ra) # 800026dc <_ZN7Console4putcEc>
    Console::putc('\n');
    800062e8:	00a00513          	li	a0,10
    800062ec:	ffffc097          	auipc	ra,0xffffc
    800062f0:	3f0080e7          	jalr	1008(ra) # 800026dc <_ZN7Console4putcEc>
    mem_free(buffer);
    800062f4:	0084b503          	ld	a0,8(s1)
    800062f8:	ffffb097          	auipc	ra,0xffffb
    800062fc:	ea0080e7          	jalr	-352(ra) # 80001198 <_Z8mem_freePv>
    delete itemAvailable;
    80006300:	0204b503          	ld	a0,32(s1)
    80006304:	00050863          	beqz	a0,80006314 <_ZN9BufferCPPD1Ev+0xb0>
    80006308:	00053783          	ld	a5,0(a0)
    8000630c:	0087b783          	ld	a5,8(a5)
    80006310:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006314:	0184b503          	ld	a0,24(s1)
    80006318:	00050863          	beqz	a0,80006328 <_ZN9BufferCPPD1Ev+0xc4>
    8000631c:	00053783          	ld	a5,0(a0)
    80006320:	0087b783          	ld	a5,8(a5)
    80006324:	000780e7          	jalr	a5
    delete mutexTail;
    80006328:	0304b503          	ld	a0,48(s1)
    8000632c:	00050863          	beqz	a0,8000633c <_ZN9BufferCPPD1Ev+0xd8>
    80006330:	00053783          	ld	a5,0(a0)
    80006334:	0087b783          	ld	a5,8(a5)
    80006338:	000780e7          	jalr	a5
    delete mutexHead;
    8000633c:	0284b503          	ld	a0,40(s1)
    80006340:	00050863          	beqz	a0,80006350 <_ZN9BufferCPPD1Ev+0xec>
    80006344:	00053783          	ld	a5,0(a0)
    80006348:	0087b783          	ld	a5,8(a5)
    8000634c:	000780e7          	jalr	a5
}
    80006350:	01813083          	ld	ra,24(sp)
    80006354:	01013403          	ld	s0,16(sp)
    80006358:	00813483          	ld	s1,8(sp)
    8000635c:	02010113          	addi	sp,sp,32
    80006360:	00008067          	ret

0000000080006364 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006364:	fe010113          	addi	sp,sp,-32
    80006368:	00113c23          	sd	ra,24(sp)
    8000636c:	00813823          	sd	s0,16(sp)
    80006370:	00913423          	sd	s1,8(sp)
    80006374:	01213023          	sd	s2,0(sp)
    80006378:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000637c:	00004517          	auipc	a0,0x4
    80006380:	0e450513          	addi	a0,a0,228 # 8000a460 <CONSOLE_STATUS+0x450>
    80006384:	00000097          	auipc	ra,0x0
    80006388:	918080e7          	jalr	-1768(ra) # 80005c9c <_Z11printStringPKc>
     int test = getc() - '0';
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	06c080e7          	jalr	108(ra) # 800013f8 <_Z4getcv>
    80006394:	00050913          	mv	s2,a0
    80006398:	fd05049b          	addiw	s1,a0,-48
     getc(); // Enter posle broja
    8000639c:	ffffb097          	auipc	ra,0xffffb
    800063a0:	05c080e7          	jalr	92(ra) # 800013f8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800063a4:	fcb9091b          	addiw	s2,s2,-53
    800063a8:	00100793          	li	a5,1
    800063ac:	0327f463          	bgeu	a5,s2,800063d4 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800063b0:	00700793          	li	a5,7
    800063b4:	0e97e263          	bltu	a5,s1,80006498 <_Z8userMainv+0x134>
    800063b8:	00249493          	slli	s1,s1,0x2
    800063bc:	00004717          	auipc	a4,0x4
    800063c0:	2bc70713          	addi	a4,a4,700 # 8000a678 <CONSOLE_STATUS+0x668>
    800063c4:	00e484b3          	add	s1,s1,a4
    800063c8:	0004a783          	lw	a5,0(s1)
    800063cc:	00e787b3          	add	a5,a5,a4
    800063d0:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800063d4:	00004517          	auipc	a0,0x4
    800063d8:	0ac50513          	addi	a0,a0,172 # 8000a480 <CONSOLE_STATUS+0x470>
    800063dc:	00000097          	auipc	ra,0x0
    800063e0:	8c0080e7          	jalr	-1856(ra) # 80005c9c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	00813483          	ld	s1,8(sp)
    800063f0:	00013903          	ld	s2,0(sp)
    800063f4:	02010113          	addi	sp,sp,32
    800063f8:	00008067          	ret
            Threads_C_API_test();
    800063fc:	fffff097          	auipc	ra,0xfffff
    80006400:	f18080e7          	jalr	-232(ra) # 80005314 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006404:	00004517          	auipc	a0,0x4
    80006408:	0ac50513          	addi	a0,a0,172 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	890080e7          	jalr	-1904(ra) # 80005c9c <_Z11printStringPKc>
            break;
    80006414:	fd1ff06f          	j	800063e4 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80006418:	ffffe097          	auipc	ra,0xffffe
    8000641c:	ddc080e7          	jalr	-548(ra) # 800041f4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006420:	00004517          	auipc	a0,0x4
    80006424:	0d050513          	addi	a0,a0,208 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80006428:	00000097          	auipc	ra,0x0
    8000642c:	874080e7          	jalr	-1932(ra) # 80005c9c <_Z11printStringPKc>
            break;
    80006430:	fb5ff06f          	j	800063e4 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80006434:	ffffd097          	auipc	ra,0xffffd
    80006438:	614080e7          	jalr	1556(ra) # 80003a48 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000643c:	00004517          	auipc	a0,0x4
    80006440:	0f450513          	addi	a0,a0,244 # 8000a530 <CONSOLE_STATUS+0x520>
    80006444:	00000097          	auipc	ra,0x0
    80006448:	858080e7          	jalr	-1960(ra) # 80005c9c <_Z11printStringPKc>
            break;
    8000644c:	f99ff06f          	j	800063e4 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80006450:	fffff097          	auipc	ra,0xfffff
    80006454:	208080e7          	jalr	520(ra) # 80005658 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006458:	00004517          	auipc	a0,0x4
    8000645c:	12850513          	addi	a0,a0,296 # 8000a580 <CONSOLE_STATUS+0x570>
    80006460:	00000097          	auipc	ra,0x0
    80006464:	83c080e7          	jalr	-1988(ra) # 80005c9c <_Z11printStringPKc>
            break;
    80006468:	f7dff06f          	j	800063e4 <_Z8userMainv+0x80>
            System_Mode_test();
    8000646c:	00000097          	auipc	ra,0x0
    80006470:	658080e7          	jalr	1624(ra) # 80006ac4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006474:	00004517          	auipc	a0,0x4
    80006478:	16450513          	addi	a0,a0,356 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    8000647c:	00000097          	auipc	ra,0x0
    80006480:	820080e7          	jalr	-2016(ra) # 80005c9c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006484:	00004517          	auipc	a0,0x4
    80006488:	17450513          	addi	a0,a0,372 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    8000648c:	00000097          	auipc	ra,0x0
    80006490:	810080e7          	jalr	-2032(ra) # 80005c9c <_Z11printStringPKc>
            break;
    80006494:	f51ff06f          	j	800063e4 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006498:	00004517          	auipc	a0,0x4
    8000649c:	1b850513          	addi	a0,a0,440 # 8000a650 <CONSOLE_STATUS+0x640>
    800064a0:	fffff097          	auipc	ra,0xfffff
    800064a4:	7fc080e7          	jalr	2044(ra) # 80005c9c <_Z11printStringPKc>
    800064a8:	f3dff06f          	j	800063e4 <_Z8userMainv+0x80>

00000000800064ac <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800064ac:	fe010113          	addi	sp,sp,-32
    800064b0:	00113c23          	sd	ra,24(sp)
    800064b4:	00813823          	sd	s0,16(sp)
    800064b8:	00913423          	sd	s1,8(sp)
    800064bc:	01213023          	sd	s2,0(sp)
    800064c0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064c4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064c8:	00600493          	li	s1,6
    while (--i > 0) {
    800064cc:	fff4849b          	addiw	s1,s1,-1
    800064d0:	04905463          	blez	s1,80006518 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800064d4:	00004517          	auipc	a0,0x4
    800064d8:	1c450513          	addi	a0,a0,452 # 8000a698 <CONSOLE_STATUS+0x688>
    800064dc:	fffff097          	auipc	ra,0xfffff
    800064e0:	7c0080e7          	jalr	1984(ra) # 80005c9c <_Z11printStringPKc>
        printInt(sleep_time);
    800064e4:	00000613          	li	a2,0
    800064e8:	00a00593          	li	a1,10
    800064ec:	0009051b          	sext.w	a0,s2
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	95c080e7          	jalr	-1700(ra) # 80005e4c <_Z8printIntiii>
        printString(" !\n");
    800064f8:	00004517          	auipc	a0,0x4
    800064fc:	1a850513          	addi	a0,a0,424 # 8000a6a0 <CONSOLE_STATUS+0x690>
    80006500:	fffff097          	auipc	ra,0xfffff
    80006504:	79c080e7          	jalr	1948(ra) # 80005c9c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006508:	00090513          	mv	a0,s2
    8000650c:	ffffb097          	auipc	ra,0xffffb
    80006510:	ed0080e7          	jalr	-304(ra) # 800013dc <_Z10time_sleepm>
    while (--i > 0) {
    80006514:	fb9ff06f          	j	800064cc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006518:	00a00793          	li	a5,10
    8000651c:	02f95933          	divu	s2,s2,a5
    80006520:	fff90913          	addi	s2,s2,-1
    80006524:	00006797          	auipc	a5,0x6
    80006528:	64478793          	addi	a5,a5,1604 # 8000cb68 <_ZL8finished>
    8000652c:	01278933          	add	s2,a5,s2
    80006530:	00100793          	li	a5,1
    80006534:	00f90023          	sb	a5,0(s2)
}
    80006538:	01813083          	ld	ra,24(sp)
    8000653c:	01013403          	ld	s0,16(sp)
    80006540:	00813483          	ld	s1,8(sp)
    80006544:	00013903          	ld	s2,0(sp)
    80006548:	02010113          	addi	sp,sp,32
    8000654c:	00008067          	ret

0000000080006550 <_Z12testSleepingv>:

void testSleeping() {
    80006550:	fc010113          	addi	sp,sp,-64
    80006554:	02113c23          	sd	ra,56(sp)
    80006558:	02813823          	sd	s0,48(sp)
    8000655c:	02913423          	sd	s1,40(sp)
    80006560:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006564:	00a00793          	li	a5,10
    80006568:	fcf43823          	sd	a5,-48(s0)
    8000656c:	01400793          	li	a5,20
    80006570:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006574:	00000493          	li	s1,0
    80006578:	02c0006f          	j	800065a4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000657c:	00349793          	slli	a5,s1,0x3
    80006580:	fd040613          	addi	a2,s0,-48
    80006584:	00f60633          	add	a2,a2,a5
    80006588:	00000597          	auipc	a1,0x0
    8000658c:	f2458593          	addi	a1,a1,-220 # 800064ac <_ZL9sleepyRunPv>
    80006590:	fc040513          	addi	a0,s0,-64
    80006594:	00f50533          	add	a0,a0,a5
    80006598:	ffffb097          	auipc	ra,0xffffb
    8000659c:	c38080e7          	jalr	-968(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065a0:	0014849b          	addiw	s1,s1,1
    800065a4:	00100793          	li	a5,1
    800065a8:	fc97dae3          	bge	a5,s1,8000657c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800065ac:	00006797          	auipc	a5,0x6
    800065b0:	5bc7c783          	lbu	a5,1468(a5) # 8000cb68 <_ZL8finished>
    800065b4:	fe078ce3          	beqz	a5,800065ac <_Z12testSleepingv+0x5c>
    800065b8:	00006797          	auipc	a5,0x6
    800065bc:	5b17c783          	lbu	a5,1457(a5) # 8000cb69 <_ZL8finished+0x1>
    800065c0:	fe0786e3          	beqz	a5,800065ac <_Z12testSleepingv+0x5c>
}
    800065c4:	03813083          	ld	ra,56(sp)
    800065c8:	03013403          	ld	s0,48(sp)
    800065cc:	02813483          	ld	s1,40(sp)
    800065d0:	04010113          	addi	sp,sp,64
    800065d4:	00008067          	ret

00000000800065d8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065d8:	fe010113          	addi	sp,sp,-32
    800065dc:	00113c23          	sd	ra,24(sp)
    800065e0:	00813823          	sd	s0,16(sp)
    800065e4:	00913423          	sd	s1,8(sp)
    800065e8:	01213023          	sd	s2,0(sp)
    800065ec:	02010413          	addi	s0,sp,32
    800065f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800065f4:	00100793          	li	a5,1
    800065f8:	02a7f863          	bgeu	a5,a0,80006628 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800065fc:	00a00793          	li	a5,10
    80006600:	02f577b3          	remu	a5,a0,a5
    80006604:	02078e63          	beqz	a5,80006640 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006608:	fff48513          	addi	a0,s1,-1
    8000660c:	00000097          	auipc	ra,0x0
    80006610:	fcc080e7          	jalr	-52(ra) # 800065d8 <_ZL9fibonaccim>
    80006614:	00050913          	mv	s2,a0
    80006618:	ffe48513          	addi	a0,s1,-2
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	fbc080e7          	jalr	-68(ra) # 800065d8 <_ZL9fibonaccim>
    80006624:	00a90533          	add	a0,s2,a0
}
    80006628:	01813083          	ld	ra,24(sp)
    8000662c:	01013403          	ld	s0,16(sp)
    80006630:	00813483          	ld	s1,8(sp)
    80006634:	00013903          	ld	s2,0(sp)
    80006638:	02010113          	addi	sp,sp,32
    8000663c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	c2c080e7          	jalr	-980(ra) # 8000126c <_Z15thread_dispatchv>
    80006648:	fc1ff06f          	j	80006608 <_ZL9fibonaccim+0x30>

000000008000664c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000664c:	fe010113          	addi	sp,sp,-32
    80006650:	00113c23          	sd	ra,24(sp)
    80006654:	00813823          	sd	s0,16(sp)
    80006658:	00913423          	sd	s1,8(sp)
    8000665c:	01213023          	sd	s2,0(sp)
    80006660:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006664:	00a00493          	li	s1,10
    80006668:	0400006f          	j	800066a8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000666c:	00004517          	auipc	a0,0x4
    80006670:	d4450513          	addi	a0,a0,-700 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	628080e7          	jalr	1576(ra) # 80005c9c <_Z11printStringPKc>
    8000667c:	00000613          	li	a2,0
    80006680:	00a00593          	li	a1,10
    80006684:	00048513          	mv	a0,s1
    80006688:	fffff097          	auipc	ra,0xfffff
    8000668c:	7c4080e7          	jalr	1988(ra) # 80005e4c <_Z8printIntiii>
    80006690:	00004517          	auipc	a0,0x4
    80006694:	f4050513          	addi	a0,a0,-192 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	604080e7          	jalr	1540(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800066a0:	0014849b          	addiw	s1,s1,1
    800066a4:	0ff4f493          	andi	s1,s1,255
    800066a8:	00c00793          	li	a5,12
    800066ac:	fc97f0e3          	bgeu	a5,s1,8000666c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800066b0:	00004517          	auipc	a0,0x4
    800066b4:	d0850513          	addi	a0,a0,-760 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    800066b8:	fffff097          	auipc	ra,0xfffff
    800066bc:	5e4080e7          	jalr	1508(ra) # 80005c9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066c0:	00500313          	li	t1,5
    thread_dispatch();
    800066c4:	ffffb097          	auipc	ra,0xffffb
    800066c8:	ba8080e7          	jalr	-1112(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800066cc:	01000513          	li	a0,16
    800066d0:	00000097          	auipc	ra,0x0
    800066d4:	f08080e7          	jalr	-248(ra) # 800065d8 <_ZL9fibonaccim>
    800066d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066dc:	00004517          	auipc	a0,0x4
    800066e0:	cec50513          	addi	a0,a0,-788 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    800066e4:	fffff097          	auipc	ra,0xfffff
    800066e8:	5b8080e7          	jalr	1464(ra) # 80005c9c <_Z11printStringPKc>
    800066ec:	00000613          	li	a2,0
    800066f0:	00a00593          	li	a1,10
    800066f4:	0009051b          	sext.w	a0,s2
    800066f8:	fffff097          	auipc	ra,0xfffff
    800066fc:	754080e7          	jalr	1876(ra) # 80005e4c <_Z8printIntiii>
    80006700:	00004517          	auipc	a0,0x4
    80006704:	ed050513          	addi	a0,a0,-304 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80006708:	fffff097          	auipc	ra,0xfffff
    8000670c:	594080e7          	jalr	1428(ra) # 80005c9c <_Z11printStringPKc>
    80006710:	0400006f          	j	80006750 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006714:	00004517          	auipc	a0,0x4
    80006718:	c9c50513          	addi	a0,a0,-868 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    8000671c:	fffff097          	auipc	ra,0xfffff
    80006720:	580080e7          	jalr	1408(ra) # 80005c9c <_Z11printStringPKc>
    80006724:	00000613          	li	a2,0
    80006728:	00a00593          	li	a1,10
    8000672c:	00048513          	mv	a0,s1
    80006730:	fffff097          	auipc	ra,0xfffff
    80006734:	71c080e7          	jalr	1820(ra) # 80005e4c <_Z8printIntiii>
    80006738:	00004517          	auipc	a0,0x4
    8000673c:	e9850513          	addi	a0,a0,-360 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	55c080e7          	jalr	1372(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006748:	0014849b          	addiw	s1,s1,1
    8000674c:	0ff4f493          	andi	s1,s1,255
    80006750:	00f00793          	li	a5,15
    80006754:	fc97f0e3          	bgeu	a5,s1,80006714 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006758:	00004517          	auipc	a0,0x4
    8000675c:	c8050513          	addi	a0,a0,-896 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    80006760:	fffff097          	auipc	ra,0xfffff
    80006764:	53c080e7          	jalr	1340(ra) # 80005c9c <_Z11printStringPKc>
    finishedD = true;
    80006768:	00100793          	li	a5,1
    8000676c:	00006717          	auipc	a4,0x6
    80006770:	3ef70f23          	sb	a5,1022(a4) # 8000cb6a <_ZL9finishedD>
    thread_dispatch();
    80006774:	ffffb097          	auipc	ra,0xffffb
    80006778:	af8080e7          	jalr	-1288(ra) # 8000126c <_Z15thread_dispatchv>
}
    8000677c:	01813083          	ld	ra,24(sp)
    80006780:	01013403          	ld	s0,16(sp)
    80006784:	00813483          	ld	s1,8(sp)
    80006788:	00013903          	ld	s2,0(sp)
    8000678c:	02010113          	addi	sp,sp,32
    80006790:	00008067          	ret

0000000080006794 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006794:	fe010113          	addi	sp,sp,-32
    80006798:	00113c23          	sd	ra,24(sp)
    8000679c:	00813823          	sd	s0,16(sp)
    800067a0:	00913423          	sd	s1,8(sp)
    800067a4:	01213023          	sd	s2,0(sp)
    800067a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800067ac:	00000493          	li	s1,0
    800067b0:	0400006f          	j	800067f0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800067b4:	00004517          	auipc	a0,0x4
    800067b8:	bcc50513          	addi	a0,a0,-1076 # 8000a380 <CONSOLE_STATUS+0x370>
    800067bc:	fffff097          	auipc	ra,0xfffff
    800067c0:	4e0080e7          	jalr	1248(ra) # 80005c9c <_Z11printStringPKc>
    800067c4:	00000613          	li	a2,0
    800067c8:	00a00593          	li	a1,10
    800067cc:	00048513          	mv	a0,s1
    800067d0:	fffff097          	auipc	ra,0xfffff
    800067d4:	67c080e7          	jalr	1660(ra) # 80005e4c <_Z8printIntiii>
    800067d8:	00004517          	auipc	a0,0x4
    800067dc:	df850513          	addi	a0,a0,-520 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800067e0:	fffff097          	auipc	ra,0xfffff
    800067e4:	4bc080e7          	jalr	1212(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800067e8:	0014849b          	addiw	s1,s1,1
    800067ec:	0ff4f493          	andi	s1,s1,255
    800067f0:	00200793          	li	a5,2
    800067f4:	fc97f0e3          	bgeu	a5,s1,800067b4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800067f8:	00004517          	auipc	a0,0x4
    800067fc:	b9050513          	addi	a0,a0,-1136 # 8000a388 <CONSOLE_STATUS+0x378>
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	49c080e7          	jalr	1180(ra) # 80005c9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006808:	00700313          	li	t1,7
    thread_dispatch();
    8000680c:	ffffb097          	auipc	ra,0xffffb
    80006810:	a60080e7          	jalr	-1440(ra) # 8000126c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006814:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006818:	00004517          	auipc	a0,0x4
    8000681c:	b8050513          	addi	a0,a0,-1152 # 8000a398 <CONSOLE_STATUS+0x388>
    80006820:	fffff097          	auipc	ra,0xfffff
    80006824:	47c080e7          	jalr	1148(ra) # 80005c9c <_Z11printStringPKc>
    80006828:	00000613          	li	a2,0
    8000682c:	00a00593          	li	a1,10
    80006830:	0009051b          	sext.w	a0,s2
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	618080e7          	jalr	1560(ra) # 80005e4c <_Z8printIntiii>
    8000683c:	00004517          	auipc	a0,0x4
    80006840:	d9450513          	addi	a0,a0,-620 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	458080e7          	jalr	1112(ra) # 80005c9c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000684c:	00c00513          	li	a0,12
    80006850:	00000097          	auipc	ra,0x0
    80006854:	d88080e7          	jalr	-632(ra) # 800065d8 <_ZL9fibonaccim>
    80006858:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000685c:	00004517          	auipc	a0,0x4
    80006860:	b4450513          	addi	a0,a0,-1212 # 8000a3a0 <CONSOLE_STATUS+0x390>
    80006864:	fffff097          	auipc	ra,0xfffff
    80006868:	438080e7          	jalr	1080(ra) # 80005c9c <_Z11printStringPKc>
    8000686c:	00000613          	li	a2,0
    80006870:	00a00593          	li	a1,10
    80006874:	0009051b          	sext.w	a0,s2
    80006878:	fffff097          	auipc	ra,0xfffff
    8000687c:	5d4080e7          	jalr	1492(ra) # 80005e4c <_Z8printIntiii>
    80006880:	00004517          	auipc	a0,0x4
    80006884:	d5050513          	addi	a0,a0,-688 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80006888:	fffff097          	auipc	ra,0xfffff
    8000688c:	414080e7          	jalr	1044(ra) # 80005c9c <_Z11printStringPKc>
    80006890:	0400006f          	j	800068d0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006894:	00004517          	auipc	a0,0x4
    80006898:	aec50513          	addi	a0,a0,-1300 # 8000a380 <CONSOLE_STATUS+0x370>
    8000689c:	fffff097          	auipc	ra,0xfffff
    800068a0:	400080e7          	jalr	1024(ra) # 80005c9c <_Z11printStringPKc>
    800068a4:	00000613          	li	a2,0
    800068a8:	00a00593          	li	a1,10
    800068ac:	00048513          	mv	a0,s1
    800068b0:	fffff097          	auipc	ra,0xfffff
    800068b4:	59c080e7          	jalr	1436(ra) # 80005e4c <_Z8printIntiii>
    800068b8:	00004517          	auipc	a0,0x4
    800068bc:	d1850513          	addi	a0,a0,-744 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800068c0:	fffff097          	auipc	ra,0xfffff
    800068c4:	3dc080e7          	jalr	988(ra) # 80005c9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068c8:	0014849b          	addiw	s1,s1,1
    800068cc:	0ff4f493          	andi	s1,s1,255
    800068d0:	00500793          	li	a5,5
    800068d4:	fc97f0e3          	bgeu	a5,s1,80006894 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068d8:	00004517          	auipc	a0,0x4
    800068dc:	a8050513          	addi	a0,a0,-1408 # 8000a358 <CONSOLE_STATUS+0x348>
    800068e0:	fffff097          	auipc	ra,0xfffff
    800068e4:	3bc080e7          	jalr	956(ra) # 80005c9c <_Z11printStringPKc>
    finishedC = true;
    800068e8:	00100793          	li	a5,1
    800068ec:	00006717          	auipc	a4,0x6
    800068f0:	26f70fa3          	sb	a5,639(a4) # 8000cb6b <_ZL9finishedC>
    thread_dispatch();
    800068f4:	ffffb097          	auipc	ra,0xffffb
    800068f8:	978080e7          	jalr	-1672(ra) # 8000126c <_Z15thread_dispatchv>
}
    800068fc:	01813083          	ld	ra,24(sp)
    80006900:	01013403          	ld	s0,16(sp)
    80006904:	00813483          	ld	s1,8(sp)
    80006908:	00013903          	ld	s2,0(sp)
    8000690c:	02010113          	addi	sp,sp,32
    80006910:	00008067          	ret

0000000080006914 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006914:	fe010113          	addi	sp,sp,-32
    80006918:	00113c23          	sd	ra,24(sp)
    8000691c:	00813823          	sd	s0,16(sp)
    80006920:	00913423          	sd	s1,8(sp)
    80006924:	01213023          	sd	s2,0(sp)
    80006928:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000692c:	00000913          	li	s2,0
    80006930:	0400006f          	j	80006970 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	938080e7          	jalr	-1736(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000693c:	00148493          	addi	s1,s1,1
    80006940:	000027b7          	lui	a5,0x2
    80006944:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006948:	0097ee63          	bltu	a5,s1,80006964 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000694c:	00000713          	li	a4,0
    80006950:	000077b7          	lui	a5,0x7
    80006954:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006958:	fce7eee3          	bltu	a5,a4,80006934 <_ZL11workerBodyBPv+0x20>
    8000695c:	00170713          	addi	a4,a4,1
    80006960:	ff1ff06f          	j	80006950 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006964:	00a00793          	li	a5,10
    80006968:	04f90663          	beq	s2,a5,800069b4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000696c:	00190913          	addi	s2,s2,1
    80006970:	00f00793          	li	a5,15
    80006974:	0527e463          	bltu	a5,s2,800069bc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006978:	00004517          	auipc	a0,0x4
    8000697c:	9f050513          	addi	a0,a0,-1552 # 8000a368 <CONSOLE_STATUS+0x358>
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	31c080e7          	jalr	796(ra) # 80005c9c <_Z11printStringPKc>
    80006988:	00000613          	li	a2,0
    8000698c:	00a00593          	li	a1,10
    80006990:	0009051b          	sext.w	a0,s2
    80006994:	fffff097          	auipc	ra,0xfffff
    80006998:	4b8080e7          	jalr	1208(ra) # 80005e4c <_Z8printIntiii>
    8000699c:	00004517          	auipc	a0,0x4
    800069a0:	c3450513          	addi	a0,a0,-972 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800069a4:	fffff097          	auipc	ra,0xfffff
    800069a8:	2f8080e7          	jalr	760(ra) # 80005c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800069ac:	00000493          	li	s1,0
    800069b0:	f91ff06f          	j	80006940 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800069b4:	14102ff3          	csrr	t6,sepc
    800069b8:	fb5ff06f          	j	8000696c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800069bc:	00004517          	auipc	a0,0x4
    800069c0:	9b450513          	addi	a0,a0,-1612 # 8000a370 <CONSOLE_STATUS+0x360>
    800069c4:	fffff097          	auipc	ra,0xfffff
    800069c8:	2d8080e7          	jalr	728(ra) # 80005c9c <_Z11printStringPKc>
    finishedB = true;
    800069cc:	00100793          	li	a5,1
    800069d0:	00006717          	auipc	a4,0x6
    800069d4:	18f70e23          	sb	a5,412(a4) # 8000cb6c <_ZL9finishedB>
    thread_dispatch();
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	894080e7          	jalr	-1900(ra) # 8000126c <_Z15thread_dispatchv>
}
    800069e0:	01813083          	ld	ra,24(sp)
    800069e4:	01013403          	ld	s0,16(sp)
    800069e8:	00813483          	ld	s1,8(sp)
    800069ec:	00013903          	ld	s2,0(sp)
    800069f0:	02010113          	addi	sp,sp,32
    800069f4:	00008067          	ret

00000000800069f8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800069f8:	fe010113          	addi	sp,sp,-32
    800069fc:	00113c23          	sd	ra,24(sp)
    80006a00:	00813823          	sd	s0,16(sp)
    80006a04:	00913423          	sd	s1,8(sp)
    80006a08:	01213023          	sd	s2,0(sp)
    80006a0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006a10:	00000913          	li	s2,0
    80006a14:	0380006f          	j	80006a4c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a18:	ffffb097          	auipc	ra,0xffffb
    80006a1c:	854080e7          	jalr	-1964(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a20:	00148493          	addi	s1,s1,1
    80006a24:	000027b7          	lui	a5,0x2
    80006a28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a2c:	0097ee63          	bltu	a5,s1,80006a48 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a30:	00000713          	li	a4,0
    80006a34:	000077b7          	lui	a5,0x7
    80006a38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a3c:	fce7eee3          	bltu	a5,a4,80006a18 <_ZL11workerBodyAPv+0x20>
    80006a40:	00170713          	addi	a4,a4,1
    80006a44:	ff1ff06f          	j	80006a34 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a48:	00190913          	addi	s2,s2,1
    80006a4c:	00900793          	li	a5,9
    80006a50:	0527e063          	bltu	a5,s2,80006a90 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a54:	00004517          	auipc	a0,0x4
    80006a58:	8fc50513          	addi	a0,a0,-1796 # 8000a350 <CONSOLE_STATUS+0x340>
    80006a5c:	fffff097          	auipc	ra,0xfffff
    80006a60:	240080e7          	jalr	576(ra) # 80005c9c <_Z11printStringPKc>
    80006a64:	00000613          	li	a2,0
    80006a68:	00a00593          	li	a1,10
    80006a6c:	0009051b          	sext.w	a0,s2
    80006a70:	fffff097          	auipc	ra,0xfffff
    80006a74:	3dc080e7          	jalr	988(ra) # 80005e4c <_Z8printIntiii>
    80006a78:	00004517          	auipc	a0,0x4
    80006a7c:	b5850513          	addi	a0,a0,-1192 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80006a80:	fffff097          	auipc	ra,0xfffff
    80006a84:	21c080e7          	jalr	540(ra) # 80005c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a88:	00000493          	li	s1,0
    80006a8c:	f99ff06f          	j	80006a24 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006a90:	00004517          	auipc	a0,0x4
    80006a94:	8c850513          	addi	a0,a0,-1848 # 8000a358 <CONSOLE_STATUS+0x348>
    80006a98:	fffff097          	auipc	ra,0xfffff
    80006a9c:	204080e7          	jalr	516(ra) # 80005c9c <_Z11printStringPKc>
    finishedA = true;
    80006aa0:	00100793          	li	a5,1
    80006aa4:	00006717          	auipc	a4,0x6
    80006aa8:	0cf704a3          	sb	a5,201(a4) # 8000cb6d <_ZL9finishedA>
}
    80006aac:	01813083          	ld	ra,24(sp)
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	00013903          	ld	s2,0(sp)
    80006abc:	02010113          	addi	sp,sp,32
    80006ac0:	00008067          	ret

0000000080006ac4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006ac4:	fd010113          	addi	sp,sp,-48
    80006ac8:	02113423          	sd	ra,40(sp)
    80006acc:	02813023          	sd	s0,32(sp)
    80006ad0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ad4:	00000613          	li	a2,0
    80006ad8:	00000597          	auipc	a1,0x0
    80006adc:	f2058593          	addi	a1,a1,-224 # 800069f8 <_ZL11workerBodyAPv>
    80006ae0:	fd040513          	addi	a0,s0,-48
    80006ae4:	ffffa097          	auipc	ra,0xffffa
    80006ae8:	6ec080e7          	jalr	1772(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006aec:	00004517          	auipc	a0,0x4
    80006af0:	8fc50513          	addi	a0,a0,-1796 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80006af4:	fffff097          	auipc	ra,0xfffff
    80006af8:	1a8080e7          	jalr	424(ra) # 80005c9c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006afc:	00000613          	li	a2,0
    80006b00:	00000597          	auipc	a1,0x0
    80006b04:	e1458593          	addi	a1,a1,-492 # 80006914 <_ZL11workerBodyBPv>
    80006b08:	fd840513          	addi	a0,s0,-40
    80006b0c:	ffffa097          	auipc	ra,0xffffa
    80006b10:	6c4080e7          	jalr	1732(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006b14:	00004517          	auipc	a0,0x4
    80006b18:	8ec50513          	addi	a0,a0,-1812 # 8000a400 <CONSOLE_STATUS+0x3f0>
    80006b1c:	fffff097          	auipc	ra,0xfffff
    80006b20:	180080e7          	jalr	384(ra) # 80005c9c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b24:	00000613          	li	a2,0
    80006b28:	00000597          	auipc	a1,0x0
    80006b2c:	c6c58593          	addi	a1,a1,-916 # 80006794 <_ZL11workerBodyCPv>
    80006b30:	fe040513          	addi	a0,s0,-32
    80006b34:	ffffa097          	auipc	ra,0xffffa
    80006b38:	69c080e7          	jalr	1692(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006b3c:	00004517          	auipc	a0,0x4
    80006b40:	8dc50513          	addi	a0,a0,-1828 # 8000a418 <CONSOLE_STATUS+0x408>
    80006b44:	fffff097          	auipc	ra,0xfffff
    80006b48:	158080e7          	jalr	344(ra) # 80005c9c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b4c:	00000613          	li	a2,0
    80006b50:	00000597          	auipc	a1,0x0
    80006b54:	afc58593          	addi	a1,a1,-1284 # 8000664c <_ZL11workerBodyDPv>
    80006b58:	fe840513          	addi	a0,s0,-24
    80006b5c:	ffffa097          	auipc	ra,0xffffa
    80006b60:	674080e7          	jalr	1652(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006b64:	00004517          	auipc	a0,0x4
    80006b68:	8cc50513          	addi	a0,a0,-1844 # 8000a430 <CONSOLE_STATUS+0x420>
    80006b6c:	fffff097          	auipc	ra,0xfffff
    80006b70:	130080e7          	jalr	304(ra) # 80005c9c <_Z11printStringPKc>
    80006b74:	00c0006f          	j	80006b80 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b78:	ffffa097          	auipc	ra,0xffffa
    80006b7c:	6f4080e7          	jalr	1780(ra) # 8000126c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b80:	00006797          	auipc	a5,0x6
    80006b84:	fed7c783          	lbu	a5,-19(a5) # 8000cb6d <_ZL9finishedA>
    80006b88:	fe0788e3          	beqz	a5,80006b78 <_Z16System_Mode_testv+0xb4>
    80006b8c:	00006797          	auipc	a5,0x6
    80006b90:	fe07c783          	lbu	a5,-32(a5) # 8000cb6c <_ZL9finishedB>
    80006b94:	fe0782e3          	beqz	a5,80006b78 <_Z16System_Mode_testv+0xb4>
    80006b98:	00006797          	auipc	a5,0x6
    80006b9c:	fd37c783          	lbu	a5,-45(a5) # 8000cb6b <_ZL9finishedC>
    80006ba0:	fc078ce3          	beqz	a5,80006b78 <_Z16System_Mode_testv+0xb4>
    80006ba4:	00006797          	auipc	a5,0x6
    80006ba8:	fc67c783          	lbu	a5,-58(a5) # 8000cb6a <_ZL9finishedD>
    80006bac:	fc0786e3          	beqz	a5,80006b78 <_Z16System_Mode_testv+0xb4>
    }

}
    80006bb0:	02813083          	ld	ra,40(sp)
    80006bb4:	02013403          	ld	s0,32(sp)
    80006bb8:	03010113          	addi	sp,sp,48
    80006bbc:	00008067          	ret

0000000080006bc0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006bc0:	fe010113          	addi	sp,sp,-32
    80006bc4:	00113c23          	sd	ra,24(sp)
    80006bc8:	00813823          	sd	s0,16(sp)
    80006bcc:	00913423          	sd	s1,8(sp)
    80006bd0:	01213023          	sd	s2,0(sp)
    80006bd4:	02010413          	addi	s0,sp,32
    80006bd8:	00050493          	mv	s1,a0
    80006bdc:	00058913          	mv	s2,a1
    80006be0:	0015879b          	addiw	a5,a1,1
    80006be4:	0007851b          	sext.w	a0,a5
    80006be8:	00f4a023          	sw	a5,0(s1)
    80006bec:	0004a823          	sw	zero,16(s1)
    80006bf0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006bf4:	00251513          	slli	a0,a0,0x2
    80006bf8:	ffffa097          	auipc	ra,0xffffa
    80006bfc:	568080e7          	jalr	1384(ra) # 80001160 <_Z9mem_allocm>
    80006c00:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006c04:	00000593          	li	a1,0
    80006c08:	02048513          	addi	a0,s1,32
    80006c0c:	ffffa097          	auipc	ra,0xffffa
    80006c10:	6b8080e7          	jalr	1720(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006c14:	00090593          	mv	a1,s2
    80006c18:	01848513          	addi	a0,s1,24
    80006c1c:	ffffa097          	auipc	ra,0xffffa
    80006c20:	6a8080e7          	jalr	1704(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006c24:	00100593          	li	a1,1
    80006c28:	02848513          	addi	a0,s1,40
    80006c2c:	ffffa097          	auipc	ra,0xffffa
    80006c30:	698080e7          	jalr	1688(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006c34:	00100593          	li	a1,1
    80006c38:	03048513          	addi	a0,s1,48
    80006c3c:	ffffa097          	auipc	ra,0xffffa
    80006c40:	688080e7          	jalr	1672(ra) # 800012c4 <_Z8sem_openPP4_semj>
}
    80006c44:	01813083          	ld	ra,24(sp)
    80006c48:	01013403          	ld	s0,16(sp)
    80006c4c:	00813483          	ld	s1,8(sp)
    80006c50:	00013903          	ld	s2,0(sp)
    80006c54:	02010113          	addi	sp,sp,32
    80006c58:	00008067          	ret

0000000080006c5c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006c5c:	fe010113          	addi	sp,sp,-32
    80006c60:	00113c23          	sd	ra,24(sp)
    80006c64:	00813823          	sd	s0,16(sp)
    80006c68:	00913423          	sd	s1,8(sp)
    80006c6c:	01213023          	sd	s2,0(sp)
    80006c70:	02010413          	addi	s0,sp,32
    80006c74:	00050493          	mv	s1,a0
    80006c78:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006c7c:	01853503          	ld	a0,24(a0)
    80006c80:	ffffa097          	auipc	ra,0xffffa
    80006c84:	6bc080e7          	jalr	1724(ra) # 8000133c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006c88:	0304b503          	ld	a0,48(s1)
    80006c8c:	ffffa097          	auipc	ra,0xffffa
    80006c90:	6b0080e7          	jalr	1712(ra) # 8000133c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006c94:	0084b783          	ld	a5,8(s1)
    80006c98:	0144a703          	lw	a4,20(s1)
    80006c9c:	00271713          	slli	a4,a4,0x2
    80006ca0:	00e787b3          	add	a5,a5,a4
    80006ca4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006ca8:	0144a783          	lw	a5,20(s1)
    80006cac:	0017879b          	addiw	a5,a5,1
    80006cb0:	0004a703          	lw	a4,0(s1)
    80006cb4:	02e7e7bb          	remw	a5,a5,a4
    80006cb8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006cbc:	0304b503          	ld	a0,48(s1)
    80006cc0:	ffffa097          	auipc	ra,0xffffa
    80006cc4:	6bc080e7          	jalr	1724(ra) # 8000137c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006cc8:	0204b503          	ld	a0,32(s1)
    80006ccc:	ffffa097          	auipc	ra,0xffffa
    80006cd0:	6b0080e7          	jalr	1712(ra) # 8000137c <_Z10sem_signalP4_sem>

}
    80006cd4:	01813083          	ld	ra,24(sp)
    80006cd8:	01013403          	ld	s0,16(sp)
    80006cdc:	00813483          	ld	s1,8(sp)
    80006ce0:	00013903          	ld	s2,0(sp)
    80006ce4:	02010113          	addi	sp,sp,32
    80006ce8:	00008067          	ret

0000000080006cec <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006cec:	fe010113          	addi	sp,sp,-32
    80006cf0:	00113c23          	sd	ra,24(sp)
    80006cf4:	00813823          	sd	s0,16(sp)
    80006cf8:	00913423          	sd	s1,8(sp)
    80006cfc:	01213023          	sd	s2,0(sp)
    80006d00:	02010413          	addi	s0,sp,32
    80006d04:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006d08:	02053503          	ld	a0,32(a0)
    80006d0c:	ffffa097          	auipc	ra,0xffffa
    80006d10:	630080e7          	jalr	1584(ra) # 8000133c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006d14:	0284b503          	ld	a0,40(s1)
    80006d18:	ffffa097          	auipc	ra,0xffffa
    80006d1c:	624080e7          	jalr	1572(ra) # 8000133c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006d20:	0084b703          	ld	a4,8(s1)
    80006d24:	0104a783          	lw	a5,16(s1)
    80006d28:	00279693          	slli	a3,a5,0x2
    80006d2c:	00d70733          	add	a4,a4,a3
    80006d30:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006d34:	0017879b          	addiw	a5,a5,1
    80006d38:	0004a703          	lw	a4,0(s1)
    80006d3c:	02e7e7bb          	remw	a5,a5,a4
    80006d40:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006d44:	0284b503          	ld	a0,40(s1)
    80006d48:	ffffa097          	auipc	ra,0xffffa
    80006d4c:	634080e7          	jalr	1588(ra) # 8000137c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006d50:	0184b503          	ld	a0,24(s1)
    80006d54:	ffffa097          	auipc	ra,0xffffa
    80006d58:	628080e7          	jalr	1576(ra) # 8000137c <_Z10sem_signalP4_sem>

    return ret;
}
    80006d5c:	00090513          	mv	a0,s2
    80006d60:	01813083          	ld	ra,24(sp)
    80006d64:	01013403          	ld	s0,16(sp)
    80006d68:	00813483          	ld	s1,8(sp)
    80006d6c:	00013903          	ld	s2,0(sp)
    80006d70:	02010113          	addi	sp,sp,32
    80006d74:	00008067          	ret

0000000080006d78 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006d78:	fe010113          	addi	sp,sp,-32
    80006d7c:	00113c23          	sd	ra,24(sp)
    80006d80:	00813823          	sd	s0,16(sp)
    80006d84:	00913423          	sd	s1,8(sp)
    80006d88:	01213023          	sd	s2,0(sp)
    80006d8c:	02010413          	addi	s0,sp,32
    80006d90:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006d94:	02853503          	ld	a0,40(a0)
    80006d98:	ffffa097          	auipc	ra,0xffffa
    80006d9c:	5a4080e7          	jalr	1444(ra) # 8000133c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006da0:	0304b503          	ld	a0,48(s1)
    80006da4:	ffffa097          	auipc	ra,0xffffa
    80006da8:	598080e7          	jalr	1432(ra) # 8000133c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006dac:	0144a783          	lw	a5,20(s1)
    80006db0:	0104a903          	lw	s2,16(s1)
    80006db4:	0327ce63          	blt	a5,s2,80006df0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006db8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006dbc:	0304b503          	ld	a0,48(s1)
    80006dc0:	ffffa097          	auipc	ra,0xffffa
    80006dc4:	5bc080e7          	jalr	1468(ra) # 8000137c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006dc8:	0284b503          	ld	a0,40(s1)
    80006dcc:	ffffa097          	auipc	ra,0xffffa
    80006dd0:	5b0080e7          	jalr	1456(ra) # 8000137c <_Z10sem_signalP4_sem>

    return ret;
}
    80006dd4:	00090513          	mv	a0,s2
    80006dd8:	01813083          	ld	ra,24(sp)
    80006ddc:	01013403          	ld	s0,16(sp)
    80006de0:	00813483          	ld	s1,8(sp)
    80006de4:	00013903          	ld	s2,0(sp)
    80006de8:	02010113          	addi	sp,sp,32
    80006dec:	00008067          	ret
        ret = cap - head + tail;
    80006df0:	0004a703          	lw	a4,0(s1)
    80006df4:	4127093b          	subw	s2,a4,s2
    80006df8:	00f9093b          	addw	s2,s2,a5
    80006dfc:	fc1ff06f          	j	80006dbc <_ZN6Buffer6getCntEv+0x44>

0000000080006e00 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006e00:	fe010113          	addi	sp,sp,-32
    80006e04:	00113c23          	sd	ra,24(sp)
    80006e08:	00813823          	sd	s0,16(sp)
    80006e0c:	00913423          	sd	s1,8(sp)
    80006e10:	02010413          	addi	s0,sp,32
    80006e14:	00050493          	mv	s1,a0
    putc('\n');
    80006e18:	00a00513          	li	a0,10
    80006e1c:	ffffa097          	auipc	ra,0xffffa
    80006e20:	62c080e7          	jalr	1580(ra) # 80001448 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006e24:	00003517          	auipc	a0,0x3
    80006e28:	62450513          	addi	a0,a0,1572 # 8000a448 <CONSOLE_STATUS+0x438>
    80006e2c:	fffff097          	auipc	ra,0xfffff
    80006e30:	e70080e7          	jalr	-400(ra) # 80005c9c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006e34:	00048513          	mv	a0,s1
    80006e38:	00000097          	auipc	ra,0x0
    80006e3c:	f40080e7          	jalr	-192(ra) # 80006d78 <_ZN6Buffer6getCntEv>
    80006e40:	02a05c63          	blez	a0,80006e78 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006e44:	0084b783          	ld	a5,8(s1)
    80006e48:	0104a703          	lw	a4,16(s1)
    80006e4c:	00271713          	slli	a4,a4,0x2
    80006e50:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006e54:	0007c503          	lbu	a0,0(a5)
    80006e58:	ffffa097          	auipc	ra,0xffffa
    80006e5c:	5f0080e7          	jalr	1520(ra) # 80001448 <_Z4putcc>
        head = (head + 1) % cap;
    80006e60:	0104a783          	lw	a5,16(s1)
    80006e64:	0017879b          	addiw	a5,a5,1
    80006e68:	0004a703          	lw	a4,0(s1)
    80006e6c:	02e7e7bb          	remw	a5,a5,a4
    80006e70:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006e74:	fc1ff06f          	j	80006e34 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006e78:	02100513          	li	a0,33
    80006e7c:	ffffa097          	auipc	ra,0xffffa
    80006e80:	5cc080e7          	jalr	1484(ra) # 80001448 <_Z4putcc>
    putc('\n');
    80006e84:	00a00513          	li	a0,10
    80006e88:	ffffa097          	auipc	ra,0xffffa
    80006e8c:	5c0080e7          	jalr	1472(ra) # 80001448 <_Z4putcc>
    mem_free(buffer);
    80006e90:	0084b503          	ld	a0,8(s1)
    80006e94:	ffffa097          	auipc	ra,0xffffa
    80006e98:	304080e7          	jalr	772(ra) # 80001198 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006e9c:	0204b503          	ld	a0,32(s1)
    80006ea0:	ffffa097          	auipc	ra,0xffffa
    80006ea4:	464080e7          	jalr	1124(ra) # 80001304 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006ea8:	0184b503          	ld	a0,24(s1)
    80006eac:	ffffa097          	auipc	ra,0xffffa
    80006eb0:	458080e7          	jalr	1112(ra) # 80001304 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006eb4:	0304b503          	ld	a0,48(s1)
    80006eb8:	ffffa097          	auipc	ra,0xffffa
    80006ebc:	44c080e7          	jalr	1100(ra) # 80001304 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006ec0:	0284b503          	ld	a0,40(s1)
    80006ec4:	ffffa097          	auipc	ra,0xffffa
    80006ec8:	440080e7          	jalr	1088(ra) # 80001304 <_Z9sem_closeP4_sem>
}
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	00813483          	ld	s1,8(sp)
    80006ed8:	02010113          	addi	sp,sp,32
    80006edc:	00008067          	ret

0000000080006ee0 <start>:
    80006ee0:	ff010113          	addi	sp,sp,-16
    80006ee4:	00813423          	sd	s0,8(sp)
    80006ee8:	01010413          	addi	s0,sp,16
    80006eec:	300027f3          	csrr	a5,mstatus
    80006ef0:	ffffe737          	lui	a4,0xffffe
    80006ef4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff0a2f>
    80006ef8:	00e7f7b3          	and	a5,a5,a4
    80006efc:	00001737          	lui	a4,0x1
    80006f00:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006f04:	00e7e7b3          	or	a5,a5,a4
    80006f08:	30079073          	csrw	mstatus,a5
    80006f0c:	00000797          	auipc	a5,0x0
    80006f10:	16078793          	addi	a5,a5,352 # 8000706c <system_main>
    80006f14:	34179073          	csrw	mepc,a5
    80006f18:	00000793          	li	a5,0
    80006f1c:	18079073          	csrw	satp,a5
    80006f20:	000107b7          	lui	a5,0x10
    80006f24:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f28:	30279073          	csrw	medeleg,a5
    80006f2c:	30379073          	csrw	mideleg,a5
    80006f30:	104027f3          	csrr	a5,sie
    80006f34:	2227e793          	ori	a5,a5,546
    80006f38:	10479073          	csrw	sie,a5
    80006f3c:	fff00793          	li	a5,-1
    80006f40:	00a7d793          	srli	a5,a5,0xa
    80006f44:	3b079073          	csrw	pmpaddr0,a5
    80006f48:	00f00793          	li	a5,15
    80006f4c:	3a079073          	csrw	pmpcfg0,a5
    80006f50:	f14027f3          	csrr	a5,mhartid
    80006f54:	0200c737          	lui	a4,0x200c
    80006f58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f5c:	0007869b          	sext.w	a3,a5
    80006f60:	00269713          	slli	a4,a3,0x2
    80006f64:	000f4637          	lui	a2,0xf4
    80006f68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f6c:	00d70733          	add	a4,a4,a3
    80006f70:	0037979b          	slliw	a5,a5,0x3
    80006f74:	020046b7          	lui	a3,0x2004
    80006f78:	00d787b3          	add	a5,a5,a3
    80006f7c:	00c585b3          	add	a1,a1,a2
    80006f80:	00371693          	slli	a3,a4,0x3
    80006f84:	00006717          	auipc	a4,0x6
    80006f88:	bec70713          	addi	a4,a4,-1044 # 8000cb70 <timer_scratch>
    80006f8c:	00b7b023          	sd	a1,0(a5)
    80006f90:	00d70733          	add	a4,a4,a3
    80006f94:	00f73c23          	sd	a5,24(a4)
    80006f98:	02c73023          	sd	a2,32(a4)
    80006f9c:	34071073          	csrw	mscratch,a4
    80006fa0:	00000797          	auipc	a5,0x0
    80006fa4:	6e078793          	addi	a5,a5,1760 # 80007680 <timervec>
    80006fa8:	30579073          	csrw	mtvec,a5
    80006fac:	300027f3          	csrr	a5,mstatus
    80006fb0:	0087e793          	ori	a5,a5,8
    80006fb4:	30079073          	csrw	mstatus,a5
    80006fb8:	304027f3          	csrr	a5,mie
    80006fbc:	0807e793          	ori	a5,a5,128
    80006fc0:	30479073          	csrw	mie,a5
    80006fc4:	f14027f3          	csrr	a5,mhartid
    80006fc8:	0007879b          	sext.w	a5,a5
    80006fcc:	00078213          	mv	tp,a5
    80006fd0:	30200073          	mret
    80006fd4:	00813403          	ld	s0,8(sp)
    80006fd8:	01010113          	addi	sp,sp,16
    80006fdc:	00008067          	ret

0000000080006fe0 <timerinit>:
    80006fe0:	ff010113          	addi	sp,sp,-16
    80006fe4:	00813423          	sd	s0,8(sp)
    80006fe8:	01010413          	addi	s0,sp,16
    80006fec:	f14027f3          	csrr	a5,mhartid
    80006ff0:	0200c737          	lui	a4,0x200c
    80006ff4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ff8:	0007869b          	sext.w	a3,a5
    80006ffc:	00269713          	slli	a4,a3,0x2
    80007000:	000f4637          	lui	a2,0xf4
    80007004:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007008:	00d70733          	add	a4,a4,a3
    8000700c:	0037979b          	slliw	a5,a5,0x3
    80007010:	020046b7          	lui	a3,0x2004
    80007014:	00d787b3          	add	a5,a5,a3
    80007018:	00c585b3          	add	a1,a1,a2
    8000701c:	00371693          	slli	a3,a4,0x3
    80007020:	00006717          	auipc	a4,0x6
    80007024:	b5070713          	addi	a4,a4,-1200 # 8000cb70 <timer_scratch>
    80007028:	00b7b023          	sd	a1,0(a5)
    8000702c:	00d70733          	add	a4,a4,a3
    80007030:	00f73c23          	sd	a5,24(a4)
    80007034:	02c73023          	sd	a2,32(a4)
    80007038:	34071073          	csrw	mscratch,a4
    8000703c:	00000797          	auipc	a5,0x0
    80007040:	64478793          	addi	a5,a5,1604 # 80007680 <timervec>
    80007044:	30579073          	csrw	mtvec,a5
    80007048:	300027f3          	csrr	a5,mstatus
    8000704c:	0087e793          	ori	a5,a5,8
    80007050:	30079073          	csrw	mstatus,a5
    80007054:	304027f3          	csrr	a5,mie
    80007058:	0807e793          	ori	a5,a5,128
    8000705c:	30479073          	csrw	mie,a5
    80007060:	00813403          	ld	s0,8(sp)
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00008067          	ret

000000008000706c <system_main>:
    8000706c:	fe010113          	addi	sp,sp,-32
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00913423          	sd	s1,8(sp)
    80007078:	00113c23          	sd	ra,24(sp)
    8000707c:	02010413          	addi	s0,sp,32
    80007080:	00000097          	auipc	ra,0x0
    80007084:	0c4080e7          	jalr	196(ra) # 80007144 <cpuid>
    80007088:	00006497          	auipc	s1,0x6
    8000708c:	9d848493          	addi	s1,s1,-1576 # 8000ca60 <started>
    80007090:	02050263          	beqz	a0,800070b4 <system_main+0x48>
    80007094:	0004a783          	lw	a5,0(s1)
    80007098:	0007879b          	sext.w	a5,a5
    8000709c:	fe078ce3          	beqz	a5,80007094 <system_main+0x28>
    800070a0:	0ff0000f          	fence
    800070a4:	00003517          	auipc	a0,0x3
    800070a8:	63450513          	addi	a0,a0,1588 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800070ac:	00001097          	auipc	ra,0x1
    800070b0:	a70080e7          	jalr	-1424(ra) # 80007b1c <panic>
    800070b4:	00001097          	auipc	ra,0x1
    800070b8:	9c4080e7          	jalr	-1596(ra) # 80007a78 <consoleinit>
    800070bc:	00001097          	auipc	ra,0x1
    800070c0:	150080e7          	jalr	336(ra) # 8000820c <printfinit>
    800070c4:	00003517          	auipc	a0,0x3
    800070c8:	50c50513          	addi	a0,a0,1292 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	aac080e7          	jalr	-1364(ra) # 80007b78 <__printf>
    800070d4:	00003517          	auipc	a0,0x3
    800070d8:	5d450513          	addi	a0,a0,1492 # 8000a6a8 <CONSOLE_STATUS+0x698>
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	a9c080e7          	jalr	-1380(ra) # 80007b78 <__printf>
    800070e4:	00003517          	auipc	a0,0x3
    800070e8:	4ec50513          	addi	a0,a0,1260 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	a8c080e7          	jalr	-1396(ra) # 80007b78 <__printf>
    800070f4:	00001097          	auipc	ra,0x1
    800070f8:	4a4080e7          	jalr	1188(ra) # 80008598 <kinit>
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	148080e7          	jalr	328(ra) # 80007244 <trapinit>
    80007104:	00000097          	auipc	ra,0x0
    80007108:	16c080e7          	jalr	364(ra) # 80007270 <trapinithart>
    8000710c:	00000097          	auipc	ra,0x0
    80007110:	5b4080e7          	jalr	1460(ra) # 800076c0 <plicinit>
    80007114:	00000097          	auipc	ra,0x0
    80007118:	5d4080e7          	jalr	1492(ra) # 800076e8 <plicinithart>
    8000711c:	00000097          	auipc	ra,0x0
    80007120:	078080e7          	jalr	120(ra) # 80007194 <userinit>
    80007124:	0ff0000f          	fence
    80007128:	00100793          	li	a5,1
    8000712c:	00003517          	auipc	a0,0x3
    80007130:	59450513          	addi	a0,a0,1428 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80007134:	00f4a023          	sw	a5,0(s1)
    80007138:	00001097          	auipc	ra,0x1
    8000713c:	a40080e7          	jalr	-1472(ra) # 80007b78 <__printf>
    80007140:	0000006f          	j	80007140 <system_main+0xd4>

0000000080007144 <cpuid>:
    80007144:	ff010113          	addi	sp,sp,-16
    80007148:	00813423          	sd	s0,8(sp)
    8000714c:	01010413          	addi	s0,sp,16
    80007150:	00020513          	mv	a0,tp
    80007154:	00813403          	ld	s0,8(sp)
    80007158:	0005051b          	sext.w	a0,a0
    8000715c:	01010113          	addi	sp,sp,16
    80007160:	00008067          	ret

0000000080007164 <mycpu>:
    80007164:	ff010113          	addi	sp,sp,-16
    80007168:	00813423          	sd	s0,8(sp)
    8000716c:	01010413          	addi	s0,sp,16
    80007170:	00020793          	mv	a5,tp
    80007174:	00813403          	ld	s0,8(sp)
    80007178:	0007879b          	sext.w	a5,a5
    8000717c:	00779793          	slli	a5,a5,0x7
    80007180:	00007517          	auipc	a0,0x7
    80007184:	a2050513          	addi	a0,a0,-1504 # 8000dba0 <cpus>
    80007188:	00f50533          	add	a0,a0,a5
    8000718c:	01010113          	addi	sp,sp,16
    80007190:	00008067          	ret

0000000080007194 <userinit>:
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00813423          	sd	s0,8(sp)
    8000719c:	01010413          	addi	s0,sp,16
    800071a0:	00813403          	ld	s0,8(sp)
    800071a4:	01010113          	addi	sp,sp,16
    800071a8:	ffffb317          	auipc	t1,0xffffb
    800071ac:	fb430067          	jr	-76(t1) # 8000215c <main>

00000000800071b0 <either_copyout>:
    800071b0:	ff010113          	addi	sp,sp,-16
    800071b4:	00813023          	sd	s0,0(sp)
    800071b8:	00113423          	sd	ra,8(sp)
    800071bc:	01010413          	addi	s0,sp,16
    800071c0:	02051663          	bnez	a0,800071ec <either_copyout+0x3c>
    800071c4:	00058513          	mv	a0,a1
    800071c8:	00060593          	mv	a1,a2
    800071cc:	0006861b          	sext.w	a2,a3
    800071d0:	00002097          	auipc	ra,0x2
    800071d4:	c54080e7          	jalr	-940(ra) # 80008e24 <__memmove>
    800071d8:	00813083          	ld	ra,8(sp)
    800071dc:	00013403          	ld	s0,0(sp)
    800071e0:	00000513          	li	a0,0
    800071e4:	01010113          	addi	sp,sp,16
    800071e8:	00008067          	ret
    800071ec:	00003517          	auipc	a0,0x3
    800071f0:	51450513          	addi	a0,a0,1300 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800071f4:	00001097          	auipc	ra,0x1
    800071f8:	928080e7          	jalr	-1752(ra) # 80007b1c <panic>

00000000800071fc <either_copyin>:
    800071fc:	ff010113          	addi	sp,sp,-16
    80007200:	00813023          	sd	s0,0(sp)
    80007204:	00113423          	sd	ra,8(sp)
    80007208:	01010413          	addi	s0,sp,16
    8000720c:	02059463          	bnez	a1,80007234 <either_copyin+0x38>
    80007210:	00060593          	mv	a1,a2
    80007214:	0006861b          	sext.w	a2,a3
    80007218:	00002097          	auipc	ra,0x2
    8000721c:	c0c080e7          	jalr	-1012(ra) # 80008e24 <__memmove>
    80007220:	00813083          	ld	ra,8(sp)
    80007224:	00013403          	ld	s0,0(sp)
    80007228:	00000513          	li	a0,0
    8000722c:	01010113          	addi	sp,sp,16
    80007230:	00008067          	ret
    80007234:	00003517          	auipc	a0,0x3
    80007238:	4f450513          	addi	a0,a0,1268 # 8000a728 <CONSOLE_STATUS+0x718>
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	8e0080e7          	jalr	-1824(ra) # 80007b1c <panic>

0000000080007244 <trapinit>:
    80007244:	ff010113          	addi	sp,sp,-16
    80007248:	00813423          	sd	s0,8(sp)
    8000724c:	01010413          	addi	s0,sp,16
    80007250:	00813403          	ld	s0,8(sp)
    80007254:	00003597          	auipc	a1,0x3
    80007258:	4fc58593          	addi	a1,a1,1276 # 8000a750 <CONSOLE_STATUS+0x740>
    8000725c:	00007517          	auipc	a0,0x7
    80007260:	9c450513          	addi	a0,a0,-1596 # 8000dc20 <tickslock>
    80007264:	01010113          	addi	sp,sp,16
    80007268:	00001317          	auipc	t1,0x1
    8000726c:	5c030067          	jr	1472(t1) # 80008828 <initlock>

0000000080007270 <trapinithart>:
    80007270:	ff010113          	addi	sp,sp,-16
    80007274:	00813423          	sd	s0,8(sp)
    80007278:	01010413          	addi	s0,sp,16
    8000727c:	00000797          	auipc	a5,0x0
    80007280:	2f478793          	addi	a5,a5,756 # 80007570 <kernelvec>
    80007284:	10579073          	csrw	stvec,a5
    80007288:	00813403          	ld	s0,8(sp)
    8000728c:	01010113          	addi	sp,sp,16
    80007290:	00008067          	ret

0000000080007294 <usertrap>:
    80007294:	ff010113          	addi	sp,sp,-16
    80007298:	00813423          	sd	s0,8(sp)
    8000729c:	01010413          	addi	s0,sp,16
    800072a0:	00813403          	ld	s0,8(sp)
    800072a4:	01010113          	addi	sp,sp,16
    800072a8:	00008067          	ret

00000000800072ac <usertrapret>:
    800072ac:	ff010113          	addi	sp,sp,-16
    800072b0:	00813423          	sd	s0,8(sp)
    800072b4:	01010413          	addi	s0,sp,16
    800072b8:	00813403          	ld	s0,8(sp)
    800072bc:	01010113          	addi	sp,sp,16
    800072c0:	00008067          	ret

00000000800072c4 <kerneltrap>:
    800072c4:	fe010113          	addi	sp,sp,-32
    800072c8:	00813823          	sd	s0,16(sp)
    800072cc:	00113c23          	sd	ra,24(sp)
    800072d0:	00913423          	sd	s1,8(sp)
    800072d4:	02010413          	addi	s0,sp,32
    800072d8:	142025f3          	csrr	a1,scause
    800072dc:	100027f3          	csrr	a5,sstatus
    800072e0:	0027f793          	andi	a5,a5,2
    800072e4:	10079c63          	bnez	a5,800073fc <kerneltrap+0x138>
    800072e8:	142027f3          	csrr	a5,scause
    800072ec:	0207ce63          	bltz	a5,80007328 <kerneltrap+0x64>
    800072f0:	00003517          	auipc	a0,0x3
    800072f4:	4a850513          	addi	a0,a0,1192 # 8000a798 <CONSOLE_STATUS+0x788>
    800072f8:	00001097          	auipc	ra,0x1
    800072fc:	880080e7          	jalr	-1920(ra) # 80007b78 <__printf>
    80007300:	141025f3          	csrr	a1,sepc
    80007304:	14302673          	csrr	a2,stval
    80007308:	00003517          	auipc	a0,0x3
    8000730c:	4a050513          	addi	a0,a0,1184 # 8000a7a8 <CONSOLE_STATUS+0x798>
    80007310:	00001097          	auipc	ra,0x1
    80007314:	868080e7          	jalr	-1944(ra) # 80007b78 <__printf>
    80007318:	00003517          	auipc	a0,0x3
    8000731c:	4a850513          	addi	a0,a0,1192 # 8000a7c0 <CONSOLE_STATUS+0x7b0>
    80007320:	00000097          	auipc	ra,0x0
    80007324:	7fc080e7          	jalr	2044(ra) # 80007b1c <panic>
    80007328:	0ff7f713          	andi	a4,a5,255
    8000732c:	00900693          	li	a3,9
    80007330:	04d70063          	beq	a4,a3,80007370 <kerneltrap+0xac>
    80007334:	fff00713          	li	a4,-1
    80007338:	03f71713          	slli	a4,a4,0x3f
    8000733c:	00170713          	addi	a4,a4,1
    80007340:	fae798e3          	bne	a5,a4,800072f0 <kerneltrap+0x2c>
    80007344:	00000097          	auipc	ra,0x0
    80007348:	e00080e7          	jalr	-512(ra) # 80007144 <cpuid>
    8000734c:	06050663          	beqz	a0,800073b8 <kerneltrap+0xf4>
    80007350:	144027f3          	csrr	a5,sip
    80007354:	ffd7f793          	andi	a5,a5,-3
    80007358:	14479073          	csrw	sip,a5
    8000735c:	01813083          	ld	ra,24(sp)
    80007360:	01013403          	ld	s0,16(sp)
    80007364:	00813483          	ld	s1,8(sp)
    80007368:	02010113          	addi	sp,sp,32
    8000736c:	00008067          	ret
    80007370:	00000097          	auipc	ra,0x0
    80007374:	3c4080e7          	jalr	964(ra) # 80007734 <plic_claim>
    80007378:	00a00793          	li	a5,10
    8000737c:	00050493          	mv	s1,a0
    80007380:	06f50863          	beq	a0,a5,800073f0 <kerneltrap+0x12c>
    80007384:	fc050ce3          	beqz	a0,8000735c <kerneltrap+0x98>
    80007388:	00050593          	mv	a1,a0
    8000738c:	00003517          	auipc	a0,0x3
    80007390:	3ec50513          	addi	a0,a0,1004 # 8000a778 <CONSOLE_STATUS+0x768>
    80007394:	00000097          	auipc	ra,0x0
    80007398:	7e4080e7          	jalr	2020(ra) # 80007b78 <__printf>
    8000739c:	01013403          	ld	s0,16(sp)
    800073a0:	01813083          	ld	ra,24(sp)
    800073a4:	00048513          	mv	a0,s1
    800073a8:	00813483          	ld	s1,8(sp)
    800073ac:	02010113          	addi	sp,sp,32
    800073b0:	00000317          	auipc	t1,0x0
    800073b4:	3bc30067          	jr	956(t1) # 8000776c <plic_complete>
    800073b8:	00007517          	auipc	a0,0x7
    800073bc:	86850513          	addi	a0,a0,-1944 # 8000dc20 <tickslock>
    800073c0:	00001097          	auipc	ra,0x1
    800073c4:	48c080e7          	jalr	1164(ra) # 8000884c <acquire>
    800073c8:	00005717          	auipc	a4,0x5
    800073cc:	69c70713          	addi	a4,a4,1692 # 8000ca64 <ticks>
    800073d0:	00072783          	lw	a5,0(a4)
    800073d4:	00007517          	auipc	a0,0x7
    800073d8:	84c50513          	addi	a0,a0,-1972 # 8000dc20 <tickslock>
    800073dc:	0017879b          	addiw	a5,a5,1
    800073e0:	00f72023          	sw	a5,0(a4)
    800073e4:	00001097          	auipc	ra,0x1
    800073e8:	534080e7          	jalr	1332(ra) # 80008918 <release>
    800073ec:	f65ff06f          	j	80007350 <kerneltrap+0x8c>
    800073f0:	00001097          	auipc	ra,0x1
    800073f4:	090080e7          	jalr	144(ra) # 80008480 <uartintr>
    800073f8:	fa5ff06f          	j	8000739c <kerneltrap+0xd8>
    800073fc:	00003517          	auipc	a0,0x3
    80007400:	35c50513          	addi	a0,a0,860 # 8000a758 <CONSOLE_STATUS+0x748>
    80007404:	00000097          	auipc	ra,0x0
    80007408:	718080e7          	jalr	1816(ra) # 80007b1c <panic>

000000008000740c <clockintr>:
    8000740c:	fe010113          	addi	sp,sp,-32
    80007410:	00813823          	sd	s0,16(sp)
    80007414:	00913423          	sd	s1,8(sp)
    80007418:	00113c23          	sd	ra,24(sp)
    8000741c:	02010413          	addi	s0,sp,32
    80007420:	00007497          	auipc	s1,0x7
    80007424:	80048493          	addi	s1,s1,-2048 # 8000dc20 <tickslock>
    80007428:	00048513          	mv	a0,s1
    8000742c:	00001097          	auipc	ra,0x1
    80007430:	420080e7          	jalr	1056(ra) # 8000884c <acquire>
    80007434:	00005717          	auipc	a4,0x5
    80007438:	63070713          	addi	a4,a4,1584 # 8000ca64 <ticks>
    8000743c:	00072783          	lw	a5,0(a4)
    80007440:	01013403          	ld	s0,16(sp)
    80007444:	01813083          	ld	ra,24(sp)
    80007448:	00048513          	mv	a0,s1
    8000744c:	0017879b          	addiw	a5,a5,1
    80007450:	00813483          	ld	s1,8(sp)
    80007454:	00f72023          	sw	a5,0(a4)
    80007458:	02010113          	addi	sp,sp,32
    8000745c:	00001317          	auipc	t1,0x1
    80007460:	4bc30067          	jr	1212(t1) # 80008918 <release>

0000000080007464 <devintr>:
    80007464:	142027f3          	csrr	a5,scause
    80007468:	00000513          	li	a0,0
    8000746c:	0007c463          	bltz	a5,80007474 <devintr+0x10>
    80007470:	00008067          	ret
    80007474:	fe010113          	addi	sp,sp,-32
    80007478:	00813823          	sd	s0,16(sp)
    8000747c:	00113c23          	sd	ra,24(sp)
    80007480:	00913423          	sd	s1,8(sp)
    80007484:	02010413          	addi	s0,sp,32
    80007488:	0ff7f713          	andi	a4,a5,255
    8000748c:	00900693          	li	a3,9
    80007490:	04d70c63          	beq	a4,a3,800074e8 <devintr+0x84>
    80007494:	fff00713          	li	a4,-1
    80007498:	03f71713          	slli	a4,a4,0x3f
    8000749c:	00170713          	addi	a4,a4,1
    800074a0:	00e78c63          	beq	a5,a4,800074b8 <devintr+0x54>
    800074a4:	01813083          	ld	ra,24(sp)
    800074a8:	01013403          	ld	s0,16(sp)
    800074ac:	00813483          	ld	s1,8(sp)
    800074b0:	02010113          	addi	sp,sp,32
    800074b4:	00008067          	ret
    800074b8:	00000097          	auipc	ra,0x0
    800074bc:	c8c080e7          	jalr	-884(ra) # 80007144 <cpuid>
    800074c0:	06050663          	beqz	a0,8000752c <devintr+0xc8>
    800074c4:	144027f3          	csrr	a5,sip
    800074c8:	ffd7f793          	andi	a5,a5,-3
    800074cc:	14479073          	csrw	sip,a5
    800074d0:	01813083          	ld	ra,24(sp)
    800074d4:	01013403          	ld	s0,16(sp)
    800074d8:	00813483          	ld	s1,8(sp)
    800074dc:	00200513          	li	a0,2
    800074e0:	02010113          	addi	sp,sp,32
    800074e4:	00008067          	ret
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	24c080e7          	jalr	588(ra) # 80007734 <plic_claim>
    800074f0:	00a00793          	li	a5,10
    800074f4:	00050493          	mv	s1,a0
    800074f8:	06f50663          	beq	a0,a5,80007564 <devintr+0x100>
    800074fc:	00100513          	li	a0,1
    80007500:	fa0482e3          	beqz	s1,800074a4 <devintr+0x40>
    80007504:	00048593          	mv	a1,s1
    80007508:	00003517          	auipc	a0,0x3
    8000750c:	27050513          	addi	a0,a0,624 # 8000a778 <CONSOLE_STATUS+0x768>
    80007510:	00000097          	auipc	ra,0x0
    80007514:	668080e7          	jalr	1640(ra) # 80007b78 <__printf>
    80007518:	00048513          	mv	a0,s1
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	250080e7          	jalr	592(ra) # 8000776c <plic_complete>
    80007524:	00100513          	li	a0,1
    80007528:	f7dff06f          	j	800074a4 <devintr+0x40>
    8000752c:	00006517          	auipc	a0,0x6
    80007530:	6f450513          	addi	a0,a0,1780 # 8000dc20 <tickslock>
    80007534:	00001097          	auipc	ra,0x1
    80007538:	318080e7          	jalr	792(ra) # 8000884c <acquire>
    8000753c:	00005717          	auipc	a4,0x5
    80007540:	52870713          	addi	a4,a4,1320 # 8000ca64 <ticks>
    80007544:	00072783          	lw	a5,0(a4)
    80007548:	00006517          	auipc	a0,0x6
    8000754c:	6d850513          	addi	a0,a0,1752 # 8000dc20 <tickslock>
    80007550:	0017879b          	addiw	a5,a5,1
    80007554:	00f72023          	sw	a5,0(a4)
    80007558:	00001097          	auipc	ra,0x1
    8000755c:	3c0080e7          	jalr	960(ra) # 80008918 <release>
    80007560:	f65ff06f          	j	800074c4 <devintr+0x60>
    80007564:	00001097          	auipc	ra,0x1
    80007568:	f1c080e7          	jalr	-228(ra) # 80008480 <uartintr>
    8000756c:	fadff06f          	j	80007518 <devintr+0xb4>

0000000080007570 <kernelvec>:
    80007570:	f0010113          	addi	sp,sp,-256
    80007574:	00113023          	sd	ra,0(sp)
    80007578:	00213423          	sd	sp,8(sp)
    8000757c:	00313823          	sd	gp,16(sp)
    80007580:	00413c23          	sd	tp,24(sp)
    80007584:	02513023          	sd	t0,32(sp)
    80007588:	02613423          	sd	t1,40(sp)
    8000758c:	02713823          	sd	t2,48(sp)
    80007590:	02813c23          	sd	s0,56(sp)
    80007594:	04913023          	sd	s1,64(sp)
    80007598:	04a13423          	sd	a0,72(sp)
    8000759c:	04b13823          	sd	a1,80(sp)
    800075a0:	04c13c23          	sd	a2,88(sp)
    800075a4:	06d13023          	sd	a3,96(sp)
    800075a8:	06e13423          	sd	a4,104(sp)
    800075ac:	06f13823          	sd	a5,112(sp)
    800075b0:	07013c23          	sd	a6,120(sp)
    800075b4:	09113023          	sd	a7,128(sp)
    800075b8:	09213423          	sd	s2,136(sp)
    800075bc:	09313823          	sd	s3,144(sp)
    800075c0:	09413c23          	sd	s4,152(sp)
    800075c4:	0b513023          	sd	s5,160(sp)
    800075c8:	0b613423          	sd	s6,168(sp)
    800075cc:	0b713823          	sd	s7,176(sp)
    800075d0:	0b813c23          	sd	s8,184(sp)
    800075d4:	0d913023          	sd	s9,192(sp)
    800075d8:	0da13423          	sd	s10,200(sp)
    800075dc:	0db13823          	sd	s11,208(sp)
    800075e0:	0dc13c23          	sd	t3,216(sp)
    800075e4:	0fd13023          	sd	t4,224(sp)
    800075e8:	0fe13423          	sd	t5,232(sp)
    800075ec:	0ff13823          	sd	t6,240(sp)
    800075f0:	cd5ff0ef          	jal	ra,800072c4 <kerneltrap>
    800075f4:	00013083          	ld	ra,0(sp)
    800075f8:	00813103          	ld	sp,8(sp)
    800075fc:	01013183          	ld	gp,16(sp)
    80007600:	02013283          	ld	t0,32(sp)
    80007604:	02813303          	ld	t1,40(sp)
    80007608:	03013383          	ld	t2,48(sp)
    8000760c:	03813403          	ld	s0,56(sp)
    80007610:	04013483          	ld	s1,64(sp)
    80007614:	04813503          	ld	a0,72(sp)
    80007618:	05013583          	ld	a1,80(sp)
    8000761c:	05813603          	ld	a2,88(sp)
    80007620:	06013683          	ld	a3,96(sp)
    80007624:	06813703          	ld	a4,104(sp)
    80007628:	07013783          	ld	a5,112(sp)
    8000762c:	07813803          	ld	a6,120(sp)
    80007630:	08013883          	ld	a7,128(sp)
    80007634:	08813903          	ld	s2,136(sp)
    80007638:	09013983          	ld	s3,144(sp)
    8000763c:	09813a03          	ld	s4,152(sp)
    80007640:	0a013a83          	ld	s5,160(sp)
    80007644:	0a813b03          	ld	s6,168(sp)
    80007648:	0b013b83          	ld	s7,176(sp)
    8000764c:	0b813c03          	ld	s8,184(sp)
    80007650:	0c013c83          	ld	s9,192(sp)
    80007654:	0c813d03          	ld	s10,200(sp)
    80007658:	0d013d83          	ld	s11,208(sp)
    8000765c:	0d813e03          	ld	t3,216(sp)
    80007660:	0e013e83          	ld	t4,224(sp)
    80007664:	0e813f03          	ld	t5,232(sp)
    80007668:	0f013f83          	ld	t6,240(sp)
    8000766c:	10010113          	addi	sp,sp,256
    80007670:	10200073          	sret
    80007674:	00000013          	nop
    80007678:	00000013          	nop
    8000767c:	00000013          	nop

0000000080007680 <timervec>:
    80007680:	34051573          	csrrw	a0,mscratch,a0
    80007684:	00b53023          	sd	a1,0(a0)
    80007688:	00c53423          	sd	a2,8(a0)
    8000768c:	00d53823          	sd	a3,16(a0)
    80007690:	01853583          	ld	a1,24(a0)
    80007694:	02053603          	ld	a2,32(a0)
    80007698:	0005b683          	ld	a3,0(a1)
    8000769c:	00c686b3          	add	a3,a3,a2
    800076a0:	00d5b023          	sd	a3,0(a1)
    800076a4:	00200593          	li	a1,2
    800076a8:	14459073          	csrw	sip,a1
    800076ac:	01053683          	ld	a3,16(a0)
    800076b0:	00853603          	ld	a2,8(a0)
    800076b4:	00053583          	ld	a1,0(a0)
    800076b8:	34051573          	csrrw	a0,mscratch,a0
    800076bc:	30200073          	mret

00000000800076c0 <plicinit>:
    800076c0:	ff010113          	addi	sp,sp,-16
    800076c4:	00813423          	sd	s0,8(sp)
    800076c8:	01010413          	addi	s0,sp,16
    800076cc:	00813403          	ld	s0,8(sp)
    800076d0:	0c0007b7          	lui	a5,0xc000
    800076d4:	00100713          	li	a4,1
    800076d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800076dc:	00e7a223          	sw	a4,4(a5)
    800076e0:	01010113          	addi	sp,sp,16
    800076e4:	00008067          	ret

00000000800076e8 <plicinithart>:
    800076e8:	ff010113          	addi	sp,sp,-16
    800076ec:	00813023          	sd	s0,0(sp)
    800076f0:	00113423          	sd	ra,8(sp)
    800076f4:	01010413          	addi	s0,sp,16
    800076f8:	00000097          	auipc	ra,0x0
    800076fc:	a4c080e7          	jalr	-1460(ra) # 80007144 <cpuid>
    80007700:	0085171b          	slliw	a4,a0,0x8
    80007704:	0c0027b7          	lui	a5,0xc002
    80007708:	00e787b3          	add	a5,a5,a4
    8000770c:	40200713          	li	a4,1026
    80007710:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007714:	00813083          	ld	ra,8(sp)
    80007718:	00013403          	ld	s0,0(sp)
    8000771c:	00d5151b          	slliw	a0,a0,0xd
    80007720:	0c2017b7          	lui	a5,0xc201
    80007724:	00a78533          	add	a0,a5,a0
    80007728:	00052023          	sw	zero,0(a0)
    8000772c:	01010113          	addi	sp,sp,16
    80007730:	00008067          	ret

0000000080007734 <plic_claim>:
    80007734:	ff010113          	addi	sp,sp,-16
    80007738:	00813023          	sd	s0,0(sp)
    8000773c:	00113423          	sd	ra,8(sp)
    80007740:	01010413          	addi	s0,sp,16
    80007744:	00000097          	auipc	ra,0x0
    80007748:	a00080e7          	jalr	-1536(ra) # 80007144 <cpuid>
    8000774c:	00813083          	ld	ra,8(sp)
    80007750:	00013403          	ld	s0,0(sp)
    80007754:	00d5151b          	slliw	a0,a0,0xd
    80007758:	0c2017b7          	lui	a5,0xc201
    8000775c:	00a78533          	add	a0,a5,a0
    80007760:	00452503          	lw	a0,4(a0)
    80007764:	01010113          	addi	sp,sp,16
    80007768:	00008067          	ret

000000008000776c <plic_complete>:
    8000776c:	fe010113          	addi	sp,sp,-32
    80007770:	00813823          	sd	s0,16(sp)
    80007774:	00913423          	sd	s1,8(sp)
    80007778:	00113c23          	sd	ra,24(sp)
    8000777c:	02010413          	addi	s0,sp,32
    80007780:	00050493          	mv	s1,a0
    80007784:	00000097          	auipc	ra,0x0
    80007788:	9c0080e7          	jalr	-1600(ra) # 80007144 <cpuid>
    8000778c:	01813083          	ld	ra,24(sp)
    80007790:	01013403          	ld	s0,16(sp)
    80007794:	00d5179b          	slliw	a5,a0,0xd
    80007798:	0c201737          	lui	a4,0xc201
    8000779c:	00f707b3          	add	a5,a4,a5
    800077a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800077a4:	00813483          	ld	s1,8(sp)
    800077a8:	02010113          	addi	sp,sp,32
    800077ac:	00008067          	ret

00000000800077b0 <consolewrite>:
    800077b0:	fb010113          	addi	sp,sp,-80
    800077b4:	04813023          	sd	s0,64(sp)
    800077b8:	04113423          	sd	ra,72(sp)
    800077bc:	02913c23          	sd	s1,56(sp)
    800077c0:	03213823          	sd	s2,48(sp)
    800077c4:	03313423          	sd	s3,40(sp)
    800077c8:	03413023          	sd	s4,32(sp)
    800077cc:	01513c23          	sd	s5,24(sp)
    800077d0:	05010413          	addi	s0,sp,80
    800077d4:	06c05c63          	blez	a2,8000784c <consolewrite+0x9c>
    800077d8:	00060993          	mv	s3,a2
    800077dc:	00050a13          	mv	s4,a0
    800077e0:	00058493          	mv	s1,a1
    800077e4:	00000913          	li	s2,0
    800077e8:	fff00a93          	li	s5,-1
    800077ec:	01c0006f          	j	80007808 <consolewrite+0x58>
    800077f0:	fbf44503          	lbu	a0,-65(s0)
    800077f4:	0019091b          	addiw	s2,s2,1
    800077f8:	00148493          	addi	s1,s1,1
    800077fc:	00001097          	auipc	ra,0x1
    80007800:	a9c080e7          	jalr	-1380(ra) # 80008298 <uartputc>
    80007804:	03298063          	beq	s3,s2,80007824 <consolewrite+0x74>
    80007808:	00048613          	mv	a2,s1
    8000780c:	00100693          	li	a3,1
    80007810:	000a0593          	mv	a1,s4
    80007814:	fbf40513          	addi	a0,s0,-65
    80007818:	00000097          	auipc	ra,0x0
    8000781c:	9e4080e7          	jalr	-1564(ra) # 800071fc <either_copyin>
    80007820:	fd5518e3          	bne	a0,s5,800077f0 <consolewrite+0x40>
    80007824:	04813083          	ld	ra,72(sp)
    80007828:	04013403          	ld	s0,64(sp)
    8000782c:	03813483          	ld	s1,56(sp)
    80007830:	02813983          	ld	s3,40(sp)
    80007834:	02013a03          	ld	s4,32(sp)
    80007838:	01813a83          	ld	s5,24(sp)
    8000783c:	00090513          	mv	a0,s2
    80007840:	03013903          	ld	s2,48(sp)
    80007844:	05010113          	addi	sp,sp,80
    80007848:	00008067          	ret
    8000784c:	00000913          	li	s2,0
    80007850:	fd5ff06f          	j	80007824 <consolewrite+0x74>

0000000080007854 <consoleread>:
    80007854:	f9010113          	addi	sp,sp,-112
    80007858:	06813023          	sd	s0,96(sp)
    8000785c:	04913c23          	sd	s1,88(sp)
    80007860:	05213823          	sd	s2,80(sp)
    80007864:	05313423          	sd	s3,72(sp)
    80007868:	05413023          	sd	s4,64(sp)
    8000786c:	03513c23          	sd	s5,56(sp)
    80007870:	03613823          	sd	s6,48(sp)
    80007874:	03713423          	sd	s7,40(sp)
    80007878:	03813023          	sd	s8,32(sp)
    8000787c:	06113423          	sd	ra,104(sp)
    80007880:	01913c23          	sd	s9,24(sp)
    80007884:	07010413          	addi	s0,sp,112
    80007888:	00060b93          	mv	s7,a2
    8000788c:	00050913          	mv	s2,a0
    80007890:	00058c13          	mv	s8,a1
    80007894:	00060b1b          	sext.w	s6,a2
    80007898:	00006497          	auipc	s1,0x6
    8000789c:	3b048493          	addi	s1,s1,944 # 8000dc48 <cons>
    800078a0:	00400993          	li	s3,4
    800078a4:	fff00a13          	li	s4,-1
    800078a8:	00a00a93          	li	s5,10
    800078ac:	05705e63          	blez	s7,80007908 <consoleread+0xb4>
    800078b0:	09c4a703          	lw	a4,156(s1)
    800078b4:	0984a783          	lw	a5,152(s1)
    800078b8:	0007071b          	sext.w	a4,a4
    800078bc:	08e78463          	beq	a5,a4,80007944 <consoleread+0xf0>
    800078c0:	07f7f713          	andi	a4,a5,127
    800078c4:	00e48733          	add	a4,s1,a4
    800078c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800078cc:	0017869b          	addiw	a3,a5,1
    800078d0:	08d4ac23          	sw	a3,152(s1)
    800078d4:	00070c9b          	sext.w	s9,a4
    800078d8:	0b370663          	beq	a4,s3,80007984 <consoleread+0x130>
    800078dc:	00100693          	li	a3,1
    800078e0:	f9f40613          	addi	a2,s0,-97
    800078e4:	000c0593          	mv	a1,s8
    800078e8:	00090513          	mv	a0,s2
    800078ec:	f8e40fa3          	sb	a4,-97(s0)
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	8c0080e7          	jalr	-1856(ra) # 800071b0 <either_copyout>
    800078f8:	01450863          	beq	a0,s4,80007908 <consoleread+0xb4>
    800078fc:	001c0c13          	addi	s8,s8,1
    80007900:	fffb8b9b          	addiw	s7,s7,-1
    80007904:	fb5c94e3          	bne	s9,s5,800078ac <consoleread+0x58>
    80007908:	000b851b          	sext.w	a0,s7
    8000790c:	06813083          	ld	ra,104(sp)
    80007910:	06013403          	ld	s0,96(sp)
    80007914:	05813483          	ld	s1,88(sp)
    80007918:	05013903          	ld	s2,80(sp)
    8000791c:	04813983          	ld	s3,72(sp)
    80007920:	04013a03          	ld	s4,64(sp)
    80007924:	03813a83          	ld	s5,56(sp)
    80007928:	02813b83          	ld	s7,40(sp)
    8000792c:	02013c03          	ld	s8,32(sp)
    80007930:	01813c83          	ld	s9,24(sp)
    80007934:	40ab053b          	subw	a0,s6,a0
    80007938:	03013b03          	ld	s6,48(sp)
    8000793c:	07010113          	addi	sp,sp,112
    80007940:	00008067          	ret
    80007944:	00001097          	auipc	ra,0x1
    80007948:	1d8080e7          	jalr	472(ra) # 80008b1c <push_on>
    8000794c:	0984a703          	lw	a4,152(s1)
    80007950:	09c4a783          	lw	a5,156(s1)
    80007954:	0007879b          	sext.w	a5,a5
    80007958:	fef70ce3          	beq	a4,a5,80007950 <consoleread+0xfc>
    8000795c:	00001097          	auipc	ra,0x1
    80007960:	234080e7          	jalr	564(ra) # 80008b90 <pop_on>
    80007964:	0984a783          	lw	a5,152(s1)
    80007968:	07f7f713          	andi	a4,a5,127
    8000796c:	00e48733          	add	a4,s1,a4
    80007970:	01874703          	lbu	a4,24(a4)
    80007974:	0017869b          	addiw	a3,a5,1
    80007978:	08d4ac23          	sw	a3,152(s1)
    8000797c:	00070c9b          	sext.w	s9,a4
    80007980:	f5371ee3          	bne	a4,s3,800078dc <consoleread+0x88>
    80007984:	000b851b          	sext.w	a0,s7
    80007988:	f96bf2e3          	bgeu	s7,s6,8000790c <consoleread+0xb8>
    8000798c:	08f4ac23          	sw	a5,152(s1)
    80007990:	f7dff06f          	j	8000790c <consoleread+0xb8>

0000000080007994 <consputc>:
    80007994:	10000793          	li	a5,256
    80007998:	00f50663          	beq	a0,a5,800079a4 <consputc+0x10>
    8000799c:	00001317          	auipc	t1,0x1
    800079a0:	9f430067          	jr	-1548(t1) # 80008390 <uartputc_sync>
    800079a4:	ff010113          	addi	sp,sp,-16
    800079a8:	00113423          	sd	ra,8(sp)
    800079ac:	00813023          	sd	s0,0(sp)
    800079b0:	01010413          	addi	s0,sp,16
    800079b4:	00800513          	li	a0,8
    800079b8:	00001097          	auipc	ra,0x1
    800079bc:	9d8080e7          	jalr	-1576(ra) # 80008390 <uartputc_sync>
    800079c0:	02000513          	li	a0,32
    800079c4:	00001097          	auipc	ra,0x1
    800079c8:	9cc080e7          	jalr	-1588(ra) # 80008390 <uartputc_sync>
    800079cc:	00013403          	ld	s0,0(sp)
    800079d0:	00813083          	ld	ra,8(sp)
    800079d4:	00800513          	li	a0,8
    800079d8:	01010113          	addi	sp,sp,16
    800079dc:	00001317          	auipc	t1,0x1
    800079e0:	9b430067          	jr	-1612(t1) # 80008390 <uartputc_sync>

00000000800079e4 <consoleintr>:
    800079e4:	fe010113          	addi	sp,sp,-32
    800079e8:	00813823          	sd	s0,16(sp)
    800079ec:	00913423          	sd	s1,8(sp)
    800079f0:	01213023          	sd	s2,0(sp)
    800079f4:	00113c23          	sd	ra,24(sp)
    800079f8:	02010413          	addi	s0,sp,32
    800079fc:	00006917          	auipc	s2,0x6
    80007a00:	24c90913          	addi	s2,s2,588 # 8000dc48 <cons>
    80007a04:	00050493          	mv	s1,a0
    80007a08:	00090513          	mv	a0,s2
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	e40080e7          	jalr	-448(ra) # 8000884c <acquire>
    80007a14:	02048c63          	beqz	s1,80007a4c <consoleintr+0x68>
    80007a18:	0a092783          	lw	a5,160(s2)
    80007a1c:	09892703          	lw	a4,152(s2)
    80007a20:	07f00693          	li	a3,127
    80007a24:	40e7873b          	subw	a4,a5,a4
    80007a28:	02e6e263          	bltu	a3,a4,80007a4c <consoleintr+0x68>
    80007a2c:	00d00713          	li	a4,13
    80007a30:	04e48063          	beq	s1,a4,80007a70 <consoleintr+0x8c>
    80007a34:	07f7f713          	andi	a4,a5,127
    80007a38:	00e90733          	add	a4,s2,a4
    80007a3c:	0017879b          	addiw	a5,a5,1
    80007a40:	0af92023          	sw	a5,160(s2)
    80007a44:	00970c23          	sb	s1,24(a4)
    80007a48:	08f92e23          	sw	a5,156(s2)
    80007a4c:	01013403          	ld	s0,16(sp)
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	00813483          	ld	s1,8(sp)
    80007a58:	00013903          	ld	s2,0(sp)
    80007a5c:	00006517          	auipc	a0,0x6
    80007a60:	1ec50513          	addi	a0,a0,492 # 8000dc48 <cons>
    80007a64:	02010113          	addi	sp,sp,32
    80007a68:	00001317          	auipc	t1,0x1
    80007a6c:	eb030067          	jr	-336(t1) # 80008918 <release>
    80007a70:	00a00493          	li	s1,10
    80007a74:	fc1ff06f          	j	80007a34 <consoleintr+0x50>

0000000080007a78 <consoleinit>:
    80007a78:	fe010113          	addi	sp,sp,-32
    80007a7c:	00113c23          	sd	ra,24(sp)
    80007a80:	00813823          	sd	s0,16(sp)
    80007a84:	00913423          	sd	s1,8(sp)
    80007a88:	02010413          	addi	s0,sp,32
    80007a8c:	00006497          	auipc	s1,0x6
    80007a90:	1bc48493          	addi	s1,s1,444 # 8000dc48 <cons>
    80007a94:	00048513          	mv	a0,s1
    80007a98:	00003597          	auipc	a1,0x3
    80007a9c:	d3858593          	addi	a1,a1,-712 # 8000a7d0 <CONSOLE_STATUS+0x7c0>
    80007aa0:	00001097          	auipc	ra,0x1
    80007aa4:	d88080e7          	jalr	-632(ra) # 80008828 <initlock>
    80007aa8:	00000097          	auipc	ra,0x0
    80007aac:	7ac080e7          	jalr	1964(ra) # 80008254 <uartinit>
    80007ab0:	01813083          	ld	ra,24(sp)
    80007ab4:	01013403          	ld	s0,16(sp)
    80007ab8:	00000797          	auipc	a5,0x0
    80007abc:	d9c78793          	addi	a5,a5,-612 # 80007854 <consoleread>
    80007ac0:	0af4bc23          	sd	a5,184(s1)
    80007ac4:	00000797          	auipc	a5,0x0
    80007ac8:	cec78793          	addi	a5,a5,-788 # 800077b0 <consolewrite>
    80007acc:	0cf4b023          	sd	a5,192(s1)
    80007ad0:	00813483          	ld	s1,8(sp)
    80007ad4:	02010113          	addi	sp,sp,32
    80007ad8:	00008067          	ret

0000000080007adc <console_read>:
    80007adc:	ff010113          	addi	sp,sp,-16
    80007ae0:	00813423          	sd	s0,8(sp)
    80007ae4:	01010413          	addi	s0,sp,16
    80007ae8:	00813403          	ld	s0,8(sp)
    80007aec:	00006317          	auipc	t1,0x6
    80007af0:	21433303          	ld	t1,532(t1) # 8000dd00 <devsw+0x10>
    80007af4:	01010113          	addi	sp,sp,16
    80007af8:	00030067          	jr	t1

0000000080007afc <console_write>:
    80007afc:	ff010113          	addi	sp,sp,-16
    80007b00:	00813423          	sd	s0,8(sp)
    80007b04:	01010413          	addi	s0,sp,16
    80007b08:	00813403          	ld	s0,8(sp)
    80007b0c:	00006317          	auipc	t1,0x6
    80007b10:	1fc33303          	ld	t1,508(t1) # 8000dd08 <devsw+0x18>
    80007b14:	01010113          	addi	sp,sp,16
    80007b18:	00030067          	jr	t1

0000000080007b1c <panic>:
    80007b1c:	fe010113          	addi	sp,sp,-32
    80007b20:	00113c23          	sd	ra,24(sp)
    80007b24:	00813823          	sd	s0,16(sp)
    80007b28:	00913423          	sd	s1,8(sp)
    80007b2c:	02010413          	addi	s0,sp,32
    80007b30:	00050493          	mv	s1,a0
    80007b34:	00003517          	auipc	a0,0x3
    80007b38:	ca450513          	addi	a0,a0,-860 # 8000a7d8 <CONSOLE_STATUS+0x7c8>
    80007b3c:	00006797          	auipc	a5,0x6
    80007b40:	2607a623          	sw	zero,620(a5) # 8000dda8 <pr+0x18>
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	034080e7          	jalr	52(ra) # 80007b78 <__printf>
    80007b4c:	00048513          	mv	a0,s1
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	028080e7          	jalr	40(ra) # 80007b78 <__printf>
    80007b58:	00003517          	auipc	a0,0x3
    80007b5c:	a7850513          	addi	a0,a0,-1416 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80007b60:	00000097          	auipc	ra,0x0
    80007b64:	018080e7          	jalr	24(ra) # 80007b78 <__printf>
    80007b68:	00100793          	li	a5,1
    80007b6c:	00005717          	auipc	a4,0x5
    80007b70:	eef72e23          	sw	a5,-260(a4) # 8000ca68 <panicked>
    80007b74:	0000006f          	j	80007b74 <panic+0x58>

0000000080007b78 <__printf>:
    80007b78:	f3010113          	addi	sp,sp,-208
    80007b7c:	08813023          	sd	s0,128(sp)
    80007b80:	07313423          	sd	s3,104(sp)
    80007b84:	09010413          	addi	s0,sp,144
    80007b88:	05813023          	sd	s8,64(sp)
    80007b8c:	08113423          	sd	ra,136(sp)
    80007b90:	06913c23          	sd	s1,120(sp)
    80007b94:	07213823          	sd	s2,112(sp)
    80007b98:	07413023          	sd	s4,96(sp)
    80007b9c:	05513c23          	sd	s5,88(sp)
    80007ba0:	05613823          	sd	s6,80(sp)
    80007ba4:	05713423          	sd	s7,72(sp)
    80007ba8:	03913c23          	sd	s9,56(sp)
    80007bac:	03a13823          	sd	s10,48(sp)
    80007bb0:	03b13423          	sd	s11,40(sp)
    80007bb4:	00006317          	auipc	t1,0x6
    80007bb8:	1dc30313          	addi	t1,t1,476 # 8000dd90 <pr>
    80007bbc:	01832c03          	lw	s8,24(t1)
    80007bc0:	00b43423          	sd	a1,8(s0)
    80007bc4:	00c43823          	sd	a2,16(s0)
    80007bc8:	00d43c23          	sd	a3,24(s0)
    80007bcc:	02e43023          	sd	a4,32(s0)
    80007bd0:	02f43423          	sd	a5,40(s0)
    80007bd4:	03043823          	sd	a6,48(s0)
    80007bd8:	03143c23          	sd	a7,56(s0)
    80007bdc:	00050993          	mv	s3,a0
    80007be0:	4a0c1663          	bnez	s8,8000808c <__printf+0x514>
    80007be4:	60098c63          	beqz	s3,800081fc <__printf+0x684>
    80007be8:	0009c503          	lbu	a0,0(s3)
    80007bec:	00840793          	addi	a5,s0,8
    80007bf0:	f6f43c23          	sd	a5,-136(s0)
    80007bf4:	00000493          	li	s1,0
    80007bf8:	22050063          	beqz	a0,80007e18 <__printf+0x2a0>
    80007bfc:	00002a37          	lui	s4,0x2
    80007c00:	00018ab7          	lui	s5,0x18
    80007c04:	000f4b37          	lui	s6,0xf4
    80007c08:	00989bb7          	lui	s7,0x989
    80007c0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c1c:	00148c9b          	addiw	s9,s1,1
    80007c20:	02500793          	li	a5,37
    80007c24:	01998933          	add	s2,s3,s9
    80007c28:	38f51263          	bne	a0,a5,80007fac <__printf+0x434>
    80007c2c:	00094783          	lbu	a5,0(s2)
    80007c30:	00078c9b          	sext.w	s9,a5
    80007c34:	1e078263          	beqz	a5,80007e18 <__printf+0x2a0>
    80007c38:	0024849b          	addiw	s1,s1,2
    80007c3c:	07000713          	li	a4,112
    80007c40:	00998933          	add	s2,s3,s1
    80007c44:	38e78a63          	beq	a5,a4,80007fd8 <__printf+0x460>
    80007c48:	20f76863          	bltu	a4,a5,80007e58 <__printf+0x2e0>
    80007c4c:	42a78863          	beq	a5,a0,8000807c <__printf+0x504>
    80007c50:	06400713          	li	a4,100
    80007c54:	40e79663          	bne	a5,a4,80008060 <__printf+0x4e8>
    80007c58:	f7843783          	ld	a5,-136(s0)
    80007c5c:	0007a603          	lw	a2,0(a5)
    80007c60:	00878793          	addi	a5,a5,8
    80007c64:	f6f43c23          	sd	a5,-136(s0)
    80007c68:	42064a63          	bltz	a2,8000809c <__printf+0x524>
    80007c6c:	00a00713          	li	a4,10
    80007c70:	02e677bb          	remuw	a5,a2,a4
    80007c74:	00003d97          	auipc	s11,0x3
    80007c78:	b8cd8d93          	addi	s11,s11,-1140 # 8000a800 <digits>
    80007c7c:	00900593          	li	a1,9
    80007c80:	0006051b          	sext.w	a0,a2
    80007c84:	00000c93          	li	s9,0
    80007c88:	02079793          	slli	a5,a5,0x20
    80007c8c:	0207d793          	srli	a5,a5,0x20
    80007c90:	00fd87b3          	add	a5,s11,a5
    80007c94:	0007c783          	lbu	a5,0(a5)
    80007c98:	02e656bb          	divuw	a3,a2,a4
    80007c9c:	f8f40023          	sb	a5,-128(s0)
    80007ca0:	14c5d863          	bge	a1,a2,80007df0 <__printf+0x278>
    80007ca4:	06300593          	li	a1,99
    80007ca8:	00100c93          	li	s9,1
    80007cac:	02e6f7bb          	remuw	a5,a3,a4
    80007cb0:	02079793          	slli	a5,a5,0x20
    80007cb4:	0207d793          	srli	a5,a5,0x20
    80007cb8:	00fd87b3          	add	a5,s11,a5
    80007cbc:	0007c783          	lbu	a5,0(a5)
    80007cc0:	02e6d73b          	divuw	a4,a3,a4
    80007cc4:	f8f400a3          	sb	a5,-127(s0)
    80007cc8:	12a5f463          	bgeu	a1,a0,80007df0 <__printf+0x278>
    80007ccc:	00a00693          	li	a3,10
    80007cd0:	00900593          	li	a1,9
    80007cd4:	02d777bb          	remuw	a5,a4,a3
    80007cd8:	02079793          	slli	a5,a5,0x20
    80007cdc:	0207d793          	srli	a5,a5,0x20
    80007ce0:	00fd87b3          	add	a5,s11,a5
    80007ce4:	0007c503          	lbu	a0,0(a5)
    80007ce8:	02d757bb          	divuw	a5,a4,a3
    80007cec:	f8a40123          	sb	a0,-126(s0)
    80007cf0:	48e5f263          	bgeu	a1,a4,80008174 <__printf+0x5fc>
    80007cf4:	06300513          	li	a0,99
    80007cf8:	02d7f5bb          	remuw	a1,a5,a3
    80007cfc:	02059593          	slli	a1,a1,0x20
    80007d00:	0205d593          	srli	a1,a1,0x20
    80007d04:	00bd85b3          	add	a1,s11,a1
    80007d08:	0005c583          	lbu	a1,0(a1)
    80007d0c:	02d7d7bb          	divuw	a5,a5,a3
    80007d10:	f8b401a3          	sb	a1,-125(s0)
    80007d14:	48e57263          	bgeu	a0,a4,80008198 <__printf+0x620>
    80007d18:	3e700513          	li	a0,999
    80007d1c:	02d7f5bb          	remuw	a1,a5,a3
    80007d20:	02059593          	slli	a1,a1,0x20
    80007d24:	0205d593          	srli	a1,a1,0x20
    80007d28:	00bd85b3          	add	a1,s11,a1
    80007d2c:	0005c583          	lbu	a1,0(a1)
    80007d30:	02d7d7bb          	divuw	a5,a5,a3
    80007d34:	f8b40223          	sb	a1,-124(s0)
    80007d38:	46e57663          	bgeu	a0,a4,800081a4 <__printf+0x62c>
    80007d3c:	02d7f5bb          	remuw	a1,a5,a3
    80007d40:	02059593          	slli	a1,a1,0x20
    80007d44:	0205d593          	srli	a1,a1,0x20
    80007d48:	00bd85b3          	add	a1,s11,a1
    80007d4c:	0005c583          	lbu	a1,0(a1)
    80007d50:	02d7d7bb          	divuw	a5,a5,a3
    80007d54:	f8b402a3          	sb	a1,-123(s0)
    80007d58:	46ea7863          	bgeu	s4,a4,800081c8 <__printf+0x650>
    80007d5c:	02d7f5bb          	remuw	a1,a5,a3
    80007d60:	02059593          	slli	a1,a1,0x20
    80007d64:	0205d593          	srli	a1,a1,0x20
    80007d68:	00bd85b3          	add	a1,s11,a1
    80007d6c:	0005c583          	lbu	a1,0(a1)
    80007d70:	02d7d7bb          	divuw	a5,a5,a3
    80007d74:	f8b40323          	sb	a1,-122(s0)
    80007d78:	3eeaf863          	bgeu	s5,a4,80008168 <__printf+0x5f0>
    80007d7c:	02d7f5bb          	remuw	a1,a5,a3
    80007d80:	02059593          	slli	a1,a1,0x20
    80007d84:	0205d593          	srli	a1,a1,0x20
    80007d88:	00bd85b3          	add	a1,s11,a1
    80007d8c:	0005c583          	lbu	a1,0(a1)
    80007d90:	02d7d7bb          	divuw	a5,a5,a3
    80007d94:	f8b403a3          	sb	a1,-121(s0)
    80007d98:	42eb7e63          	bgeu	s6,a4,800081d4 <__printf+0x65c>
    80007d9c:	02d7f5bb          	remuw	a1,a5,a3
    80007da0:	02059593          	slli	a1,a1,0x20
    80007da4:	0205d593          	srli	a1,a1,0x20
    80007da8:	00bd85b3          	add	a1,s11,a1
    80007dac:	0005c583          	lbu	a1,0(a1)
    80007db0:	02d7d7bb          	divuw	a5,a5,a3
    80007db4:	f8b40423          	sb	a1,-120(s0)
    80007db8:	42ebfc63          	bgeu	s7,a4,800081f0 <__printf+0x678>
    80007dbc:	02079793          	slli	a5,a5,0x20
    80007dc0:	0207d793          	srli	a5,a5,0x20
    80007dc4:	00fd8db3          	add	s11,s11,a5
    80007dc8:	000dc703          	lbu	a4,0(s11)
    80007dcc:	00a00793          	li	a5,10
    80007dd0:	00900c93          	li	s9,9
    80007dd4:	f8e404a3          	sb	a4,-119(s0)
    80007dd8:	00065c63          	bgez	a2,80007df0 <__printf+0x278>
    80007ddc:	f9040713          	addi	a4,s0,-112
    80007de0:	00f70733          	add	a4,a4,a5
    80007de4:	02d00693          	li	a3,45
    80007de8:	fed70823          	sb	a3,-16(a4)
    80007dec:	00078c93          	mv	s9,a5
    80007df0:	f8040793          	addi	a5,s0,-128
    80007df4:	01978cb3          	add	s9,a5,s9
    80007df8:	f7f40d13          	addi	s10,s0,-129
    80007dfc:	000cc503          	lbu	a0,0(s9)
    80007e00:	fffc8c93          	addi	s9,s9,-1
    80007e04:	00000097          	auipc	ra,0x0
    80007e08:	b90080e7          	jalr	-1136(ra) # 80007994 <consputc>
    80007e0c:	ffac98e3          	bne	s9,s10,80007dfc <__printf+0x284>
    80007e10:	00094503          	lbu	a0,0(s2)
    80007e14:	e00514e3          	bnez	a0,80007c1c <__printf+0xa4>
    80007e18:	1a0c1663          	bnez	s8,80007fc4 <__printf+0x44c>
    80007e1c:	08813083          	ld	ra,136(sp)
    80007e20:	08013403          	ld	s0,128(sp)
    80007e24:	07813483          	ld	s1,120(sp)
    80007e28:	07013903          	ld	s2,112(sp)
    80007e2c:	06813983          	ld	s3,104(sp)
    80007e30:	06013a03          	ld	s4,96(sp)
    80007e34:	05813a83          	ld	s5,88(sp)
    80007e38:	05013b03          	ld	s6,80(sp)
    80007e3c:	04813b83          	ld	s7,72(sp)
    80007e40:	04013c03          	ld	s8,64(sp)
    80007e44:	03813c83          	ld	s9,56(sp)
    80007e48:	03013d03          	ld	s10,48(sp)
    80007e4c:	02813d83          	ld	s11,40(sp)
    80007e50:	0d010113          	addi	sp,sp,208
    80007e54:	00008067          	ret
    80007e58:	07300713          	li	a4,115
    80007e5c:	1ce78a63          	beq	a5,a4,80008030 <__printf+0x4b8>
    80007e60:	07800713          	li	a4,120
    80007e64:	1ee79e63          	bne	a5,a4,80008060 <__printf+0x4e8>
    80007e68:	f7843783          	ld	a5,-136(s0)
    80007e6c:	0007a703          	lw	a4,0(a5)
    80007e70:	00878793          	addi	a5,a5,8
    80007e74:	f6f43c23          	sd	a5,-136(s0)
    80007e78:	28074263          	bltz	a4,800080fc <__printf+0x584>
    80007e7c:	00003d97          	auipc	s11,0x3
    80007e80:	984d8d93          	addi	s11,s11,-1660 # 8000a800 <digits>
    80007e84:	00f77793          	andi	a5,a4,15
    80007e88:	00fd87b3          	add	a5,s11,a5
    80007e8c:	0007c683          	lbu	a3,0(a5)
    80007e90:	00f00613          	li	a2,15
    80007e94:	0007079b          	sext.w	a5,a4
    80007e98:	f8d40023          	sb	a3,-128(s0)
    80007e9c:	0047559b          	srliw	a1,a4,0x4
    80007ea0:	0047569b          	srliw	a3,a4,0x4
    80007ea4:	00000c93          	li	s9,0
    80007ea8:	0ee65063          	bge	a2,a4,80007f88 <__printf+0x410>
    80007eac:	00f6f693          	andi	a3,a3,15
    80007eb0:	00dd86b3          	add	a3,s11,a3
    80007eb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007eb8:	0087d79b          	srliw	a5,a5,0x8
    80007ebc:	00100c93          	li	s9,1
    80007ec0:	f8d400a3          	sb	a3,-127(s0)
    80007ec4:	0cb67263          	bgeu	a2,a1,80007f88 <__printf+0x410>
    80007ec8:	00f7f693          	andi	a3,a5,15
    80007ecc:	00dd86b3          	add	a3,s11,a3
    80007ed0:	0006c583          	lbu	a1,0(a3)
    80007ed4:	00f00613          	li	a2,15
    80007ed8:	0047d69b          	srliw	a3,a5,0x4
    80007edc:	f8b40123          	sb	a1,-126(s0)
    80007ee0:	0047d593          	srli	a1,a5,0x4
    80007ee4:	28f67e63          	bgeu	a2,a5,80008180 <__printf+0x608>
    80007ee8:	00f6f693          	andi	a3,a3,15
    80007eec:	00dd86b3          	add	a3,s11,a3
    80007ef0:	0006c503          	lbu	a0,0(a3)
    80007ef4:	0087d813          	srli	a6,a5,0x8
    80007ef8:	0087d69b          	srliw	a3,a5,0x8
    80007efc:	f8a401a3          	sb	a0,-125(s0)
    80007f00:	28b67663          	bgeu	a2,a1,8000818c <__printf+0x614>
    80007f04:	00f6f693          	andi	a3,a3,15
    80007f08:	00dd86b3          	add	a3,s11,a3
    80007f0c:	0006c583          	lbu	a1,0(a3)
    80007f10:	00c7d513          	srli	a0,a5,0xc
    80007f14:	00c7d69b          	srliw	a3,a5,0xc
    80007f18:	f8b40223          	sb	a1,-124(s0)
    80007f1c:	29067a63          	bgeu	a2,a6,800081b0 <__printf+0x638>
    80007f20:	00f6f693          	andi	a3,a3,15
    80007f24:	00dd86b3          	add	a3,s11,a3
    80007f28:	0006c583          	lbu	a1,0(a3)
    80007f2c:	0107d813          	srli	a6,a5,0x10
    80007f30:	0107d69b          	srliw	a3,a5,0x10
    80007f34:	f8b402a3          	sb	a1,-123(s0)
    80007f38:	28a67263          	bgeu	a2,a0,800081bc <__printf+0x644>
    80007f3c:	00f6f693          	andi	a3,a3,15
    80007f40:	00dd86b3          	add	a3,s11,a3
    80007f44:	0006c683          	lbu	a3,0(a3)
    80007f48:	0147d79b          	srliw	a5,a5,0x14
    80007f4c:	f8d40323          	sb	a3,-122(s0)
    80007f50:	21067663          	bgeu	a2,a6,8000815c <__printf+0x5e4>
    80007f54:	02079793          	slli	a5,a5,0x20
    80007f58:	0207d793          	srli	a5,a5,0x20
    80007f5c:	00fd8db3          	add	s11,s11,a5
    80007f60:	000dc683          	lbu	a3,0(s11)
    80007f64:	00800793          	li	a5,8
    80007f68:	00700c93          	li	s9,7
    80007f6c:	f8d403a3          	sb	a3,-121(s0)
    80007f70:	00075c63          	bgez	a4,80007f88 <__printf+0x410>
    80007f74:	f9040713          	addi	a4,s0,-112
    80007f78:	00f70733          	add	a4,a4,a5
    80007f7c:	02d00693          	li	a3,45
    80007f80:	fed70823          	sb	a3,-16(a4)
    80007f84:	00078c93          	mv	s9,a5
    80007f88:	f8040793          	addi	a5,s0,-128
    80007f8c:	01978cb3          	add	s9,a5,s9
    80007f90:	f7f40d13          	addi	s10,s0,-129
    80007f94:	000cc503          	lbu	a0,0(s9)
    80007f98:	fffc8c93          	addi	s9,s9,-1
    80007f9c:	00000097          	auipc	ra,0x0
    80007fa0:	9f8080e7          	jalr	-1544(ra) # 80007994 <consputc>
    80007fa4:	ff9d18e3          	bne	s10,s9,80007f94 <__printf+0x41c>
    80007fa8:	0100006f          	j	80007fb8 <__printf+0x440>
    80007fac:	00000097          	auipc	ra,0x0
    80007fb0:	9e8080e7          	jalr	-1560(ra) # 80007994 <consputc>
    80007fb4:	000c8493          	mv	s1,s9
    80007fb8:	00094503          	lbu	a0,0(s2)
    80007fbc:	c60510e3          	bnez	a0,80007c1c <__printf+0xa4>
    80007fc0:	e40c0ee3          	beqz	s8,80007e1c <__printf+0x2a4>
    80007fc4:	00006517          	auipc	a0,0x6
    80007fc8:	dcc50513          	addi	a0,a0,-564 # 8000dd90 <pr>
    80007fcc:	00001097          	auipc	ra,0x1
    80007fd0:	94c080e7          	jalr	-1716(ra) # 80008918 <release>
    80007fd4:	e49ff06f          	j	80007e1c <__printf+0x2a4>
    80007fd8:	f7843783          	ld	a5,-136(s0)
    80007fdc:	03000513          	li	a0,48
    80007fe0:	01000d13          	li	s10,16
    80007fe4:	00878713          	addi	a4,a5,8
    80007fe8:	0007bc83          	ld	s9,0(a5)
    80007fec:	f6e43c23          	sd	a4,-136(s0)
    80007ff0:	00000097          	auipc	ra,0x0
    80007ff4:	9a4080e7          	jalr	-1628(ra) # 80007994 <consputc>
    80007ff8:	07800513          	li	a0,120
    80007ffc:	00000097          	auipc	ra,0x0
    80008000:	998080e7          	jalr	-1640(ra) # 80007994 <consputc>
    80008004:	00002d97          	auipc	s11,0x2
    80008008:	7fcd8d93          	addi	s11,s11,2044 # 8000a800 <digits>
    8000800c:	03ccd793          	srli	a5,s9,0x3c
    80008010:	00fd87b3          	add	a5,s11,a5
    80008014:	0007c503          	lbu	a0,0(a5)
    80008018:	fffd0d1b          	addiw	s10,s10,-1
    8000801c:	004c9c93          	slli	s9,s9,0x4
    80008020:	00000097          	auipc	ra,0x0
    80008024:	974080e7          	jalr	-1676(ra) # 80007994 <consputc>
    80008028:	fe0d12e3          	bnez	s10,8000800c <__printf+0x494>
    8000802c:	f8dff06f          	j	80007fb8 <__printf+0x440>
    80008030:	f7843783          	ld	a5,-136(s0)
    80008034:	0007bc83          	ld	s9,0(a5)
    80008038:	00878793          	addi	a5,a5,8
    8000803c:	f6f43c23          	sd	a5,-136(s0)
    80008040:	000c9a63          	bnez	s9,80008054 <__printf+0x4dc>
    80008044:	1080006f          	j	8000814c <__printf+0x5d4>
    80008048:	001c8c93          	addi	s9,s9,1
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	948080e7          	jalr	-1720(ra) # 80007994 <consputc>
    80008054:	000cc503          	lbu	a0,0(s9)
    80008058:	fe0518e3          	bnez	a0,80008048 <__printf+0x4d0>
    8000805c:	f5dff06f          	j	80007fb8 <__printf+0x440>
    80008060:	02500513          	li	a0,37
    80008064:	00000097          	auipc	ra,0x0
    80008068:	930080e7          	jalr	-1744(ra) # 80007994 <consputc>
    8000806c:	000c8513          	mv	a0,s9
    80008070:	00000097          	auipc	ra,0x0
    80008074:	924080e7          	jalr	-1756(ra) # 80007994 <consputc>
    80008078:	f41ff06f          	j	80007fb8 <__printf+0x440>
    8000807c:	02500513          	li	a0,37
    80008080:	00000097          	auipc	ra,0x0
    80008084:	914080e7          	jalr	-1772(ra) # 80007994 <consputc>
    80008088:	f31ff06f          	j	80007fb8 <__printf+0x440>
    8000808c:	00030513          	mv	a0,t1
    80008090:	00000097          	auipc	ra,0x0
    80008094:	7bc080e7          	jalr	1980(ra) # 8000884c <acquire>
    80008098:	b4dff06f          	j	80007be4 <__printf+0x6c>
    8000809c:	40c0053b          	negw	a0,a2
    800080a0:	00a00713          	li	a4,10
    800080a4:	02e576bb          	remuw	a3,a0,a4
    800080a8:	00002d97          	auipc	s11,0x2
    800080ac:	758d8d93          	addi	s11,s11,1880 # 8000a800 <digits>
    800080b0:	ff700593          	li	a1,-9
    800080b4:	02069693          	slli	a3,a3,0x20
    800080b8:	0206d693          	srli	a3,a3,0x20
    800080bc:	00dd86b3          	add	a3,s11,a3
    800080c0:	0006c683          	lbu	a3,0(a3)
    800080c4:	02e557bb          	divuw	a5,a0,a4
    800080c8:	f8d40023          	sb	a3,-128(s0)
    800080cc:	10b65e63          	bge	a2,a1,800081e8 <__printf+0x670>
    800080d0:	06300593          	li	a1,99
    800080d4:	02e7f6bb          	remuw	a3,a5,a4
    800080d8:	02069693          	slli	a3,a3,0x20
    800080dc:	0206d693          	srli	a3,a3,0x20
    800080e0:	00dd86b3          	add	a3,s11,a3
    800080e4:	0006c683          	lbu	a3,0(a3)
    800080e8:	02e7d73b          	divuw	a4,a5,a4
    800080ec:	00200793          	li	a5,2
    800080f0:	f8d400a3          	sb	a3,-127(s0)
    800080f4:	bca5ece3          	bltu	a1,a0,80007ccc <__printf+0x154>
    800080f8:	ce5ff06f          	j	80007ddc <__printf+0x264>
    800080fc:	40e007bb          	negw	a5,a4
    80008100:	00002d97          	auipc	s11,0x2
    80008104:	700d8d93          	addi	s11,s11,1792 # 8000a800 <digits>
    80008108:	00f7f693          	andi	a3,a5,15
    8000810c:	00dd86b3          	add	a3,s11,a3
    80008110:	0006c583          	lbu	a1,0(a3)
    80008114:	ff100613          	li	a2,-15
    80008118:	0047d69b          	srliw	a3,a5,0x4
    8000811c:	f8b40023          	sb	a1,-128(s0)
    80008120:	0047d59b          	srliw	a1,a5,0x4
    80008124:	0ac75e63          	bge	a4,a2,800081e0 <__printf+0x668>
    80008128:	00f6f693          	andi	a3,a3,15
    8000812c:	00dd86b3          	add	a3,s11,a3
    80008130:	0006c603          	lbu	a2,0(a3)
    80008134:	00f00693          	li	a3,15
    80008138:	0087d79b          	srliw	a5,a5,0x8
    8000813c:	f8c400a3          	sb	a2,-127(s0)
    80008140:	d8b6e4e3          	bltu	a3,a1,80007ec8 <__printf+0x350>
    80008144:	00200793          	li	a5,2
    80008148:	e2dff06f          	j	80007f74 <__printf+0x3fc>
    8000814c:	00002c97          	auipc	s9,0x2
    80008150:	694c8c93          	addi	s9,s9,1684 # 8000a7e0 <CONSOLE_STATUS+0x7d0>
    80008154:	02800513          	li	a0,40
    80008158:	ef1ff06f          	j	80008048 <__printf+0x4d0>
    8000815c:	00700793          	li	a5,7
    80008160:	00600c93          	li	s9,6
    80008164:	e0dff06f          	j	80007f70 <__printf+0x3f8>
    80008168:	00700793          	li	a5,7
    8000816c:	00600c93          	li	s9,6
    80008170:	c69ff06f          	j	80007dd8 <__printf+0x260>
    80008174:	00300793          	li	a5,3
    80008178:	00200c93          	li	s9,2
    8000817c:	c5dff06f          	j	80007dd8 <__printf+0x260>
    80008180:	00300793          	li	a5,3
    80008184:	00200c93          	li	s9,2
    80008188:	de9ff06f          	j	80007f70 <__printf+0x3f8>
    8000818c:	00400793          	li	a5,4
    80008190:	00300c93          	li	s9,3
    80008194:	dddff06f          	j	80007f70 <__printf+0x3f8>
    80008198:	00400793          	li	a5,4
    8000819c:	00300c93          	li	s9,3
    800081a0:	c39ff06f          	j	80007dd8 <__printf+0x260>
    800081a4:	00500793          	li	a5,5
    800081a8:	00400c93          	li	s9,4
    800081ac:	c2dff06f          	j	80007dd8 <__printf+0x260>
    800081b0:	00500793          	li	a5,5
    800081b4:	00400c93          	li	s9,4
    800081b8:	db9ff06f          	j	80007f70 <__printf+0x3f8>
    800081bc:	00600793          	li	a5,6
    800081c0:	00500c93          	li	s9,5
    800081c4:	dadff06f          	j	80007f70 <__printf+0x3f8>
    800081c8:	00600793          	li	a5,6
    800081cc:	00500c93          	li	s9,5
    800081d0:	c09ff06f          	j	80007dd8 <__printf+0x260>
    800081d4:	00800793          	li	a5,8
    800081d8:	00700c93          	li	s9,7
    800081dc:	bfdff06f          	j	80007dd8 <__printf+0x260>
    800081e0:	00100793          	li	a5,1
    800081e4:	d91ff06f          	j	80007f74 <__printf+0x3fc>
    800081e8:	00100793          	li	a5,1
    800081ec:	bf1ff06f          	j	80007ddc <__printf+0x264>
    800081f0:	00900793          	li	a5,9
    800081f4:	00800c93          	li	s9,8
    800081f8:	be1ff06f          	j	80007dd8 <__printf+0x260>
    800081fc:	00002517          	auipc	a0,0x2
    80008200:	5ec50513          	addi	a0,a0,1516 # 8000a7e8 <CONSOLE_STATUS+0x7d8>
    80008204:	00000097          	auipc	ra,0x0
    80008208:	918080e7          	jalr	-1768(ra) # 80007b1c <panic>

000000008000820c <printfinit>:
    8000820c:	fe010113          	addi	sp,sp,-32
    80008210:	00813823          	sd	s0,16(sp)
    80008214:	00913423          	sd	s1,8(sp)
    80008218:	00113c23          	sd	ra,24(sp)
    8000821c:	02010413          	addi	s0,sp,32
    80008220:	00006497          	auipc	s1,0x6
    80008224:	b7048493          	addi	s1,s1,-1168 # 8000dd90 <pr>
    80008228:	00048513          	mv	a0,s1
    8000822c:	00002597          	auipc	a1,0x2
    80008230:	5cc58593          	addi	a1,a1,1484 # 8000a7f8 <CONSOLE_STATUS+0x7e8>
    80008234:	00000097          	auipc	ra,0x0
    80008238:	5f4080e7          	jalr	1524(ra) # 80008828 <initlock>
    8000823c:	01813083          	ld	ra,24(sp)
    80008240:	01013403          	ld	s0,16(sp)
    80008244:	0004ac23          	sw	zero,24(s1)
    80008248:	00813483          	ld	s1,8(sp)
    8000824c:	02010113          	addi	sp,sp,32
    80008250:	00008067          	ret

0000000080008254 <uartinit>:
    80008254:	ff010113          	addi	sp,sp,-16
    80008258:	00813423          	sd	s0,8(sp)
    8000825c:	01010413          	addi	s0,sp,16
    80008260:	100007b7          	lui	a5,0x10000
    80008264:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008268:	f8000713          	li	a4,-128
    8000826c:	00e781a3          	sb	a4,3(a5)
    80008270:	00300713          	li	a4,3
    80008274:	00e78023          	sb	a4,0(a5)
    80008278:	000780a3          	sb	zero,1(a5)
    8000827c:	00e781a3          	sb	a4,3(a5)
    80008280:	00700693          	li	a3,7
    80008284:	00d78123          	sb	a3,2(a5)
    80008288:	00e780a3          	sb	a4,1(a5)
    8000828c:	00813403          	ld	s0,8(sp)
    80008290:	01010113          	addi	sp,sp,16
    80008294:	00008067          	ret

0000000080008298 <uartputc>:
    80008298:	00004797          	auipc	a5,0x4
    8000829c:	7d07a783          	lw	a5,2000(a5) # 8000ca68 <panicked>
    800082a0:	00078463          	beqz	a5,800082a8 <uartputc+0x10>
    800082a4:	0000006f          	j	800082a4 <uartputc+0xc>
    800082a8:	fd010113          	addi	sp,sp,-48
    800082ac:	02813023          	sd	s0,32(sp)
    800082b0:	00913c23          	sd	s1,24(sp)
    800082b4:	01213823          	sd	s2,16(sp)
    800082b8:	01313423          	sd	s3,8(sp)
    800082bc:	02113423          	sd	ra,40(sp)
    800082c0:	03010413          	addi	s0,sp,48
    800082c4:	00004917          	auipc	s2,0x4
    800082c8:	7ac90913          	addi	s2,s2,1964 # 8000ca70 <uart_tx_r>
    800082cc:	00093783          	ld	a5,0(s2)
    800082d0:	00004497          	auipc	s1,0x4
    800082d4:	7a848493          	addi	s1,s1,1960 # 8000ca78 <uart_tx_w>
    800082d8:	0004b703          	ld	a4,0(s1)
    800082dc:	02078693          	addi	a3,a5,32
    800082e0:	00050993          	mv	s3,a0
    800082e4:	02e69c63          	bne	a3,a4,8000831c <uartputc+0x84>
    800082e8:	00001097          	auipc	ra,0x1
    800082ec:	834080e7          	jalr	-1996(ra) # 80008b1c <push_on>
    800082f0:	00093783          	ld	a5,0(s2)
    800082f4:	0004b703          	ld	a4,0(s1)
    800082f8:	02078793          	addi	a5,a5,32
    800082fc:	00e79463          	bne	a5,a4,80008304 <uartputc+0x6c>
    80008300:	0000006f          	j	80008300 <uartputc+0x68>
    80008304:	00001097          	auipc	ra,0x1
    80008308:	88c080e7          	jalr	-1908(ra) # 80008b90 <pop_on>
    8000830c:	00093783          	ld	a5,0(s2)
    80008310:	0004b703          	ld	a4,0(s1)
    80008314:	02078693          	addi	a3,a5,32
    80008318:	fce688e3          	beq	a3,a4,800082e8 <uartputc+0x50>
    8000831c:	01f77693          	andi	a3,a4,31
    80008320:	00006597          	auipc	a1,0x6
    80008324:	a9058593          	addi	a1,a1,-1392 # 8000ddb0 <uart_tx_buf>
    80008328:	00d586b3          	add	a3,a1,a3
    8000832c:	00170713          	addi	a4,a4,1
    80008330:	01368023          	sb	s3,0(a3)
    80008334:	00e4b023          	sd	a4,0(s1)
    80008338:	10000637          	lui	a2,0x10000
    8000833c:	02f71063          	bne	a4,a5,8000835c <uartputc+0xc4>
    80008340:	0340006f          	j	80008374 <uartputc+0xdc>
    80008344:	00074703          	lbu	a4,0(a4)
    80008348:	00f93023          	sd	a5,0(s2)
    8000834c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008350:	00093783          	ld	a5,0(s2)
    80008354:	0004b703          	ld	a4,0(s1)
    80008358:	00f70e63          	beq	a4,a5,80008374 <uartputc+0xdc>
    8000835c:	00564683          	lbu	a3,5(a2)
    80008360:	01f7f713          	andi	a4,a5,31
    80008364:	00e58733          	add	a4,a1,a4
    80008368:	0206f693          	andi	a3,a3,32
    8000836c:	00178793          	addi	a5,a5,1
    80008370:	fc069ae3          	bnez	a3,80008344 <uartputc+0xac>
    80008374:	02813083          	ld	ra,40(sp)
    80008378:	02013403          	ld	s0,32(sp)
    8000837c:	01813483          	ld	s1,24(sp)
    80008380:	01013903          	ld	s2,16(sp)
    80008384:	00813983          	ld	s3,8(sp)
    80008388:	03010113          	addi	sp,sp,48
    8000838c:	00008067          	ret

0000000080008390 <uartputc_sync>:
    80008390:	ff010113          	addi	sp,sp,-16
    80008394:	00813423          	sd	s0,8(sp)
    80008398:	01010413          	addi	s0,sp,16
    8000839c:	00004717          	auipc	a4,0x4
    800083a0:	6cc72703          	lw	a4,1740(a4) # 8000ca68 <panicked>
    800083a4:	02071663          	bnez	a4,800083d0 <uartputc_sync+0x40>
    800083a8:	00050793          	mv	a5,a0
    800083ac:	100006b7          	lui	a3,0x10000
    800083b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800083b4:	02077713          	andi	a4,a4,32
    800083b8:	fe070ce3          	beqz	a4,800083b0 <uartputc_sync+0x20>
    800083bc:	0ff7f793          	andi	a5,a5,255
    800083c0:	00f68023          	sb	a5,0(a3)
    800083c4:	00813403          	ld	s0,8(sp)
    800083c8:	01010113          	addi	sp,sp,16
    800083cc:	00008067          	ret
    800083d0:	0000006f          	j	800083d0 <uartputc_sync+0x40>

00000000800083d4 <uartstart>:
    800083d4:	ff010113          	addi	sp,sp,-16
    800083d8:	00813423          	sd	s0,8(sp)
    800083dc:	01010413          	addi	s0,sp,16
    800083e0:	00004617          	auipc	a2,0x4
    800083e4:	69060613          	addi	a2,a2,1680 # 8000ca70 <uart_tx_r>
    800083e8:	00004517          	auipc	a0,0x4
    800083ec:	69050513          	addi	a0,a0,1680 # 8000ca78 <uart_tx_w>
    800083f0:	00063783          	ld	a5,0(a2)
    800083f4:	00053703          	ld	a4,0(a0)
    800083f8:	04f70263          	beq	a4,a5,8000843c <uartstart+0x68>
    800083fc:	100005b7          	lui	a1,0x10000
    80008400:	00006817          	auipc	a6,0x6
    80008404:	9b080813          	addi	a6,a6,-1616 # 8000ddb0 <uart_tx_buf>
    80008408:	01c0006f          	j	80008424 <uartstart+0x50>
    8000840c:	0006c703          	lbu	a4,0(a3)
    80008410:	00f63023          	sd	a5,0(a2)
    80008414:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008418:	00063783          	ld	a5,0(a2)
    8000841c:	00053703          	ld	a4,0(a0)
    80008420:	00f70e63          	beq	a4,a5,8000843c <uartstart+0x68>
    80008424:	01f7f713          	andi	a4,a5,31
    80008428:	00e806b3          	add	a3,a6,a4
    8000842c:	0055c703          	lbu	a4,5(a1)
    80008430:	00178793          	addi	a5,a5,1
    80008434:	02077713          	andi	a4,a4,32
    80008438:	fc071ae3          	bnez	a4,8000840c <uartstart+0x38>
    8000843c:	00813403          	ld	s0,8(sp)
    80008440:	01010113          	addi	sp,sp,16
    80008444:	00008067          	ret

0000000080008448 <uartgetc>:
    80008448:	ff010113          	addi	sp,sp,-16
    8000844c:	00813423          	sd	s0,8(sp)
    80008450:	01010413          	addi	s0,sp,16
    80008454:	10000737          	lui	a4,0x10000
    80008458:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000845c:	0017f793          	andi	a5,a5,1
    80008460:	00078c63          	beqz	a5,80008478 <uartgetc+0x30>
    80008464:	00074503          	lbu	a0,0(a4)
    80008468:	0ff57513          	andi	a0,a0,255
    8000846c:	00813403          	ld	s0,8(sp)
    80008470:	01010113          	addi	sp,sp,16
    80008474:	00008067          	ret
    80008478:	fff00513          	li	a0,-1
    8000847c:	ff1ff06f          	j	8000846c <uartgetc+0x24>

0000000080008480 <uartintr>:
    80008480:	100007b7          	lui	a5,0x10000
    80008484:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008488:	0017f793          	andi	a5,a5,1
    8000848c:	0a078463          	beqz	a5,80008534 <uartintr+0xb4>
    80008490:	fe010113          	addi	sp,sp,-32
    80008494:	00813823          	sd	s0,16(sp)
    80008498:	00913423          	sd	s1,8(sp)
    8000849c:	00113c23          	sd	ra,24(sp)
    800084a0:	02010413          	addi	s0,sp,32
    800084a4:	100004b7          	lui	s1,0x10000
    800084a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800084ac:	0ff57513          	andi	a0,a0,255
    800084b0:	fffff097          	auipc	ra,0xfffff
    800084b4:	534080e7          	jalr	1332(ra) # 800079e4 <consoleintr>
    800084b8:	0054c783          	lbu	a5,5(s1)
    800084bc:	0017f793          	andi	a5,a5,1
    800084c0:	fe0794e3          	bnez	a5,800084a8 <uartintr+0x28>
    800084c4:	00004617          	auipc	a2,0x4
    800084c8:	5ac60613          	addi	a2,a2,1452 # 8000ca70 <uart_tx_r>
    800084cc:	00004517          	auipc	a0,0x4
    800084d0:	5ac50513          	addi	a0,a0,1452 # 8000ca78 <uart_tx_w>
    800084d4:	00063783          	ld	a5,0(a2)
    800084d8:	00053703          	ld	a4,0(a0)
    800084dc:	04f70263          	beq	a4,a5,80008520 <uartintr+0xa0>
    800084e0:	100005b7          	lui	a1,0x10000
    800084e4:	00006817          	auipc	a6,0x6
    800084e8:	8cc80813          	addi	a6,a6,-1844 # 8000ddb0 <uart_tx_buf>
    800084ec:	01c0006f          	j	80008508 <uartintr+0x88>
    800084f0:	0006c703          	lbu	a4,0(a3)
    800084f4:	00f63023          	sd	a5,0(a2)
    800084f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084fc:	00063783          	ld	a5,0(a2)
    80008500:	00053703          	ld	a4,0(a0)
    80008504:	00f70e63          	beq	a4,a5,80008520 <uartintr+0xa0>
    80008508:	01f7f713          	andi	a4,a5,31
    8000850c:	00e806b3          	add	a3,a6,a4
    80008510:	0055c703          	lbu	a4,5(a1)
    80008514:	00178793          	addi	a5,a5,1
    80008518:	02077713          	andi	a4,a4,32
    8000851c:	fc071ae3          	bnez	a4,800084f0 <uartintr+0x70>
    80008520:	01813083          	ld	ra,24(sp)
    80008524:	01013403          	ld	s0,16(sp)
    80008528:	00813483          	ld	s1,8(sp)
    8000852c:	02010113          	addi	sp,sp,32
    80008530:	00008067          	ret
    80008534:	00004617          	auipc	a2,0x4
    80008538:	53c60613          	addi	a2,a2,1340 # 8000ca70 <uart_tx_r>
    8000853c:	00004517          	auipc	a0,0x4
    80008540:	53c50513          	addi	a0,a0,1340 # 8000ca78 <uart_tx_w>
    80008544:	00063783          	ld	a5,0(a2)
    80008548:	00053703          	ld	a4,0(a0)
    8000854c:	04f70263          	beq	a4,a5,80008590 <uartintr+0x110>
    80008550:	100005b7          	lui	a1,0x10000
    80008554:	00006817          	auipc	a6,0x6
    80008558:	85c80813          	addi	a6,a6,-1956 # 8000ddb0 <uart_tx_buf>
    8000855c:	01c0006f          	j	80008578 <uartintr+0xf8>
    80008560:	0006c703          	lbu	a4,0(a3)
    80008564:	00f63023          	sd	a5,0(a2)
    80008568:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000856c:	00063783          	ld	a5,0(a2)
    80008570:	00053703          	ld	a4,0(a0)
    80008574:	02f70063          	beq	a4,a5,80008594 <uartintr+0x114>
    80008578:	01f7f713          	andi	a4,a5,31
    8000857c:	00e806b3          	add	a3,a6,a4
    80008580:	0055c703          	lbu	a4,5(a1)
    80008584:	00178793          	addi	a5,a5,1
    80008588:	02077713          	andi	a4,a4,32
    8000858c:	fc071ae3          	bnez	a4,80008560 <uartintr+0xe0>
    80008590:	00008067          	ret
    80008594:	00008067          	ret

0000000080008598 <kinit>:
    80008598:	fc010113          	addi	sp,sp,-64
    8000859c:	02913423          	sd	s1,40(sp)
    800085a0:	fffff7b7          	lui	a5,0xfffff
    800085a4:	00007497          	auipc	s1,0x7
    800085a8:	82b48493          	addi	s1,s1,-2005 # 8000edcf <end+0xfff>
    800085ac:	02813823          	sd	s0,48(sp)
    800085b0:	01313c23          	sd	s3,24(sp)
    800085b4:	00f4f4b3          	and	s1,s1,a5
    800085b8:	02113c23          	sd	ra,56(sp)
    800085bc:	03213023          	sd	s2,32(sp)
    800085c0:	01413823          	sd	s4,16(sp)
    800085c4:	01513423          	sd	s5,8(sp)
    800085c8:	04010413          	addi	s0,sp,64
    800085cc:	000017b7          	lui	a5,0x1
    800085d0:	01100993          	li	s3,17
    800085d4:	00f487b3          	add	a5,s1,a5
    800085d8:	01b99993          	slli	s3,s3,0x1b
    800085dc:	06f9e063          	bltu	s3,a5,8000863c <kinit+0xa4>
    800085e0:	00005a97          	auipc	s5,0x5
    800085e4:	7f0a8a93          	addi	s5,s5,2032 # 8000ddd0 <end>
    800085e8:	0754ec63          	bltu	s1,s5,80008660 <kinit+0xc8>
    800085ec:	0734fa63          	bgeu	s1,s3,80008660 <kinit+0xc8>
    800085f0:	00088a37          	lui	s4,0x88
    800085f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800085f8:	00004917          	auipc	s2,0x4
    800085fc:	48890913          	addi	s2,s2,1160 # 8000ca80 <kmem>
    80008600:	00ca1a13          	slli	s4,s4,0xc
    80008604:	0140006f          	j	80008618 <kinit+0x80>
    80008608:	000017b7          	lui	a5,0x1
    8000860c:	00f484b3          	add	s1,s1,a5
    80008610:	0554e863          	bltu	s1,s5,80008660 <kinit+0xc8>
    80008614:	0534f663          	bgeu	s1,s3,80008660 <kinit+0xc8>
    80008618:	00001637          	lui	a2,0x1
    8000861c:	00100593          	li	a1,1
    80008620:	00048513          	mv	a0,s1
    80008624:	00000097          	auipc	ra,0x0
    80008628:	5e4080e7          	jalr	1508(ra) # 80008c08 <__memset>
    8000862c:	00093783          	ld	a5,0(s2)
    80008630:	00f4b023          	sd	a5,0(s1)
    80008634:	00993023          	sd	s1,0(s2)
    80008638:	fd4498e3          	bne	s1,s4,80008608 <kinit+0x70>
    8000863c:	03813083          	ld	ra,56(sp)
    80008640:	03013403          	ld	s0,48(sp)
    80008644:	02813483          	ld	s1,40(sp)
    80008648:	02013903          	ld	s2,32(sp)
    8000864c:	01813983          	ld	s3,24(sp)
    80008650:	01013a03          	ld	s4,16(sp)
    80008654:	00813a83          	ld	s5,8(sp)
    80008658:	04010113          	addi	sp,sp,64
    8000865c:	00008067          	ret
    80008660:	00002517          	auipc	a0,0x2
    80008664:	1b850513          	addi	a0,a0,440 # 8000a818 <digits+0x18>
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	4b4080e7          	jalr	1204(ra) # 80007b1c <panic>

0000000080008670 <freerange>:
    80008670:	fc010113          	addi	sp,sp,-64
    80008674:	000017b7          	lui	a5,0x1
    80008678:	02913423          	sd	s1,40(sp)
    8000867c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008680:	009504b3          	add	s1,a0,s1
    80008684:	fffff537          	lui	a0,0xfffff
    80008688:	02813823          	sd	s0,48(sp)
    8000868c:	02113c23          	sd	ra,56(sp)
    80008690:	03213023          	sd	s2,32(sp)
    80008694:	01313c23          	sd	s3,24(sp)
    80008698:	01413823          	sd	s4,16(sp)
    8000869c:	01513423          	sd	s5,8(sp)
    800086a0:	01613023          	sd	s6,0(sp)
    800086a4:	04010413          	addi	s0,sp,64
    800086a8:	00a4f4b3          	and	s1,s1,a0
    800086ac:	00f487b3          	add	a5,s1,a5
    800086b0:	06f5e463          	bltu	a1,a5,80008718 <freerange+0xa8>
    800086b4:	00005a97          	auipc	s5,0x5
    800086b8:	71ca8a93          	addi	s5,s5,1820 # 8000ddd0 <end>
    800086bc:	0954e263          	bltu	s1,s5,80008740 <freerange+0xd0>
    800086c0:	01100993          	li	s3,17
    800086c4:	01b99993          	slli	s3,s3,0x1b
    800086c8:	0734fc63          	bgeu	s1,s3,80008740 <freerange+0xd0>
    800086cc:	00058a13          	mv	s4,a1
    800086d0:	00004917          	auipc	s2,0x4
    800086d4:	3b090913          	addi	s2,s2,944 # 8000ca80 <kmem>
    800086d8:	00002b37          	lui	s6,0x2
    800086dc:	0140006f          	j	800086f0 <freerange+0x80>
    800086e0:	000017b7          	lui	a5,0x1
    800086e4:	00f484b3          	add	s1,s1,a5
    800086e8:	0554ec63          	bltu	s1,s5,80008740 <freerange+0xd0>
    800086ec:	0534fa63          	bgeu	s1,s3,80008740 <freerange+0xd0>
    800086f0:	00001637          	lui	a2,0x1
    800086f4:	00100593          	li	a1,1
    800086f8:	00048513          	mv	a0,s1
    800086fc:	00000097          	auipc	ra,0x0
    80008700:	50c080e7          	jalr	1292(ra) # 80008c08 <__memset>
    80008704:	00093703          	ld	a4,0(s2)
    80008708:	016487b3          	add	a5,s1,s6
    8000870c:	00e4b023          	sd	a4,0(s1)
    80008710:	00993023          	sd	s1,0(s2)
    80008714:	fcfa76e3          	bgeu	s4,a5,800086e0 <freerange+0x70>
    80008718:	03813083          	ld	ra,56(sp)
    8000871c:	03013403          	ld	s0,48(sp)
    80008720:	02813483          	ld	s1,40(sp)
    80008724:	02013903          	ld	s2,32(sp)
    80008728:	01813983          	ld	s3,24(sp)
    8000872c:	01013a03          	ld	s4,16(sp)
    80008730:	00813a83          	ld	s5,8(sp)
    80008734:	00013b03          	ld	s6,0(sp)
    80008738:	04010113          	addi	sp,sp,64
    8000873c:	00008067          	ret
    80008740:	00002517          	auipc	a0,0x2
    80008744:	0d850513          	addi	a0,a0,216 # 8000a818 <digits+0x18>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	3d4080e7          	jalr	980(ra) # 80007b1c <panic>

0000000080008750 <kfree>:
    80008750:	fe010113          	addi	sp,sp,-32
    80008754:	00813823          	sd	s0,16(sp)
    80008758:	00113c23          	sd	ra,24(sp)
    8000875c:	00913423          	sd	s1,8(sp)
    80008760:	02010413          	addi	s0,sp,32
    80008764:	03451793          	slli	a5,a0,0x34
    80008768:	04079c63          	bnez	a5,800087c0 <kfree+0x70>
    8000876c:	00005797          	auipc	a5,0x5
    80008770:	66478793          	addi	a5,a5,1636 # 8000ddd0 <end>
    80008774:	00050493          	mv	s1,a0
    80008778:	04f56463          	bltu	a0,a5,800087c0 <kfree+0x70>
    8000877c:	01100793          	li	a5,17
    80008780:	01b79793          	slli	a5,a5,0x1b
    80008784:	02f57e63          	bgeu	a0,a5,800087c0 <kfree+0x70>
    80008788:	00001637          	lui	a2,0x1
    8000878c:	00100593          	li	a1,1
    80008790:	00000097          	auipc	ra,0x0
    80008794:	478080e7          	jalr	1144(ra) # 80008c08 <__memset>
    80008798:	00004797          	auipc	a5,0x4
    8000879c:	2e878793          	addi	a5,a5,744 # 8000ca80 <kmem>
    800087a0:	0007b703          	ld	a4,0(a5)
    800087a4:	01813083          	ld	ra,24(sp)
    800087a8:	01013403          	ld	s0,16(sp)
    800087ac:	00e4b023          	sd	a4,0(s1)
    800087b0:	0097b023          	sd	s1,0(a5)
    800087b4:	00813483          	ld	s1,8(sp)
    800087b8:	02010113          	addi	sp,sp,32
    800087bc:	00008067          	ret
    800087c0:	00002517          	auipc	a0,0x2
    800087c4:	05850513          	addi	a0,a0,88 # 8000a818 <digits+0x18>
    800087c8:	fffff097          	auipc	ra,0xfffff
    800087cc:	354080e7          	jalr	852(ra) # 80007b1c <panic>

00000000800087d0 <kalloc>:
    800087d0:	fe010113          	addi	sp,sp,-32
    800087d4:	00813823          	sd	s0,16(sp)
    800087d8:	00913423          	sd	s1,8(sp)
    800087dc:	00113c23          	sd	ra,24(sp)
    800087e0:	02010413          	addi	s0,sp,32
    800087e4:	00004797          	auipc	a5,0x4
    800087e8:	29c78793          	addi	a5,a5,668 # 8000ca80 <kmem>
    800087ec:	0007b483          	ld	s1,0(a5)
    800087f0:	02048063          	beqz	s1,80008810 <kalloc+0x40>
    800087f4:	0004b703          	ld	a4,0(s1)
    800087f8:	00001637          	lui	a2,0x1
    800087fc:	00500593          	li	a1,5
    80008800:	00048513          	mv	a0,s1
    80008804:	00e7b023          	sd	a4,0(a5)
    80008808:	00000097          	auipc	ra,0x0
    8000880c:	400080e7          	jalr	1024(ra) # 80008c08 <__memset>
    80008810:	01813083          	ld	ra,24(sp)
    80008814:	01013403          	ld	s0,16(sp)
    80008818:	00048513          	mv	a0,s1
    8000881c:	00813483          	ld	s1,8(sp)
    80008820:	02010113          	addi	sp,sp,32
    80008824:	00008067          	ret

0000000080008828 <initlock>:
    80008828:	ff010113          	addi	sp,sp,-16
    8000882c:	00813423          	sd	s0,8(sp)
    80008830:	01010413          	addi	s0,sp,16
    80008834:	00813403          	ld	s0,8(sp)
    80008838:	00b53423          	sd	a1,8(a0)
    8000883c:	00052023          	sw	zero,0(a0)
    80008840:	00053823          	sd	zero,16(a0)
    80008844:	01010113          	addi	sp,sp,16
    80008848:	00008067          	ret

000000008000884c <acquire>:
    8000884c:	fe010113          	addi	sp,sp,-32
    80008850:	00813823          	sd	s0,16(sp)
    80008854:	00913423          	sd	s1,8(sp)
    80008858:	00113c23          	sd	ra,24(sp)
    8000885c:	01213023          	sd	s2,0(sp)
    80008860:	02010413          	addi	s0,sp,32
    80008864:	00050493          	mv	s1,a0
    80008868:	10002973          	csrr	s2,sstatus
    8000886c:	100027f3          	csrr	a5,sstatus
    80008870:	ffd7f793          	andi	a5,a5,-3
    80008874:	10079073          	csrw	sstatus,a5
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	8ec080e7          	jalr	-1812(ra) # 80007164 <mycpu>
    80008880:	07852783          	lw	a5,120(a0)
    80008884:	06078e63          	beqz	a5,80008900 <acquire+0xb4>
    80008888:	fffff097          	auipc	ra,0xfffff
    8000888c:	8dc080e7          	jalr	-1828(ra) # 80007164 <mycpu>
    80008890:	07852783          	lw	a5,120(a0)
    80008894:	0004a703          	lw	a4,0(s1)
    80008898:	0017879b          	addiw	a5,a5,1
    8000889c:	06f52c23          	sw	a5,120(a0)
    800088a0:	04071063          	bnez	a4,800088e0 <acquire+0x94>
    800088a4:	00100713          	li	a4,1
    800088a8:	00070793          	mv	a5,a4
    800088ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800088b0:	0007879b          	sext.w	a5,a5
    800088b4:	fe079ae3          	bnez	a5,800088a8 <acquire+0x5c>
    800088b8:	0ff0000f          	fence
    800088bc:	fffff097          	auipc	ra,0xfffff
    800088c0:	8a8080e7          	jalr	-1880(ra) # 80007164 <mycpu>
    800088c4:	01813083          	ld	ra,24(sp)
    800088c8:	01013403          	ld	s0,16(sp)
    800088cc:	00a4b823          	sd	a0,16(s1)
    800088d0:	00013903          	ld	s2,0(sp)
    800088d4:	00813483          	ld	s1,8(sp)
    800088d8:	02010113          	addi	sp,sp,32
    800088dc:	00008067          	ret
    800088e0:	0104b903          	ld	s2,16(s1)
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	880080e7          	jalr	-1920(ra) # 80007164 <mycpu>
    800088ec:	faa91ce3          	bne	s2,a0,800088a4 <acquire+0x58>
    800088f0:	00002517          	auipc	a0,0x2
    800088f4:	f3050513          	addi	a0,a0,-208 # 8000a820 <digits+0x20>
    800088f8:	fffff097          	auipc	ra,0xfffff
    800088fc:	224080e7          	jalr	548(ra) # 80007b1c <panic>
    80008900:	00195913          	srli	s2,s2,0x1
    80008904:	fffff097          	auipc	ra,0xfffff
    80008908:	860080e7          	jalr	-1952(ra) # 80007164 <mycpu>
    8000890c:	00197913          	andi	s2,s2,1
    80008910:	07252e23          	sw	s2,124(a0)
    80008914:	f75ff06f          	j	80008888 <acquire+0x3c>

0000000080008918 <release>:
    80008918:	fe010113          	addi	sp,sp,-32
    8000891c:	00813823          	sd	s0,16(sp)
    80008920:	00113c23          	sd	ra,24(sp)
    80008924:	00913423          	sd	s1,8(sp)
    80008928:	01213023          	sd	s2,0(sp)
    8000892c:	02010413          	addi	s0,sp,32
    80008930:	00052783          	lw	a5,0(a0)
    80008934:	00079a63          	bnez	a5,80008948 <release+0x30>
    80008938:	00002517          	auipc	a0,0x2
    8000893c:	ef050513          	addi	a0,a0,-272 # 8000a828 <digits+0x28>
    80008940:	fffff097          	auipc	ra,0xfffff
    80008944:	1dc080e7          	jalr	476(ra) # 80007b1c <panic>
    80008948:	01053903          	ld	s2,16(a0)
    8000894c:	00050493          	mv	s1,a0
    80008950:	fffff097          	auipc	ra,0xfffff
    80008954:	814080e7          	jalr	-2028(ra) # 80007164 <mycpu>
    80008958:	fea910e3          	bne	s2,a0,80008938 <release+0x20>
    8000895c:	0004b823          	sd	zero,16(s1)
    80008960:	0ff0000f          	fence
    80008964:	0f50000f          	fence	iorw,ow
    80008968:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000896c:	ffffe097          	auipc	ra,0xffffe
    80008970:	7f8080e7          	jalr	2040(ra) # 80007164 <mycpu>
    80008974:	100027f3          	csrr	a5,sstatus
    80008978:	0027f793          	andi	a5,a5,2
    8000897c:	04079a63          	bnez	a5,800089d0 <release+0xb8>
    80008980:	07852783          	lw	a5,120(a0)
    80008984:	02f05e63          	blez	a5,800089c0 <release+0xa8>
    80008988:	fff7871b          	addiw	a4,a5,-1
    8000898c:	06e52c23          	sw	a4,120(a0)
    80008990:	00071c63          	bnez	a4,800089a8 <release+0x90>
    80008994:	07c52783          	lw	a5,124(a0)
    80008998:	00078863          	beqz	a5,800089a8 <release+0x90>
    8000899c:	100027f3          	csrr	a5,sstatus
    800089a0:	0027e793          	ori	a5,a5,2
    800089a4:	10079073          	csrw	sstatus,a5
    800089a8:	01813083          	ld	ra,24(sp)
    800089ac:	01013403          	ld	s0,16(sp)
    800089b0:	00813483          	ld	s1,8(sp)
    800089b4:	00013903          	ld	s2,0(sp)
    800089b8:	02010113          	addi	sp,sp,32
    800089bc:	00008067          	ret
    800089c0:	00002517          	auipc	a0,0x2
    800089c4:	e8850513          	addi	a0,a0,-376 # 8000a848 <digits+0x48>
    800089c8:	fffff097          	auipc	ra,0xfffff
    800089cc:	154080e7          	jalr	340(ra) # 80007b1c <panic>
    800089d0:	00002517          	auipc	a0,0x2
    800089d4:	e6050513          	addi	a0,a0,-416 # 8000a830 <digits+0x30>
    800089d8:	fffff097          	auipc	ra,0xfffff
    800089dc:	144080e7          	jalr	324(ra) # 80007b1c <panic>

00000000800089e0 <holding>:
    800089e0:	00052783          	lw	a5,0(a0)
    800089e4:	00079663          	bnez	a5,800089f0 <holding+0x10>
    800089e8:	00000513          	li	a0,0
    800089ec:	00008067          	ret
    800089f0:	fe010113          	addi	sp,sp,-32
    800089f4:	00813823          	sd	s0,16(sp)
    800089f8:	00913423          	sd	s1,8(sp)
    800089fc:	00113c23          	sd	ra,24(sp)
    80008a00:	02010413          	addi	s0,sp,32
    80008a04:	01053483          	ld	s1,16(a0)
    80008a08:	ffffe097          	auipc	ra,0xffffe
    80008a0c:	75c080e7          	jalr	1884(ra) # 80007164 <mycpu>
    80008a10:	01813083          	ld	ra,24(sp)
    80008a14:	01013403          	ld	s0,16(sp)
    80008a18:	40a48533          	sub	a0,s1,a0
    80008a1c:	00153513          	seqz	a0,a0
    80008a20:	00813483          	ld	s1,8(sp)
    80008a24:	02010113          	addi	sp,sp,32
    80008a28:	00008067          	ret

0000000080008a2c <push_off>:
    80008a2c:	fe010113          	addi	sp,sp,-32
    80008a30:	00813823          	sd	s0,16(sp)
    80008a34:	00113c23          	sd	ra,24(sp)
    80008a38:	00913423          	sd	s1,8(sp)
    80008a3c:	02010413          	addi	s0,sp,32
    80008a40:	100024f3          	csrr	s1,sstatus
    80008a44:	100027f3          	csrr	a5,sstatus
    80008a48:	ffd7f793          	andi	a5,a5,-3
    80008a4c:	10079073          	csrw	sstatus,a5
    80008a50:	ffffe097          	auipc	ra,0xffffe
    80008a54:	714080e7          	jalr	1812(ra) # 80007164 <mycpu>
    80008a58:	07852783          	lw	a5,120(a0)
    80008a5c:	02078663          	beqz	a5,80008a88 <push_off+0x5c>
    80008a60:	ffffe097          	auipc	ra,0xffffe
    80008a64:	704080e7          	jalr	1796(ra) # 80007164 <mycpu>
    80008a68:	07852783          	lw	a5,120(a0)
    80008a6c:	01813083          	ld	ra,24(sp)
    80008a70:	01013403          	ld	s0,16(sp)
    80008a74:	0017879b          	addiw	a5,a5,1
    80008a78:	06f52c23          	sw	a5,120(a0)
    80008a7c:	00813483          	ld	s1,8(sp)
    80008a80:	02010113          	addi	sp,sp,32
    80008a84:	00008067          	ret
    80008a88:	0014d493          	srli	s1,s1,0x1
    80008a8c:	ffffe097          	auipc	ra,0xffffe
    80008a90:	6d8080e7          	jalr	1752(ra) # 80007164 <mycpu>
    80008a94:	0014f493          	andi	s1,s1,1
    80008a98:	06952e23          	sw	s1,124(a0)
    80008a9c:	fc5ff06f          	j	80008a60 <push_off+0x34>

0000000080008aa0 <pop_off>:
    80008aa0:	ff010113          	addi	sp,sp,-16
    80008aa4:	00813023          	sd	s0,0(sp)
    80008aa8:	00113423          	sd	ra,8(sp)
    80008aac:	01010413          	addi	s0,sp,16
    80008ab0:	ffffe097          	auipc	ra,0xffffe
    80008ab4:	6b4080e7          	jalr	1716(ra) # 80007164 <mycpu>
    80008ab8:	100027f3          	csrr	a5,sstatus
    80008abc:	0027f793          	andi	a5,a5,2
    80008ac0:	04079663          	bnez	a5,80008b0c <pop_off+0x6c>
    80008ac4:	07852783          	lw	a5,120(a0)
    80008ac8:	02f05a63          	blez	a5,80008afc <pop_off+0x5c>
    80008acc:	fff7871b          	addiw	a4,a5,-1
    80008ad0:	06e52c23          	sw	a4,120(a0)
    80008ad4:	00071c63          	bnez	a4,80008aec <pop_off+0x4c>
    80008ad8:	07c52783          	lw	a5,124(a0)
    80008adc:	00078863          	beqz	a5,80008aec <pop_off+0x4c>
    80008ae0:	100027f3          	csrr	a5,sstatus
    80008ae4:	0027e793          	ori	a5,a5,2
    80008ae8:	10079073          	csrw	sstatus,a5
    80008aec:	00813083          	ld	ra,8(sp)
    80008af0:	00013403          	ld	s0,0(sp)
    80008af4:	01010113          	addi	sp,sp,16
    80008af8:	00008067          	ret
    80008afc:	00002517          	auipc	a0,0x2
    80008b00:	d4c50513          	addi	a0,a0,-692 # 8000a848 <digits+0x48>
    80008b04:	fffff097          	auipc	ra,0xfffff
    80008b08:	018080e7          	jalr	24(ra) # 80007b1c <panic>
    80008b0c:	00002517          	auipc	a0,0x2
    80008b10:	d2450513          	addi	a0,a0,-732 # 8000a830 <digits+0x30>
    80008b14:	fffff097          	auipc	ra,0xfffff
    80008b18:	008080e7          	jalr	8(ra) # 80007b1c <panic>

0000000080008b1c <push_on>:
    80008b1c:	fe010113          	addi	sp,sp,-32
    80008b20:	00813823          	sd	s0,16(sp)
    80008b24:	00113c23          	sd	ra,24(sp)
    80008b28:	00913423          	sd	s1,8(sp)
    80008b2c:	02010413          	addi	s0,sp,32
    80008b30:	100024f3          	csrr	s1,sstatus
    80008b34:	100027f3          	csrr	a5,sstatus
    80008b38:	0027e793          	ori	a5,a5,2
    80008b3c:	10079073          	csrw	sstatus,a5
    80008b40:	ffffe097          	auipc	ra,0xffffe
    80008b44:	624080e7          	jalr	1572(ra) # 80007164 <mycpu>
    80008b48:	07852783          	lw	a5,120(a0)
    80008b4c:	02078663          	beqz	a5,80008b78 <push_on+0x5c>
    80008b50:	ffffe097          	auipc	ra,0xffffe
    80008b54:	614080e7          	jalr	1556(ra) # 80007164 <mycpu>
    80008b58:	07852783          	lw	a5,120(a0)
    80008b5c:	01813083          	ld	ra,24(sp)
    80008b60:	01013403          	ld	s0,16(sp)
    80008b64:	0017879b          	addiw	a5,a5,1
    80008b68:	06f52c23          	sw	a5,120(a0)
    80008b6c:	00813483          	ld	s1,8(sp)
    80008b70:	02010113          	addi	sp,sp,32
    80008b74:	00008067          	ret
    80008b78:	0014d493          	srli	s1,s1,0x1
    80008b7c:	ffffe097          	auipc	ra,0xffffe
    80008b80:	5e8080e7          	jalr	1512(ra) # 80007164 <mycpu>
    80008b84:	0014f493          	andi	s1,s1,1
    80008b88:	06952e23          	sw	s1,124(a0)
    80008b8c:	fc5ff06f          	j	80008b50 <push_on+0x34>

0000000080008b90 <pop_on>:
    80008b90:	ff010113          	addi	sp,sp,-16
    80008b94:	00813023          	sd	s0,0(sp)
    80008b98:	00113423          	sd	ra,8(sp)
    80008b9c:	01010413          	addi	s0,sp,16
    80008ba0:	ffffe097          	auipc	ra,0xffffe
    80008ba4:	5c4080e7          	jalr	1476(ra) # 80007164 <mycpu>
    80008ba8:	100027f3          	csrr	a5,sstatus
    80008bac:	0027f793          	andi	a5,a5,2
    80008bb0:	04078463          	beqz	a5,80008bf8 <pop_on+0x68>
    80008bb4:	07852783          	lw	a5,120(a0)
    80008bb8:	02f05863          	blez	a5,80008be8 <pop_on+0x58>
    80008bbc:	fff7879b          	addiw	a5,a5,-1
    80008bc0:	06f52c23          	sw	a5,120(a0)
    80008bc4:	07853783          	ld	a5,120(a0)
    80008bc8:	00079863          	bnez	a5,80008bd8 <pop_on+0x48>
    80008bcc:	100027f3          	csrr	a5,sstatus
    80008bd0:	ffd7f793          	andi	a5,a5,-3
    80008bd4:	10079073          	csrw	sstatus,a5
    80008bd8:	00813083          	ld	ra,8(sp)
    80008bdc:	00013403          	ld	s0,0(sp)
    80008be0:	01010113          	addi	sp,sp,16
    80008be4:	00008067          	ret
    80008be8:	00002517          	auipc	a0,0x2
    80008bec:	c8850513          	addi	a0,a0,-888 # 8000a870 <digits+0x70>
    80008bf0:	fffff097          	auipc	ra,0xfffff
    80008bf4:	f2c080e7          	jalr	-212(ra) # 80007b1c <panic>
    80008bf8:	00002517          	auipc	a0,0x2
    80008bfc:	c5850513          	addi	a0,a0,-936 # 8000a850 <digits+0x50>
    80008c00:	fffff097          	auipc	ra,0xfffff
    80008c04:	f1c080e7          	jalr	-228(ra) # 80007b1c <panic>

0000000080008c08 <__memset>:
    80008c08:	ff010113          	addi	sp,sp,-16
    80008c0c:	00813423          	sd	s0,8(sp)
    80008c10:	01010413          	addi	s0,sp,16
    80008c14:	1a060e63          	beqz	a2,80008dd0 <__memset+0x1c8>
    80008c18:	40a007b3          	neg	a5,a0
    80008c1c:	0077f793          	andi	a5,a5,7
    80008c20:	00778693          	addi	a3,a5,7
    80008c24:	00b00813          	li	a6,11
    80008c28:	0ff5f593          	andi	a1,a1,255
    80008c2c:	fff6071b          	addiw	a4,a2,-1
    80008c30:	1b06e663          	bltu	a3,a6,80008ddc <__memset+0x1d4>
    80008c34:	1cd76463          	bltu	a4,a3,80008dfc <__memset+0x1f4>
    80008c38:	1a078e63          	beqz	a5,80008df4 <__memset+0x1ec>
    80008c3c:	00b50023          	sb	a1,0(a0)
    80008c40:	00100713          	li	a4,1
    80008c44:	1ae78463          	beq	a5,a4,80008dec <__memset+0x1e4>
    80008c48:	00b500a3          	sb	a1,1(a0)
    80008c4c:	00200713          	li	a4,2
    80008c50:	1ae78a63          	beq	a5,a4,80008e04 <__memset+0x1fc>
    80008c54:	00b50123          	sb	a1,2(a0)
    80008c58:	00300713          	li	a4,3
    80008c5c:	18e78463          	beq	a5,a4,80008de4 <__memset+0x1dc>
    80008c60:	00b501a3          	sb	a1,3(a0)
    80008c64:	00400713          	li	a4,4
    80008c68:	1ae78263          	beq	a5,a4,80008e0c <__memset+0x204>
    80008c6c:	00b50223          	sb	a1,4(a0)
    80008c70:	00500713          	li	a4,5
    80008c74:	1ae78063          	beq	a5,a4,80008e14 <__memset+0x20c>
    80008c78:	00b502a3          	sb	a1,5(a0)
    80008c7c:	00700713          	li	a4,7
    80008c80:	18e79e63          	bne	a5,a4,80008e1c <__memset+0x214>
    80008c84:	00b50323          	sb	a1,6(a0)
    80008c88:	00700e93          	li	t4,7
    80008c8c:	00859713          	slli	a4,a1,0x8
    80008c90:	00e5e733          	or	a4,a1,a4
    80008c94:	01059e13          	slli	t3,a1,0x10
    80008c98:	01c76e33          	or	t3,a4,t3
    80008c9c:	01859313          	slli	t1,a1,0x18
    80008ca0:	006e6333          	or	t1,t3,t1
    80008ca4:	02059893          	slli	a7,a1,0x20
    80008ca8:	40f60e3b          	subw	t3,a2,a5
    80008cac:	011368b3          	or	a7,t1,a7
    80008cb0:	02859813          	slli	a6,a1,0x28
    80008cb4:	0108e833          	or	a6,a7,a6
    80008cb8:	03059693          	slli	a3,a1,0x30
    80008cbc:	003e589b          	srliw	a7,t3,0x3
    80008cc0:	00d866b3          	or	a3,a6,a3
    80008cc4:	03859713          	slli	a4,a1,0x38
    80008cc8:	00389813          	slli	a6,a7,0x3
    80008ccc:	00f507b3          	add	a5,a0,a5
    80008cd0:	00e6e733          	or	a4,a3,a4
    80008cd4:	000e089b          	sext.w	a7,t3
    80008cd8:	00f806b3          	add	a3,a6,a5
    80008cdc:	00e7b023          	sd	a4,0(a5)
    80008ce0:	00878793          	addi	a5,a5,8
    80008ce4:	fed79ce3          	bne	a5,a3,80008cdc <__memset+0xd4>
    80008ce8:	ff8e7793          	andi	a5,t3,-8
    80008cec:	0007871b          	sext.w	a4,a5
    80008cf0:	01d787bb          	addw	a5,a5,t4
    80008cf4:	0ce88e63          	beq	a7,a4,80008dd0 <__memset+0x1c8>
    80008cf8:	00f50733          	add	a4,a0,a5
    80008cfc:	00b70023          	sb	a1,0(a4)
    80008d00:	0017871b          	addiw	a4,a5,1
    80008d04:	0cc77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d08:	00e50733          	add	a4,a0,a4
    80008d0c:	00b70023          	sb	a1,0(a4)
    80008d10:	0027871b          	addiw	a4,a5,2
    80008d14:	0ac77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00b70023          	sb	a1,0(a4)
    80008d20:	0037871b          	addiw	a4,a5,3
    80008d24:	0ac77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00b70023          	sb	a1,0(a4)
    80008d30:	0047871b          	addiw	a4,a5,4
    80008d34:	08c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00b70023          	sb	a1,0(a4)
    80008d40:	0057871b          	addiw	a4,a5,5
    80008d44:	08c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d48:	00e50733          	add	a4,a0,a4
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	0067871b          	addiw	a4,a5,6
    80008d54:	06c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0077871b          	addiw	a4,a5,7
    80008d64:	06c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	0087871b          	addiw	a4,a5,8
    80008d74:	04c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	0097871b          	addiw	a4,a5,9
    80008d84:	04c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	00a7871b          	addiw	a4,a5,10
    80008d94:	02c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	00b7871b          	addiw	a4,a5,11
    80008da4:	02c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	00c7871b          	addiw	a4,a5,12
    80008db4:	00c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	00d7879b          	addiw	a5,a5,13
    80008dc4:	00c7f663          	bgeu	a5,a2,80008dd0 <__memset+0x1c8>
    80008dc8:	00f507b3          	add	a5,a0,a5
    80008dcc:	00b78023          	sb	a1,0(a5)
    80008dd0:	00813403          	ld	s0,8(sp)
    80008dd4:	01010113          	addi	sp,sp,16
    80008dd8:	00008067          	ret
    80008ddc:	00b00693          	li	a3,11
    80008de0:	e55ff06f          	j	80008c34 <__memset+0x2c>
    80008de4:	00300e93          	li	t4,3
    80008de8:	ea5ff06f          	j	80008c8c <__memset+0x84>
    80008dec:	00100e93          	li	t4,1
    80008df0:	e9dff06f          	j	80008c8c <__memset+0x84>
    80008df4:	00000e93          	li	t4,0
    80008df8:	e95ff06f          	j	80008c8c <__memset+0x84>
    80008dfc:	00000793          	li	a5,0
    80008e00:	ef9ff06f          	j	80008cf8 <__memset+0xf0>
    80008e04:	00200e93          	li	t4,2
    80008e08:	e85ff06f          	j	80008c8c <__memset+0x84>
    80008e0c:	00400e93          	li	t4,4
    80008e10:	e7dff06f          	j	80008c8c <__memset+0x84>
    80008e14:	00500e93          	li	t4,5
    80008e18:	e75ff06f          	j	80008c8c <__memset+0x84>
    80008e1c:	00600e93          	li	t4,6
    80008e20:	e6dff06f          	j	80008c8c <__memset+0x84>

0000000080008e24 <__memmove>:
    80008e24:	ff010113          	addi	sp,sp,-16
    80008e28:	00813423          	sd	s0,8(sp)
    80008e2c:	01010413          	addi	s0,sp,16
    80008e30:	0e060863          	beqz	a2,80008f20 <__memmove+0xfc>
    80008e34:	fff6069b          	addiw	a3,a2,-1
    80008e38:	0006881b          	sext.w	a6,a3
    80008e3c:	0ea5e863          	bltu	a1,a0,80008f2c <__memmove+0x108>
    80008e40:	00758713          	addi	a4,a1,7
    80008e44:	00a5e7b3          	or	a5,a1,a0
    80008e48:	40a70733          	sub	a4,a4,a0
    80008e4c:	0077f793          	andi	a5,a5,7
    80008e50:	00f73713          	sltiu	a4,a4,15
    80008e54:	00174713          	xori	a4,a4,1
    80008e58:	0017b793          	seqz	a5,a5
    80008e5c:	00e7f7b3          	and	a5,a5,a4
    80008e60:	10078863          	beqz	a5,80008f70 <__memmove+0x14c>
    80008e64:	00900793          	li	a5,9
    80008e68:	1107f463          	bgeu	a5,a6,80008f70 <__memmove+0x14c>
    80008e6c:	0036581b          	srliw	a6,a2,0x3
    80008e70:	fff8081b          	addiw	a6,a6,-1
    80008e74:	02081813          	slli	a6,a6,0x20
    80008e78:	01d85893          	srli	a7,a6,0x1d
    80008e7c:	00858813          	addi	a6,a1,8
    80008e80:	00058793          	mv	a5,a1
    80008e84:	00050713          	mv	a4,a0
    80008e88:	01088833          	add	a6,a7,a6
    80008e8c:	0007b883          	ld	a7,0(a5)
    80008e90:	00878793          	addi	a5,a5,8
    80008e94:	00870713          	addi	a4,a4,8
    80008e98:	ff173c23          	sd	a7,-8(a4)
    80008e9c:	ff0798e3          	bne	a5,a6,80008e8c <__memmove+0x68>
    80008ea0:	ff867713          	andi	a4,a2,-8
    80008ea4:	02071793          	slli	a5,a4,0x20
    80008ea8:	0207d793          	srli	a5,a5,0x20
    80008eac:	00f585b3          	add	a1,a1,a5
    80008eb0:	40e686bb          	subw	a3,a3,a4
    80008eb4:	00f507b3          	add	a5,a0,a5
    80008eb8:	06e60463          	beq	a2,a4,80008f20 <__memmove+0xfc>
    80008ebc:	0005c703          	lbu	a4,0(a1)
    80008ec0:	00e78023          	sb	a4,0(a5)
    80008ec4:	04068e63          	beqz	a3,80008f20 <__memmove+0xfc>
    80008ec8:	0015c603          	lbu	a2,1(a1)
    80008ecc:	00100713          	li	a4,1
    80008ed0:	00c780a3          	sb	a2,1(a5)
    80008ed4:	04e68663          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008ed8:	0025c603          	lbu	a2,2(a1)
    80008edc:	00200713          	li	a4,2
    80008ee0:	00c78123          	sb	a2,2(a5)
    80008ee4:	02e68e63          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008ee8:	0035c603          	lbu	a2,3(a1)
    80008eec:	00300713          	li	a4,3
    80008ef0:	00c781a3          	sb	a2,3(a5)
    80008ef4:	02e68663          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008ef8:	0045c603          	lbu	a2,4(a1)
    80008efc:	00400713          	li	a4,4
    80008f00:	00c78223          	sb	a2,4(a5)
    80008f04:	00e68e63          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008f08:	0055c603          	lbu	a2,5(a1)
    80008f0c:	00500713          	li	a4,5
    80008f10:	00c782a3          	sb	a2,5(a5)
    80008f14:	00e68663          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008f18:	0065c703          	lbu	a4,6(a1)
    80008f1c:	00e78323          	sb	a4,6(a5)
    80008f20:	00813403          	ld	s0,8(sp)
    80008f24:	01010113          	addi	sp,sp,16
    80008f28:	00008067          	ret
    80008f2c:	02061713          	slli	a4,a2,0x20
    80008f30:	02075713          	srli	a4,a4,0x20
    80008f34:	00e587b3          	add	a5,a1,a4
    80008f38:	f0f574e3          	bgeu	a0,a5,80008e40 <__memmove+0x1c>
    80008f3c:	02069613          	slli	a2,a3,0x20
    80008f40:	02065613          	srli	a2,a2,0x20
    80008f44:	fff64613          	not	a2,a2
    80008f48:	00e50733          	add	a4,a0,a4
    80008f4c:	00c78633          	add	a2,a5,a2
    80008f50:	fff7c683          	lbu	a3,-1(a5)
    80008f54:	fff78793          	addi	a5,a5,-1
    80008f58:	fff70713          	addi	a4,a4,-1
    80008f5c:	00d70023          	sb	a3,0(a4)
    80008f60:	fec798e3          	bne	a5,a2,80008f50 <__memmove+0x12c>
    80008f64:	00813403          	ld	s0,8(sp)
    80008f68:	01010113          	addi	sp,sp,16
    80008f6c:	00008067          	ret
    80008f70:	02069713          	slli	a4,a3,0x20
    80008f74:	02075713          	srli	a4,a4,0x20
    80008f78:	00170713          	addi	a4,a4,1
    80008f7c:	00e50733          	add	a4,a0,a4
    80008f80:	00050793          	mv	a5,a0
    80008f84:	0005c683          	lbu	a3,0(a1)
    80008f88:	00178793          	addi	a5,a5,1
    80008f8c:	00158593          	addi	a1,a1,1
    80008f90:	fed78fa3          	sb	a3,-1(a5)
    80008f94:	fee798e3          	bne	a5,a4,80008f84 <__memmove+0x160>
    80008f98:	f89ff06f          	j	80008f20 <__memmove+0xfc>

0000000080008f9c <__putc>:
    80008f9c:	fe010113          	addi	sp,sp,-32
    80008fa0:	00813823          	sd	s0,16(sp)
    80008fa4:	00113c23          	sd	ra,24(sp)
    80008fa8:	02010413          	addi	s0,sp,32
    80008fac:	00050793          	mv	a5,a0
    80008fb0:	fef40593          	addi	a1,s0,-17
    80008fb4:	00100613          	li	a2,1
    80008fb8:	00000513          	li	a0,0
    80008fbc:	fef407a3          	sb	a5,-17(s0)
    80008fc0:	fffff097          	auipc	ra,0xfffff
    80008fc4:	b3c080e7          	jalr	-1220(ra) # 80007afc <console_write>
    80008fc8:	01813083          	ld	ra,24(sp)
    80008fcc:	01013403          	ld	s0,16(sp)
    80008fd0:	02010113          	addi	sp,sp,32
    80008fd4:	00008067          	ret

0000000080008fd8 <__getc>:
    80008fd8:	fe010113          	addi	sp,sp,-32
    80008fdc:	00813823          	sd	s0,16(sp)
    80008fe0:	00113c23          	sd	ra,24(sp)
    80008fe4:	02010413          	addi	s0,sp,32
    80008fe8:	fe840593          	addi	a1,s0,-24
    80008fec:	00100613          	li	a2,1
    80008ff0:	00000513          	li	a0,0
    80008ff4:	fffff097          	auipc	ra,0xfffff
    80008ff8:	ae8080e7          	jalr	-1304(ra) # 80007adc <console_read>
    80008ffc:	fe844503          	lbu	a0,-24(s0)
    80009000:	01813083          	ld	ra,24(sp)
    80009004:	01013403          	ld	s0,16(sp)
    80009008:	02010113          	addi	sp,sp,32
    8000900c:	00008067          	ret

0000000080009010 <console_handler>:
    80009010:	fe010113          	addi	sp,sp,-32
    80009014:	00813823          	sd	s0,16(sp)
    80009018:	00113c23          	sd	ra,24(sp)
    8000901c:	00913423          	sd	s1,8(sp)
    80009020:	02010413          	addi	s0,sp,32
    80009024:	14202773          	csrr	a4,scause
    80009028:	100027f3          	csrr	a5,sstatus
    8000902c:	0027f793          	andi	a5,a5,2
    80009030:	06079e63          	bnez	a5,800090ac <console_handler+0x9c>
    80009034:	00074c63          	bltz	a4,8000904c <console_handler+0x3c>
    80009038:	01813083          	ld	ra,24(sp)
    8000903c:	01013403          	ld	s0,16(sp)
    80009040:	00813483          	ld	s1,8(sp)
    80009044:	02010113          	addi	sp,sp,32
    80009048:	00008067          	ret
    8000904c:	0ff77713          	andi	a4,a4,255
    80009050:	00900793          	li	a5,9
    80009054:	fef712e3          	bne	a4,a5,80009038 <console_handler+0x28>
    80009058:	ffffe097          	auipc	ra,0xffffe
    8000905c:	6dc080e7          	jalr	1756(ra) # 80007734 <plic_claim>
    80009060:	00a00793          	li	a5,10
    80009064:	00050493          	mv	s1,a0
    80009068:	02f50c63          	beq	a0,a5,800090a0 <console_handler+0x90>
    8000906c:	fc0506e3          	beqz	a0,80009038 <console_handler+0x28>
    80009070:	00050593          	mv	a1,a0
    80009074:	00001517          	auipc	a0,0x1
    80009078:	70450513          	addi	a0,a0,1796 # 8000a778 <CONSOLE_STATUS+0x768>
    8000907c:	fffff097          	auipc	ra,0xfffff
    80009080:	afc080e7          	jalr	-1284(ra) # 80007b78 <__printf>
    80009084:	01013403          	ld	s0,16(sp)
    80009088:	01813083          	ld	ra,24(sp)
    8000908c:	00048513          	mv	a0,s1
    80009090:	00813483          	ld	s1,8(sp)
    80009094:	02010113          	addi	sp,sp,32
    80009098:	ffffe317          	auipc	t1,0xffffe
    8000909c:	6d430067          	jr	1748(t1) # 8000776c <plic_complete>
    800090a0:	fffff097          	auipc	ra,0xfffff
    800090a4:	3e0080e7          	jalr	992(ra) # 80008480 <uartintr>
    800090a8:	fddff06f          	j	80009084 <console_handler+0x74>
    800090ac:	00001517          	auipc	a0,0x1
    800090b0:	7cc50513          	addi	a0,a0,1996 # 8000a878 <digits+0x78>
    800090b4:	fffff097          	auipc	ra,0xfffff
    800090b8:	a68080e7          	jalr	-1432(ra) # 80007b1c <panic>
	...
