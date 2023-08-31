
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	70013103          	ld	sp,1792(sp) # 8000b700 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	658060ef          	jal	ra,80006674 <start>

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
    80001088:	0ac010ef          	jal	ra,80002134 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011f4:	97c080e7          	jalr	-1668(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    800011f8:	00001097          	auipc	ra,0x1
    800011fc:	784080e7          	jalr	1924(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
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
    80001360:	0000a797          	auipc	a5,0xa
    80001364:	3907b783          	ld	a5,912(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    8000141c:	00007097          	auipc	ra,0x7
    80001420:	35c080e7          	jalr	860(ra) # 80008778 <__getc>
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
    80001494:	0000a797          	auipc	a5,0xa
    80001498:	25c7b783          	ld	a5,604(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000149c:	0007b783          	ld	a5,0(a5)
}
    800014a0:	0487a503          	lw	a0,72(a5)
    800014a4:	01813403          	ld	s0,24(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret

00000000800014b0 <_Z4execPFvPvES_>:

void exec(void(*body)(void *), void* arg)
{
    800014b0:	fe010113          	addi	sp,sp,-32
    800014b4:	00113c23          	sd	ra,24(sp)
    800014b8:	00813823          	sd	s0,16(sp)
    800014bc:	02010413          	addi	s0,sp,32
    800014c0:	00058613          	mv	a2,a1
//    asm volatile("ecall");

    // _thread old = *_thread::running;

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

00000000800014f8 <_Z4killi>:

int kill(int threadId)
{
    800014f8:	fd010113          	addi	sp,sp,-48
    800014fc:	02813423          	sd	s0,40(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	fca42e23          	sw	a0,-36(s0)
    size_t code = 0x0000000000000029UL;
    80001508:	02900793          	li	a5,41
    8000150c:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    80001510:	fe843503          	ld	a0,-24(s0)
    asm volatile("ld a1, %0" : : "m" (threadId));
    80001514:	fdc43583          	ld	a1,-36(s0)

    return 0;
}
    80001518:	00000513          	li	a0,0
    8000151c:	02813403          	ld	s0,40(sp)
    80001520:	03010113          	addi	sp,sp,48
    80001524:	00008067          	ret

0000000080001528 <_Z4pingPv>:


void pong(void*);

void ping(void* arg)
{
    80001528:	fe010113          	addi	sp,sp,-32
    8000152c:	00113c23          	sd	ra,24(sp)
    80001530:	00813823          	sd	s0,16(sp)
    80001534:	00913423          	sd	s1,8(sp)
    80001538:	02010413          	addi	s0,sp,32
    8000153c:	00050493          	mv	s1,a0
    size_t num = (size_t)arg;
    printString("Ping: ");
    80001540:	00008517          	auipc	a0,0x8
    80001544:	ae050513          	addi	a0,a0,-1312 # 80009020 <CONSOLE_STATUS+0x10>
    80001548:	00004097          	auipc	ra,0x4
    8000154c:	ee8080e7          	jalr	-280(ra) # 80005430 <_Z11printStringPKc>
    printInt(num);
    80001550:	00000613          	li	a2,0
    80001554:	00a00593          	li	a1,10
    80001558:	0004851b          	sext.w	a0,s1
    8000155c:	00004097          	auipc	ra,0x4
    80001560:	084080e7          	jalr	132(ra) # 800055e0 <_Z8printIntiii>
    printString("\n");
    80001564:	00008517          	auipc	a0,0x8
    80001568:	f3450513          	addi	a0,a0,-204 # 80009498 <CONSOLE_STATUS+0x488>
    8000156c:	00004097          	auipc	ra,0x4
    80001570:	ec4080e7          	jalr	-316(ra) # 80005430 <_Z11printStringPKc>
    if(num > 30)
    80001574:	01e00793          	li	a5,30
    80001578:	0097fc63          	bgeu	a5,s1,80001590 <_Z4pingPv+0x68>
        return;
    exec(pong, reinterpret_cast<void *>((size_t) arg + 1));
}
    8000157c:	01813083          	ld	ra,24(sp)
    80001580:	01013403          	ld	s0,16(sp)
    80001584:	00813483          	ld	s1,8(sp)
    80001588:	02010113          	addi	sp,sp,32
    8000158c:	00008067          	ret
    exec(pong, reinterpret_cast<void *>((size_t) arg + 1));
    80001590:	00148593          	addi	a1,s1,1
    80001594:	00000517          	auipc	a0,0x0
    80001598:	01450513          	addi	a0,a0,20 # 800015a8 <_Z4pongPv>
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	f14080e7          	jalr	-236(ra) # 800014b0 <_Z4execPFvPvES_>
    800015a4:	fd9ff06f          	j	8000157c <_Z4pingPv+0x54>

00000000800015a8 <_Z4pongPv>:

void pong(void* arg)
{
    800015a8:	fe010113          	addi	sp,sp,-32
    800015ac:	00113c23          	sd	ra,24(sp)
    800015b0:	00813823          	sd	s0,16(sp)
    800015b4:	00913423          	sd	s1,8(sp)
    800015b8:	02010413          	addi	s0,sp,32
    800015bc:	00050493          	mv	s1,a0
    size_t num = (size_t)arg;
    printString("Pong: ");
    800015c0:	00008517          	auipc	a0,0x8
    800015c4:	a6850513          	addi	a0,a0,-1432 # 80009028 <CONSOLE_STATUS+0x18>
    800015c8:	00004097          	auipc	ra,0x4
    800015cc:	e68080e7          	jalr	-408(ra) # 80005430 <_Z11printStringPKc>
    printInt(num);
    800015d0:	00000613          	li	a2,0
    800015d4:	00a00593          	li	a1,10
    800015d8:	0004851b          	sext.w	a0,s1
    800015dc:	00004097          	auipc	ra,0x4
    800015e0:	004080e7          	jalr	4(ra) # 800055e0 <_Z8printIntiii>
    printString("\n");
    800015e4:	00008517          	auipc	a0,0x8
    800015e8:	eb450513          	addi	a0,a0,-332 # 80009498 <CONSOLE_STATUS+0x488>
    800015ec:	00004097          	auipc	ra,0x4
    800015f0:	e44080e7          	jalr	-444(ra) # 80005430 <_Z11printStringPKc>
    if(num > 30)
    800015f4:	01e00793          	li	a5,30
    800015f8:	0097fc63          	bgeu	a5,s1,80001610 <_Z4pongPv+0x68>
        return;
    exec(ping, reinterpret_cast<void *>((size_t) arg + 1));
}
    800015fc:	01813083          	ld	ra,24(sp)
    80001600:	01013403          	ld	s0,16(sp)
    80001604:	00813483          	ld	s1,8(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret
    exec(ping, reinterpret_cast<void *>((size_t) arg + 1));
    80001610:	00148593          	addi	a1,s1,1
    80001614:	00000517          	auipc	a0,0x0
    80001618:	f1450513          	addi	a0,a0,-236 # 80001528 <_Z4pingPv>
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	e94080e7          	jalr	-364(ra) # 800014b0 <_Z4execPFvPvES_>
    80001624:	fd9ff06f          	j	800015fc <_Z4pongPv+0x54>

0000000080001628 <_Z8consumerPv>:

size_t id = 1;
void consumer(void* n)
{
    80001628:	fd010113          	addi	sp,sp,-48
    8000162c:	02113423          	sd	ra,40(sp)
    80001630:	02813023          	sd	s0,32(sp)
    80001634:	00913c23          	sd	s1,24(sp)
    80001638:	01213823          	sd	s2,16(sp)
    8000163c:	01313423          	sd	s3,8(sp)
    80001640:	03010413          	addi	s0,sp,48
    size_t num = (size_t)n;

    printString("\n\nPre fork-a\n");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	9ec50513          	addi	a0,a0,-1556 # 80009030 <CONSOLE_STATUS+0x20>
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	de4080e7          	jalr	-540(ra) # 80005430 <_Z11printStringPKc>
    int forkRetVal = fork();
    80001654:	00000097          	auipc	ra,0x0
    80001658:	e24080e7          	jalr	-476(ra) # 80001478 <_Z4forkv>
    8000165c:	00050493          	mv	s1,a0
    printString("forkRetVal: ");
    80001660:	00008517          	auipc	a0,0x8
    80001664:	9e050513          	addi	a0,a0,-1568 # 80009040 <CONSOLE_STATUS+0x30>
    80001668:	00004097          	auipc	ra,0x4
    8000166c:	dc8080e7          	jalr	-568(ra) # 80005430 <_Z11printStringPKc>
    printInt(forkRetVal);
    80001670:	00000613          	li	a2,0
    80001674:	00a00593          	li	a1,10
    80001678:	00048513          	mv	a0,s1
    8000167c:	00004097          	auipc	ra,0x4
    80001680:	f64080e7          	jalr	-156(ra) # 800055e0 <_Z8printIntiii>
    printString("\n");
    80001684:	00008517          	auipc	a0,0x8
    80001688:	e1450513          	addi	a0,a0,-492 # 80009498 <CONSOLE_STATUS+0x488>
    8000168c:	00004097          	auipc	ra,0x4
    80001690:	da4080e7          	jalr	-604(ra) # 80005430 <_Z11printStringPKc>

    num = id;
    80001694:	0000a797          	auipc	a5,0xa
    80001698:	e4c78793          	addi	a5,a5,-436 # 8000b4e0 <id>
    8000169c:	0007b983          	ld	s3,0(a5)
    id++;
    800016a0:	00198713          	addi	a4,s3,1
    800016a4:	00e7b023          	sd	a4,0(a5)

    while(true)
    {
        if (sem_wait(full) < 0)
    800016a8:	0000a517          	auipc	a0,0xa
    800016ac:	0b853503          	ld	a0,184(a0) # 8000b760 <full>
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	c8c080e7          	jalr	-884(ra) # 8000133c <_Z8sem_waitP4_sem>
    800016b8:	06054c63          	bltz	a0,80001730 <_Z8consumerPv+0x108>
            return;

        int val = buffer;
    800016bc:	0000a497          	auipc	s1,0xa
    800016c0:	0a448493          	addi	s1,s1,164 # 8000b760 <full>
    800016c4:	0084a903          	lw	s2,8(s1)
        printString("Consumer ID: ");
    800016c8:	00008517          	auipc	a0,0x8
    800016cc:	98850513          	addi	a0,a0,-1656 # 80009050 <CONSOLE_STATUS+0x40>
    800016d0:	00004097          	auipc	ra,0x4
    800016d4:	d60080e7          	jalr	-672(ra) # 80005430 <_Z11printStringPKc>
        printInt(num);
    800016d8:	00000613          	li	a2,0
    800016dc:	00a00593          	li	a1,10
    800016e0:	0009851b          	sext.w	a0,s3
    800016e4:	00004097          	auipc	ra,0x4
    800016e8:	efc080e7          	jalr	-260(ra) # 800055e0 <_Z8printIntiii>
        printString(" Value: ");
    800016ec:	00008517          	auipc	a0,0x8
    800016f0:	97450513          	addi	a0,a0,-1676 # 80009060 <CONSOLE_STATUS+0x50>
    800016f4:	00004097          	auipc	ra,0x4
    800016f8:	d3c080e7          	jalr	-708(ra) # 80005430 <_Z11printStringPKc>
        printInt(val);
    800016fc:	00000613          	li	a2,0
    80001700:	00a00593          	li	a1,10
    80001704:	00090513          	mv	a0,s2
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	ed8080e7          	jalr	-296(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    80001710:	00008517          	auipc	a0,0x8
    80001714:	d8850513          	addi	a0,a0,-632 # 80009498 <CONSOLE_STATUS+0x488>
    80001718:	00004097          	auipc	ra,0x4
    8000171c:	d18080e7          	jalr	-744(ra) # 80005430 <_Z11printStringPKc>
        sem_signal(empty);
    80001720:	0104b503          	ld	a0,16(s1)
    80001724:	00000097          	auipc	ra,0x0
    80001728:	c58080e7          	jalr	-936(ra) # 8000137c <_Z10sem_signalP4_sem>
    }
    8000172c:	f7dff06f          	j	800016a8 <_Z8consumerPv+0x80>
}
    80001730:	02813083          	ld	ra,40(sp)
    80001734:	02013403          	ld	s0,32(sp)
    80001738:	01813483          	ld	s1,24(sp)
    8000173c:	01013903          	ld	s2,16(sp)
    80001740:	00813983          	ld	s3,8(sp)
    80001744:	03010113          	addi	sp,sp,48
    80001748:	00008067          	ret

000000008000174c <_Z8producerPv>:


void producer(void* n)
{
    8000174c:	fd010113          	addi	sp,sp,-48
    80001750:	02113423          	sd	ra,40(sp)
    80001754:	02813023          	sd	s0,32(sp)
    80001758:	00913c23          	sd	s1,24(sp)
    8000175c:	01213823          	sd	s2,16(sp)
    80001760:	01313423          	sd	s3,8(sp)
    80001764:	03010413          	addi	s0,sp,48
    size_t num = (size_t)n;

    num = id;
    80001768:	0000a797          	auipc	a5,0xa
    8000176c:	d7878793          	addi	a5,a5,-648 # 8000b4e0 <id>
    80001770:	0007b983          	ld	s3,0(a5)
    id++;
    80001774:	00198713          	addi	a4,s3,1
    80001778:	00e7b023          	sd	a4,0(a5)

    int i = 1;
    8000177c:	00100493          	li	s1,1
    while(true)
    {
        if (sem_wait(empty) < 0)
    80001780:	0000a517          	auipc	a0,0xa
    80001784:	ff053503          	ld	a0,-16(a0) # 8000b770 <empty>
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	bb4080e7          	jalr	-1100(ra) # 8000133c <_Z8sem_waitP4_sem>
    80001790:	0a054463          	bltz	a0,80001838 <_Z8producerPv+0xec>
            return;

        buffer = i;
    80001794:	0000a917          	auipc	s2,0xa
    80001798:	fcc90913          	addi	s2,s2,-52 # 8000b760 <full>
    8000179c:	00992423          	sw	s1,8(s2)
        i += 1 * 2 - 1;
    800017a0:	0014849b          	addiw	s1,s1,1
        printString("Producer ID: ");
    800017a4:	00008517          	auipc	a0,0x8
    800017a8:	8cc50513          	addi	a0,a0,-1844 # 80009070 <CONSOLE_STATUS+0x60>
    800017ac:	00004097          	auipc	ra,0x4
    800017b0:	c84080e7          	jalr	-892(ra) # 80005430 <_Z11printStringPKc>
        printInt(num);
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0009851b          	sext.w	a0,s3
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	e20080e7          	jalr	-480(ra) # 800055e0 <_Z8printIntiii>
        printString(" Value: ");
    800017c8:	00008517          	auipc	a0,0x8
    800017cc:	89850513          	addi	a0,a0,-1896 # 80009060 <CONSOLE_STATUS+0x50>
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	c60080e7          	jalr	-928(ra) # 80005430 <_Z11printStringPKc>
        printInt(buffer);
    800017d8:	00000613          	li	a2,0
    800017dc:	00a00593          	li	a1,10
    800017e0:	00892503          	lw	a0,8(s2)
    800017e4:	00004097          	auipc	ra,0x4
    800017e8:	dfc080e7          	jalr	-516(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    800017ec:	00008517          	auipc	a0,0x8
    800017f0:	cac50513          	addi	a0,a0,-852 # 80009498 <CONSOLE_STATUS+0x488>
    800017f4:	00004097          	auipc	ra,0x4
    800017f8:	c3c080e7          	jalr	-964(ra) # 80005430 <_Z11printStringPKc>

        if (i > 200)
    800017fc:	0c800793          	li	a5,200
    80001800:	0097cc63          	blt	a5,s1,80001818 <_Z8producerPv+0xcc>
            printString("CLOSING SEMAPHORE FULL!!! ");
            sem_close(full);
            break;
        }

        sem_signal(full);
    80001804:	0000a517          	auipc	a0,0xa
    80001808:	f5c53503          	ld	a0,-164(a0) # 8000b760 <full>
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	b70080e7          	jalr	-1168(ra) # 8000137c <_Z10sem_signalP4_sem>
        if (sem_wait(empty) < 0)
    80001814:	f6dff06f          	j	80001780 <_Z8producerPv+0x34>
            printString("CLOSING SEMAPHORE FULL!!! ");
    80001818:	00008517          	auipc	a0,0x8
    8000181c:	86850513          	addi	a0,a0,-1944 # 80009080 <CONSOLE_STATUS+0x70>
    80001820:	00004097          	auipc	ra,0x4
    80001824:	c10080e7          	jalr	-1008(ra) # 80005430 <_Z11printStringPKc>
            sem_close(full);
    80001828:	0000a517          	auipc	a0,0xa
    8000182c:	f3853503          	ld	a0,-200(a0) # 8000b760 <full>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	ad4080e7          	jalr	-1324(ra) # 80001304 <_Z9sem_closeP4_sem>
    }
}
    80001838:	02813083          	ld	ra,40(sp)
    8000183c:	02013403          	ld	s0,32(sp)
    80001840:	01813483          	ld	s1,24(sp)
    80001844:	01013903          	ld	s2,16(sp)
    80001848:	00813983          	ld	s3,8(sp)
    8000184c:	03010113          	addi	sp,sp,48
    80001850:	00008067          	ret

0000000080001854 <_Z10collumnSumPv>:
void collumnSum(void* arg)
{
    matStruct* data = (matStruct*)arg;
    int s = 0;

    for(int i = 0; i < data->m; i++)
    80001854:	00000793          	li	a5,0
    int s = 0;
    80001858:	00000613          	li	a2,0
    for(int i = 0; i < data->m; i++)
    8000185c:	00852703          	lw	a4,8(a0)
    80001860:	02e7d863          	bge	a5,a4,80001890 <_Z10collumnSumPv+0x3c>
    {
        s += data->mat[i][data->targetN];
    80001864:	00053703          	ld	a4,0(a0)
    80001868:	00379693          	slli	a3,a5,0x3
    8000186c:	00d70733          	add	a4,a4,a3
    80001870:	00073703          	ld	a4,0(a4)
    80001874:	01052683          	lw	a3,16(a0)
    80001878:	00269693          	slli	a3,a3,0x2
    8000187c:	00d70733          	add	a4,a4,a3
    80001880:	00072703          	lw	a4,0(a4)
    80001884:	00c7063b          	addw	a2,a4,a2
    for(int i = 0; i < data->m; i++)
    80001888:	0017879b          	addiw	a5,a5,1
    8000188c:	fd1ff06f          	j	8000185c <_Z10collumnSumPv+0x8>
    }

    *data->retLocation = s;
    80001890:	01853783          	ld	a5,24(a0)
    80001894:	00c7a023          	sw	a2,0(a5)
    delete data;
    80001898:	02050663          	beqz	a0,800018c4 <_Z10collumnSumPv+0x70>
{
    8000189c:	ff010113          	addi	sp,sp,-16
    800018a0:	00113423          	sd	ra,8(sp)
    800018a4:	00813023          	sd	s0,0(sp)
    800018a8:	01010413          	addi	s0,sp,16
    delete data;
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	588080e7          	jalr	1416(ra) # 80001e34 <_ZdlPv>
}
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret
    800018c4:	00008067          	ret

00000000800018c8 <_Z4testPv>:
{
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00113423          	sd	ra,8(sp)
    800018d0:	00813023          	sd	s0,0(sp)
    800018d4:	01010413          	addi	s0,sp,16
    printString("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
    800018d8:	00007517          	auipc	a0,0x7
    800018dc:	7c850513          	addi	a0,a0,1992 # 800090a0 <CONSOLE_STATUS+0x90>
    800018e0:	00004097          	auipc	ra,0x4
    800018e4:	b50080e7          	jalr	-1200(ra) # 80005430 <_Z11printStringPKc>
}
    800018e8:	00813083          	ld	ra,8(sp)
    800018ec:	00013403          	ld	s0,0(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_Z5test2Pv>:
{
    800018f8:	fe010113          	addi	sp,sp,-32
    800018fc:	00113c23          	sd	ra,24(sp)
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	00913423          	sd	s1,8(sp)
    80001908:	02010413          	addi	s0,sp,32
    int i = 0;
    8000190c:	00000493          	li	s1,0
    80001910:	0100006f          	j	80001920 <_Z5test2Pv+0x28>
            thread_dispatch();
    80001914:	00000097          	auipc	ra,0x0
    80001918:	958080e7          	jalr	-1704(ra) # 8000126c <_Z15thread_dispatchv>
        i++;
    8000191c:	0014849b          	addiw	s1,s1,1
    while(i < 100)
    80001920:	06300793          	li	a5,99
    80001924:	0297cc63          	blt	a5,s1,8000195c <_Z5test2Pv+0x64>
        printInt(i);
    80001928:	00000613          	li	a2,0
    8000192c:	00a00593          	li	a1,10
    80001930:	00048513          	mv	a0,s1
    80001934:	00004097          	auipc	ra,0x4
    80001938:	cac080e7          	jalr	-852(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    8000193c:	00008517          	auipc	a0,0x8
    80001940:	b5c50513          	addi	a0,a0,-1188 # 80009498 <CONSOLE_STATUS+0x488>
    80001944:	00004097          	auipc	ra,0x4
    80001948:	aec080e7          	jalr	-1300(ra) # 80005430 <_Z11printStringPKc>
        if (i % 10 == 0)
    8000194c:	00a00793          	li	a5,10
    80001950:	02f4e7bb          	remw	a5,s1,a5
    80001954:	fc0794e3          	bnez	a5,8000191c <_Z5test2Pv+0x24>
    80001958:	fbdff06f          	j	80001914 <_Z5test2Pv+0x1c>
}
    8000195c:	01813083          	ld	ra,24(sp)
    80001960:	01013403          	ld	s0,16(sp)
    80001964:	00813483          	ld	s1,8(sp)
    80001968:	02010113          	addi	sp,sp,32
    8000196c:	00008067          	ret

0000000080001970 <_Z10prosliMainv>:
{
    80001970:	fe010113          	addi	sp,sp,-32
    80001974:	00113c23          	sd	ra,24(sp)
    80001978:	00813823          	sd	s0,16(sp)
    8000197c:	00913423          	sd	s1,8(sp)
    80001980:	02010413          	addi	s0,sp,32
    sem_open(&empty, 1);
    80001984:	0000a497          	auipc	s1,0xa
    80001988:	ddc48493          	addi	s1,s1,-548 # 8000b760 <full>
    8000198c:	00100593          	li	a1,1
    80001990:	0000a517          	auipc	a0,0xa
    80001994:	de050513          	addi	a0,a0,-544 # 8000b770 <empty>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	92c080e7          	jalr	-1748(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&full, 0);
    800019a0:	00000593          	li	a1,0
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	91c080e7          	jalr	-1764(ra) # 800012c4 <_Z8sem_openPP4_semj>
    thread_create(&globalThread1, producer, nullptr);
    800019b0:	00000613          	li	a2,0
    800019b4:	00000597          	auipc	a1,0x0
    800019b8:	d9858593          	addi	a1,a1,-616 # 8000174c <_Z8producerPv>
    800019bc:	0000a517          	auipc	a0,0xa
    800019c0:	dbc50513          	addi	a0,a0,-580 # 8000b778 <globalThread1>
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	80c080e7          	jalr	-2036(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&globalThread2, consumer, (void*)1);
    800019cc:	00100613          	li	a2,1
    800019d0:	00000597          	auipc	a1,0x0
    800019d4:	c5858593          	addi	a1,a1,-936 # 80001628 <_Z8consumerPv>
    800019d8:	0000a517          	auipc	a0,0xa
    800019dc:	da850513          	addi	a0,a0,-600 # 8000b780 <globalThread2>
    800019e0:	fffff097          	auipc	ra,0xfffff
    800019e4:	7f0080e7          	jalr	2032(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_join(globalThread1);
    800019e8:	0184b503          	ld	a0,24(s1)
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	8a8080e7          	jalr	-1880(ra) # 80001294 <_Z11thread_joinP7_thread>
    thread_join(globalThread2);
    800019f4:	0204b503          	ld	a0,32(s1)
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	89c080e7          	jalr	-1892(ra) # 80001294 <_Z11thread_joinP7_thread>
}
    80001a00:	01813083          	ld	ra,24(sp)
    80001a04:	01013403          	ld	s0,16(sp)
    80001a08:	00813483          	ld	s1,8(sp)
    80001a0c:	02010113          	addi	sp,sp,32
    80001a10:	00008067          	ret

0000000080001a14 <_Z12modifMatricav>:


void modifMatrica()
{
    80001a14:	fb010113          	addi	sp,sp,-80
    80001a18:	04113423          	sd	ra,72(sp)
    80001a1c:	04813023          	sd	s0,64(sp)
    80001a20:	02913c23          	sd	s1,56(sp)
    80001a24:	03213823          	sd	s2,48(sp)
    80001a28:	03313423          	sd	s3,40(sp)
    80001a2c:	03413023          	sd	s4,32(sp)
    80001a30:	01513c23          	sd	s5,24(sp)
    80001a34:	01613823          	sd	s6,16(sp)
    80001a38:	01713423          	sd	s7,8(sp)
    80001a3c:	01813023          	sd	s8,0(sp)
    80001a40:	05010413          	addi	s0,sp,80
    printString("\nm = ");
    80001a44:	00007517          	auipc	a0,0x7
    80001a48:	68450513          	addi	a0,a0,1668 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001a4c:	00004097          	auipc	ra,0x4
    80001a50:	9e4080e7          	jalr	-1564(ra) # 80005430 <_Z11printStringPKc>
    int m = (int)getc() - 48;
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	9a4080e7          	jalr	-1628(ra) # 800013f8 <_Z4getcv>
    80001a5c:	fd050a1b          	addiw	s4,a0,-48
    printString("\nn = ");
    80001a60:	00007517          	auipc	a0,0x7
    80001a64:	67050513          	addi	a0,a0,1648 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001a68:	00004097          	auipc	ra,0x4
    80001a6c:	9c8080e7          	jalr	-1592(ra) # 80005430 <_Z11printStringPKc>
    int n = (int)getc() - 48;
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	988080e7          	jalr	-1656(ra) # 800013f8 <_Z4getcv>
    80001a78:	fd05091b          	addiw	s2,a0,-48
    printString("\n");
    80001a7c:	00008517          	auipc	a0,0x8
    80001a80:	a1c50513          	addi	a0,a0,-1508 # 80009498 <CONSOLE_STATUS+0x488>
    80001a84:	00004097          	auipc	ra,0x4
    80001a88:	9ac080e7          	jalr	-1620(ra) # 80005430 <_Z11printStringPKc>

    // int** mat = (int**)mem_alloc(sizeof(int*) * (m + 1));
    int** mat = reinterpret_cast<int **>(new int **);
    80001a8c:	00800513          	li	a0,8
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	37c080e7          	jalr	892(ra) # 80001e0c <_Znwm>
    80001a98:	00050993          	mv	s3,a0

    for(int i = 0; i < m + 1; i++)
    80001a9c:	00000493          	li	s1,0
    80001aa0:	029a4263          	blt	s4,s1,80001ac4 <_Z12modifMatricav+0xb0>
        mat[i] = (int*)mem_alloc(sizeof(int) * (n));
    80001aa4:	00349a93          	slli	s5,s1,0x3
    80001aa8:	01598ab3          	add	s5,s3,s5
    80001aac:	00291513          	slli	a0,s2,0x2
    80001ab0:	fffff097          	auipc	ra,0xfffff
    80001ab4:	6b0080e7          	jalr	1712(ra) # 80001160 <_Z9mem_allocm>
    80001ab8:	00aab023          	sd	a0,0(s5)
    for(int i = 0; i < m + 1; i++)
    80001abc:	0014849b          	addiw	s1,s1,1
    80001ac0:	fe1ff06f          	j	80001aa0 <_Z12modifMatricav+0x8c>

    for(int i = 0; i < m; i++)
    80001ac4:	00000a93          	li	s5,0
    80001ac8:	0080006f          	j	80001ad0 <_Z12modifMatricav+0xbc>
    80001acc:	001a8a9b          	addiw	s5,s5,1
    80001ad0:	034adc63          	bge	s5,s4,80001b08 <_Z12modifMatricav+0xf4>
        for(int j = 0; j < n; j++)
    80001ad4:	00000493          	li	s1,0
    80001ad8:	ff24dae3          	bge	s1,s2,80001acc <_Z12modifMatricav+0xb8>
            mat[i][j] = (int)getc() - 48;
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	91c080e7          	jalr	-1764(ra) # 800013f8 <_Z4getcv>
    80001ae4:	003a9793          	slli	a5,s5,0x3
    80001ae8:	00f987b3          	add	a5,s3,a5
    80001aec:	0007b783          	ld	a5,0(a5)
    80001af0:	00249713          	slli	a4,s1,0x2
    80001af4:	00e787b3          	add	a5,a5,a4
    80001af8:	fd05051b          	addiw	a0,a0,-48
    80001afc:	00a7a023          	sw	a0,0(a5)
        for(int j = 0; j < n; j++)
    80001b00:	0014849b          	addiw	s1,s1,1
    80001b04:	fd5ff06f          	j	80001ad8 <_Z12modifMatricav+0xc4>

    printString("\nMatrica: \n");
    80001b08:	00007517          	auipc	a0,0x7
    80001b0c:	5d050513          	addi	a0,a0,1488 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001b10:	00004097          	auipc	ra,0x4
    80001b14:	920080e7          	jalr	-1760(ra) # 80005430 <_Z11printStringPKc>
    for(int i = 0; i < m; i++)
    80001b18:	00000a93          	li	s5,0
    80001b1c:	0180006f          	j	80001b34 <_Z12modifMatricav+0x120>
        for (int j = 0; j < n; j++)
        {
            printInt(mat[i][j]);
            printString(" ");
        }
        printString("\n");
    80001b20:	00008517          	auipc	a0,0x8
    80001b24:	97850513          	addi	a0,a0,-1672 # 80009498 <CONSOLE_STATUS+0x488>
    80001b28:	00004097          	auipc	ra,0x4
    80001b2c:	908080e7          	jalr	-1784(ra) # 80005430 <_Z11printStringPKc>
    for(int i = 0; i < m; i++)
    80001b30:	001a8a9b          	addiw	s5,s5,1
    80001b34:	054ad663          	bge	s5,s4,80001b80 <_Z12modifMatricav+0x16c>
        for (int j = 0; j < n; j++)
    80001b38:	00000493          	li	s1,0
    80001b3c:	ff24d2e3          	bge	s1,s2,80001b20 <_Z12modifMatricav+0x10c>
            printInt(mat[i][j]);
    80001b40:	003a9793          	slli	a5,s5,0x3
    80001b44:	00f987b3          	add	a5,s3,a5
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00249713          	slli	a4,s1,0x2
    80001b50:	00e787b3          	add	a5,a5,a4
    80001b54:	00000613          	li	a2,0
    80001b58:	00a00593          	li	a1,10
    80001b5c:	0007a503          	lw	a0,0(a5)
    80001b60:	00004097          	auipc	ra,0x4
    80001b64:	a80080e7          	jalr	-1408(ra) # 800055e0 <_Z8printIntiii>
            printString(" ");
    80001b68:	00007517          	auipc	a0,0x7
    80001b6c:	58050513          	addi	a0,a0,1408 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001b70:	00004097          	auipc	ra,0x4
    80001b74:	8c0080e7          	jalr	-1856(ra) # 80005430 <_Z11printStringPKc>
        for (int j = 0; j < n; j++)
    80001b78:	0014849b          	addiw	s1,s1,1
    80001b7c:	fc1ff06f          	j	80001b3c <_Z12modifMatricav+0x128>
    }

    _thread** handles = (_thread**)mem_alloc(sizeof(_thread*) * n);
    80001b80:	00391513          	slli	a0,s2,0x3
    80001b84:	fffff097          	auipc	ra,0xfffff
    80001b88:	5dc080e7          	jalr	1500(ra) # 80001160 <_Z9mem_allocm>
    80001b8c:	00050b93          	mv	s7,a0

    for (int i = 0; i < n; i++)
    80001b90:	00000a93          	li	s5,0
    80001b94:	072ada63          	bge	s5,s2,80001c08 <_Z12modifMatricav+0x1f4>
    {
        matStruct* arg = (matStruct*) mem_alloc(sizeof(matStruct));
    80001b98:	02000513          	li	a0,32
    80001b9c:	fffff097          	auipc	ra,0xfffff
    80001ba0:	5c4080e7          	jalr	1476(ra) # 80001160 <_Z9mem_allocm>
    80001ba4:	00050493          	mv	s1,a0
        arg->mat = mat;
    80001ba8:	01353023          	sd	s3,0(a0)
        arg->m = m;
    80001bac:	01452423          	sw	s4,8(a0)
        arg->n = n;
    80001bb0:	01252623          	sw	s2,12(a0)
        arg->targetN = i;
    80001bb4:	01552823          	sw	s5,16(a0)
        arg->retLocation = &mat[m][i];
    80001bb8:	003a1793          	slli	a5,s4,0x3
    80001bbc:	00f987b3          	add	a5,s3,a5
    80001bc0:	0007b783          	ld	a5,0(a5)
    80001bc4:	002a9713          	slli	a4,s5,0x2
    80001bc8:	00e787b3          	add	a5,a5,a4
    80001bcc:	00f53c23          	sd	a5,24(a0)
        handles[i] = (_thread*) mem_alloc(sizeof(_thread));
    80001bd0:	003a9b13          	slli	s6,s5,0x3
    80001bd4:	016b8b33          	add	s6,s7,s6
    80001bd8:	05000513          	li	a0,80
    80001bdc:	fffff097          	auipc	ra,0xfffff
    80001be0:	584080e7          	jalr	1412(ra) # 80001160 <_Z9mem_allocm>
    80001be4:	00ab3023          	sd	a0,0(s6)
        thread_create(&handles[i], collumnSum, arg);
    80001be8:	00048613          	mv	a2,s1
    80001bec:	00000597          	auipc	a1,0x0
    80001bf0:	c6858593          	addi	a1,a1,-920 # 80001854 <_Z10collumnSumPv>
    80001bf4:	000b0513          	mv	a0,s6
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	5d8080e7          	jalr	1496(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < n; i++)
    80001c00:	001a8a9b          	addiw	s5,s5,1
    80001c04:	f91ff06f          	j	80001b94 <_Z12modifMatricav+0x180>
    }

    int sum = 0;
    for (int i = 0; i < n; i++)
    80001c08:	00000493          	li	s1,0
    int sum = 0;
    80001c0c:	00000c13          	li	s8,0
    80001c10:	0240006f          	j	80001c34 <_Z12modifMatricav+0x220>
    {
        thread_join(handles[i]);
        delete handles[i];
        sum += mat[m][i];
    80001c14:	003a1793          	slli	a5,s4,0x3
    80001c18:	00f987b3          	add	a5,s3,a5
    80001c1c:	0007b783          	ld	a5,0(a5)
    80001c20:	002b1b13          	slli	s6,s6,0x2
    80001c24:	016787b3          	add	a5,a5,s6
    80001c28:	0007a783          	lw	a5,0(a5)
    80001c2c:	01878c3b          	addw	s8,a5,s8
    for (int i = 0; i < n; i++)
    80001c30:	0014849b          	addiw	s1,s1,1
    80001c34:	0324d863          	bge	s1,s2,80001c64 <_Z12modifMatricav+0x250>
        thread_join(handles[i]);
    80001c38:	00048b13          	mv	s6,s1
    80001c3c:	00349a93          	slli	s5,s1,0x3
    80001c40:	015b8ab3          	add	s5,s7,s5
    80001c44:	000ab503          	ld	a0,0(s5)
    80001c48:	fffff097          	auipc	ra,0xfffff
    80001c4c:	64c080e7          	jalr	1612(ra) # 80001294 <_Z11thread_joinP7_thread>
        delete handles[i];
    80001c50:	000ab503          	ld	a0,0(s5)
    80001c54:	fc0500e3          	beqz	a0,80001c14 <_Z12modifMatricav+0x200>
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	1dc080e7          	jalr	476(ra) # 80001e34 <_ZdlPv>
    80001c60:	fb5ff06f          	j	80001c14 <_Z12modifMatricav+0x200>
    }

    printString("sum = ");
    80001c64:	00007517          	auipc	a0,0x7
    80001c68:	48c50513          	addi	a0,a0,1164 # 800090f0 <CONSOLE_STATUS+0xe0>
    80001c6c:	00003097          	auipc	ra,0x3
    80001c70:	7c4080e7          	jalr	1988(ra) # 80005430 <_Z11printStringPKc>
    printInt(sum);
    80001c74:	00000613          	li	a2,0
    80001c78:	00a00593          	li	a1,10
    80001c7c:	000c0513          	mv	a0,s8
    80001c80:	00004097          	auipc	ra,0x4
    80001c84:	960080e7          	jalr	-1696(ra) # 800055e0 <_Z8printIntiii>
    printString("\n");
    80001c88:	00008517          	auipc	a0,0x8
    80001c8c:	81050513          	addi	a0,a0,-2032 # 80009498 <CONSOLE_STATUS+0x488>
    80001c90:	00003097          	auipc	ra,0x3
    80001c94:	7a0080e7          	jalr	1952(ra) # 80005430 <_Z11printStringPKc>
}
    80001c98:	04813083          	ld	ra,72(sp)
    80001c9c:	04013403          	ld	s0,64(sp)
    80001ca0:	03813483          	ld	s1,56(sp)
    80001ca4:	03013903          	ld	s2,48(sp)
    80001ca8:	02813983          	ld	s3,40(sp)
    80001cac:	02013a03          	ld	s4,32(sp)
    80001cb0:	01813a83          	ld	s5,24(sp)
    80001cb4:	01013b03          	ld	s6,16(sp)
    80001cb8:	00813b83          	ld	s7,8(sp)
    80001cbc:	00013c03          	ld	s8,0(sp)
    80001cc0:	05010113          	addi	sp,sp,80
    80001cc4:	00008067          	ret

0000000080001cc8 <_Z11mainWrapperPv>:


void mainWrapper(void*)
{
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00113423          	sd	ra,8(sp)
    80001cd0:	00813023          	sd	s0,0(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    // exec(ping, reinterpret_cast<void *>(1));
    // prosliMain();
    // userMain();
    modifMatrica();
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	d3c080e7          	jalr	-708(ra) # 80001a14 <_Z12modifMatricav>
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <main>:


void main()
{
    80001cf0:	fd010113          	addi	sp,sp,-48
    80001cf4:	02113423          	sd	ra,40(sp)
    80001cf8:	02813023          	sd	s0,32(sp)
    80001cfc:	03010413          	addi	s0,sp,48
    MemoryAllocator::initialise();
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	c0c080e7          	jalr	-1012(ra) # 8000290c <_ZN15MemoryAllocator10initialiseEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001d08:	0000a797          	auipc	a5,0xa
    80001d0c:	9f07b783          	ld	a5,-1552(a5) # 8000b6f8 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001d10:	10579073          	csrw	stvec,a5
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d14:	100027f3          	csrr	a5,sstatus
    80001d18:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001d1c:	fd843783          	ld	a5,-40(s0)

    uint64 sstatus = Riscv::r_sstatus();
    sstatus |= Riscv::SSTATUS_SIE;
    sstatus |= Riscv::SSTATUS_SPP;
    80001d20:	1027e793          	ori	a5,a5,258
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d24:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(sstatus);

    thread_t handle = nullptr;
    80001d28:	fe043423          	sd	zero,-24(s0)
    thread_t userMainHandle = nullptr;
    80001d2c:	fe043023          	sd	zero,-32(s0)

    thread_create(&handle, nullptr, nullptr);
    80001d30:	00000613          	li	a2,0
    80001d34:	00000593          	li	a1,0
    80001d38:	fe840513          	addi	a0,s0,-24
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	494080e7          	jalr	1172(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = handle;
    80001d44:	0000a797          	auipc	a5,0xa
    80001d48:	9ac7b783          	ld	a5,-1620(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d4c:	fe843703          	ld	a4,-24(s0)
    80001d50:	00e7b023          	sd	a4,0(a5)


    thread_create(&userMainHandle, mainWrapper, nullptr);
    80001d54:	00000613          	li	a2,0
    80001d58:	00000597          	auipc	a1,0x0
    80001d5c:	f7058593          	addi	a1,a1,-144 # 80001cc8 <_Z11mainWrapperPv>
    80001d60:	fe040513          	addi	a0,s0,-32
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	46c080e7          	jalr	1132(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
//    printString("\n");

//    Scheduler::readyThreadQueue.printAll();
//    printString("\nPre join-a\n\n");

    enterUserMode();
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	648080e7          	jalr	1608(ra) # 800013b4 <_Z13enterUserModev>
    thread_join(userMainHandle);
    80001d74:	fe043503          	ld	a0,-32(s0)
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	51c080e7          	jalr	1308(ra) # 80001294 <_Z11thread_joinP7_thread>
//    printString("\nPosle join-a\n\n");
//    Scheduler::readyThreadQueue.printAll();
}
    80001d80:	02813083          	ld	ra,40(sp)
    80001d84:	02013403          	ld	s0,32(sp)
    80001d88:	03010113          	addi	sp,sp,48
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN6ThreadD1Ev>:
    {
        Thread();
    }
}

Thread::~Thread()
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00813423          	sd	s0,8(sp)
    80001d98:	01010413          	addi	s0,sp,16
{
//    if (this->myHandle)
//        thread_exit();
}
    80001d9c:	00813403          	ld	s0,8(sp)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <_ZN6Thread7wrapperEPv>:
    body = &wrapper;
    arg = this;
}

void Thread::wrapper(void* thread)
{
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00113423          	sd	ra,8(sp)
    80001db0:	00813023          	sd	s0,0(sp)
    80001db4:	01010413          	addi	s0,sp,16
    Thread* t = static_cast<Thread *>(thread);
    t->run();
    80001db8:	00053783          	ld	a5,0(a0)
    80001dbc:	0107b783          	ld	a5,16(a5)
    80001dc0:	000780e7          	jalr	a5
}
    80001dc4:	00813083          	ld	ra,8(sp)
    80001dc8:	00013403          	ld	s0,0(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    80001de4:	00009797          	auipc	a5,0x9
    80001de8:	73c78793          	addi	a5,a5,1852 # 8000b520 <_ZTV9Semaphore+0x10>
    80001dec:	00f53023          	sd	a5,0(a0)
{
    sem_close(myHandle);
    80001df0:	00853503          	ld	a0,8(a0)
    80001df4:	fffff097          	auipc	ra,0xfffff
    80001df8:	510080e7          	jalr	1296(ra) # 80001304 <_Z9sem_closeP4_sem>
}
    80001dfc:	00813083          	ld	ra,8(sp)
    80001e00:	00013403          	ld	s0,0(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <_Znwm>:
{
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	344080e7          	jalr	836(ra) # 80001160 <_Z9mem_allocm>
}
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZdlPv>:
{
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001e44:	fffff097          	auipc	ra,0xfffff
    80001e48:	354080e7          	jalr	852(ra) # 80001198 <_Z8mem_freePv>
}
    80001e4c:	00813083          	ld	ra,8(sp)
    80001e50:	00013403          	ld	s0,0(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret

0000000080001e5c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
}
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	fc8080e7          	jalr	-56(ra) # 80001e34 <_ZdlPv>
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    80001e84:	fe010113          	addi	sp,sp,-32
    80001e88:	00113c23          	sd	ra,24(sp)
    80001e8c:	00813823          	sd	s0,16(sp)
    80001e90:	00913423          	sd	s1,8(sp)
    80001e94:	02010413          	addi	s0,sp,32
    80001e98:	00050493          	mv	s1,a0
}
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	f38080e7          	jalr	-200(ra) # 80001dd4 <_ZN9SemaphoreD1Ev>
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	f8c080e7          	jalr	-116(ra) # 80001e34 <_ZdlPv>
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN6Thread5startEv>:
    if (this->body != nullptr)
    80001ec4:	01053583          	ld	a1,16(a0)
    80001ec8:	04058863          	beqz	a1,80001f18 <_ZN6Thread5startEv+0x54>
{
    80001ecc:	fe010113          	addi	sp,sp,-32
    80001ed0:	00113c23          	sd	ra,24(sp)
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	02010413          	addi	s0,sp,32
    80001ee0:	00050493          	mv	s1,a0
        int retVal = thread_create(&this->myHandle, this->body, this->arg);
    80001ee4:	01853603          	ld	a2,24(a0)
    80001ee8:	00850513          	addi	a0,a0,8
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	2e4080e7          	jalr	740(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
        if (retVal < 0)
    80001ef4:	00054863          	bltz	a0,80001f04 <_ZN6Thread5startEv+0x40>
        this->body = nullptr;
    80001ef8:	0004b823          	sd	zero,16(s1)
        this->arg = nullptr;
    80001efc:	0004bc23          	sd	zero,24(s1)
        return 0; // thread started successfully
    80001f00:	00000513          	li	a0,0
}
    80001f04:	01813083          	ld	ra,24(sp)
    80001f08:	01013403          	ld	s0,16(sp)
    80001f0c:	00813483          	ld	s1,8(sp)
    80001f10:	02010113          	addi	sp,sp,32
    80001f14:	00008067          	ret
    return -3; // thread already started
    80001f18:	ffd00513          	li	a0,-3
}
    80001f1c:	00008067          	ret

0000000080001f20 <_ZN6Thread4joinEv>:
    if (this->myHandle)
    80001f20:	00853503          	ld	a0,8(a0)
    80001f24:	02050663          	beqz	a0,80001f50 <_ZN6Thread4joinEv+0x30>
{
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	00813023          	sd	s0,0(sp)
    80001f34:	01010413          	addi	s0,sp,16
        thread_join(this->myHandle);
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	35c080e7          	jalr	860(ra) # 80001294 <_Z11thread_joinP7_thread>
}
    80001f40:	00813083          	ld	ra,8(sp)
    80001f44:	00013403          	ld	s0,0(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret
    80001f50:	00008067          	ret

0000000080001f54 <_ZN6Thread8dispatchEv>:
{
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	308080e7          	jalr	776(ra) # 8000126c <_Z15thread_dispatchv>
}
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00813423          	sd	s0,8(sp)
    80001f84:	01010413          	addi	s0,sp,16
}
    80001f88:	00000513          	li	a0,0
    80001f8c:	00813403          	ld	s0,8(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    80001fa4:	00009797          	auipc	a5,0x9
    80001fa8:	55478793          	addi	a5,a5,1364 # 8000b4f8 <_ZTV6Thread+0x10>
    80001fac:	00f53023          	sd	a5,0(a0)
    80001fb0:	00053423          	sd	zero,8(a0)
    body = &wrapper;
    80001fb4:	00000797          	auipc	a5,0x0
    80001fb8:	df478793          	addi	a5,a5,-524 # 80001da8 <_ZN6Thread7wrapperEPv>
    80001fbc:	00f53823          	sd	a5,16(a0)
    arg = this;
    80001fc0:	00a53c23          	sd	a0,24(a0)
}
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    80001fd0:	00009797          	auipc	a5,0x9
    80001fd4:	52878793          	addi	a5,a5,1320 # 8000b4f8 <_ZTV6Thread+0x10>
    80001fd8:	00f53023          	sd	a5,0(a0)
    80001fdc:	00053423          	sd	zero,8(a0)
    if (body != nullptr)
    80001fe0:	00058863          	beqz	a1,80001ff0 <_ZN6ThreadC1EPFvPvES0_+0x20>
        this->body = body;
    80001fe4:	00b53823          	sd	a1,16(a0)
        this->arg = arg;
    80001fe8:	00c53c23          	sd	a2,24(a0)
        this->myHandle = nullptr;
    80001fec:	00008067          	ret
Thread::Thread(void (*body)(void *), void *arg)
    80001ff0:	fd010113          	addi	sp,sp,-48
    80001ff4:	02113423          	sd	ra,40(sp)
    80001ff8:	02813023          	sd	s0,32(sp)
    80001ffc:	03010413          	addi	s0,sp,48
        Thread();
    80002000:	fd040513          	addi	a0,s0,-48
    80002004:	00000097          	auipc	ra,0x0
    80002008:	f94080e7          	jalr	-108(ra) # 80001f98 <_ZN6ThreadC1Ev>
}
    8000200c:	02813083          	ld	ra,40(sp)
    80002010:	02013403          	ld	s0,32(sp)
    80002014:	03010113          	addi	sp,sp,48
    80002018:	00008067          	ret

000000008000201c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00113423          	sd	ra,8(sp)
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	01010413          	addi	s0,sp,16
    8000202c:	00009797          	auipc	a5,0x9
    80002030:	4f478793          	addi	a5,a5,1268 # 8000b520 <_ZTV9Semaphore+0x10>
    80002034:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002038:	00850513          	addi	a0,a0,8
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	288080e7          	jalr	648(ra) # 800012c4 <_Z8sem_openPP4_semj>
}
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_ZN9Semaphore4waitEv>:

int Semaphore::wait()
{
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002064:	00853503          	ld	a0,8(a0)
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	2d4080e7          	jalr	724(ra) # 8000133c <_Z8sem_waitP4_sem>
}
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002090:	00853503          	ld	a0,8(a0)
    80002094:	fffff097          	auipc	ra,0xfffff
    80002098:	2e8080e7          	jalr	744(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    8000209c:	00813083          	ld	ra,8(sp)
    800020a0:	00013403          	ld	s0,0(sp)
    800020a4:	01010113          	addi	sp,sp,16
    800020a8:	00008067          	ret

00000000800020ac <_ZN7Console4getcEv>:

char Console::getc() {
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00113423          	sd	ra,8(sp)
    800020b4:	00813023          	sd	s0,0(sp)
    800020b8:	01010413          	addi	s0,sp,16
    return ::getc() ;
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	33c080e7          	jalr	828(ra) # 800013f8 <_Z4getcv>
}
    800020c4:	00813083          	ld	ra,8(sp)
    800020c8:	00013403          	ld	s0,0(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	364080e7          	jalr	868(ra) # 80001448 <_Z4putcc>
}
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813423          	sd	s0,8(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie()
{
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00813423          	sd	s0,8(sp)
    8000211c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002120:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002124:	10200073          	sret
}
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002134:	f7010113          	addi	sp,sp,-144
    80002138:	08113423          	sd	ra,136(sp)
    8000213c:	08813023          	sd	s0,128(sp)
    80002140:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    80002144:	faa43823          	sd	a0,-80(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    80002148:	fab43c23          	sd	a1,-72(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    8000214c:	fcc43023          	sd	a2,-64(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80002150:	fcd43423          	sd	a3,-56(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80002154:	fce43823          	sd	a4,-48(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    80002158:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    8000215c:	ff043023          	sd	a6,-32(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80002160:	ff143423          	sd	a7,-24(s0)
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002164:	141027f3          	csrr	a5,sepc
    80002168:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    8000216c:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc();
    80002170:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002174:	100027f3          	csrr	a5,sstatus
    80002178:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    8000217c:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80002180:	faf43023          	sd	a5,-96(s0)

    // retrieve stack pointer relative to saved registers
    void* volatile SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80002184:	140027f3          	csrr	a5,sscratch
    80002188:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000218c:	142027f3          	csrr	a5,scause
    80002190:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80002194:	f7843783          	ld	a5,-136(s0)

    uint64 volatile scause = r_scause();
    80002198:	f8f43823          	sd	a5,-112(s0)
//    printString("scause: ");
//    printInteger(scause);
//    printString("\n");


    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000219c:	f9043703          	ld	a4,-112(s0)
    800021a0:	00800793          	li	a5,8
    800021a4:	0af70663          	beq	a4,a5,80002250 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    800021a8:	f9043703          	ld	a4,-112(s0)
    800021ac:	00900793          	li	a5,9
    800021b0:	0af70063          	beq	a4,a5,80002250 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
        else
        {

        }
    }
    else if (scause == 0x8000000000000001UL)
    800021b4:	f9043703          	ld	a4,-112(s0)
    800021b8:	fff00793          	li	a5,-1
    800021bc:	03f79793          	slli	a5,a5,0x3f
    800021c0:	00178793          	addi	a5,a5,1
    800021c4:	2cf70e63          	beq	a4,a5,800024a0 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        */
    }
    else if (scause == 0x8000000000000009UL)
    800021c8:	f9043703          	ld	a4,-112(s0)
    800021cc:	fff00793          	li	a5,-1
    800021d0:	03f79793          	slli	a5,a5,0x3f
    800021d4:	00978793          	addi	a5,a5,9
    800021d8:	2ef70063          	beq	a4,a5,800024b8 <_ZN5Riscv20handleSupervisorTrapEv+0x384>

    }
    else
    {
        // unexpected trap cause
        printString("\nUnexpected trap cause!\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	f1c50513          	addi	a0,a0,-228 # 800090f8 <CONSOLE_STATUS+0xe8>
    800021e4:	00003097          	auipc	ra,0x3
    800021e8:	24c080e7          	jalr	588(ra) # 80005430 <_Z11printStringPKc>
        printString("Scause: ");
    800021ec:	00007517          	auipc	a0,0x7
    800021f0:	f2c50513          	addi	a0,a0,-212 # 80009118 <CONSOLE_STATUS+0x108>
    800021f4:	00003097          	auipc	ra,0x3
    800021f8:	23c080e7          	jalr	572(ra) # 80005430 <_Z11printStringPKc>
        printInt(scause);
    800021fc:	f9043503          	ld	a0,-112(s0)
    80002200:	00000613          	li	a2,0
    80002204:	00a00593          	li	a1,10
    80002208:	0005051b          	sext.w	a0,a0
    8000220c:	00003097          	auipc	ra,0x3
    80002210:	3d4080e7          	jalr	980(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    80002214:	00007517          	auipc	a0,0x7
    80002218:	28450513          	addi	a0,a0,644 # 80009498 <CONSOLE_STATUS+0x488>
    8000221c:	00003097          	auipc	ra,0x3
    80002220:	214080e7          	jalr	532(ra) # 80005430 <_Z11printStringPKc>
        printString("sepc = ");
    80002224:	00007517          	auipc	a0,0x7
    80002228:	f0450513          	addi	a0,a0,-252 # 80009128 <CONSOLE_STATUS+0x118>
    8000222c:	00003097          	auipc	ra,0x3
    80002230:	204080e7          	jalr	516(ra) # 80005430 <_Z11printStringPKc>
        printInt(sepc);
    80002234:	fa843503          	ld	a0,-88(s0)
    80002238:	00000613          	li	a2,0
    8000223c:	00a00593          	li	a1,10
    80002240:	0005051b          	sext.w	a0,a0
    80002244:	00003097          	auipc	ra,0x3
    80002248:	39c080e7          	jalr	924(ra) # 800055e0 <_Z8printIntiii>
        while(1);
    8000224c:	0000006f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
        sepc = sepc + 4;
    80002250:	fa843783          	ld	a5,-88(s0)
    80002254:	00478793          	addi	a5,a5,4
    80002258:	faf43423          	sd	a5,-88(s0)
        w_sepc(sepc);
    8000225c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002260:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    80002264:	fb043783          	ld	a5,-80(s0)
    80002268:	00100713          	li	a4,1
    8000226c:	08e78063          	beq	a5,a4,800022ec <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        else if (a[0] == 0x0000000000000002UL)
    80002270:	00200713          	li	a4,2
    80002274:	08e78e63          	beq	a5,a4,80002310 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
        else if (a[0] == 0x0000000000000011UL)
    80002278:	01100713          	li	a4,17
    8000227c:	0ae78863          	beq	a5,a4,8000232c <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
        else if (a[0] == 0x0000000000000012UL)
    80002280:	01200713          	li	a4,18
    80002284:	0ce78863          	beq	a5,a4,80002354 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
        else if (a[0] == 0x0000000000000013UL)
    80002288:	01300713          	li	a4,19
    8000228c:	0ee78663          	beq	a5,a4,80002378 <_ZN5Riscv20handleSupervisorTrapEv+0x244>
        else if (a[0] == 0x0000000000000014UL)
    80002290:	01400713          	li	a4,20
    80002294:	10e78863          	beq	a5,a4,800023a4 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
        else if (a[0] == 0x0000000000000021UL)
    80002298:	02100713          	li	a4,33
    8000229c:	12e78c63          	beq	a5,a4,800023d4 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
        else if (a[0] == 0x0000000000000022UL)
    800022a0:	02200713          	li	a4,34
    800022a4:	14e78863          	beq	a5,a4,800023f4 <_ZN5Riscv20handleSupervisorTrapEv+0x2c0>
        else if (a[0] == 0x0000000000000023UL)
    800022a8:	02300713          	li	a4,35
    800022ac:	16e78263          	beq	a5,a4,80002410 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
        else if (a[0] == 0x0000000000000024UL)
    800022b0:	02400713          	li	a4,36
    800022b4:	18e78463          	beq	a5,a4,8000243c <_ZN5Riscv20handleSupervisorTrapEv+0x308>
        else if (a[0] == 0x0000000000000025UL)
    800022b8:	02500713          	li	a4,37
    800022bc:	18e78e63          	beq	a5,a4,80002458 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
        else if (a[0] == 0x0000000000000026UL)
    800022c0:	02600713          	li	a4,38
    800022c4:	1ae78263          	beq	a5,a4,80002468 <_ZN5Riscv20handleSupervisorTrapEv+0x334>
        else if (a[0] == 0x0000000000000041UL)
    800022c8:	04100713          	li	a4,65
    800022cc:	1ae78663          	beq	a5,a4,80002478 <_ZN5Riscv20handleSupervisorTrapEv+0x344>
        else if (a[0] == 0x0000000000000042UL)
    800022d0:	04200713          	li	a4,66
    800022d4:	1ae78e63          	beq	a5,a4,80002490 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
        else if (a[0] == 0x0000000000000027UL)
    800022d8:	02700713          	li	a4,39
    800022dc:	1ce79663          	bne	a5,a4,800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            _thread::threadFork();
    800022e0:	00001097          	auipc	ra,0x1
    800022e4:	b64080e7          	jalr	-1180(ra) # 80002e44 <_ZN7_thread10threadForkEv>
    800022e8:	1c00006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            size_t blockNum = MemoryAllocator::convert2Blocks(size);
    800022ec:	fb843503          	ld	a0,-72(s0)
    800022f0:	00001097          	auipc	ra,0x1
    800022f4:	87c080e7          	jalr	-1924(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
            void* retVal = MemoryAllocator::mem_alloc(blockNum);
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	684080e7          	jalr	1668(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002300:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002304:	f9843783          	ld	a5,-104(s0)
    80002308:	04a7b823          	sd	a0,80(a5)
    8000230c:	19c0006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            int retVal = MemoryAllocator::mem_free(ptr);
    80002310:	fb843503          	ld	a0,-72(s0)
    80002314:	00000097          	auipc	ra,0x0
    80002318:	790080e7          	jalr	1936(ra) # 80002aa4 <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    8000231c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002320:	f9843783          	ld	a5,-104(s0)
    80002324:	04a7b823          	sd	a0,80(a5)
    80002328:	1800006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            int retVal = _thread::threadCreate(handle, start_routine, arg, stack_space);
    8000232c:	fd043683          	ld	a3,-48(s0)
    80002330:	fc843603          	ld	a2,-56(s0)
    80002334:	fc043583          	ld	a1,-64(s0)
    80002338:	fb843503          	ld	a0,-72(s0)
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	9c8080e7          	jalr	-1592(ra) # 80002d04 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002344:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002348:	f9843783          	ld	a5,-104(s0)
    8000234c:	04a7b823          	sd	a0,80(a5)
    80002350:	1580006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            _thread::running->finished = true;
    80002354:	00009797          	auipc	a5,0x9
    80002358:	39c7b783          	ld	a5,924(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000235c:	0007b783          	ld	a5,0(a5)
    80002360:	00100713          	li	a4,1
    80002364:	00e784a3          	sb	a4,9(a5)
            _thread::threadDispatch();
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	87c080e7          	jalr	-1924(ra) # 80002be4 <_ZN7_thread14threadDispatchEv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002370:	00050793          	mv	a5,a0
    80002374:	1340006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            _thread::running->timeSlice = 0;
    80002378:	00009797          	auipc	a5,0x9
    8000237c:	3787b783          	ld	a5,888(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002380:	0007b783          	ld	a5,0(a5)
    80002384:	0207b823          	sd	zero,48(a5)
            _thread::threadDispatch();
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	85c080e7          	jalr	-1956(ra) # 80002be4 <_ZN7_thread14threadDispatchEv>
            w_sstatus(sstatus);
    80002390:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002394:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002398:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000239c:	14179073          	csrw	sepc,a5
}
    800023a0:	1080006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            _thread* handle = reinterpret_cast<_thread*>(a[1]);
    800023a4:	fb843783          	ld	a5,-72(s0)
            if (!handle->finished)
    800023a8:	0097c703          	lbu	a4,9(a5)
    800023ac:	00070c63          	beqz	a4,800023c4 <_ZN5Riscv20handleSupervisorTrapEv+0x290>
            w_sstatus(sstatus);
    800023b0:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023b4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800023b8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023bc:	14179073          	csrw	sepc,a5
}
    800023c0:	0e80006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
                _sem::semWait(handle->semaphore);
    800023c4:	0407b503          	ld	a0,64(a5)
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	1e0080e7          	jalr	480(ra) # 800025a8 <_ZN4_sem7semWaitEPS_>
    800023d0:	fe1ff06f          	j	800023b0 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
            int retVal = _sem::semOpen(handle, init);
    800023d4:	fc042583          	lw	a1,-64(s0)
    800023d8:	fb843503          	ld	a0,-72(s0)
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	0e8080e7          	jalr	232(ra) # 800024c4 <_ZN4_sem7semOpenEPPS_j>
            asm volatile("mv %0, a0" : "=r" (retVal));
    800023e4:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    800023e8:	f9843783          	ld	a5,-104(s0)
    800023ec:	04a7b823          	sd	a0,80(a5)
    800023f0:	0b80006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            int retVal = _sem::semClose(handle);
    800023f4:	fb843503          	ld	a0,-72(s0)
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	2d0080e7          	jalr	720(ra) # 800026c8 <_ZN4_sem8semCloseEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002400:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002404:	f9843783          	ld	a5,-104(s0)
    80002408:	04a7b823          	sd	a0,80(a5)
    8000240c:	09c0006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            int retVal = _sem::semWait(id);
    80002410:	fb843503          	ld	a0,-72(s0)
    80002414:	00000097          	auipc	ra,0x0
    80002418:	194080e7          	jalr	404(ra) # 800025a8 <_ZN4_sem7semWaitEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    8000241c:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002420:	f9843783          	ld	a5,-104(s0)
    80002424:	04a7b823          	sd	a0,80(a5)
            w_sstatus(sstatus);
    80002428:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000242c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002430:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002434:	14179073          	csrw	sepc,a5
}
    80002438:	0700006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            int retVal = _sem::semSignal(id);
    8000243c:	fb843503          	ld	a0,-72(s0)
    80002440:	00000097          	auipc	ra,0x0
    80002444:	300080e7          	jalr	768(ra) # 80002740 <_ZN4_sem9semSignalEPS_>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002448:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    8000244c:	f9843783          	ld	a5,-104(s0)
    80002450:	04a7b823          	sd	a0,80(a5)
    80002454:	0540006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            asm volatile("csrr %0, sstatus" : "=r" (sstatus));
    80002458:	100027f3          	csrr	a5,sstatus
            sstatus &= ~0x100;
    8000245c:	eff7f793          	andi	a5,a5,-257
            asm volatile("csrw sstatus, %0" : : "r" (sstatus));
    80002460:	10079073          	csrw	sstatus,a5
    80002464:	0440006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            asm volatile("csrr %0, sstatus" : "=r" (sstatus));
    80002468:	100027f3          	csrr	a5,sstatus
            sstatus |= 0x100;
    8000246c:	1007e793          	ori	a5,a5,256
            asm volatile("csrw sstatus, %0" : : "r" (sstatus));
    80002470:	10079073          	csrw	sstatus,a5
    80002474:	0340006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            uint64 retVal = __getc();
    80002478:	00006097          	auipc	ra,0x6
    8000247c:	300080e7          	jalr	768(ra) # 80008778 <__getc>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80002480:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80002484:	f9843783          	ld	a5,-104(s0)
    80002488:	04a7b823          	sd	a0,80(a5)
    8000248c:	01c0006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
            __putc(c);
    80002490:	fb844503          	lbu	a0,-72(s0)
    80002494:	00006097          	auipc	ra,0x6
    80002498:	2a8080e7          	jalr	680(ra) # 8000873c <__putc>
    8000249c:	00c0006f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800024a0:	00200793          	li	a5,2
    800024a4:	1447b073          	csrc	sip,a5
    }
}
    800024a8:	08813083          	ld	ra,136(sp)
    800024ac:	08013403          	ld	s0,128(sp)
    800024b0:	09010113          	addi	sp,sp,144
    800024b4:	00008067          	ret
        console_handler();
    800024b8:	00006097          	auipc	ra,0x6
    800024bc:	2f8080e7          	jalr	760(ra) # 800087b0 <console_handler>
    800024c0:	fe9ff06f          	j	800024a8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>

00000000800024c4 <_ZN4_sem7semOpenEPPS_j>:
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"
#include "../h/thread.hpp"

int _sem::semOpen(_sem **handle, unsigned init)
{
    800024c4:	fe010113          	addi	sp,sp,-32
    800024c8:	00113c23          	sd	ra,24(sp)
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00913423          	sd	s1,8(sp)
    800024d4:	01213023          	sd	s2,0(sp)
    800024d8:	02010413          	addi	s0,sp,32
    800024dc:	00050493          	mv	s1,a0
    800024e0:	00058913          	mv	s2,a1
    *handle = (_sem*)MemoryAllocator::mem_alloc(sizeof(_sem));
    800024e4:	01800513          	li	a0,24
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	494080e7          	jalr	1172(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
    800024f0:	00a4b023          	sd	a0,0(s1)

    if (*handle == nullptr)
    800024f4:	02050a63          	beqz	a0,80002528 <_ZN4_sem7semOpenEPPS_j+0x64>
        return -1;

    (*handle)->val = (int)init;
    800024f8:	01252823          	sw	s2,16(a0)
    (*handle)->head = nullptr;
    800024fc:	0004b783          	ld	a5,0(s1)
    80002500:	0007b023          	sd	zero,0(a5)
    (*handle)->tail = nullptr;
    80002504:	0004b783          	ld	a5,0(s1)
    80002508:	0007b423          	sd	zero,8(a5)

    return 0;
    8000250c:	00000513          	li	a0,0
}
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	00013903          	ld	s2,0(sp)
    80002520:	02010113          	addi	sp,sp,32
    80002524:	00008067          	ret
        return -1;
    80002528:	fff00513          	li	a0,-1
    8000252c:	fe5ff06f          	j	80002510 <_ZN4_sem7semOpenEPPS_j+0x4c>

0000000080002530 <_ZN4_sem7addLastEP7_thread>:

    return 0;
}

void _sem::addLast(_thread *t) {
    if (t == nullptr)
    80002530:	06058a63          	beqz	a1,800025a4 <_ZN4_sem7addLastEP7_thread+0x74>
void _sem::addLast(_thread *t) {
    80002534:	fe010113          	addi	sp,sp,-32
    80002538:	00113c23          	sd	ra,24(sp)
    8000253c:	00813823          	sd	s0,16(sp)
    80002540:	00913423          	sd	s1,8(sp)
    80002544:	01213023          	sd	s2,0(sp)
    80002548:	02010413          	addi	s0,sp,32
    8000254c:	00050913          	mv	s2,a0
    80002550:	00058493          	mv	s1,a1
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80002554:	01000513          	li	a0,16
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	614080e7          	jalr	1556(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80002560:	00000097          	auipc	ra,0x0
    80002564:	41c080e7          	jalr	1052(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>

    elem->data = t;
    80002568:	00953023          	sd	s1,0(a0)
    elem->next = nullptr;
    8000256c:	00053423          	sd	zero,8(a0)

    //Elem *elem = new Elem(t, nullptr);

    if (tail)
    80002570:	00893783          	ld	a5,8(s2)
    80002574:	02078263          	beqz	a5,80002598 <_ZN4_sem7addLastEP7_thread+0x68>
    {
        tail->next = elem;
    80002578:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    8000257c:	00a93423          	sd	a0,8(s2)
    }
    else
    {
        head = tail = elem;
    }
}
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	00813483          	ld	s1,8(sp)
    8000258c:	00013903          	ld	s2,0(sp)
    80002590:	02010113          	addi	sp,sp,32
    80002594:	00008067          	ret
        head = tail = elem;
    80002598:	00a93423          	sd	a0,8(s2)
    8000259c:	00a93023          	sd	a0,0(s2)
    800025a0:	fe1ff06f          	j	80002580 <_ZN4_sem7addLastEP7_thread+0x50>
    800025a4:	00008067          	ret

00000000800025a8 <_ZN4_sem7semWaitEPS_>:
    if (id == nullptr)
    800025a8:	08050663          	beqz	a0,80002634 <_ZN4_sem7semWaitEPS_+0x8c>
int _sem::semWait(_sem* id) {
    800025ac:	fe010113          	addi	sp,sp,-32
    800025b0:	00113c23          	sd	ra,24(sp)
    800025b4:	00813823          	sd	s0,16(sp)
    800025b8:	00913423          	sd	s1,8(sp)
    800025bc:	02010413          	addi	s0,sp,32
    id->val--;
    800025c0:	01052783          	lw	a5,16(a0)
    800025c4:	fff7879b          	addiw	a5,a5,-1
    800025c8:	00f52823          	sw	a5,16(a0)
    _thread *old = _thread::running;
    800025cc:	00009717          	auipc	a4,0x9
    800025d0:	12473703          	ld	a4,292(a4) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025d4:	00073483          	ld	s1,0(a4)
    if (id->val < 0)
    800025d8:	02079713          	slli	a4,a5,0x20
    800025dc:	00074e63          	bltz	a4,800025f8 <_ZN4_sem7semWaitEPS_+0x50>
        return 0;
    800025e0:	00000513          	li	a0,0
}
    800025e4:	01813083          	ld	ra,24(sp)
    800025e8:	01013403          	ld	s0,16(sp)
    800025ec:	00813483          	ld	s1,8(sp)
    800025f0:	02010113          	addi	sp,sp,32
    800025f4:	00008067          	ret
        id->addLast(_thread::running);
    800025f8:	00048593          	mv	a1,s1
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	f34080e7          	jalr	-204(ra) # 80002530 <_ZN4_sem7addLastEP7_thread>
     _thread::running = Scheduler::get();
    80002604:	00000097          	auipc	ra,0x0
    80002608:	1f0080e7          	jalr	496(ra) # 800027f4 <_ZN9Scheduler3getEv>
    8000260c:	00009797          	auipc	a5,0x9
    80002610:	0e47b783          	ld	a5,228(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002614:	00a7b023          	sd	a0,0(a5)
    if (old != _thread::running)
    80002618:	02a48263          	beq	s1,a0,8000263c <_ZN4_sem7semWaitEPS_+0x94>
        contextSwitch(&old->context, &_thread::running->context);
    8000261c:	01850593          	addi	a1,a0,24
    80002620:	01848513          	addi	a0,s1,24
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	afc080e7          	jalr	-1284(ra) # 80001120 <contextSwitch>
    return 0;
    8000262c:	00000513          	li	a0,0
    80002630:	fb5ff06f          	j	800025e4 <_ZN4_sem7semWaitEPS_+0x3c>
        return -1; // invalid id
    80002634:	fff00513          	li	a0,-1
}
    80002638:	00008067          	ret
    return 0;
    8000263c:	00000513          	li	a0,0
    80002640:	fa5ff06f          	j	800025e4 <_ZN4_sem7semWaitEPS_+0x3c>

0000000080002644 <_ZN4_sem11removeFirstEv>:

_thread *_sem::removeFirst() {
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	02010413          	addi	s0,sp,32
    80002658:	00050793          	mv	a5,a0
    if (head == nullptr) { return 0; }
    8000265c:	00053503          	ld	a0,0(a0)
    80002660:	02050e63          	beqz	a0,8000269c <_ZN4_sem11removeFirstEv+0x58>

    Elem *elem = head;
    head = head->next;
    80002664:	00853703          	ld	a4,8(a0)
    80002668:	00e7b023          	sd	a4,0(a5)
    if (head == nullptr) { tail = nullptr; }
    8000266c:	02070463          	beqz	a4,80002694 <_ZN4_sem11removeFirstEv+0x50>

    _thread* ret = elem->data;
    80002670:	00053483          	ld	s1,0(a0)
    //delete elem;
    MemoryAllocator::mem_free(elem);
    80002674:	00000097          	auipc	ra,0x0
    80002678:	430080e7          	jalr	1072(ra) # 80002aa4 <_ZN15MemoryAllocator8mem_freeEPv>

    return ret;
}
    8000267c:	00048513          	mv	a0,s1
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	02010113          	addi	sp,sp,32
    80002690:	00008067          	ret
    if (head == nullptr) { tail = nullptr; }
    80002694:	0007b423          	sd	zero,8(a5)
    80002698:	fd9ff06f          	j	80002670 <_ZN4_sem11removeFirstEv+0x2c>
    if (head == nullptr) { return 0; }
    8000269c:	00050493          	mv	s1,a0
    800026a0:	fddff06f          	j	8000267c <_ZN4_sem11removeFirstEv+0x38>

00000000800026a4 <_ZNK4_sem9peekFirstEv>:

_thread* _sem::peekFirst() const {
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00813423          	sd	s0,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    if (head == nullptr)
    800026b0:	00053503          	ld	a0,0(a0)
    800026b4:	00050463          	beqz	a0,800026bc <_ZNK4_sem9peekFirstEv+0x18>
        return nullptr;

    return head->data;
    800026b8:	00053503          	ld	a0,0(a0)
}
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_ZN4_sem8semCloseEPS_>:
{
    800026c8:	fe010113          	addi	sp,sp,-32
    800026cc:	00113c23          	sd	ra,24(sp)
    800026d0:	00813823          	sd	s0,16(sp)
    800026d4:	00913423          	sd	s1,8(sp)
    800026d8:	02010413          	addi	s0,sp,32
    800026dc:	00050493          	mv	s1,a0
    if (handle == nullptr) // error: sem is nullptr
    800026e0:	04050c63          	beqz	a0,80002738 <_ZN4_sem8semCloseEPS_+0x70>
    while (handle->peekFirst())
    800026e4:	00048513          	mv	a0,s1
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	fbc080e7          	jalr	-68(ra) # 800026a4 <_ZNK4_sem9peekFirstEv>
    800026f0:	02050263          	beqz	a0,80002714 <_ZN4_sem8semCloseEPS_+0x4c>
        handle->peekFirst()->semWaitVal = -1;
    800026f4:	fff00793          	li	a5,-1
    800026f8:	02f52c23          	sw	a5,56(a0)
        Scheduler::put(handle->removeFirst());
    800026fc:	00048513          	mv	a0,s1
    80002700:	00000097          	auipc	ra,0x0
    80002704:	f44080e7          	jalr	-188(ra) # 80002644 <_ZN4_sem11removeFirstEv>
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	15c080e7          	jalr	348(ra) # 80002864 <_ZN9Scheduler3putEP7_thread>
    while (handle->peekFirst())
    80002710:	fd5ff06f          	j	800026e4 <_ZN4_sem8semCloseEPS_+0x1c>
    MemoryAllocator::mem_free(handle);
    80002714:	00048513          	mv	a0,s1
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	38c080e7          	jalr	908(ra) # 80002aa4 <_ZN15MemoryAllocator8mem_freeEPv>
    return 0;
    80002720:	00000513          	li	a0,0
}
    80002724:	01813083          	ld	ra,24(sp)
    80002728:	01013403          	ld	s0,16(sp)
    8000272c:	00813483          	ld	s1,8(sp)
    80002730:	02010113          	addi	sp,sp,32
    80002734:	00008067          	ret
        return -1;
    80002738:	fff00513          	li	a0,-1
    8000273c:	fe9ff06f          	j	80002724 <_ZN4_sem8semCloseEPS_+0x5c>

0000000080002740 <_ZN4_sem9semSignalEPS_>:
    if (id == nullptr) // id is nullptr
    80002740:	06050263          	beqz	a0,800027a4 <_ZN4_sem9semSignalEPS_+0x64>
{
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00113c23          	sd	ra,24(sp)
    8000274c:	00813823          	sd	s0,16(sp)
    80002750:	00913423          	sd	s1,8(sp)
    80002754:	02010413          	addi	s0,sp,32
    80002758:	00050493          	mv	s1,a0
    id->val++;
    8000275c:	01052783          	lw	a5,16(a0)
    80002760:	0017879b          	addiw	a5,a5,1
    80002764:	00f52823          	sw	a5,16(a0)
    if (id->peekFirst())
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	f3c080e7          	jalr	-196(ra) # 800026a4 <_ZNK4_sem9peekFirstEv>
    80002770:	02050e63          	beqz	a0,800027ac <_ZN4_sem9semSignalEPS_+0x6c>
        id->peekFirst()->semWaitVal = 0;
    80002774:	02052c23          	sw	zero,56(a0)
        Scheduler::put(id->removeFirst());
    80002778:	00048513          	mv	a0,s1
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	ec8080e7          	jalr	-312(ra) # 80002644 <_ZN4_sem11removeFirstEv>
    80002784:	00000097          	auipc	ra,0x0
    80002788:	0e0080e7          	jalr	224(ra) # 80002864 <_ZN9Scheduler3putEP7_thread>
    return 0;
    8000278c:	00000513          	li	a0,0
}
    80002790:	01813083          	ld	ra,24(sp)
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	00813483          	ld	s1,8(sp)
    8000279c:	02010113          	addi	sp,sp,32
    800027a0:	00008067          	ret
        return -1;
    800027a4:	fff00513          	li	a0,-1
}
    800027a8:	00008067          	ret
    return 0;
    800027ac:	00000513          	li	a0,0
    800027b0:	fe1ff06f          	j	80002790 <_ZN4_sem9semSignalEPS_+0x50>

00000000800027b4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00813423          	sd	s0,8(sp)
    800027bc:	01010413          	addi	s0,sp,16
    800027c0:	00100793          	li	a5,1
    800027c4:	00f50863          	beq	a0,a5,800027d4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800027c8:	00813403          	ld	s0,8(sp)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret
    800027d4:	000107b7          	lui	a5,0x10
    800027d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800027dc:	fef596e3          	bne	a1,a5,800027c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

public:
    List() : head(0), tail(0) {}
    800027e0:	00009797          	auipc	a5,0x9
    800027e4:	fa878793          	addi	a5,a5,-88 # 8000b788 <_ZN9Scheduler16readyThreadQueueE>
    800027e8:	0007b023          	sd	zero,0(a5)
    800027ec:	0007b423          	sd	zero,8(a5)
    800027f0:	fd9ff06f          	j	800027c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800027f4 <_ZN9Scheduler3getEv>:
{
    800027f4:	fe010113          	addi	sp,sp,-32
    800027f8:	00113c23          	sd	ra,24(sp)
    800027fc:	00813823          	sd	s0,16(sp)
    80002800:	00913423          	sd	s1,8(sp)
    80002804:	02010413          	addi	s0,sp,32
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002808:	00009517          	auipc	a0,0x9
    8000280c:	f8053503          	ld	a0,-128(a0) # 8000b788 <_ZN9Scheduler16readyThreadQueueE>
    80002810:	04050663          	beqz	a0,8000285c <_ZN9Scheduler3getEv+0x68>
//            printString("\n");
//            printInteger((size_t)((uint8*)head)[i]);
//            printString(" ");
//        }
//        printString("\n");
        return head->data;
    80002814:	00053483          	ld	s1,0(a0)
    if (readyThreadQueue.peekFirst() != 0)
    80002818:	02048063          	beqz	s1,80002838 <_ZN9Scheduler3getEv+0x44>
        head = head->next;
    8000281c:	00853783          	ld	a5,8(a0)
    80002820:	00009717          	auipc	a4,0x9
    80002824:	f6f73423          	sd	a5,-152(a4) # 8000b788 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002828:	02078463          	beqz	a5,80002850 <_ZN9Scheduler3getEv+0x5c>
        T *ret = elem->data;
    8000282c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002830:	00000097          	auipc	ra,0x0
    80002834:	274080e7          	jalr	628(ra) # 80002aa4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002838:	00048513          	mv	a0,s1
    8000283c:	01813083          	ld	ra,24(sp)
    80002840:	01013403          	ld	s0,16(sp)
    80002844:	00813483          	ld	s1,8(sp)
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret
        if (!head) { tail = 0; }
    80002850:	00009797          	auipc	a5,0x9
    80002854:	f407b023          	sd	zero,-192(a5) # 8000b790 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002858:	fd5ff06f          	j	8000282c <_ZN9Scheduler3getEv+0x38>
    return nullptr;
    8000285c:	00050493          	mv	s1,a0
    80002860:	fd9ff06f          	j	80002838 <_ZN9Scheduler3getEv+0x44>

0000000080002864 <_ZN9Scheduler3putEP7_thread>:
{
    80002864:	fe010113          	addi	sp,sp,-32
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00813823          	sd	s0,16(sp)
    80002870:	00913423          	sd	s1,8(sp)
    80002874:	02010413          	addi	s0,sp,32
    80002878:	00050493          	mv	s1,a0
        size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(List<T>::Elem));
    8000287c:	01000513          	li	a0,16
    80002880:	00000097          	auipc	ra,0x0
    80002884:	2ec080e7          	jalr	748(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	0f4080e7          	jalr	244(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80002890:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80002894:	00053423          	sd	zero,8(a0)
        if (tail != 0)
    80002898:	00009797          	auipc	a5,0x9
    8000289c:	ef87b783          	ld	a5,-264(a5) # 8000b790 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800028a0:	02078263          	beqz	a5,800028c4 <_ZN9Scheduler3putEP7_thread+0x60>
            tail->next = elem;
    800028a4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800028a8:	00009797          	auipc	a5,0x9
    800028ac:	eea7b423          	sd	a0,-280(a5) # 8000b790 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800028b0:	01813083          	ld	ra,24(sp)
    800028b4:	01013403          	ld	s0,16(sp)
    800028b8:	00813483          	ld	s1,8(sp)
    800028bc:	02010113          	addi	sp,sp,32
    800028c0:	00008067          	ret
            head = tail = elem;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	ec478793          	addi	a5,a5,-316 # 8000b788 <_ZN9Scheduler16readyThreadQueueE>
    800028cc:	00a7b423          	sd	a0,8(a5)
    800028d0:	00a7b023          	sd	a0,0(a5)
    800028d4:	fddff06f          	j	800028b0 <_ZN9Scheduler3putEP7_thread+0x4c>

00000000800028d8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    800028e8:	000105b7          	lui	a1,0x10
    800028ec:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800028f0:	00100513          	li	a0,1
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	ec0080e7          	jalr	-320(ra) # 800027b4 <_Z41__static_initialization_and_destruction_0ii>
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	dd07b783          	ld	a5,-560(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002920:	0007b703          	ld	a4,0(a5)
    80002924:	fc077713          	andi	a4,a4,-64
    80002928:	04070613          	addi	a2,a4,64
    8000292c:	00009797          	auipc	a5,0x9
    80002930:	e6c78793          	addi	a5,a5,-404 # 8000b798 <_ZN15MemoryAllocator8memStartE>
    80002934:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80002938:	00009697          	auipc	a3,0x9
    8000293c:	dd06b683          	ld	a3,-560(a3) # 8000b708 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002940:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80002944:	fc06f693          	andi	a3,a3,-64
    80002948:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    8000294c:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80002950:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80002954:	0107b683          	ld	a3,16(a5)
    80002958:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    8000295c:	0087b703          	ld	a4,8(a5)
    80002960:	0007b783          	ld	a5,0(a5)
    80002964:	40f707b3          	sub	a5,a4,a5
    80002968:	0067d793          	srli	a5,a5,0x6
    8000296c:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00813423          	sd	s0,8(sp)
    80002984:	01010413          	addi	s0,sp,16
    if (size == 0)
    80002988:	0a050463          	beqz	a0,80002a30 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    8000298c:	00050713          	mv	a4,a0
        return nullptr;

    size_t blockNum = size;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80002990:	00009697          	auipc	a3,0x9
    80002994:	e186b683          	ld	a3,-488(a3) # 8000b7a8 <_ZN15MemoryAllocator4headE>
    80002998:	00068513          	mv	a0,a3

    while (curr != nullptr)
    8000299c:	04050e63          	beqz	a0,800029f8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    800029a0:	01053783          	ld	a5,16(a0)
    800029a4:	00e7fa63          	bgeu	a5,a4,800029b8 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    800029a8:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    800029ac:	fea698e3          	bne	a3,a0,8000299c <_ZN15MemoryAllocator9mem_allocEm+0x20>
            break;
    }

    return nullptr;
    800029b0:	00000513          	li	a0,0
    800029b4:	0440006f          	j	800029f8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            curr->size -= blockNum;
    800029b8:	40e787b3          	sub	a5,a5,a4
    800029bc:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    800029c0:	02079263          	bnez	a5,800029e4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                if (curr == MemoryAllocator::head)
    800029c4:	04d50063          	beq	a0,a3,80002a04 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (curr->next != nullptr && curr->prev != nullptr)
    800029c8:	00053783          	ld	a5,0(a0)
    800029cc:	04078463          	beqz	a5,80002a14 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    800029d0:	00853683          	ld	a3,8(a0)
    800029d4:	04068063          	beqz	a3,80002a14 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                    curr->prev->next = curr->next;
    800029d8:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    800029dc:	00853683          	ld	a3,8(a0)
    800029e0:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    800029e4:	01053783          	ld	a5,16(a0)
    800029e8:	00679793          	slli	a5,a5,0x6
    800029ec:	00f507b3          	add	a5,a0,a5
            allocatedMem->blockNum = blockNum;
    800029f0:	00e7b023          	sd	a4,0(a5)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    800029f4:	00878513          	addi	a0,a5,8
}
    800029f8:	00813403          	ld	s0,8(sp)
    800029fc:	01010113          	addi	sp,sp,16
    80002a00:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80002a04:	0006b783          	ld	a5,0(a3)
    80002a08:	00009697          	auipc	a3,0x9
    80002a0c:	daf6b023          	sd	a5,-608(a3) # 8000b7a8 <_ZN15MemoryAllocator4headE>
    80002a10:	fb9ff06f          	j	800029c8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                else if (curr->prev != nullptr)
    80002a14:	00853683          	ld	a3,8(a0)
    80002a18:	00068663          	beqz	a3,80002a24 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
                    curr->prev->next = nullptr;
    80002a1c:	0006b023          	sd	zero,0(a3)
    80002a20:	fc5ff06f          	j	800029e4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                else if (curr->next != nullptr)
    80002a24:	fc0780e3          	beqz	a5,800029e4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
                    curr->next->prev = nullptr;
    80002a28:	0007b423          	sd	zero,8(a5)
    80002a2c:	fb9ff06f          	j	800029e4 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        return nullptr;
    80002a30:	00000513          	li	a0,0
    80002a34:	fc5ff06f          	j	800029f8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080002a38 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80002a38:	ff010113          	addi	sp,sp,-16
    80002a3c:	00813423          	sd	s0,8(sp)
    80002a40:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80002a44:	04050863          	beqz	a0,80002a94 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80002a48:	00053783          	ld	a5,0(a0)
    80002a4c:	04078863          	beqz	a5,80002a9c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80002a50:	01053683          	ld	a3,16(a0)
    80002a54:	00669713          	slli	a4,a3,0x6
    80002a58:	00e50733          	add	a4,a0,a4
    80002a5c:	00f70a63          	beq	a4,a5,80002a70 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80002a60:	00000513          	li	a0,0
    }
}
    80002a64:	00813403          	ld	s0,8(sp)
    80002a68:	01010113          	addi	sp,sp,16
    80002a6c:	00008067          	ret
        curr->size += curr->next->size;
    80002a70:	0107b703          	ld	a4,16(a5)
    80002a74:	00e686b3          	add	a3,a3,a4
    80002a78:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80002a7c:	0007b783          	ld	a5,0(a5)
    80002a80:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80002a84:	00078463          	beqz	a5,80002a8c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80002a88:	00a7b423          	sd	a0,8(a5)
        return 1;
    80002a8c:	00100513          	li	a0,1
    80002a90:	fd5ff06f          	j	80002a64 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80002a94:	00000513          	li	a0,0
    80002a98:	fcdff06f          	j	80002a64 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80002a9c:	00000513          	li	a0,0
    80002aa0:	fc5ff06f          	j	80002a64 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080002aa4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr == nullptr)
    80002aa4:	0c050063          	beqz	a0,80002b64 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
{
    80002aa8:	fe010113          	addi	sp,sp,-32
    80002aac:	00113c23          	sd	ra,24(sp)
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	02010413          	addi	s0,sp,32
    80002abc:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80002ac0:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80002ac4:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80002ac8:	00009697          	auipc	a3,0x9
    80002acc:	ce06b683          	ld	a3,-800(a3) # 8000b7a8 <_ZN15MemoryAllocator4headE>
    80002ad0:	02068063          	beqz	a3,80002af0 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    80002ad4:	02d56263          	bltu	a0,a3,80002af8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80002ad8:	00068793          	mv	a5,a3
    80002adc:	00078493          	mv	s1,a5
    80002ae0:	0007b783          	ld	a5,0(a5)
    80002ae4:	00078c63          	beqz	a5,80002afc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002ae8:	fea7eae3          	bltu	a5,a0,80002adc <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    80002aec:	0100006f          	j	80002afc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        curr = 0;
    80002af0:	00068493          	mv	s1,a3
    80002af4:	0080006f          	j	80002afc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002af8:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80002afc:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80002b00:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80002b04:	04048663          	beqz	s1,80002b50 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    80002b08:	0004b783          	ld	a5,0(s1)
    80002b0c:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80002b10:	ff873783          	ld	a5,-8(a4)
    80002b14:	00078463          	beqz	a5,80002b1c <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002b18:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80002b1c:	02048e63          	beqz	s1,80002b58 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80002b20:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	f14080e7          	jalr	-236(ra) # 80002a38 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80002b2c:	00048513          	mv	a0,s1
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	f08080e7          	jalr	-248(ra) # 80002a38 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    return 0;
    80002b38:	00000513          	li	a0,0
}
    80002b3c:	01813083          	ld	ra,24(sp)
    80002b40:	01013403          	ld	s0,16(sp)
    80002b44:	00813483          	ld	s1,8(sp)
    80002b48:	02010113          	addi	sp,sp,32
    80002b4c:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80002b50:	fed73c23          	sd	a3,-8(a4)
    80002b54:	fbdff06f          	j	80002b10 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    else MemoryAllocator::head = newSeg;
    80002b58:	00009797          	auipc	a5,0x9
    80002b5c:	c4a7b823          	sd	a0,-944(a5) # 8000b7a8 <_ZN15MemoryAllocator4headE>
    80002b60:	fc5ff06f          	j	80002b24 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        return -1; // unable to dealloc -> ptr is nullptr
    80002b64:	fff00513          	li	a0,-1
}
    80002b68:	00008067          	ret

0000000080002b6c <_ZN15MemoryAllocator14convert2BlocksEm>:

size_t MemoryAllocator::convert2Blocks(size_t size) {
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00813423          	sd	s0,8(sp)
    80002b74:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80002b78:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;
    blockNum = blockNum + 0; // prevent unused error

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80002b7c:	03f57793          	andi	a5,a0,63
    80002b80:	00078c63          	beqz	a5,80002b98 <_ZN15MemoryAllocator14convert2BlocksEm+0x2c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80002b84:	00655513          	srli	a0,a0,0x6
    80002b88:	00150513          	addi	a0,a0,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    return blockNum;
}
    80002b8c:	00813403          	ld	s0,8(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80002b98:	00655513          	srli	a0,a0,0x6
    return blockNum;
    80002b9c:	ff1ff06f          	j	80002b8c <_ZN15MemoryAllocator14convert2BlocksEm+0x20>

0000000080002ba0 <_ZN7_thread13threadWrapperEv>:
    return 0;
}


void _thread::threadWrapper()
{
    80002ba0:	ff010113          	addi	sp,sp,-16
    80002ba4:	00113423          	sd	ra,8(sp)
    80002ba8:	00813023          	sd	s0,0(sp)
    80002bac:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	564080e7          	jalr	1380(ra) # 80002114 <_ZN5Riscv10popSppSpieEv>

    _thread::running->body(_thread::running->arg);
    80002bb8:	00009797          	auipc	a5,0x9
    80002bbc:	bf87b783          	ld	a5,-1032(a5) # 8000b7b0 <_ZN7_thread7runningE>
    80002bc0:	0007b703          	ld	a4,0(a5)
    80002bc4:	0287b503          	ld	a0,40(a5)
    80002bc8:	000700e7          	jalr	a4

    thread_exit();
    80002bcc:	ffffe097          	auipc	ra,0xffffe
    80002bd0:	670080e7          	jalr	1648(ra) # 8000123c <_Z11thread_exitv>
}
    80002bd4:	00813083          	ld	ra,8(sp)
    80002bd8:	00013403          	ld	s0,0(sp)
    80002bdc:	01010113          	addi	sp,sp,16
    80002be0:	00008067          	ret

0000000080002be4 <_ZN7_thread14threadDispatchEv>:

void _thread::threadDispatch ()
{
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00113c23          	sd	ra,24(sp)
    80002bec:	00813823          	sd	s0,16(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    // Scheduler::readyThreadQueue.printAll();

    _thread *old = _thread::running;
    80002bf8:	00009497          	auipc	s1,0x9
    80002bfc:	bb84b483          	ld	s1,-1096(s1) # 8000b7b0 <_ZN7_thread7runningE>

    if (!old->finished)
    80002c00:	0094c783          	lbu	a5,9(s1)
    80002c04:	04079463          	bnez	a5,80002c4c <_ZN7_thread14threadDispatchEv+0x68>
    {
        Scheduler::put(old);
    80002c08:	00048513          	mv	a0,s1
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	c58080e7          	jalr	-936(ra) # 80002864 <_ZN9Scheduler3putEP7_thread>
        _thread::running = Scheduler::get();
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	be0080e7          	jalr	-1056(ra) # 800027f4 <_ZN9Scheduler3getEv>
    80002c1c:	00009797          	auipc	a5,0x9
    80002c20:	b8a7ba23          	sd	a0,-1132(a5) # 8000b7b0 <_ZN7_thread7runningE>

        if(old != _thread::running)
    80002c24:	00a48a63          	beq	s1,a0,80002c38 <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitch(&old->context, &_thread::running->context);
    80002c28:	01850593          	addi	a1,a0,24
    80002c2c:	01848513          	addi	a0,s1,24
    80002c30:	ffffe097          	auipc	ra,0xffffe
    80002c34:	4f0080e7          	jalr	1264(ra) # 80001120 <contextSwitch>
        _thread::running = Scheduler::get();

        if (_thread::running)
            contextSwitchThreadEnded(&_thread::running->context);
    }
}
    80002c38:	01813083          	ld	ra,24(sp)
    80002c3c:	01013403          	ld	s0,16(sp)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
        _sem::semClose(_thread::running->semaphore);
    80002c4c:	0404b503          	ld	a0,64(s1)
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	a78080e7          	jalr	-1416(ra) # 800026c8 <_ZN4_sem8semCloseEPS_>
        MemoryAllocator::mem_free(old->stack);
    80002c58:	0104b503          	ld	a0,16(s1)
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	e48080e7          	jalr	-440(ra) # 80002aa4 <_ZN15MemoryAllocator8mem_freeEPv>
        _thread::running = Scheduler::get();
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	b90080e7          	jalr	-1136(ra) # 800027f4 <_ZN9Scheduler3getEv>
    80002c6c:	00009797          	auipc	a5,0x9
    80002c70:	b4a7b223          	sd	a0,-1212(a5) # 8000b7b0 <_ZN7_thread7runningE>
        if (_thread::running)
    80002c74:	fc0502e3          	beqz	a0,80002c38 <_ZN7_thread14threadDispatchEv+0x54>
            contextSwitchThreadEnded(&_thread::running->context);
    80002c78:	01850513          	addi	a0,a0,24
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	4b8080e7          	jalr	1208(ra) # 80001134 <contextSwitchThreadEnded>
}
    80002c84:	fb5ff06f          	j	80002c38 <_ZN7_thread14threadDispatchEv+0x54>

0000000080002c88 <_ZN7_thread7addLastEPS_>:

}

void _thread::addLast(_thread *t)
{
    if (t == nullptr)
    80002c88:	06050c63          	beqz	a0,80002d00 <_ZN7_thread7addLastEPS_+0x78>
{
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00113c23          	sd	ra,24(sp)
    80002c94:	00813823          	sd	s0,16(sp)
    80002c98:	00913423          	sd	s1,8(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    80002ca0:	00050493          	mv	s1,a0
        return;

    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(Elem));
    80002ca4:	01000513          	li	a0,16
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	ec4080e7          	jalr	-316(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
    Elem *elem = (Elem*)MemoryAllocator::mem_alloc(blockNum);
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	ccc080e7          	jalr	-820(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>

    elem->data = t;
    80002cb8:	00953023          	sd	s1,0(a0)
    elem->next = nullptr;
    80002cbc:	00053423          	sd	zero,8(a0)

    if (_thread::tail)
    80002cc0:	00009797          	auipc	a5,0x9
    80002cc4:	af87b783          	ld	a5,-1288(a5) # 8000b7b8 <_ZN7_thread4tailE>
    80002cc8:	02078263          	beqz	a5,80002cec <_ZN7_thread7addLastEPS_+0x64>
    {
        _thread::tail->next = elem;
    80002ccc:	00a7b423          	sd	a0,8(a5)
        _thread::tail = elem;
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	aea7b423          	sd	a0,-1304(a5) # 8000b7b8 <_ZN7_thread4tailE>
    }
    else
    {
        _thread::head = _thread::tail = elem;
    }
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	02010113          	addi	sp,sp,32
    80002ce8:	00008067          	ret
        _thread::head = _thread::tail = elem;
    80002cec:	00009797          	auipc	a5,0x9
    80002cf0:	ac478793          	addi	a5,a5,-1340 # 8000b7b0 <_ZN7_thread7runningE>
    80002cf4:	00a7b423          	sd	a0,8(a5)
    80002cf8:	00a7b823          	sd	a0,16(a5)
    80002cfc:	fddff06f          	j	80002cd8 <_ZN7_thread7addLastEPS_+0x50>
    80002d00:	00008067          	ret

0000000080002d04 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
{
    80002d04:	fd010113          	addi	sp,sp,-48
    80002d08:	02113423          	sd	ra,40(sp)
    80002d0c:	02813023          	sd	s0,32(sp)
    80002d10:	00913c23          	sd	s1,24(sp)
    80002d14:	01213823          	sd	s2,16(sp)
    80002d18:	01313423          	sd	s3,8(sp)
    80002d1c:	01413023          	sd	s4,0(sp)
    80002d20:	03010413          	addi	s0,sp,48
    80002d24:	00050493          	mv	s1,a0
    80002d28:	00058913          	mv	s2,a1
    80002d2c:	00060a13          	mv	s4,a2
    80002d30:	00068993          	mv	s3,a3
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(_thread));
    80002d34:	05000513          	li	a0,80
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	e34080e7          	jalr	-460(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
    *handle = (_thread*) MemoryAllocator::mem_alloc(blockNum);
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	c3c080e7          	jalr	-964(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
    80002d48:	00a4b023          	sd	a0,0(s1)
    int retVal = _sem::semOpen(&(*handle)->semaphore, 0);
    80002d4c:	00000593          	li	a1,0
    80002d50:	04050513          	addi	a0,a0,64
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	770080e7          	jalr	1904(ra) # 800024c4 <_ZN4_sem7semOpenEPPS_j>
    if (*handle == nullptr || retVal < 0)
    80002d5c:	0004b783          	ld	a5,0(s1)
    80002d60:	0c078a63          	beqz	a5,80002e34 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x130>
    80002d64:	0c054c63          	bltz	a0,80002e3c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x138>
    (*handle)->semWaitVal = 0;
    80002d68:	0207ac23          	sw	zero,56(a5)
    (*handle)->finished = false;
    80002d6c:	0004b783          	ld	a5,0(s1)
    80002d70:	000784a3          	sb	zero,9(a5)
    (*handle)->timeSlice = 0;
    80002d74:	0004b783          	ld	a5,0(s1)
    80002d78:	0207b823          	sd	zero,48(a5)
    (*handle)->body = start_routine;
    80002d7c:	0004b783          	ld	a5,0(s1)
    80002d80:	0127b023          	sd	s2,0(a5)
    (*handle)->arg = arg;
    80002d84:	0004b783          	ld	a5,0(s1)
    80002d88:	0347b423          	sd	s4,40(a5)
    if (start_routine != nullptr)
    80002d8c:	08090a63          	beqz	s2,80002e20 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x11c>
        (*handle)->stack = (uint64*) stack_space;
    80002d90:	0004b783          	ld	a5,0(s1)
    80002d94:	0137b823          	sd	s3,16(a5)
    if ((*handle)->stack != nullptr)
    80002d98:	0004b703          	ld	a4,0(s1)
    80002d9c:	01073783          	ld	a5,16(a4)
    80002da0:	08078663          	beqz	a5,80002e2c <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x128>
        (*handle)->context.sp = (uint64) &((*handle)->stack[DEFAULT_STACK_SIZE]);
    80002da4:	000086b7          	lui	a3,0x8
    80002da8:	00d787b3          	add	a5,a5,a3
    80002dac:	02f73023          	sd	a5,32(a4)
        (*handle)->context.ra = (uint64) &threadWrapper;
    80002db0:	0004b783          	ld	a5,0(s1)
    80002db4:	00000717          	auipc	a4,0x0
    80002db8:	dec70713          	addi	a4,a4,-532 # 80002ba0 <_ZN7_thread13threadWrapperEv>
    80002dbc:	00e7bc23          	sd	a4,24(a5)
    if ((*handle)->body != nullptr)
    80002dc0:	0004b503          	ld	a0,0(s1)
    80002dc4:	00053783          	ld	a5,0(a0)
    80002dc8:	00078663          	beqz	a5,80002dd4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xd0>
        Scheduler::put(*handle);
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	a98080e7          	jalr	-1384(ra) # 80002864 <_ZN9Scheduler3putEP7_thread>
    (*handle)->myId = _thread::id++;
    80002dd4:	00009717          	auipc	a4,0x9
    80002dd8:	9dc70713          	addi	a4,a4,-1572 # 8000b7b0 <_ZN7_thread7runningE>
    80002ddc:	01872783          	lw	a5,24(a4)
    80002de0:	0017869b          	addiw	a3,a5,1
    80002de4:	00d72c23          	sw	a3,24(a4)
    80002de8:	0004b703          	ld	a4,0(s1)
    80002dec:	04f72623          	sw	a5,76(a4)
    _thread::addLast(*handle);
    80002df0:	0004b503          	ld	a0,0(s1)
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	e94080e7          	jalr	-364(ra) # 80002c88 <_ZN7_thread7addLastEPS_>
    return 0;
    80002dfc:	00000513          	li	a0,0
}
    80002e00:	02813083          	ld	ra,40(sp)
    80002e04:	02013403          	ld	s0,32(sp)
    80002e08:	01813483          	ld	s1,24(sp)
    80002e0c:	01013903          	ld	s2,16(sp)
    80002e10:	00813983          	ld	s3,8(sp)
    80002e14:	00013a03          	ld	s4,0(sp)
    80002e18:	03010113          	addi	sp,sp,48
    80002e1c:	00008067          	ret
        (*handle)->stack = nullptr;
    80002e20:	0004b783          	ld	a5,0(s1)
    80002e24:	0007b823          	sd	zero,16(a5)
    80002e28:	f71ff06f          	j	80002d98 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x94>
        (*handle)->context.sp = 0;
    80002e2c:	02073023          	sd	zero,32(a4)
    80002e30:	f91ff06f          	j	80002dc0 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xbc>
        return -1;
    80002e34:	fff00513          	li	a0,-1
    80002e38:	fc9ff06f          	j	80002e00 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xfc>
    80002e3c:	fff00513          	li	a0,-1
    80002e40:	fc1ff06f          	j	80002e00 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0xfc>

0000000080002e44 <_ZN7_thread10threadForkEv>:
{
    80002e44:	fd010113          	addi	sp,sp,-48
    80002e48:	02113423          	sd	ra,40(sp)
    80002e4c:	02813023          	sd	s0,32(sp)
    80002e50:	00913c23          	sd	s1,24(sp)
    80002e54:	03010413          	addi	s0,sp,48
    size_t blockNum2 = MemoryAllocator::convert2Blocks(sizeof(_thread*));
    80002e58:	00800513          	li	a0,8
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	d10080e7          	jalr	-752(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
    _thread* newHandle = (_thread *)(MemoryAllocator::mem_alloc(blockNum2));
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	b18080e7          	jalr	-1256(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
    80002e6c:	fca43c23          	sd	a0,-40(s0)
    size_t blockNum = MemoryAllocator::convert2Blocks(sizeof(uint64) * DEFAULT_STACK_SIZE);
    80002e70:	00008537          	lui	a0,0x8
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	cf8080e7          	jalr	-776(ra) # 80002b6c <_ZN15MemoryAllocator14convert2BlocksEm>
    void* stack_space = MemoryAllocator::mem_alloc(blockNum);
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	b00080e7          	jalr	-1280(ra) # 8000297c <_ZN15MemoryAllocator9mem_allocEm>
    80002e84:	00050693          	mv	a3,a0
    threadCreate(&newHandle, _thread::running->body, _thread::running->arg, stack_space);
    80002e88:	00009497          	auipc	s1,0x9
    80002e8c:	92848493          	addi	s1,s1,-1752 # 8000b7b0 <_ZN7_thread7runningE>
    80002e90:	0004b783          	ld	a5,0(s1)
    80002e94:	0287b603          	ld	a2,40(a5)
    80002e98:	0007b583          	ld	a1,0(a5)
    80002e9c:	fd840513          	addi	a0,s0,-40
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	e64080e7          	jalr	-412(ra) # 80002d04 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
    asm volatile ("csrr a0, sepc");
    80002ea8:	14102573          	csrr	a0,sepc
    asm volatile("sd a0, %0" : "=m" (newHandle->context.ra));
    80002eac:	fd843683          	ld	a3,-40(s0)
    80002eb0:	00a6bc23          	sd	a0,24(a3) # 8018 <_entry-0x7fff7fe8>
    newHandle->context.sp = (uint64)newHandle->stack + _thread::running->context.sp - (uint64)_thread::running->stack;
    80002eb4:	0106b603          	ld	a2,16(a3)
    80002eb8:	0004b703          	ld	a4,0(s1)
    80002ebc:	02073783          	ld	a5,32(a4)
    80002ec0:	00f607b3          	add	a5,a2,a5
    80002ec4:	01073583          	ld	a1,16(a4)
    80002ec8:	40b787b3          	sub	a5,a5,a1
    80002ecc:	02f6b023          	sd	a5,32(a3)
    uint64* startAddr1 = (uint64*)_thread::running->stack;
    80002ed0:	01073583          	ld	a1,16(a4)
    size_t i = 0;
    80002ed4:	00000713          	li	a4,0
    while (i < DEFAULT_STACK_SIZE)
    80002ed8:	000017b7          	lui	a5,0x1
    80002edc:	02f77063          	bgeu	a4,a5,80002efc <_ZN7_thread10threadForkEv+0xb8>
        *(startAddr2+i) = *(startAddr1+i);
    80002ee0:	00371793          	slli	a5,a4,0x3
    80002ee4:	00f586b3          	add	a3,a1,a5
    80002ee8:	00f607b3          	add	a5,a2,a5
    80002eec:	0006b683          	ld	a3,0(a3)
    80002ef0:	00d7b023          	sd	a3,0(a5) # 1000 <_entry-0x7ffff000>
        i++;
    80002ef4:	00170713          	addi	a4,a4,1
    while (i < DEFAULT_STACK_SIZE)
    80002ef8:	fe1ff06f          	j	80002ed8 <_ZN7_thread10threadForkEv+0x94>
    _thread::running->forkRetVal = 1; // 1 - thread parent
    80002efc:	00009797          	auipc	a5,0x9
    80002f00:	8b47b783          	ld	a5,-1868(a5) # 8000b7b0 <_ZN7_thread7runningE>
    80002f04:	00100713          	li	a4,1
    80002f08:	04e7a423          	sw	a4,72(a5)
    newHandle->forkRetVal = 0; // 0 - child
    80002f0c:	fd843503          	ld	a0,-40(s0)
    80002f10:	04052423          	sw	zero,72(a0) # 8048 <_entry-0x7fff7fb8>
    Scheduler::put(newHandle);
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	950080e7          	jalr	-1712(ra) # 80002864 <_ZN9Scheduler3putEP7_thread>
}
    80002f1c:	02813083          	ld	ra,40(sp)
    80002f20:	02013403          	ld	s0,32(sp)
    80002f24:	01813483          	ld	s1,24(sp)
    80002f28:	03010113          	addi	sp,sp,48
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN7_thread6searchEi>:

_thread *_thread::search(int searchId)
{
    80002f30:	ff010113          	addi	sp,sp,-16
    80002f34:	00813423          	sd	s0,8(sp)
    80002f38:	01010413          	addi	s0,sp,16
    80002f3c:	00050693          	mv	a3,a0
    Elem* temp = _thread::head;
    80002f40:	00009517          	auipc	a0,0x9
    80002f44:	88053503          	ld	a0,-1920(a0) # 8000b7c0 <_ZN7_thread4headE>

    while(temp)
    80002f48:	00050e63          	beqz	a0,80002f64 <_ZN7_thread6searchEi+0x34>
    {
        if (temp->data->myId == searchId)
    80002f4c:	00053783          	ld	a5,0(a0)
    80002f50:	04c7a703          	lw	a4,76(a5)
    80002f54:	00d70663          	beq	a4,a3,80002f60 <_ZN7_thread6searchEi+0x30>
            return temp->data;

        temp = temp->next;
    80002f58:	00853503          	ld	a0,8(a0)
    while(temp)
    80002f5c:	fedff06f          	j	80002f48 <_ZN7_thread6searchEi+0x18>
            return temp->data;
    80002f60:	00078513          	mv	a0,a5
    }

    return nullptr;
}
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	01010113          	addi	sp,sp,16
    80002f6c:	00008067          	ret

0000000080002f70 <_ZN7_thread10threadKillEi>:

int _thread::threadKill(int threadId)
{
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00113423          	sd	ra,8(sp)
    80002f78:	00813023          	sd	s0,0(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    _thread* targetThread = search(threadId);
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	fb0080e7          	jalr	-80(ra) # 80002f30 <_ZN7_thread6searchEi>

    if (targetThread == nullptr) // thread doesn't exist
    80002f88:	02050063          	beqz	a0,80002fa8 <_ZN7_thread10threadKillEi+0x38>
        return -1;

    if (targetThread->finished) // thread already finished
    80002f8c:	00954783          	lbu	a5,9(a0)
    80002f90:	02079063          	bnez	a5,80002fb0 <_ZN7_thread10threadKillEi+0x40>
        return -2;



    return 0;
    80002f94:	00000513          	li	a0,0
}
    80002f98:	00813083          	ld	ra,8(sp)
    80002f9c:	00013403          	ld	s0,0(sp)
    80002fa0:	01010113          	addi	sp,sp,16
    80002fa4:	00008067          	ret
        return -1;
    80002fa8:	fff00513          	li	a0,-1
    80002fac:	fedff06f          	j	80002f98 <_ZN7_thread10threadKillEi+0x28>
        return -2;
    80002fb0:	ffe00513          	li	a0,-2
    80002fb4:	fe5ff06f          	j	80002f98 <_ZN7_thread10threadKillEi+0x28>

0000000080002fb8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	01213023          	sd	s2,0(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002fd4:	00000913          	li	s2,0
    80002fd8:	00c0006f          	j	80002fe4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002fdc:	ffffe097          	auipc	ra,0xffffe
    80002fe0:	290080e7          	jalr	656(ra) # 8000126c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	414080e7          	jalr	1044(ra) # 800013f8 <_Z4getcv>
    80002fec:	0005059b          	sext.w	a1,a0
    80002ff0:	01b00793          	li	a5,27
    80002ff4:	02f58a63          	beq	a1,a5,80003028 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002ff8:	0084b503          	ld	a0,8(s1)
    80002ffc:	00003097          	auipc	ra,0x3
    80003000:	3f4080e7          	jalr	1012(ra) # 800063f0 <_ZN6Buffer3putEi>
        i++;
    80003004:	0019071b          	addiw	a4,s2,1
    80003008:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000300c:	0004a683          	lw	a3,0(s1)
    80003010:	0026979b          	slliw	a5,a3,0x2
    80003014:	00d787bb          	addw	a5,a5,a3
    80003018:	0017979b          	slliw	a5,a5,0x1
    8000301c:	02f767bb          	remw	a5,a4,a5
    80003020:	fc0792e3          	bnez	a5,80002fe4 <_ZL16producerKeyboardPv+0x2c>
    80003024:	fb9ff06f          	j	80002fdc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003028:	00100793          	li	a5,1
    8000302c:	00008717          	auipc	a4,0x8
    80003030:	7af72223          	sw	a5,1956(a4) # 8000b7d0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003034:	02100593          	li	a1,33
    80003038:	0084b503          	ld	a0,8(s1)
    8000303c:	00003097          	auipc	ra,0x3
    80003040:	3b4080e7          	jalr	948(ra) # 800063f0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003044:	0104b503          	ld	a0,16(s1)
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	334080e7          	jalr	820(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	00813483          	ld	s1,8(sp)
    8000305c:	00013903          	ld	s2,0(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret

0000000080003068 <_ZL8producerPv>:

static void producer(void *arg) {
    80003068:	fe010113          	addi	sp,sp,-32
    8000306c:	00113c23          	sd	ra,24(sp)
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	01213023          	sd	s2,0(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003084:	00000913          	li	s2,0
    80003088:	00c0006f          	j	80003094 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	1e0080e7          	jalr	480(ra) # 8000126c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003094:	00008797          	auipc	a5,0x8
    80003098:	73c7a783          	lw	a5,1852(a5) # 8000b7d0 <_ZL9threadEnd>
    8000309c:	02079e63          	bnez	a5,800030d8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800030a0:	0004a583          	lw	a1,0(s1)
    800030a4:	0305859b          	addiw	a1,a1,48
    800030a8:	0084b503          	ld	a0,8(s1)
    800030ac:	00003097          	auipc	ra,0x3
    800030b0:	344080e7          	jalr	836(ra) # 800063f0 <_ZN6Buffer3putEi>
        i++;
    800030b4:	0019071b          	addiw	a4,s2,1
    800030b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030bc:	0004a683          	lw	a3,0(s1)
    800030c0:	0026979b          	slliw	a5,a3,0x2
    800030c4:	00d787bb          	addw	a5,a5,a3
    800030c8:	0017979b          	slliw	a5,a5,0x1
    800030cc:	02f767bb          	remw	a5,a4,a5
    800030d0:	fc0792e3          	bnez	a5,80003094 <_ZL8producerPv+0x2c>
    800030d4:	fb9ff06f          	j	8000308c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800030d8:	0104b503          	ld	a0,16(s1)
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	2a0080e7          	jalr	672(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    800030e4:	01813083          	ld	ra,24(sp)
    800030e8:	01013403          	ld	s0,16(sp)
    800030ec:	00813483          	ld	s1,8(sp)
    800030f0:	00013903          	ld	s2,0(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret

00000000800030fc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800030fc:	fd010113          	addi	sp,sp,-48
    80003100:	02113423          	sd	ra,40(sp)
    80003104:	02813023          	sd	s0,32(sp)
    80003108:	00913c23          	sd	s1,24(sp)
    8000310c:	01213823          	sd	s2,16(sp)
    80003110:	01313423          	sd	s3,8(sp)
    80003114:	03010413          	addi	s0,sp,48
    80003118:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000311c:	00000993          	li	s3,0
    80003120:	01c0006f          	j	8000313c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	148080e7          	jalr	328(ra) # 8000126c <_Z15thread_dispatchv>
    8000312c:	0500006f          	j	8000317c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003130:	00a00513          	li	a0,10
    80003134:	ffffe097          	auipc	ra,0xffffe
    80003138:	314080e7          	jalr	788(ra) # 80001448 <_Z4putcc>
    while (!threadEnd) {
    8000313c:	00008797          	auipc	a5,0x8
    80003140:	6947a783          	lw	a5,1684(a5) # 8000b7d0 <_ZL9threadEnd>
    80003144:	06079063          	bnez	a5,800031a4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003148:	00893503          	ld	a0,8(s2)
    8000314c:	00003097          	auipc	ra,0x3
    80003150:	334080e7          	jalr	820(ra) # 80006480 <_ZN6Buffer3getEv>
        i++;
    80003154:	0019849b          	addiw	s1,s3,1
    80003158:	0004899b          	sext.w	s3,s1
        putc(key);
    8000315c:	0ff57513          	andi	a0,a0,255
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	2e8080e7          	jalr	744(ra) # 80001448 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003168:	00092703          	lw	a4,0(s2)
    8000316c:	0027179b          	slliw	a5,a4,0x2
    80003170:	00e787bb          	addw	a5,a5,a4
    80003174:	02f4e7bb          	remw	a5,s1,a5
    80003178:	fa0786e3          	beqz	a5,80003124 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000317c:	05000793          	li	a5,80
    80003180:	02f4e4bb          	remw	s1,s1,a5
    80003184:	fa049ce3          	bnez	s1,8000313c <_ZL8consumerPv+0x40>
    80003188:	fa9ff06f          	j	80003130 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000318c:	00893503          	ld	a0,8(s2)
    80003190:	00003097          	auipc	ra,0x3
    80003194:	2f0080e7          	jalr	752(ra) # 80006480 <_ZN6Buffer3getEv>
        putc(key);
    80003198:	0ff57513          	andi	a0,a0,255
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	2ac080e7          	jalr	684(ra) # 80001448 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800031a4:	00893503          	ld	a0,8(s2)
    800031a8:	00003097          	auipc	ra,0x3
    800031ac:	364080e7          	jalr	868(ra) # 8000650c <_ZN6Buffer6getCntEv>
    800031b0:	fca04ee3          	bgtz	a0,8000318c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800031b4:	01093503          	ld	a0,16(s2)
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	1c4080e7          	jalr	452(ra) # 8000137c <_Z10sem_signalP4_sem>
}
    800031c0:	02813083          	ld	ra,40(sp)
    800031c4:	02013403          	ld	s0,32(sp)
    800031c8:	01813483          	ld	s1,24(sp)
    800031cc:	01013903          	ld	s2,16(sp)
    800031d0:	00813983          	ld	s3,8(sp)
    800031d4:	03010113          	addi	sp,sp,48
    800031d8:	00008067          	ret

00000000800031dc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800031dc:	f9010113          	addi	sp,sp,-112
    800031e0:	06113423          	sd	ra,104(sp)
    800031e4:	06813023          	sd	s0,96(sp)
    800031e8:	04913c23          	sd	s1,88(sp)
    800031ec:	05213823          	sd	s2,80(sp)
    800031f0:	05313423          	sd	s3,72(sp)
    800031f4:	05413023          	sd	s4,64(sp)
    800031f8:	03513c23          	sd	s5,56(sp)
    800031fc:	03613823          	sd	s6,48(sp)
    80003200:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003204:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	f2850513          	addi	a0,a0,-216 # 80009130 <CONSOLE_STATUS+0x120>
    80003210:	00002097          	auipc	ra,0x2
    80003214:	220080e7          	jalr	544(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80003218:	01e00593          	li	a1,30
    8000321c:	fa040493          	addi	s1,s0,-96
    80003220:	00048513          	mv	a0,s1
    80003224:	00002097          	auipc	ra,0x2
    80003228:	294080e7          	jalr	660(ra) # 800054b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000322c:	00048513          	mv	a0,s1
    80003230:	00002097          	auipc	ra,0x2
    80003234:	360080e7          	jalr	864(ra) # 80005590 <_Z11stringToIntPKc>
    80003238:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000323c:	00006517          	auipc	a0,0x6
    80003240:	f1450513          	addi	a0,a0,-236 # 80009150 <CONSOLE_STATUS+0x140>
    80003244:	00002097          	auipc	ra,0x2
    80003248:	1ec080e7          	jalr	492(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    8000324c:	01e00593          	li	a1,30
    80003250:	00048513          	mv	a0,s1
    80003254:	00002097          	auipc	ra,0x2
    80003258:	264080e7          	jalr	612(ra) # 800054b8 <_Z9getStringPci>
    n = stringToInt(input);
    8000325c:	00048513          	mv	a0,s1
    80003260:	00002097          	auipc	ra,0x2
    80003264:	330080e7          	jalr	816(ra) # 80005590 <_Z11stringToIntPKc>
    80003268:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	f0450513          	addi	a0,a0,-252 # 80009170 <CONSOLE_STATUS+0x160>
    80003274:	00002097          	auipc	ra,0x2
    80003278:	1bc080e7          	jalr	444(ra) # 80005430 <_Z11printStringPKc>
    8000327c:	00000613          	li	a2,0
    80003280:	00a00593          	li	a1,10
    80003284:	00090513          	mv	a0,s2
    80003288:	00002097          	auipc	ra,0x2
    8000328c:	358080e7          	jalr	856(ra) # 800055e0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003290:	00006517          	auipc	a0,0x6
    80003294:	ef850513          	addi	a0,a0,-264 # 80009188 <CONSOLE_STATUS+0x178>
    80003298:	00002097          	auipc	ra,0x2
    8000329c:	198080e7          	jalr	408(ra) # 80005430 <_Z11printStringPKc>
    800032a0:	00000613          	li	a2,0
    800032a4:	00a00593          	li	a1,10
    800032a8:	00048513          	mv	a0,s1
    800032ac:	00002097          	auipc	ra,0x2
    800032b0:	334080e7          	jalr	820(ra) # 800055e0 <_Z8printIntiii>
    printString(".\n");
    800032b4:	00006517          	auipc	a0,0x6
    800032b8:	eec50513          	addi	a0,a0,-276 # 800091a0 <CONSOLE_STATUS+0x190>
    800032bc:	00002097          	auipc	ra,0x2
    800032c0:	174080e7          	jalr	372(ra) # 80005430 <_Z11printStringPKc>
    if(threadNum > n) {
    800032c4:	0324c463          	blt	s1,s2,800032ec <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800032c8:	03205c63          	blez	s2,80003300 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800032cc:	03800513          	li	a0,56
    800032d0:	fffff097          	auipc	ra,0xfffff
    800032d4:	b3c080e7          	jalr	-1220(ra) # 80001e0c <_Znwm>
    800032d8:	00050a13          	mv	s4,a0
    800032dc:	00048593          	mv	a1,s1
    800032e0:	00003097          	auipc	ra,0x3
    800032e4:	074080e7          	jalr	116(ra) # 80006354 <_ZN6BufferC1Ei>
    800032e8:	0300006f          	j	80003318 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800032ec:	00006517          	auipc	a0,0x6
    800032f0:	ebc50513          	addi	a0,a0,-324 # 800091a8 <CONSOLE_STATUS+0x198>
    800032f4:	00002097          	auipc	ra,0x2
    800032f8:	13c080e7          	jalr	316(ra) # 80005430 <_Z11printStringPKc>
        return;
    800032fc:	0140006f          	j	80003310 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	ee850513          	addi	a0,a0,-280 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	128080e7          	jalr	296(ra) # 80005430 <_Z11printStringPKc>
        return;
    80003310:	000b0113          	mv	sp,s6
    80003314:	1500006f          	j	80003464 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003318:	00000593          	li	a1,0
    8000331c:	00008517          	auipc	a0,0x8
    80003320:	4bc50513          	addi	a0,a0,1212 # 8000b7d8 <_ZL10waitForAll>
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	fa0080e7          	jalr	-96(ra) # 800012c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    8000332c:	00391793          	slli	a5,s2,0x3
    80003330:	00f78793          	addi	a5,a5,15
    80003334:	ff07f793          	andi	a5,a5,-16
    80003338:	40f10133          	sub	sp,sp,a5
    8000333c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003340:	0019071b          	addiw	a4,s2,1
    80003344:	00171793          	slli	a5,a4,0x1
    80003348:	00e787b3          	add	a5,a5,a4
    8000334c:	00379793          	slli	a5,a5,0x3
    80003350:	00f78793          	addi	a5,a5,15
    80003354:	ff07f793          	andi	a5,a5,-16
    80003358:	40f10133          	sub	sp,sp,a5
    8000335c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003360:	00191613          	slli	a2,s2,0x1
    80003364:	012607b3          	add	a5,a2,s2
    80003368:	00379793          	slli	a5,a5,0x3
    8000336c:	00f987b3          	add	a5,s3,a5
    80003370:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003374:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003378:	00008717          	auipc	a4,0x8
    8000337c:	46073703          	ld	a4,1120(a4) # 8000b7d8 <_ZL10waitForAll>
    80003380:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003384:	00078613          	mv	a2,a5
    80003388:	00000597          	auipc	a1,0x0
    8000338c:	d7458593          	addi	a1,a1,-652 # 800030fc <_ZL8consumerPv>
    80003390:	f9840513          	addi	a0,s0,-104
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	e3c080e7          	jalr	-452(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000339c:	00000493          	li	s1,0
    800033a0:	0280006f          	j	800033c8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800033a4:	00000597          	auipc	a1,0x0
    800033a8:	c1458593          	addi	a1,a1,-1004 # 80002fb8 <_ZL16producerKeyboardPv>
                      data + i);
    800033ac:	00179613          	slli	a2,a5,0x1
    800033b0:	00f60633          	add	a2,a2,a5
    800033b4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800033b8:	00c98633          	add	a2,s3,a2
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	e14080e7          	jalr	-492(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800033c4:	0014849b          	addiw	s1,s1,1
    800033c8:	0524d263          	bge	s1,s2,8000340c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800033cc:	00149793          	slli	a5,s1,0x1
    800033d0:	009787b3          	add	a5,a5,s1
    800033d4:	00379793          	slli	a5,a5,0x3
    800033d8:	00f987b3          	add	a5,s3,a5
    800033dc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800033e0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800033e4:	00008717          	auipc	a4,0x8
    800033e8:	3f473703          	ld	a4,1012(a4) # 8000b7d8 <_ZL10waitForAll>
    800033ec:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800033f0:	00048793          	mv	a5,s1
    800033f4:	00349513          	slli	a0,s1,0x3
    800033f8:	00aa8533          	add	a0,s5,a0
    800033fc:	fa9054e3          	blez	s1,800033a4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003400:	00000597          	auipc	a1,0x0
    80003404:	c6858593          	addi	a1,a1,-920 # 80003068 <_ZL8producerPv>
    80003408:	fa5ff06f          	j	800033ac <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	e60080e7          	jalr	-416(ra) # 8000126c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003414:	00000493          	li	s1,0
    80003418:	00994e63          	blt	s2,s1,80003434 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000341c:	00008517          	auipc	a0,0x8
    80003420:	3bc53503          	ld	a0,956(a0) # 8000b7d8 <_ZL10waitForAll>
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	f18080e7          	jalr	-232(ra) # 8000133c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    8000342c:	0014849b          	addiw	s1,s1,1
    80003430:	fe9ff06f          	j	80003418 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003434:	00008517          	auipc	a0,0x8
    80003438:	3a453503          	ld	a0,932(a0) # 8000b7d8 <_ZL10waitForAll>
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	ec8080e7          	jalr	-312(ra) # 80001304 <_Z9sem_closeP4_sem>
    delete buffer;
    80003444:	000a0e63          	beqz	s4,80003460 <_Z22producerConsumer_C_APIv+0x284>
    80003448:	000a0513          	mv	a0,s4
    8000344c:	00003097          	auipc	ra,0x3
    80003450:	148080e7          	jalr	328(ra) # 80006594 <_ZN6BufferD1Ev>
    80003454:	000a0513          	mv	a0,s4
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	9dc080e7          	jalr	-1572(ra) # 80001e34 <_ZdlPv>
    80003460:	000b0113          	mv	sp,s6

}
    80003464:	f9040113          	addi	sp,s0,-112
    80003468:	06813083          	ld	ra,104(sp)
    8000346c:	06013403          	ld	s0,96(sp)
    80003470:	05813483          	ld	s1,88(sp)
    80003474:	05013903          	ld	s2,80(sp)
    80003478:	04813983          	ld	s3,72(sp)
    8000347c:	04013a03          	ld	s4,64(sp)
    80003480:	03813a83          	ld	s5,56(sp)
    80003484:	03013b03          	ld	s6,48(sp)
    80003488:	07010113          	addi	sp,sp,112
    8000348c:	00008067          	ret
    80003490:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003494:	000a0513          	mv	a0,s4
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	99c080e7          	jalr	-1636(ra) # 80001e34 <_ZdlPv>
    800034a0:	00048513          	mv	a0,s1
    800034a4:	00009097          	auipc	ra,0x9
    800034a8:	444080e7          	jalr	1092(ra) # 8000c8e8 <_Unwind_Resume>

00000000800034ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800034c8:	00100793          	li	a5,1
    800034cc:	02a7f863          	bgeu	a5,a0,800034fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800034d0:	00a00793          	li	a5,10
    800034d4:	02f577b3          	remu	a5,a0,a5
    800034d8:	02078e63          	beqz	a5,80003514 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034dc:	fff48513          	addi	a0,s1,-1
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	fcc080e7          	jalr	-52(ra) # 800034ac <_ZL9fibonaccim>
    800034e8:	00050913          	mv	s2,a0
    800034ec:	ffe48513          	addi	a0,s1,-2
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	fbc080e7          	jalr	-68(ra) # 800034ac <_ZL9fibonaccim>
    800034f8:	00a90533          	add	a0,s2,a0
}
    800034fc:	01813083          	ld	ra,24(sp)
    80003500:	01013403          	ld	s0,16(sp)
    80003504:	00813483          	ld	s1,8(sp)
    80003508:	00013903          	ld	s2,0(sp)
    8000350c:	02010113          	addi	sp,sp,32
    80003510:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	d58080e7          	jalr	-680(ra) # 8000126c <_Z15thread_dispatchv>
    8000351c:	fc1ff06f          	j	800034dc <_ZL9fibonaccim+0x30>

0000000080003520 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003520:	fe010113          	addi	sp,sp,-32
    80003524:	00113c23          	sd	ra,24(sp)
    80003528:	00813823          	sd	s0,16(sp)
    8000352c:	00913423          	sd	s1,8(sp)
    80003530:	01213023          	sd	s2,0(sp)
    80003534:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003538:	00000913          	li	s2,0
    8000353c:	0380006f          	j	80003574 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	d2c080e7          	jalr	-724(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003548:	00148493          	addi	s1,s1,1
    8000354c:	000027b7          	lui	a5,0x2
    80003550:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003554:	0097ee63          	bltu	a5,s1,80003570 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003558:	00000713          	li	a4,0
    8000355c:	000077b7          	lui	a5,0x7
    80003560:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003564:	fce7eee3          	bltu	a5,a4,80003540 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003568:	00170713          	addi	a4,a4,1
    8000356c:	ff1ff06f          	j	8000355c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003570:	00190913          	addi	s2,s2,1
    80003574:	00900793          	li	a5,9
    80003578:	0527e063          	bltu	a5,s2,800035b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	c9c50513          	addi	a0,a0,-868 # 80009218 <CONSOLE_STATUS+0x208>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	eac080e7          	jalr	-340(ra) # 80005430 <_Z11printStringPKc>
    8000358c:	00000613          	li	a2,0
    80003590:	00a00593          	li	a1,10
    80003594:	0009051b          	sext.w	a0,s2
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	048080e7          	jalr	72(ra) # 800055e0 <_Z8printIntiii>
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	ef850513          	addi	a0,a0,-264 # 80009498 <CONSOLE_STATUS+0x488>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	e88080e7          	jalr	-376(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035b0:	00000493          	li	s1,0
    800035b4:	f99ff06f          	j	8000354c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800035b8:	00006517          	auipc	a0,0x6
    800035bc:	c6850513          	addi	a0,a0,-920 # 80009220 <CONSOLE_STATUS+0x210>
    800035c0:	00002097          	auipc	ra,0x2
    800035c4:	e70080e7          	jalr	-400(ra) # 80005430 <_Z11printStringPKc>
    finishedA = true;
    800035c8:	00100793          	li	a5,1
    800035cc:	00008717          	auipc	a4,0x8
    800035d0:	20f70a23          	sb	a5,532(a4) # 8000b7e0 <_ZL9finishedA>
}
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	00013903          	ld	s2,0(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret

00000000800035ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800035ec:	fe010113          	addi	sp,sp,-32
    800035f0:	00113c23          	sd	ra,24(sp)
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	01213023          	sd	s2,0(sp)
    80003600:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003604:	00000913          	li	s2,0
    80003608:	0380006f          	j	80003640 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	c60080e7          	jalr	-928(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003614:	00148493          	addi	s1,s1,1
    80003618:	000027b7          	lui	a5,0x2
    8000361c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003620:	0097ee63          	bltu	a5,s1,8000363c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003624:	00000713          	li	a4,0
    80003628:	000077b7          	lui	a5,0x7
    8000362c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003630:	fce7eee3          	bltu	a5,a4,8000360c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003634:	00170713          	addi	a4,a4,1
    80003638:	ff1ff06f          	j	80003628 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000363c:	00190913          	addi	s2,s2,1
    80003640:	00f00793          	li	a5,15
    80003644:	0527e063          	bltu	a5,s2,80003684 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003648:	00006517          	auipc	a0,0x6
    8000364c:	be850513          	addi	a0,a0,-1048 # 80009230 <CONSOLE_STATUS+0x220>
    80003650:	00002097          	auipc	ra,0x2
    80003654:	de0080e7          	jalr	-544(ra) # 80005430 <_Z11printStringPKc>
    80003658:	00000613          	li	a2,0
    8000365c:	00a00593          	li	a1,10
    80003660:	0009051b          	sext.w	a0,s2
    80003664:	00002097          	auipc	ra,0x2
    80003668:	f7c080e7          	jalr	-132(ra) # 800055e0 <_Z8printIntiii>
    8000366c:	00006517          	auipc	a0,0x6
    80003670:	e2c50513          	addi	a0,a0,-468 # 80009498 <CONSOLE_STATUS+0x488>
    80003674:	00002097          	auipc	ra,0x2
    80003678:	dbc080e7          	jalr	-580(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000367c:	00000493          	li	s1,0
    80003680:	f99ff06f          	j	80003618 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003684:	00006517          	auipc	a0,0x6
    80003688:	bb450513          	addi	a0,a0,-1100 # 80009238 <CONSOLE_STATUS+0x228>
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	da4080e7          	jalr	-604(ra) # 80005430 <_Z11printStringPKc>
    finishedB = true;
    80003694:	00100793          	li	a5,1
    80003698:	00008717          	auipc	a4,0x8
    8000369c:	14f704a3          	sb	a5,329(a4) # 8000b7e1 <_ZL9finishedB>
    thread_dispatch();
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	bcc080e7          	jalr	-1076(ra) # 8000126c <_Z15thread_dispatchv>
}
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	00013903          	ld	s2,0(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret

00000000800036c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800036c0:	fe010113          	addi	sp,sp,-32
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	00813823          	sd	s0,16(sp)
    800036cc:	00913423          	sd	s1,8(sp)
    800036d0:	01213023          	sd	s2,0(sp)
    800036d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800036d8:	00000493          	li	s1,0
    800036dc:	0400006f          	j	8000371c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800036e0:	00006517          	auipc	a0,0x6
    800036e4:	b6850513          	addi	a0,a0,-1176 # 80009248 <CONSOLE_STATUS+0x238>
    800036e8:	00002097          	auipc	ra,0x2
    800036ec:	d48080e7          	jalr	-696(ra) # 80005430 <_Z11printStringPKc>
    800036f0:	00000613          	li	a2,0
    800036f4:	00a00593          	li	a1,10
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00002097          	auipc	ra,0x2
    80003700:	ee4080e7          	jalr	-284(ra) # 800055e0 <_Z8printIntiii>
    80003704:	00006517          	auipc	a0,0x6
    80003708:	d9450513          	addi	a0,a0,-620 # 80009498 <CONSOLE_STATUS+0x488>
    8000370c:	00002097          	auipc	ra,0x2
    80003710:	d24080e7          	jalr	-732(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003714:	0014849b          	addiw	s1,s1,1
    80003718:	0ff4f493          	andi	s1,s1,255
    8000371c:	00200793          	li	a5,2
    80003720:	fc97f0e3          	bgeu	a5,s1,800036e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003724:	00006517          	auipc	a0,0x6
    80003728:	b2c50513          	addi	a0,a0,-1236 # 80009250 <CONSOLE_STATUS+0x240>
    8000372c:	00002097          	auipc	ra,0x2
    80003730:	d04080e7          	jalr	-764(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003734:	00700313          	li	t1,7
    thread_dispatch();
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	b34080e7          	jalr	-1228(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003740:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003744:	00006517          	auipc	a0,0x6
    80003748:	b1c50513          	addi	a0,a0,-1252 # 80009260 <CONSOLE_STATUS+0x250>
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	ce4080e7          	jalr	-796(ra) # 80005430 <_Z11printStringPKc>
    80003754:	00000613          	li	a2,0
    80003758:	00a00593          	li	a1,10
    8000375c:	0009051b          	sext.w	a0,s2
    80003760:	00002097          	auipc	ra,0x2
    80003764:	e80080e7          	jalr	-384(ra) # 800055e0 <_Z8printIntiii>
    80003768:	00006517          	auipc	a0,0x6
    8000376c:	d3050513          	addi	a0,a0,-720 # 80009498 <CONSOLE_STATUS+0x488>
    80003770:	00002097          	auipc	ra,0x2
    80003774:	cc0080e7          	jalr	-832(ra) # 80005430 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003778:	00c00513          	li	a0,12
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	d30080e7          	jalr	-720(ra) # 800034ac <_ZL9fibonaccim>
    80003784:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	ae050513          	addi	a0,a0,-1312 # 80009268 <CONSOLE_STATUS+0x258>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	ca0080e7          	jalr	-864(ra) # 80005430 <_Z11printStringPKc>
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	0009051b          	sext.w	a0,s2
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	e3c080e7          	jalr	-452(ra) # 800055e0 <_Z8printIntiii>
    800037ac:	00006517          	auipc	a0,0x6
    800037b0:	cec50513          	addi	a0,a0,-788 # 80009498 <CONSOLE_STATUS+0x488>
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	c7c080e7          	jalr	-900(ra) # 80005430 <_Z11printStringPKc>
    800037bc:	0400006f          	j	800037fc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037c0:	00006517          	auipc	a0,0x6
    800037c4:	a8850513          	addi	a0,a0,-1400 # 80009248 <CONSOLE_STATUS+0x238>
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	c68080e7          	jalr	-920(ra) # 80005430 <_Z11printStringPKc>
    800037d0:	00000613          	li	a2,0
    800037d4:	00a00593          	li	a1,10
    800037d8:	00048513          	mv	a0,s1
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	e04080e7          	jalr	-508(ra) # 800055e0 <_Z8printIntiii>
    800037e4:	00006517          	auipc	a0,0x6
    800037e8:	cb450513          	addi	a0,a0,-844 # 80009498 <CONSOLE_STATUS+0x488>
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	c44080e7          	jalr	-956(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800037f4:	0014849b          	addiw	s1,s1,1
    800037f8:	0ff4f493          	andi	s1,s1,255
    800037fc:	00500793          	li	a5,5
    80003800:	fc97f0e3          	bgeu	a5,s1,800037c0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003804:	00006517          	auipc	a0,0x6
    80003808:	a1c50513          	addi	a0,a0,-1508 # 80009220 <CONSOLE_STATUS+0x210>
    8000380c:	00002097          	auipc	ra,0x2
    80003810:	c24080e7          	jalr	-988(ra) # 80005430 <_Z11printStringPKc>
    finishedC = true;
    80003814:	00100793          	li	a5,1
    80003818:	00008717          	auipc	a4,0x8
    8000381c:	fcf70523          	sb	a5,-54(a4) # 8000b7e2 <_ZL9finishedC>
    thread_dispatch();
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	a4c080e7          	jalr	-1460(ra) # 8000126c <_Z15thread_dispatchv>
}
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	00013903          	ld	s2,0(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003840:	fe010113          	addi	sp,sp,-32
    80003844:	00113c23          	sd	ra,24(sp)
    80003848:	00813823          	sd	s0,16(sp)
    8000384c:	00913423          	sd	s1,8(sp)
    80003850:	01213023          	sd	s2,0(sp)
    80003854:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003858:	00a00493          	li	s1,10
    8000385c:	0400006f          	j	8000389c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003860:	00006517          	auipc	a0,0x6
    80003864:	a1850513          	addi	a0,a0,-1512 # 80009278 <CONSOLE_STATUS+0x268>
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	bc8080e7          	jalr	-1080(ra) # 80005430 <_Z11printStringPKc>
    80003870:	00000613          	li	a2,0
    80003874:	00a00593          	li	a1,10
    80003878:	00048513          	mv	a0,s1
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	d64080e7          	jalr	-668(ra) # 800055e0 <_Z8printIntiii>
    80003884:	00006517          	auipc	a0,0x6
    80003888:	c1450513          	addi	a0,a0,-1004 # 80009498 <CONSOLE_STATUS+0x488>
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	ba4080e7          	jalr	-1116(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003894:	0014849b          	addiw	s1,s1,1
    80003898:	0ff4f493          	andi	s1,s1,255
    8000389c:	00c00793          	li	a5,12
    800038a0:	fc97f0e3          	bgeu	a5,s1,80003860 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800038a4:	00006517          	auipc	a0,0x6
    800038a8:	9dc50513          	addi	a0,a0,-1572 # 80009280 <CONSOLE_STATUS+0x270>
    800038ac:	00002097          	auipc	ra,0x2
    800038b0:	b84080e7          	jalr	-1148(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800038b4:	00500313          	li	t1,5
    thread_dispatch();
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	9b4080e7          	jalr	-1612(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800038c0:	01000513          	li	a0,16
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	be8080e7          	jalr	-1048(ra) # 800034ac <_ZL9fibonaccim>
    800038cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	9c050513          	addi	a0,a0,-1600 # 80009290 <CONSOLE_STATUS+0x280>
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	b58080e7          	jalr	-1192(ra) # 80005430 <_Z11printStringPKc>
    800038e0:	00000613          	li	a2,0
    800038e4:	00a00593          	li	a1,10
    800038e8:	0009051b          	sext.w	a0,s2
    800038ec:	00002097          	auipc	ra,0x2
    800038f0:	cf4080e7          	jalr	-780(ra) # 800055e0 <_Z8printIntiii>
    800038f4:	00006517          	auipc	a0,0x6
    800038f8:	ba450513          	addi	a0,a0,-1116 # 80009498 <CONSOLE_STATUS+0x488>
    800038fc:	00002097          	auipc	ra,0x2
    80003900:	b34080e7          	jalr	-1228(ra) # 80005430 <_Z11printStringPKc>
    80003904:	0400006f          	j	80003944 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	97050513          	addi	a0,a0,-1680 # 80009278 <CONSOLE_STATUS+0x268>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	b20080e7          	jalr	-1248(ra) # 80005430 <_Z11printStringPKc>
    80003918:	00000613          	li	a2,0
    8000391c:	00a00593          	li	a1,10
    80003920:	00048513          	mv	a0,s1
    80003924:	00002097          	auipc	ra,0x2
    80003928:	cbc080e7          	jalr	-836(ra) # 800055e0 <_Z8printIntiii>
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	b6c50513          	addi	a0,a0,-1172 # 80009498 <CONSOLE_STATUS+0x488>
    80003934:	00002097          	auipc	ra,0x2
    80003938:	afc080e7          	jalr	-1284(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000393c:	0014849b          	addiw	s1,s1,1
    80003940:	0ff4f493          	andi	s1,s1,255
    80003944:	00f00793          	li	a5,15
    80003948:	fc97f0e3          	bgeu	a5,s1,80003908 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000394c:	00006517          	auipc	a0,0x6
    80003950:	95450513          	addi	a0,a0,-1708 # 800092a0 <CONSOLE_STATUS+0x290>
    80003954:	00002097          	auipc	ra,0x2
    80003958:	adc080e7          	jalr	-1316(ra) # 80005430 <_Z11printStringPKc>
    finishedD = true;
    8000395c:	00100793          	li	a5,1
    80003960:	00008717          	auipc	a4,0x8
    80003964:	e8f701a3          	sb	a5,-381(a4) # 8000b7e3 <_ZL9finishedD>
    thread_dispatch();
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	904080e7          	jalr	-1788(ra) # 8000126c <_Z15thread_dispatchv>
}
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	00013903          	ld	s2,0(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret

0000000080003988 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003988:	fc010113          	addi	sp,sp,-64
    8000398c:	02113c23          	sd	ra,56(sp)
    80003990:	02813823          	sd	s0,48(sp)
    80003994:	02913423          	sd	s1,40(sp)
    80003998:	03213023          	sd	s2,32(sp)
    8000399c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800039a0:	02000513          	li	a0,32
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	468080e7          	jalr	1128(ra) # 80001e0c <_Znwm>
    800039ac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	5e8080e7          	jalr	1512(ra) # 80001f98 <_ZN6ThreadC1Ev>
    800039b8:	00008797          	auipc	a5,0x8
    800039bc:	b9078793          	addi	a5,a5,-1136 # 8000b548 <_ZTV7WorkerA+0x10>
    800039c0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800039c4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	8e850513          	addi	a0,a0,-1816 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800039d0:	00002097          	auipc	ra,0x2
    800039d4:	a60080e7          	jalr	-1440(ra) # 80005430 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800039d8:	02000513          	li	a0,32
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	430080e7          	jalr	1072(ra) # 80001e0c <_Znwm>
    800039e4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	5b0080e7          	jalr	1456(ra) # 80001f98 <_ZN6ThreadC1Ev>
    800039f0:	00008797          	auipc	a5,0x8
    800039f4:	b8078793          	addi	a5,a5,-1152 # 8000b570 <_ZTV7WorkerB+0x10>
    800039f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800039fc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003a00:	00006517          	auipc	a0,0x6
    80003a04:	8c850513          	addi	a0,a0,-1848 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	a28080e7          	jalr	-1496(ra) # 80005430 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003a10:	02000513          	li	a0,32
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	3f8080e7          	jalr	1016(ra) # 80001e0c <_Znwm>
    80003a1c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	578080e7          	jalr	1400(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80003a28:	00008797          	auipc	a5,0x8
    80003a2c:	b7078793          	addi	a5,a5,-1168 # 8000b598 <_ZTV7WorkerC+0x10>
    80003a30:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003a34:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003a38:	00006517          	auipc	a0,0x6
    80003a3c:	8a850513          	addi	a0,a0,-1880 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003a40:	00002097          	auipc	ra,0x2
    80003a44:	9f0080e7          	jalr	-1552(ra) # 80005430 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003a48:	02000513          	li	a0,32
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	3c0080e7          	jalr	960(ra) # 80001e0c <_Znwm>
    80003a54:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	540080e7          	jalr	1344(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80003a60:	00008797          	auipc	a5,0x8
    80003a64:	b6078793          	addi	a5,a5,-1184 # 8000b5c0 <_ZTV7WorkerD+0x10>
    80003a68:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003a6c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003a70:	00006517          	auipc	a0,0x6
    80003a74:	88850513          	addi	a0,a0,-1912 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003a78:	00002097          	auipc	ra,0x2
    80003a7c:	9b8080e7          	jalr	-1608(ra) # 80005430 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003a80:	00000493          	li	s1,0
    80003a84:	00300793          	li	a5,3
    80003a88:	0297c663          	blt	a5,s1,80003ab4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003a8c:	00349793          	slli	a5,s1,0x3
    80003a90:	fe040713          	addi	a4,s0,-32
    80003a94:	00f707b3          	add	a5,a4,a5
    80003a98:	fe07b503          	ld	a0,-32(a5)
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	428080e7          	jalr	1064(ra) # 80001ec4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003aa4:	0014849b          	addiw	s1,s1,1
    80003aa8:	fddff06f          	j	80003a84 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	4a8080e7          	jalr	1192(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	d2c7c783          	lbu	a5,-724(a5) # 8000b7e0 <_ZL9finishedA>
    80003abc:	fe0788e3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003ac0:	00008797          	auipc	a5,0x8
    80003ac4:	d217c783          	lbu	a5,-735(a5) # 8000b7e1 <_ZL9finishedB>
    80003ac8:	fe0782e3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003acc:	00008797          	auipc	a5,0x8
    80003ad0:	d167c783          	lbu	a5,-746(a5) # 8000b7e2 <_ZL9finishedC>
    80003ad4:	fc078ce3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	d0b7c783          	lbu	a5,-757(a5) # 8000b7e3 <_ZL9finishedD>
    80003ae0:	fc0786e3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003ae4:	fc040493          	addi	s1,s0,-64
    80003ae8:	0080006f          	j	80003af0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003aec:	00848493          	addi	s1,s1,8
    80003af0:	fe040793          	addi	a5,s0,-32
    80003af4:	08f48663          	beq	s1,a5,80003b80 <_Z20Threads_CPP_API_testv+0x1f8>
    80003af8:	0004b503          	ld	a0,0(s1)
    80003afc:	fe0508e3          	beqz	a0,80003aec <_Z20Threads_CPP_API_testv+0x164>
    80003b00:	00053783          	ld	a5,0(a0)
    80003b04:	0087b783          	ld	a5,8(a5)
    80003b08:	000780e7          	jalr	a5
    80003b0c:	fe1ff06f          	j	80003aec <_Z20Threads_CPP_API_testv+0x164>
    80003b10:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003b14:	00048513          	mv	a0,s1
    80003b18:	ffffe097          	auipc	ra,0xffffe
    80003b1c:	31c080e7          	jalr	796(ra) # 80001e34 <_ZdlPv>
    80003b20:	00090513          	mv	a0,s2
    80003b24:	00009097          	auipc	ra,0x9
    80003b28:	dc4080e7          	jalr	-572(ra) # 8000c8e8 <_Unwind_Resume>
    80003b2c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003b30:	00048513          	mv	a0,s1
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	300080e7          	jalr	768(ra) # 80001e34 <_ZdlPv>
    80003b3c:	00090513          	mv	a0,s2
    80003b40:	00009097          	auipc	ra,0x9
    80003b44:	da8080e7          	jalr	-600(ra) # 8000c8e8 <_Unwind_Resume>
    80003b48:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	2e4080e7          	jalr	740(ra) # 80001e34 <_ZdlPv>
    80003b58:	00090513          	mv	a0,s2
    80003b5c:	00009097          	auipc	ra,0x9
    80003b60:	d8c080e7          	jalr	-628(ra) # 8000c8e8 <_Unwind_Resume>
    80003b64:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	2c8080e7          	jalr	712(ra) # 80001e34 <_ZdlPv>
    80003b74:	00090513          	mv	a0,s2
    80003b78:	00009097          	auipc	ra,0x9
    80003b7c:	d70080e7          	jalr	-656(ra) # 8000c8e8 <_Unwind_Resume>
}
    80003b80:	03813083          	ld	ra,56(sp)
    80003b84:	03013403          	ld	s0,48(sp)
    80003b88:	02813483          	ld	s1,40(sp)
    80003b8c:	02013903          	ld	s2,32(sp)
    80003b90:	04010113          	addi	sp,sp,64
    80003b94:	00008067          	ret

0000000080003b98 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00113423          	sd	ra,8(sp)
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    80003ba8:	00008797          	auipc	a5,0x8
    80003bac:	9a078793          	addi	a5,a5,-1632 # 8000b548 <_ZTV7WorkerA+0x10>
    80003bb0:	00f53023          	sd	a5,0(a0)
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	1dc080e7          	jalr	476(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN7WorkerAD0Ev>:
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00113c23          	sd	ra,24(sp)
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	00050493          	mv	s1,a0
    80003be4:	00008797          	auipc	a5,0x8
    80003be8:	96478793          	addi	a5,a5,-1692 # 8000b548 <_ZTV7WorkerA+0x10>
    80003bec:	00f53023          	sd	a5,0(a0)
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	1a0080e7          	jalr	416(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003bf8:	00048513          	mv	a0,s1
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	238080e7          	jalr	568(ra) # 80001e34 <_ZdlPv>
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	00813023          	sd	s0,0(sp)
    80003c24:	01010413          	addi	s0,sp,16
    80003c28:	00008797          	auipc	a5,0x8
    80003c2c:	94878793          	addi	a5,a5,-1720 # 8000b570 <_ZTV7WorkerB+0x10>
    80003c30:	00f53023          	sd	a5,0(a0)
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	15c080e7          	jalr	348(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret

0000000080003c4c <_ZN7WorkerBD0Ev>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    80003c60:	00050493          	mv	s1,a0
    80003c64:	00008797          	auipc	a5,0x8
    80003c68:	90c78793          	addi	a5,a5,-1780 # 8000b570 <_ZTV7WorkerB+0x10>
    80003c6c:	00f53023          	sd	a5,0(a0)
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	120080e7          	jalr	288(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	1b8080e7          	jalr	440(ra) # 80001e34 <_ZdlPv>
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00813483          	ld	s1,8(sp)
    80003c90:	02010113          	addi	sp,sp,32
    80003c94:	00008067          	ret

0000000080003c98 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003c98:	ff010113          	addi	sp,sp,-16
    80003c9c:	00113423          	sd	ra,8(sp)
    80003ca0:	00813023          	sd	s0,0(sp)
    80003ca4:	01010413          	addi	s0,sp,16
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	8f078793          	addi	a5,a5,-1808 # 8000b598 <_ZTV7WorkerC+0x10>
    80003cb0:	00f53023          	sd	a5,0(a0)
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	0dc080e7          	jalr	220(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003cbc:	00813083          	ld	ra,8(sp)
    80003cc0:	00013403          	ld	s0,0(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret

0000000080003ccc <_ZN7WorkerCD0Ev>:
    80003ccc:	fe010113          	addi	sp,sp,-32
    80003cd0:	00113c23          	sd	ra,24(sp)
    80003cd4:	00813823          	sd	s0,16(sp)
    80003cd8:	00913423          	sd	s1,8(sp)
    80003cdc:	02010413          	addi	s0,sp,32
    80003ce0:	00050493          	mv	s1,a0
    80003ce4:	00008797          	auipc	a5,0x8
    80003ce8:	8b478793          	addi	a5,a5,-1868 # 8000b598 <_ZTV7WorkerC+0x10>
    80003cec:	00f53023          	sd	a5,0(a0)
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	0a0080e7          	jalr	160(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	138080e7          	jalr	312(ra) # 80001e34 <_ZdlPv>
    80003d04:	01813083          	ld	ra,24(sp)
    80003d08:	01013403          	ld	s0,16(sp)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret

0000000080003d18 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00113423          	sd	ra,8(sp)
    80003d20:	00813023          	sd	s0,0(sp)
    80003d24:	01010413          	addi	s0,sp,16
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	89878793          	addi	a5,a5,-1896 # 8000b5c0 <_ZTV7WorkerD+0x10>
    80003d30:	00f53023          	sd	a5,0(a0)
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	05c080e7          	jalr	92(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003d3c:	00813083          	ld	ra,8(sp)
    80003d40:	00013403          	ld	s0,0(sp)
    80003d44:	01010113          	addi	sp,sp,16
    80003d48:	00008067          	ret

0000000080003d4c <_ZN7WorkerDD0Ev>:
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00050493          	mv	s1,a0
    80003d64:	00008797          	auipc	a5,0x8
    80003d68:	85c78793          	addi	a5,a5,-1956 # 8000b5c0 <_ZTV7WorkerD+0x10>
    80003d6c:	00f53023          	sd	a5,0(a0)
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	020080e7          	jalr	32(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80003d78:	00048513          	mv	a0,s1
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	0b8080e7          	jalr	184(ra) # 80001e34 <_ZdlPv>
    80003d84:	01813083          	ld	ra,24(sp)
    80003d88:	01013403          	ld	s0,16(sp)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret

0000000080003d98 <_ZN7WorkerA3runEv>:
    void run() override {
    80003d98:	ff010113          	addi	sp,sp,-16
    80003d9c:	00113423          	sd	ra,8(sp)
    80003da0:	00813023          	sd	s0,0(sp)
    80003da4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003da8:	00000593          	li	a1,0
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	774080e7          	jalr	1908(ra) # 80003520 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003db4:	00813083          	ld	ra,8(sp)
    80003db8:	00013403          	ld	s0,0(sp)
    80003dbc:	01010113          	addi	sp,sp,16
    80003dc0:	00008067          	ret

0000000080003dc4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003dc4:	ff010113          	addi	sp,sp,-16
    80003dc8:	00113423          	sd	ra,8(sp)
    80003dcc:	00813023          	sd	s0,0(sp)
    80003dd0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003dd4:	00000593          	li	a1,0
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	814080e7          	jalr	-2028(ra) # 800035ec <_ZN7WorkerB11workerBodyBEPv>
    }
    80003de0:	00813083          	ld	ra,8(sp)
    80003de4:	00013403          	ld	s0,0(sp)
    80003de8:	01010113          	addi	sp,sp,16
    80003dec:	00008067          	ret

0000000080003df0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00113423          	sd	ra,8(sp)
    80003df8:	00813023          	sd	s0,0(sp)
    80003dfc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003e00:	00000593          	li	a1,0
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	8bc080e7          	jalr	-1860(ra) # 800036c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003e0c:	00813083          	ld	ra,8(sp)
    80003e10:	00013403          	ld	s0,0(sp)
    80003e14:	01010113          	addi	sp,sp,16
    80003e18:	00008067          	ret

0000000080003e1c <_ZN7WorkerD3runEv>:
    void run() override {
    80003e1c:	ff010113          	addi	sp,sp,-16
    80003e20:	00113423          	sd	ra,8(sp)
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003e2c:	00000593          	li	a1,0
    80003e30:	00000097          	auipc	ra,0x0
    80003e34:	a10080e7          	jalr	-1520(ra) # 80003840 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003e38:	00813083          	ld	ra,8(sp)
    80003e3c:	00013403          	ld	s0,0(sp)
    80003e40:	01010113          	addi	sp,sp,16
    80003e44:	00008067          	ret

0000000080003e48 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003e48:	f8010113          	addi	sp,sp,-128
    80003e4c:	06113c23          	sd	ra,120(sp)
    80003e50:	06813823          	sd	s0,112(sp)
    80003e54:	06913423          	sd	s1,104(sp)
    80003e58:	07213023          	sd	s2,96(sp)
    80003e5c:	05313c23          	sd	s3,88(sp)
    80003e60:	05413823          	sd	s4,80(sp)
    80003e64:	05513423          	sd	s5,72(sp)
    80003e68:	05613023          	sd	s6,64(sp)
    80003e6c:	03713c23          	sd	s7,56(sp)
    80003e70:	03813823          	sd	s8,48(sp)
    80003e74:	03913423          	sd	s9,40(sp)
    80003e78:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003e7c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003e80:	00005517          	auipc	a0,0x5
    80003e84:	2b050513          	addi	a0,a0,688 # 80009130 <CONSOLE_STATUS+0x120>
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	5a8080e7          	jalr	1448(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80003e90:	01e00593          	li	a1,30
    80003e94:	f8040493          	addi	s1,s0,-128
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	61c080e7          	jalr	1564(ra) # 800054b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ea4:	00048513          	mv	a0,s1
    80003ea8:	00001097          	auipc	ra,0x1
    80003eac:	6e8080e7          	jalr	1768(ra) # 80005590 <_Z11stringToIntPKc>
    80003eb0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003eb4:	00005517          	auipc	a0,0x5
    80003eb8:	29c50513          	addi	a0,a0,668 # 80009150 <CONSOLE_STATUS+0x140>
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	574080e7          	jalr	1396(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80003ec4:	01e00593          	li	a1,30
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	00001097          	auipc	ra,0x1
    80003ed0:	5ec080e7          	jalr	1516(ra) # 800054b8 <_Z9getStringPci>
    n = stringToInt(input);
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	6b8080e7          	jalr	1720(ra) # 80005590 <_Z11stringToIntPKc>
    80003ee0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003ee4:	00005517          	auipc	a0,0x5
    80003ee8:	28c50513          	addi	a0,a0,652 # 80009170 <CONSOLE_STATUS+0x160>
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	544080e7          	jalr	1348(ra) # 80005430 <_Z11printStringPKc>
    printInt(threadNum);
    80003ef4:	00000613          	li	a2,0
    80003ef8:	00a00593          	li	a1,10
    80003efc:	00098513          	mv	a0,s3
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	6e0080e7          	jalr	1760(ra) # 800055e0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003f08:	00005517          	auipc	a0,0x5
    80003f0c:	28050513          	addi	a0,a0,640 # 80009188 <CONSOLE_STATUS+0x178>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	520080e7          	jalr	1312(ra) # 80005430 <_Z11printStringPKc>
    printInt(n);
    80003f18:	00000613          	li	a2,0
    80003f1c:	00a00593          	li	a1,10
    80003f20:	00048513          	mv	a0,s1
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	6bc080e7          	jalr	1724(ra) # 800055e0 <_Z8printIntiii>
    printString(".\n");
    80003f2c:	00005517          	auipc	a0,0x5
    80003f30:	27450513          	addi	a0,a0,628 # 800091a0 <CONSOLE_STATUS+0x190>
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	4fc080e7          	jalr	1276(ra) # 80005430 <_Z11printStringPKc>
    if (threadNum > n) {
    80003f3c:	0334c463          	blt	s1,s3,80003f64 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003f40:	03305c63          	blez	s3,80003f78 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003f44:	03800513          	li	a0,56
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	ec4080e7          	jalr	-316(ra) # 80001e0c <_Znwm>
    80003f50:	00050a93          	mv	s5,a0
    80003f54:	00048593          	mv	a1,s1
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	7a8080e7          	jalr	1960(ra) # 80005700 <_ZN9BufferCPPC1Ei>
    80003f60:	0300006f          	j	80003f90 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	24450513          	addi	a0,a0,580 # 800091a8 <CONSOLE_STATUS+0x198>
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	4c4080e7          	jalr	1220(ra) # 80005430 <_Z11printStringPKc>
        return;
    80003f74:	0140006f          	j	80003f88 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003f78:	00005517          	auipc	a0,0x5
    80003f7c:	27050513          	addi	a0,a0,624 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	4b0080e7          	jalr	1200(ra) # 80005430 <_Z11printStringPKc>
        return;
    80003f88:	000c0113          	mv	sp,s8
    80003f8c:	2140006f          	j	800041a0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003f90:	01000513          	li	a0,16
    80003f94:	ffffe097          	auipc	ra,0xffffe
    80003f98:	e78080e7          	jalr	-392(ra) # 80001e0c <_Znwm>
    80003f9c:	00050913          	mv	s2,a0
    80003fa0:	00000593          	li	a1,0
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	078080e7          	jalr	120(ra) # 8000201c <_ZN9SemaphoreC1Ej>
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	8527b223          	sd	s2,-1980(a5) # 8000b7f0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003fb4:	00399793          	slli	a5,s3,0x3
    80003fb8:	00f78793          	addi	a5,a5,15
    80003fbc:	ff07f793          	andi	a5,a5,-16
    80003fc0:	40f10133          	sub	sp,sp,a5
    80003fc4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003fc8:	0019871b          	addiw	a4,s3,1
    80003fcc:	00171793          	slli	a5,a4,0x1
    80003fd0:	00e787b3          	add	a5,a5,a4
    80003fd4:	00379793          	slli	a5,a5,0x3
    80003fd8:	00f78793          	addi	a5,a5,15
    80003fdc:	ff07f793          	andi	a5,a5,-16
    80003fe0:	40f10133          	sub	sp,sp,a5
    80003fe4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003fe8:	00199493          	slli	s1,s3,0x1
    80003fec:	013484b3          	add	s1,s1,s3
    80003ff0:	00349493          	slli	s1,s1,0x3
    80003ff4:	009b04b3          	add	s1,s6,s1
    80003ff8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ffc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004000:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004004:	02800513          	li	a0,40
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	e04080e7          	jalr	-508(ra) # 80001e0c <_Znwm>
    80004010:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	f84080e7          	jalr	-124(ra) # 80001f98 <_ZN6ThreadC1Ev>
    8000401c:	00007797          	auipc	a5,0x7
    80004020:	61c78793          	addi	a5,a5,1564 # 8000b638 <_ZTV8Consumer+0x10>
    80004024:	00fbb023          	sd	a5,0(s7)
    80004028:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000402c:	000b8513          	mv	a0,s7
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	e94080e7          	jalr	-364(ra) # 80001ec4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004038:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000403c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004040:	00007797          	auipc	a5,0x7
    80004044:	7b07b783          	ld	a5,1968(a5) # 8000b7f0 <_ZL10waitForAll>
    80004048:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000404c:	02800513          	li	a0,40
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	dbc080e7          	jalr	-580(ra) # 80001e0c <_Znwm>
    80004058:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	f3c080e7          	jalr	-196(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80004064:	00007797          	auipc	a5,0x7
    80004068:	58478793          	addi	a5,a5,1412 # 8000b5e8 <_ZTV16ProducerKeyborad+0x10>
    8000406c:	00f4b023          	sd	a5,0(s1)
    80004070:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004074:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004078:	00048513          	mv	a0,s1
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	e48080e7          	jalr	-440(ra) # 80001ec4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004084:	00100913          	li	s2,1
    80004088:	0300006f          	j	800040b8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000408c:	00007797          	auipc	a5,0x7
    80004090:	58478793          	addi	a5,a5,1412 # 8000b610 <_ZTV8Producer+0x10>
    80004094:	00fcb023          	sd	a5,0(s9)
    80004098:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000409c:	00391793          	slli	a5,s2,0x3
    800040a0:	00fa07b3          	add	a5,s4,a5
    800040a4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800040a8:	000c8513          	mv	a0,s9
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	e18080e7          	jalr	-488(ra) # 80001ec4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800040b4:	0019091b          	addiw	s2,s2,1
    800040b8:	05395263          	bge	s2,s3,800040fc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800040bc:	00191493          	slli	s1,s2,0x1
    800040c0:	012484b3          	add	s1,s1,s2
    800040c4:	00349493          	slli	s1,s1,0x3
    800040c8:	009b04b3          	add	s1,s6,s1
    800040cc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800040d0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800040d4:	00007797          	auipc	a5,0x7
    800040d8:	71c7b783          	ld	a5,1820(a5) # 8000b7f0 <_ZL10waitForAll>
    800040dc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800040e0:	02800513          	li	a0,40
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	d28080e7          	jalr	-728(ra) # 80001e0c <_Znwm>
    800040ec:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	ea8080e7          	jalr	-344(ra) # 80001f98 <_ZN6ThreadC1Ev>
    800040f8:	f95ff06f          	j	8000408c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	e58080e7          	jalr	-424(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004104:	00000493          	li	s1,0
    80004108:	0099ce63          	blt	s3,s1,80004124 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000410c:	00007517          	auipc	a0,0x7
    80004110:	6e453503          	ld	a0,1764(a0) # 8000b7f0 <_ZL10waitForAll>
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	f40080e7          	jalr	-192(ra) # 80002054 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000411c:	0014849b          	addiw	s1,s1,1
    80004120:	fe9ff06f          	j	80004108 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004124:	00007517          	auipc	a0,0x7
    80004128:	6cc53503          	ld	a0,1740(a0) # 8000b7f0 <_ZL10waitForAll>
    8000412c:	00050863          	beqz	a0,8000413c <_Z20testConsumerProducerv+0x2f4>
    80004130:	00053783          	ld	a5,0(a0)
    80004134:	0087b783          	ld	a5,8(a5)
    80004138:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000413c:	00000493          	li	s1,0
    80004140:	0080006f          	j	80004148 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004144:	0014849b          	addiw	s1,s1,1
    80004148:	0334d263          	bge	s1,s3,8000416c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000414c:	00349793          	slli	a5,s1,0x3
    80004150:	00fa07b3          	add	a5,s4,a5
    80004154:	0007b503          	ld	a0,0(a5)
    80004158:	fe0506e3          	beqz	a0,80004144 <_Z20testConsumerProducerv+0x2fc>
    8000415c:	00053783          	ld	a5,0(a0)
    80004160:	0087b783          	ld	a5,8(a5)
    80004164:	000780e7          	jalr	a5
    80004168:	fddff06f          	j	80004144 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000416c:	000b8a63          	beqz	s7,80004180 <_Z20testConsumerProducerv+0x338>
    80004170:	000bb783          	ld	a5,0(s7)
    80004174:	0087b783          	ld	a5,8(a5)
    80004178:	000b8513          	mv	a0,s7
    8000417c:	000780e7          	jalr	a5
    delete buffer;
    80004180:	000a8e63          	beqz	s5,8000419c <_Z20testConsumerProducerv+0x354>
    80004184:	000a8513          	mv	a0,s5
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	870080e7          	jalr	-1936(ra) # 800059f8 <_ZN9BufferCPPD1Ev>
    80004190:	000a8513          	mv	a0,s5
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	ca0080e7          	jalr	-864(ra) # 80001e34 <_ZdlPv>
    8000419c:	000c0113          	mv	sp,s8
}
    800041a0:	f8040113          	addi	sp,s0,-128
    800041a4:	07813083          	ld	ra,120(sp)
    800041a8:	07013403          	ld	s0,112(sp)
    800041ac:	06813483          	ld	s1,104(sp)
    800041b0:	06013903          	ld	s2,96(sp)
    800041b4:	05813983          	ld	s3,88(sp)
    800041b8:	05013a03          	ld	s4,80(sp)
    800041bc:	04813a83          	ld	s5,72(sp)
    800041c0:	04013b03          	ld	s6,64(sp)
    800041c4:	03813b83          	ld	s7,56(sp)
    800041c8:	03013c03          	ld	s8,48(sp)
    800041cc:	02813c83          	ld	s9,40(sp)
    800041d0:	08010113          	addi	sp,sp,128
    800041d4:	00008067          	ret
    800041d8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800041dc:	000a8513          	mv	a0,s5
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	c54080e7          	jalr	-940(ra) # 80001e34 <_ZdlPv>
    800041e8:	00048513          	mv	a0,s1
    800041ec:	00008097          	auipc	ra,0x8
    800041f0:	6fc080e7          	jalr	1788(ra) # 8000c8e8 <_Unwind_Resume>
    800041f4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800041f8:	00090513          	mv	a0,s2
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	c38080e7          	jalr	-968(ra) # 80001e34 <_ZdlPv>
    80004204:	00048513          	mv	a0,s1
    80004208:	00008097          	auipc	ra,0x8
    8000420c:	6e0080e7          	jalr	1760(ra) # 8000c8e8 <_Unwind_Resume>
    80004210:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004214:	000b8513          	mv	a0,s7
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	c1c080e7          	jalr	-996(ra) # 80001e34 <_ZdlPv>
    80004220:	00048513          	mv	a0,s1
    80004224:	00008097          	auipc	ra,0x8
    80004228:	6c4080e7          	jalr	1732(ra) # 8000c8e8 <_Unwind_Resume>
    8000422c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004230:	00048513          	mv	a0,s1
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	c00080e7          	jalr	-1024(ra) # 80001e34 <_ZdlPv>
    8000423c:	00090513          	mv	a0,s2
    80004240:	00008097          	auipc	ra,0x8
    80004244:	6a8080e7          	jalr	1704(ra) # 8000c8e8 <_Unwind_Resume>
    80004248:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000424c:	000c8513          	mv	a0,s9
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	be4080e7          	jalr	-1052(ra) # 80001e34 <_ZdlPv>
    80004258:	00048513          	mv	a0,s1
    8000425c:	00008097          	auipc	ra,0x8
    80004260:	68c080e7          	jalr	1676(ra) # 8000c8e8 <_Unwind_Resume>

0000000080004264 <_ZN8Consumer3runEv>:
    void run() override {
    80004264:	fd010113          	addi	sp,sp,-48
    80004268:	02113423          	sd	ra,40(sp)
    8000426c:	02813023          	sd	s0,32(sp)
    80004270:	00913c23          	sd	s1,24(sp)
    80004274:	01213823          	sd	s2,16(sp)
    80004278:	01313423          	sd	s3,8(sp)
    8000427c:	03010413          	addi	s0,sp,48
    80004280:	00050913          	mv	s2,a0
        int i = 0;
    80004284:	00000993          	li	s3,0
    80004288:	0100006f          	j	80004298 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000428c:	00a00513          	li	a0,10
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	e44080e7          	jalr	-444(ra) # 800020d4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004298:	00007797          	auipc	a5,0x7
    8000429c:	5507a783          	lw	a5,1360(a5) # 8000b7e8 <_ZL9threadEnd>
    800042a0:	04079a63          	bnez	a5,800042f4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800042a4:	02093783          	ld	a5,32(s2)
    800042a8:	0087b503          	ld	a0,8(a5)
    800042ac:	00001097          	auipc	ra,0x1
    800042b0:	638080e7          	jalr	1592(ra) # 800058e4 <_ZN9BufferCPP3getEv>
            i++;
    800042b4:	0019849b          	addiw	s1,s3,1
    800042b8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800042bc:	0ff57513          	andi	a0,a0,255
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	e14080e7          	jalr	-492(ra) # 800020d4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800042c8:	05000793          	li	a5,80
    800042cc:	02f4e4bb          	remw	s1,s1,a5
    800042d0:	fc0494e3          	bnez	s1,80004298 <_ZN8Consumer3runEv+0x34>
    800042d4:	fb9ff06f          	j	8000428c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800042d8:	02093783          	ld	a5,32(s2)
    800042dc:	0087b503          	ld	a0,8(a5)
    800042e0:	00001097          	auipc	ra,0x1
    800042e4:	604080e7          	jalr	1540(ra) # 800058e4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800042e8:	0ff57513          	andi	a0,a0,255
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	de8080e7          	jalr	-536(ra) # 800020d4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800042f4:	02093783          	ld	a5,32(s2)
    800042f8:	0087b503          	ld	a0,8(a5)
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	674080e7          	jalr	1652(ra) # 80005970 <_ZN9BufferCPP6getCntEv>
    80004304:	fca04ae3          	bgtz	a0,800042d8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004308:	02093783          	ld	a5,32(s2)
    8000430c:	0107b503          	ld	a0,16(a5)
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	d70080e7          	jalr	-656(ra) # 80002080 <_ZN9Semaphore6signalEv>
    }
    80004318:	02813083          	ld	ra,40(sp)
    8000431c:	02013403          	ld	s0,32(sp)
    80004320:	01813483          	ld	s1,24(sp)
    80004324:	01013903          	ld	s2,16(sp)
    80004328:	00813983          	ld	s3,8(sp)
    8000432c:	03010113          	addi	sp,sp,48
    80004330:	00008067          	ret

0000000080004334 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004334:	ff010113          	addi	sp,sp,-16
    80004338:	00113423          	sd	ra,8(sp)
    8000433c:	00813023          	sd	s0,0(sp)
    80004340:	01010413          	addi	s0,sp,16
    80004344:	00007797          	auipc	a5,0x7
    80004348:	2f478793          	addi	a5,a5,756 # 8000b638 <_ZTV8Consumer+0x10>
    8000434c:	00f53023          	sd	a5,0(a0)
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	a40080e7          	jalr	-1472(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80004358:	00813083          	ld	ra,8(sp)
    8000435c:	00013403          	ld	s0,0(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_ZN8ConsumerD0Ev>:
    80004368:	fe010113          	addi	sp,sp,-32
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	02010413          	addi	s0,sp,32
    8000437c:	00050493          	mv	s1,a0
    80004380:	00007797          	auipc	a5,0x7
    80004384:	2b878793          	addi	a5,a5,696 # 8000b638 <_ZTV8Consumer+0x10>
    80004388:	00f53023          	sd	a5,0(a0)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	a04080e7          	jalr	-1532(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80004394:	00048513          	mv	a0,s1
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	a9c080e7          	jalr	-1380(ra) # 80001e34 <_ZdlPv>
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00008067          	ret

00000000800043b4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
    800043c4:	00007797          	auipc	a5,0x7
    800043c8:	22478793          	addi	a5,a5,548 # 8000b5e8 <_ZTV16ProducerKeyborad+0x10>
    800043cc:	00f53023          	sd	a5,0(a0)
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	9c0080e7          	jalr	-1600(ra) # 80001d90 <_ZN6ThreadD1Ev>
    800043d8:	00813083          	ld	ra,8(sp)
    800043dc:	00013403          	ld	s0,0(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <_ZN16ProducerKeyboradD0Ev>:
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	00050493          	mv	s1,a0
    80004400:	00007797          	auipc	a5,0x7
    80004404:	1e878793          	addi	a5,a5,488 # 8000b5e8 <_ZTV16ProducerKeyborad+0x10>
    80004408:	00f53023          	sd	a5,0(a0)
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	984080e7          	jalr	-1660(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80004414:	00048513          	mv	a0,s1
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	a1c080e7          	jalr	-1508(ra) # 80001e34 <_ZdlPv>
    80004420:	01813083          	ld	ra,24(sp)
    80004424:	01013403          	ld	s0,16(sp)
    80004428:	00813483          	ld	s1,8(sp)
    8000442c:	02010113          	addi	sp,sp,32
    80004430:	00008067          	ret

0000000080004434 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00007797          	auipc	a5,0x7
    80004448:	1cc78793          	addi	a5,a5,460 # 8000b610 <_ZTV8Producer+0x10>
    8000444c:	00f53023          	sd	a5,0(a0)
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	940080e7          	jalr	-1728(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80004458:	00813083          	ld	ra,8(sp)
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	01010113          	addi	sp,sp,16
    80004464:	00008067          	ret

0000000080004468 <_ZN8ProducerD0Ev>:
    80004468:	fe010113          	addi	sp,sp,-32
    8000446c:	00113c23          	sd	ra,24(sp)
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00913423          	sd	s1,8(sp)
    80004478:	02010413          	addi	s0,sp,32
    8000447c:	00050493          	mv	s1,a0
    80004480:	00007797          	auipc	a5,0x7
    80004484:	19078793          	addi	a5,a5,400 # 8000b610 <_ZTV8Producer+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	904080e7          	jalr	-1788(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80004494:	00048513          	mv	a0,s1
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	99c080e7          	jalr	-1636(ra) # 80001e34 <_ZdlPv>
    800044a0:	01813083          	ld	ra,24(sp)
    800044a4:	01013403          	ld	s0,16(sp)
    800044a8:	00813483          	ld	s1,8(sp)
    800044ac:	02010113          	addi	sp,sp,32
    800044b0:	00008067          	ret

00000000800044b4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800044b4:	fe010113          	addi	sp,sp,-32
    800044b8:	00113c23          	sd	ra,24(sp)
    800044bc:	00813823          	sd	s0,16(sp)
    800044c0:	00913423          	sd	s1,8(sp)
    800044c4:	02010413          	addi	s0,sp,32
    800044c8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800044cc:	ffffd097          	auipc	ra,0xffffd
    800044d0:	f2c080e7          	jalr	-212(ra) # 800013f8 <_Z4getcv>
    800044d4:	0005059b          	sext.w	a1,a0
    800044d8:	01b00793          	li	a5,27
    800044dc:	00f58c63          	beq	a1,a5,800044f4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800044e0:	0204b783          	ld	a5,32(s1)
    800044e4:	0087b503          	ld	a0,8(a5)
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	36c080e7          	jalr	876(ra) # 80005854 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800044f0:	fddff06f          	j	800044cc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800044f4:	00100793          	li	a5,1
    800044f8:	00007717          	auipc	a4,0x7
    800044fc:	2ef72823          	sw	a5,752(a4) # 8000b7e8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004500:	0204b783          	ld	a5,32(s1)
    80004504:	02100593          	li	a1,33
    80004508:	0087b503          	ld	a0,8(a5)
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	348080e7          	jalr	840(ra) # 80005854 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004514:	0204b783          	ld	a5,32(s1)
    80004518:	0107b503          	ld	a0,16(a5)
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	b64080e7          	jalr	-1180(ra) # 80002080 <_ZN9Semaphore6signalEv>
    }
    80004524:	01813083          	ld	ra,24(sp)
    80004528:	01013403          	ld	s0,16(sp)
    8000452c:	00813483          	ld	s1,8(sp)
    80004530:	02010113          	addi	sp,sp,32
    80004534:	00008067          	ret

0000000080004538 <_ZN8Producer3runEv>:
    void run() override {
    80004538:	fe010113          	addi	sp,sp,-32
    8000453c:	00113c23          	sd	ra,24(sp)
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00913423          	sd	s1,8(sp)
    80004548:	01213023          	sd	s2,0(sp)
    8000454c:	02010413          	addi	s0,sp,32
    80004550:	00050493          	mv	s1,a0
        int i = 0;
    80004554:	00000913          	li	s2,0
        while (!threadEnd) {
    80004558:	00007797          	auipc	a5,0x7
    8000455c:	2907a783          	lw	a5,656(a5) # 8000b7e8 <_ZL9threadEnd>
    80004560:	04079263          	bnez	a5,800045a4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004564:	0204b783          	ld	a5,32(s1)
    80004568:	0007a583          	lw	a1,0(a5)
    8000456c:	0305859b          	addiw	a1,a1,48
    80004570:	0087b503          	ld	a0,8(a5)
    80004574:	00001097          	auipc	ra,0x1
    80004578:	2e0080e7          	jalr	736(ra) # 80005854 <_ZN9BufferCPP3putEi>
            i++;
    8000457c:	0019071b          	addiw	a4,s2,1
    80004580:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004584:	0204b783          	ld	a5,32(s1)
    80004588:	0007a783          	lw	a5,0(a5)
    8000458c:	00e787bb          	addw	a5,a5,a4
    80004590:	00500513          	li	a0,5
    80004594:	02a7e53b          	remw	a0,a5,a0
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	9e4080e7          	jalr	-1564(ra) # 80001f7c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800045a0:	fb9ff06f          	j	80004558 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800045a4:	0204b783          	ld	a5,32(s1)
    800045a8:	0107b503          	ld	a0,16(a5)
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	ad4080e7          	jalr	-1324(ra) # 80002080 <_ZN9Semaphore6signalEv>
    }
    800045b4:	01813083          	ld	ra,24(sp)
    800045b8:	01013403          	ld	s0,16(sp)
    800045bc:	00813483          	ld	s1,8(sp)
    800045c0:	00013903          	ld	s2,0(sp)
    800045c4:	02010113          	addi	sp,sp,32
    800045c8:	00008067          	ret

00000000800045cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800045cc:	fe010113          	addi	sp,sp,-32
    800045d0:	00113c23          	sd	ra,24(sp)
    800045d4:	00813823          	sd	s0,16(sp)
    800045d8:	00913423          	sd	s1,8(sp)
    800045dc:	01213023          	sd	s2,0(sp)
    800045e0:	02010413          	addi	s0,sp,32
    800045e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800045e8:	00100793          	li	a5,1
    800045ec:	02a7f863          	bgeu	a5,a0,8000461c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800045f0:	00a00793          	li	a5,10
    800045f4:	02f577b3          	remu	a5,a0,a5
    800045f8:	02078e63          	beqz	a5,80004634 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800045fc:	fff48513          	addi	a0,s1,-1
    80004600:	00000097          	auipc	ra,0x0
    80004604:	fcc080e7          	jalr	-52(ra) # 800045cc <_ZL9fibonaccim>
    80004608:	00050913          	mv	s2,a0
    8000460c:	ffe48513          	addi	a0,s1,-2
    80004610:	00000097          	auipc	ra,0x0
    80004614:	fbc080e7          	jalr	-68(ra) # 800045cc <_ZL9fibonaccim>
    80004618:	00a90533          	add	a0,s2,a0
}
    8000461c:	01813083          	ld	ra,24(sp)
    80004620:	01013403          	ld	s0,16(sp)
    80004624:	00813483          	ld	s1,8(sp)
    80004628:	00013903          	ld	s2,0(sp)
    8000462c:	02010113          	addi	sp,sp,32
    80004630:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	c38080e7          	jalr	-968(ra) # 8000126c <_Z15thread_dispatchv>
    8000463c:	fc1ff06f          	j	800045fc <_ZL9fibonaccim+0x30>

0000000080004640 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004640:	fe010113          	addi	sp,sp,-32
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00813823          	sd	s0,16(sp)
    8000464c:	00913423          	sd	s1,8(sp)
    80004650:	01213023          	sd	s2,0(sp)
    80004654:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004658:	00a00493          	li	s1,10
    8000465c:	0400006f          	j	8000469c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004660:	00005517          	auipc	a0,0x5
    80004664:	c1850513          	addi	a0,a0,-1000 # 80009278 <CONSOLE_STATUS+0x268>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	dc8080e7          	jalr	-568(ra) # 80005430 <_Z11printStringPKc>
    80004670:	00000613          	li	a2,0
    80004674:	00a00593          	li	a1,10
    80004678:	00048513          	mv	a0,s1
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	f64080e7          	jalr	-156(ra) # 800055e0 <_Z8printIntiii>
    80004684:	00005517          	auipc	a0,0x5
    80004688:	e1450513          	addi	a0,a0,-492 # 80009498 <CONSOLE_STATUS+0x488>
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	da4080e7          	jalr	-604(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004694:	0014849b          	addiw	s1,s1,1
    80004698:	0ff4f493          	andi	s1,s1,255
    8000469c:	00c00793          	li	a5,12
    800046a0:	fc97f0e3          	bgeu	a5,s1,80004660 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800046a4:	00005517          	auipc	a0,0x5
    800046a8:	bdc50513          	addi	a0,a0,-1060 # 80009280 <CONSOLE_STATUS+0x270>
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	d84080e7          	jalr	-636(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800046b4:	00500313          	li	t1,5
    thread_dispatch();
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	bb4080e7          	jalr	-1100(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800046c0:	01000513          	li	a0,16
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	f08080e7          	jalr	-248(ra) # 800045cc <_ZL9fibonaccim>
    800046cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800046d0:	00005517          	auipc	a0,0x5
    800046d4:	bc050513          	addi	a0,a0,-1088 # 80009290 <CONSOLE_STATUS+0x280>
    800046d8:	00001097          	auipc	ra,0x1
    800046dc:	d58080e7          	jalr	-680(ra) # 80005430 <_Z11printStringPKc>
    800046e0:	00000613          	li	a2,0
    800046e4:	00a00593          	li	a1,10
    800046e8:	0009051b          	sext.w	a0,s2
    800046ec:	00001097          	auipc	ra,0x1
    800046f0:	ef4080e7          	jalr	-268(ra) # 800055e0 <_Z8printIntiii>
    800046f4:	00005517          	auipc	a0,0x5
    800046f8:	da450513          	addi	a0,a0,-604 # 80009498 <CONSOLE_STATUS+0x488>
    800046fc:	00001097          	auipc	ra,0x1
    80004700:	d34080e7          	jalr	-716(ra) # 80005430 <_Z11printStringPKc>
    80004704:	0400006f          	j	80004744 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004708:	00005517          	auipc	a0,0x5
    8000470c:	b7050513          	addi	a0,a0,-1168 # 80009278 <CONSOLE_STATUS+0x268>
    80004710:	00001097          	auipc	ra,0x1
    80004714:	d20080e7          	jalr	-736(ra) # 80005430 <_Z11printStringPKc>
    80004718:	00000613          	li	a2,0
    8000471c:	00a00593          	li	a1,10
    80004720:	00048513          	mv	a0,s1
    80004724:	00001097          	auipc	ra,0x1
    80004728:	ebc080e7          	jalr	-324(ra) # 800055e0 <_Z8printIntiii>
    8000472c:	00005517          	auipc	a0,0x5
    80004730:	d6c50513          	addi	a0,a0,-660 # 80009498 <CONSOLE_STATUS+0x488>
    80004734:	00001097          	auipc	ra,0x1
    80004738:	cfc080e7          	jalr	-772(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000473c:	0014849b          	addiw	s1,s1,1
    80004740:	0ff4f493          	andi	s1,s1,255
    80004744:	00f00793          	li	a5,15
    80004748:	fc97f0e3          	bgeu	a5,s1,80004708 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	b5450513          	addi	a0,a0,-1196 # 800092a0 <CONSOLE_STATUS+0x290>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	cdc080e7          	jalr	-804(ra) # 80005430 <_Z11printStringPKc>
    finishedD = true;
    8000475c:	00100793          	li	a5,1
    80004760:	00007717          	auipc	a4,0x7
    80004764:	08f70c23          	sb	a5,152(a4) # 8000b7f8 <_ZL9finishedD>
    thread_dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	b04080e7          	jalr	-1276(ra) # 8000126c <_Z15thread_dispatchv>
}
    80004770:	01813083          	ld	ra,24(sp)
    80004774:	01013403          	ld	s0,16(sp)
    80004778:	00813483          	ld	s1,8(sp)
    8000477c:	00013903          	ld	s2,0(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret

0000000080004788 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	00913423          	sd	s1,8(sp)
    80004798:	01213023          	sd	s2,0(sp)
    8000479c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800047a0:	00000493          	li	s1,0
    800047a4:	0400006f          	j	800047e4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800047a8:	00005517          	auipc	a0,0x5
    800047ac:	aa050513          	addi	a0,a0,-1376 # 80009248 <CONSOLE_STATUS+0x238>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	c80080e7          	jalr	-896(ra) # 80005430 <_Z11printStringPKc>
    800047b8:	00000613          	li	a2,0
    800047bc:	00a00593          	li	a1,10
    800047c0:	00048513          	mv	a0,s1
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	e1c080e7          	jalr	-484(ra) # 800055e0 <_Z8printIntiii>
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	ccc50513          	addi	a0,a0,-820 # 80009498 <CONSOLE_STATUS+0x488>
    800047d4:	00001097          	auipc	ra,0x1
    800047d8:	c5c080e7          	jalr	-932(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800047dc:	0014849b          	addiw	s1,s1,1
    800047e0:	0ff4f493          	andi	s1,s1,255
    800047e4:	00200793          	li	a5,2
    800047e8:	fc97f0e3          	bgeu	a5,s1,800047a8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800047ec:	00005517          	auipc	a0,0x5
    800047f0:	a6450513          	addi	a0,a0,-1436 # 80009250 <CONSOLE_STATUS+0x240>
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	c3c080e7          	jalr	-964(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800047fc:	00700313          	li	t1,7
    thread_dispatch();
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	a6c080e7          	jalr	-1428(ra) # 8000126c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004808:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	a5450513          	addi	a0,a0,-1452 # 80009260 <CONSOLE_STATUS+0x250>
    80004814:	00001097          	auipc	ra,0x1
    80004818:	c1c080e7          	jalr	-996(ra) # 80005430 <_Z11printStringPKc>
    8000481c:	00000613          	li	a2,0
    80004820:	00a00593          	li	a1,10
    80004824:	0009051b          	sext.w	a0,s2
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	db8080e7          	jalr	-584(ra) # 800055e0 <_Z8printIntiii>
    80004830:	00005517          	auipc	a0,0x5
    80004834:	c6850513          	addi	a0,a0,-920 # 80009498 <CONSOLE_STATUS+0x488>
    80004838:	00001097          	auipc	ra,0x1
    8000483c:	bf8080e7          	jalr	-1032(ra) # 80005430 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004840:	00c00513          	li	a0,12
    80004844:	00000097          	auipc	ra,0x0
    80004848:	d88080e7          	jalr	-632(ra) # 800045cc <_ZL9fibonaccim>
    8000484c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	a1850513          	addi	a0,a0,-1512 # 80009268 <CONSOLE_STATUS+0x258>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	bd8080e7          	jalr	-1064(ra) # 80005430 <_Z11printStringPKc>
    80004860:	00000613          	li	a2,0
    80004864:	00a00593          	li	a1,10
    80004868:	0009051b          	sext.w	a0,s2
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	d74080e7          	jalr	-652(ra) # 800055e0 <_Z8printIntiii>
    80004874:	00005517          	auipc	a0,0x5
    80004878:	c2450513          	addi	a0,a0,-988 # 80009498 <CONSOLE_STATUS+0x488>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	bb4080e7          	jalr	-1100(ra) # 80005430 <_Z11printStringPKc>
    80004884:	0400006f          	j	800048c4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004888:	00005517          	auipc	a0,0x5
    8000488c:	9c050513          	addi	a0,a0,-1600 # 80009248 <CONSOLE_STATUS+0x238>
    80004890:	00001097          	auipc	ra,0x1
    80004894:	ba0080e7          	jalr	-1120(ra) # 80005430 <_Z11printStringPKc>
    80004898:	00000613          	li	a2,0
    8000489c:	00a00593          	li	a1,10
    800048a0:	00048513          	mv	a0,s1
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	d3c080e7          	jalr	-708(ra) # 800055e0 <_Z8printIntiii>
    800048ac:	00005517          	auipc	a0,0x5
    800048b0:	bec50513          	addi	a0,a0,-1044 # 80009498 <CONSOLE_STATUS+0x488>
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	b7c080e7          	jalr	-1156(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800048bc:	0014849b          	addiw	s1,s1,1
    800048c0:	0ff4f493          	andi	s1,s1,255
    800048c4:	00500793          	li	a5,5
    800048c8:	fc97f0e3          	bgeu	a5,s1,80004888 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800048cc:	00005517          	auipc	a0,0x5
    800048d0:	95450513          	addi	a0,a0,-1708 # 80009220 <CONSOLE_STATUS+0x210>
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	b5c080e7          	jalr	-1188(ra) # 80005430 <_Z11printStringPKc>
    finishedC = true;
    800048dc:	00100793          	li	a5,1
    800048e0:	00007717          	auipc	a4,0x7
    800048e4:	f0f70ca3          	sb	a5,-231(a4) # 8000b7f9 <_ZL9finishedC>
    thread_dispatch();
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	984080e7          	jalr	-1660(ra) # 8000126c <_Z15thread_dispatchv>
}
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	00013903          	ld	s2,0(sp)
    80004900:	02010113          	addi	sp,sp,32
    80004904:	00008067          	ret

0000000080004908 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004908:	fe010113          	addi	sp,sp,-32
    8000490c:	00113c23          	sd	ra,24(sp)
    80004910:	00813823          	sd	s0,16(sp)
    80004914:	00913423          	sd	s1,8(sp)
    80004918:	01213023          	sd	s2,0(sp)
    8000491c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004920:	00000913          	li	s2,0
    80004924:	0380006f          	j	8000495c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	944080e7          	jalr	-1724(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004930:	00148493          	addi	s1,s1,1
    80004934:	000027b7          	lui	a5,0x2
    80004938:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000493c:	0097ee63          	bltu	a5,s1,80004958 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004940:	00000713          	li	a4,0
    80004944:	000077b7          	lui	a5,0x7
    80004948:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000494c:	fce7eee3          	bltu	a5,a4,80004928 <_ZL11workerBodyBPv+0x20>
    80004950:	00170713          	addi	a4,a4,1
    80004954:	ff1ff06f          	j	80004944 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004958:	00190913          	addi	s2,s2,1
    8000495c:	00f00793          	li	a5,15
    80004960:	0527e063          	bltu	a5,s2,800049a0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004964:	00005517          	auipc	a0,0x5
    80004968:	8cc50513          	addi	a0,a0,-1844 # 80009230 <CONSOLE_STATUS+0x220>
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	ac4080e7          	jalr	-1340(ra) # 80005430 <_Z11printStringPKc>
    80004974:	00000613          	li	a2,0
    80004978:	00a00593          	li	a1,10
    8000497c:	0009051b          	sext.w	a0,s2
    80004980:	00001097          	auipc	ra,0x1
    80004984:	c60080e7          	jalr	-928(ra) # 800055e0 <_Z8printIntiii>
    80004988:	00005517          	auipc	a0,0x5
    8000498c:	b1050513          	addi	a0,a0,-1264 # 80009498 <CONSOLE_STATUS+0x488>
    80004990:	00001097          	auipc	ra,0x1
    80004994:	aa0080e7          	jalr	-1376(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004998:	00000493          	li	s1,0
    8000499c:	f99ff06f          	j	80004934 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800049a0:	00005517          	auipc	a0,0x5
    800049a4:	89850513          	addi	a0,a0,-1896 # 80009238 <CONSOLE_STATUS+0x228>
    800049a8:	00001097          	auipc	ra,0x1
    800049ac:	a88080e7          	jalr	-1400(ra) # 80005430 <_Z11printStringPKc>
    finishedB = true;
    800049b0:	00100793          	li	a5,1
    800049b4:	00007717          	auipc	a4,0x7
    800049b8:	e4f70323          	sb	a5,-442(a4) # 8000b7fa <_ZL9finishedB>
    thread_dispatch();
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	8b0080e7          	jalr	-1872(ra) # 8000126c <_Z15thread_dispatchv>
}
    800049c4:	01813083          	ld	ra,24(sp)
    800049c8:	01013403          	ld	s0,16(sp)
    800049cc:	00813483          	ld	s1,8(sp)
    800049d0:	00013903          	ld	s2,0(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret

00000000800049dc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00113c23          	sd	ra,24(sp)
    800049e4:	00813823          	sd	s0,16(sp)
    800049e8:	00913423          	sd	s1,8(sp)
    800049ec:	01213023          	sd	s2,0(sp)
    800049f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800049f4:	00000913          	li	s2,0
    800049f8:	0380006f          	j	80004a30 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	870080e7          	jalr	-1936(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004a04:	00148493          	addi	s1,s1,1
    80004a08:	000027b7          	lui	a5,0x2
    80004a0c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a10:	0097ee63          	bltu	a5,s1,80004a2c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a14:	00000713          	li	a4,0
    80004a18:	000077b7          	lui	a5,0x7
    80004a1c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a20:	fce7eee3          	bltu	a5,a4,800049fc <_ZL11workerBodyAPv+0x20>
    80004a24:	00170713          	addi	a4,a4,1
    80004a28:	ff1ff06f          	j	80004a18 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004a2c:	00190913          	addi	s2,s2,1
    80004a30:	00900793          	li	a5,9
    80004a34:	0527e063          	bltu	a5,s2,80004a74 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004a38:	00004517          	auipc	a0,0x4
    80004a3c:	7e050513          	addi	a0,a0,2016 # 80009218 <CONSOLE_STATUS+0x208>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	9f0080e7          	jalr	-1552(ra) # 80005430 <_Z11printStringPKc>
    80004a48:	00000613          	li	a2,0
    80004a4c:	00a00593          	li	a1,10
    80004a50:	0009051b          	sext.w	a0,s2
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	b8c080e7          	jalr	-1140(ra) # 800055e0 <_Z8printIntiii>
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	a3c50513          	addi	a0,a0,-1476 # 80009498 <CONSOLE_STATUS+0x488>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	9cc080e7          	jalr	-1588(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a6c:	00000493          	li	s1,0
    80004a70:	f99ff06f          	j	80004a08 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004a74:	00004517          	auipc	a0,0x4
    80004a78:	7ac50513          	addi	a0,a0,1964 # 80009220 <CONSOLE_STATUS+0x210>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	9b4080e7          	jalr	-1612(ra) # 80005430 <_Z11printStringPKc>
    finishedA = true;
    80004a84:	00100793          	li	a5,1
    80004a88:	00007717          	auipc	a4,0x7
    80004a8c:	d6f709a3          	sb	a5,-653(a4) # 8000b7fb <_ZL9finishedA>
}
    80004a90:	01813083          	ld	ra,24(sp)
    80004a94:	01013403          	ld	s0,16(sp)
    80004a98:	00813483          	ld	s1,8(sp)
    80004a9c:	00013903          	ld	s2,0(sp)
    80004aa0:	02010113          	addi	sp,sp,32
    80004aa4:	00008067          	ret

0000000080004aa8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004aa8:	fd010113          	addi	sp,sp,-48
    80004aac:	02113423          	sd	ra,40(sp)
    80004ab0:	02813023          	sd	s0,32(sp)
    80004ab4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004ab8:	00000613          	li	a2,0
    80004abc:	00000597          	auipc	a1,0x0
    80004ac0:	f2058593          	addi	a1,a1,-224 # 800049dc <_ZL11workerBodyAPv>
    80004ac4:	fd040513          	addi	a0,s0,-48
    80004ac8:	ffffc097          	auipc	ra,0xffffc
    80004acc:	708080e7          	jalr	1800(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004ad0:	00004517          	auipc	a0,0x4
    80004ad4:	7e050513          	addi	a0,a0,2016 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	958080e7          	jalr	-1704(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ae0:	00000613          	li	a2,0
    80004ae4:	00000597          	auipc	a1,0x0
    80004ae8:	e2458593          	addi	a1,a1,-476 # 80004908 <_ZL11workerBodyBPv>
    80004aec:	fd840513          	addi	a0,s0,-40
    80004af0:	ffffc097          	auipc	ra,0xffffc
    80004af4:	6e0080e7          	jalr	1760(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004af8:	00004517          	auipc	a0,0x4
    80004afc:	7d050513          	addi	a0,a0,2000 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	930080e7          	jalr	-1744(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004b08:	00000613          	li	a2,0
    80004b0c:	00000597          	auipc	a1,0x0
    80004b10:	c7c58593          	addi	a1,a1,-900 # 80004788 <_ZL11workerBodyCPv>
    80004b14:	fe040513          	addi	a0,s0,-32
    80004b18:	ffffc097          	auipc	ra,0xffffc
    80004b1c:	6b8080e7          	jalr	1720(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004b20:	00004517          	auipc	a0,0x4
    80004b24:	7c050513          	addi	a0,a0,1984 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	908080e7          	jalr	-1784(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004b30:	00000613          	li	a2,0
    80004b34:	00000597          	auipc	a1,0x0
    80004b38:	b0c58593          	addi	a1,a1,-1268 # 80004640 <_ZL11workerBodyDPv>
    80004b3c:	fe840513          	addi	a0,s0,-24
    80004b40:	ffffc097          	auipc	ra,0xffffc
    80004b44:	690080e7          	jalr	1680(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004b48:	00004517          	auipc	a0,0x4
    80004b4c:	7b050513          	addi	a0,a0,1968 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	8e0080e7          	jalr	-1824(ra) # 80005430 <_Z11printStringPKc>
    80004b58:	00c0006f          	j	80004b64 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004b5c:	ffffc097          	auipc	ra,0xffffc
    80004b60:	710080e7          	jalr	1808(ra) # 8000126c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004b64:	00007797          	auipc	a5,0x7
    80004b68:	c977c783          	lbu	a5,-873(a5) # 8000b7fb <_ZL9finishedA>
    80004b6c:	fe0788e3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    80004b70:	00007797          	auipc	a5,0x7
    80004b74:	c8a7c783          	lbu	a5,-886(a5) # 8000b7fa <_ZL9finishedB>
    80004b78:	fe0782e3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    80004b7c:	00007797          	auipc	a5,0x7
    80004b80:	c7d7c783          	lbu	a5,-899(a5) # 8000b7f9 <_ZL9finishedC>
    80004b84:	fc078ce3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    80004b88:	00007797          	auipc	a5,0x7
    80004b8c:	c707c783          	lbu	a5,-912(a5) # 8000b7f8 <_ZL9finishedD>
    80004b90:	fc0786e3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004b94:	02813083          	ld	ra,40(sp)
    80004b98:	02013403          	ld	s0,32(sp)
    80004b9c:	03010113          	addi	sp,sp,48
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ba4:	fd010113          	addi	sp,sp,-48
    80004ba8:	02113423          	sd	ra,40(sp)
    80004bac:	02813023          	sd	s0,32(sp)
    80004bb0:	00913c23          	sd	s1,24(sp)
    80004bb4:	01213823          	sd	s2,16(sp)
    80004bb8:	01313423          	sd	s3,8(sp)
    80004bbc:	03010413          	addi	s0,sp,48
    80004bc0:	00050993          	mv	s3,a0
    80004bc4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004bc8:	00000913          	li	s2,0
    80004bcc:	00c0006f          	j	80004bd8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	384080e7          	jalr	900(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	820080e7          	jalr	-2016(ra) # 800013f8 <_Z4getcv>
    80004be0:	0005059b          	sext.w	a1,a0
    80004be4:	01b00793          	li	a5,27
    80004be8:	02f58a63          	beq	a1,a5,80004c1c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004bec:	0084b503          	ld	a0,8(s1)
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	c64080e7          	jalr	-924(ra) # 80005854 <_ZN9BufferCPP3putEi>
        i++;
    80004bf8:	0019071b          	addiw	a4,s2,1
    80004bfc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c00:	0004a683          	lw	a3,0(s1)
    80004c04:	0026979b          	slliw	a5,a3,0x2
    80004c08:	00d787bb          	addw	a5,a5,a3
    80004c0c:	0017979b          	slliw	a5,a5,0x1
    80004c10:	02f767bb          	remw	a5,a4,a5
    80004c14:	fc0792e3          	bnez	a5,80004bd8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004c18:	fb9ff06f          	j	80004bd0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004c1c:	00100793          	li	a5,1
    80004c20:	00007717          	auipc	a4,0x7
    80004c24:	bef72023          	sw	a5,-1056(a4) # 8000b800 <_ZL9threadEnd>
    td->buffer->put('!');
    80004c28:	0209b783          	ld	a5,32(s3)
    80004c2c:	02100593          	li	a1,33
    80004c30:	0087b503          	ld	a0,8(a5)
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	c20080e7          	jalr	-992(ra) # 80005854 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004c3c:	0104b503          	ld	a0,16(s1)
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	440080e7          	jalr	1088(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    80004c48:	02813083          	ld	ra,40(sp)
    80004c4c:	02013403          	ld	s0,32(sp)
    80004c50:	01813483          	ld	s1,24(sp)
    80004c54:	01013903          	ld	s2,16(sp)
    80004c58:	00813983          	ld	s3,8(sp)
    80004c5c:	03010113          	addi	sp,sp,48
    80004c60:	00008067          	ret

0000000080004c64 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004c64:	fe010113          	addi	sp,sp,-32
    80004c68:	00113c23          	sd	ra,24(sp)
    80004c6c:	00813823          	sd	s0,16(sp)
    80004c70:	00913423          	sd	s1,8(sp)
    80004c74:	01213023          	sd	s2,0(sp)
    80004c78:	02010413          	addi	s0,sp,32
    80004c7c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c80:	00000913          	li	s2,0
    80004c84:	00c0006f          	j	80004c90 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	2cc080e7          	jalr	716(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004c90:	00007797          	auipc	a5,0x7
    80004c94:	b707a783          	lw	a5,-1168(a5) # 8000b800 <_ZL9threadEnd>
    80004c98:	02079e63          	bnez	a5,80004cd4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004c9c:	0004a583          	lw	a1,0(s1)
    80004ca0:	0305859b          	addiw	a1,a1,48
    80004ca4:	0084b503          	ld	a0,8(s1)
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	bac080e7          	jalr	-1108(ra) # 80005854 <_ZN9BufferCPP3putEi>
        i++;
    80004cb0:	0019071b          	addiw	a4,s2,1
    80004cb4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004cb8:	0004a683          	lw	a3,0(s1)
    80004cbc:	0026979b          	slliw	a5,a3,0x2
    80004cc0:	00d787bb          	addw	a5,a5,a3
    80004cc4:	0017979b          	slliw	a5,a5,0x1
    80004cc8:	02f767bb          	remw	a5,a4,a5
    80004ccc:	fc0792e3          	bnez	a5,80004c90 <_ZN12ProducerSync8producerEPv+0x2c>
    80004cd0:	fb9ff06f          	j	80004c88 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004cd4:	0104b503          	ld	a0,16(s1)
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	3a8080e7          	jalr	936(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	00013903          	ld	s2,0(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret

0000000080004cf8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004cf8:	fd010113          	addi	sp,sp,-48
    80004cfc:	02113423          	sd	ra,40(sp)
    80004d00:	02813023          	sd	s0,32(sp)
    80004d04:	00913c23          	sd	s1,24(sp)
    80004d08:	01213823          	sd	s2,16(sp)
    80004d0c:	01313423          	sd	s3,8(sp)
    80004d10:	01413023          	sd	s4,0(sp)
    80004d14:	03010413          	addi	s0,sp,48
    80004d18:	00050993          	mv	s3,a0
    80004d1c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d20:	00000a13          	li	s4,0
    80004d24:	01c0006f          	j	80004d40 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	22c080e7          	jalr	556(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    80004d30:	0500006f          	j	80004d80 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004d34:	00a00513          	li	a0,10
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	710080e7          	jalr	1808(ra) # 80001448 <_Z4putcc>
    while (!threadEnd) {
    80004d40:	00007797          	auipc	a5,0x7
    80004d44:	ac07a783          	lw	a5,-1344(a5) # 8000b800 <_ZL9threadEnd>
    80004d48:	06079263          	bnez	a5,80004dac <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004d4c:	00893503          	ld	a0,8(s2)
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	b94080e7          	jalr	-1132(ra) # 800058e4 <_ZN9BufferCPP3getEv>
        i++;
    80004d58:	001a049b          	addiw	s1,s4,1
    80004d5c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004d60:	0ff57513          	andi	a0,a0,255
    80004d64:	ffffc097          	auipc	ra,0xffffc
    80004d68:	6e4080e7          	jalr	1764(ra) # 80001448 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004d6c:	00092703          	lw	a4,0(s2)
    80004d70:	0027179b          	slliw	a5,a4,0x2
    80004d74:	00e787bb          	addw	a5,a5,a4
    80004d78:	02f4e7bb          	remw	a5,s1,a5
    80004d7c:	fa0786e3          	beqz	a5,80004d28 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004d80:	05000793          	li	a5,80
    80004d84:	02f4e4bb          	remw	s1,s1,a5
    80004d88:	fa049ce3          	bnez	s1,80004d40 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004d8c:	fa9ff06f          	j	80004d34 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004d90:	0209b783          	ld	a5,32(s3)
    80004d94:	0087b503          	ld	a0,8(a5)
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	b4c080e7          	jalr	-1204(ra) # 800058e4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004da0:	0ff57513          	andi	a0,a0,255
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	330080e7          	jalr	816(ra) # 800020d4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004dac:	0209b783          	ld	a5,32(s3)
    80004db0:	0087b503          	ld	a0,8(a5)
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	bbc080e7          	jalr	-1092(ra) # 80005970 <_ZN9BufferCPP6getCntEv>
    80004dbc:	fca04ae3          	bgtz	a0,80004d90 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004dc0:	01093503          	ld	a0,16(s2)
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	2bc080e7          	jalr	700(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    80004dcc:	02813083          	ld	ra,40(sp)
    80004dd0:	02013403          	ld	s0,32(sp)
    80004dd4:	01813483          	ld	s1,24(sp)
    80004dd8:	01013903          	ld	s2,16(sp)
    80004ddc:	00813983          	ld	s3,8(sp)
    80004de0:	00013a03          	ld	s4,0(sp)
    80004de4:	03010113          	addi	sp,sp,48
    80004de8:	00008067          	ret

0000000080004dec <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004dec:	f8010113          	addi	sp,sp,-128
    80004df0:	06113c23          	sd	ra,120(sp)
    80004df4:	06813823          	sd	s0,112(sp)
    80004df8:	06913423          	sd	s1,104(sp)
    80004dfc:	07213023          	sd	s2,96(sp)
    80004e00:	05313c23          	sd	s3,88(sp)
    80004e04:	05413823          	sd	s4,80(sp)
    80004e08:	05513423          	sd	s5,72(sp)
    80004e0c:	05613023          	sd	s6,64(sp)
    80004e10:	03713c23          	sd	s7,56(sp)
    80004e14:	03813823          	sd	s8,48(sp)
    80004e18:	03913423          	sd	s9,40(sp)
    80004e1c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004e20:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	30c50513          	addi	a0,a0,780 # 80009130 <CONSOLE_STATUS+0x120>
    80004e2c:	00000097          	auipc	ra,0x0
    80004e30:	604080e7          	jalr	1540(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80004e34:	01e00593          	li	a1,30
    80004e38:	f8040493          	addi	s1,s0,-128
    80004e3c:	00048513          	mv	a0,s1
    80004e40:	00000097          	auipc	ra,0x0
    80004e44:	678080e7          	jalr	1656(ra) # 800054b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004e48:	00048513          	mv	a0,s1
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	744080e7          	jalr	1860(ra) # 80005590 <_Z11stringToIntPKc>
    80004e54:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004e58:	00004517          	auipc	a0,0x4
    80004e5c:	2f850513          	addi	a0,a0,760 # 80009150 <CONSOLE_STATUS+0x140>
    80004e60:	00000097          	auipc	ra,0x0
    80004e64:	5d0080e7          	jalr	1488(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80004e68:	01e00593          	li	a1,30
    80004e6c:	00048513          	mv	a0,s1
    80004e70:	00000097          	auipc	ra,0x0
    80004e74:	648080e7          	jalr	1608(ra) # 800054b8 <_Z9getStringPci>
    n = stringToInt(input);
    80004e78:	00048513          	mv	a0,s1
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	714080e7          	jalr	1812(ra) # 80005590 <_Z11stringToIntPKc>
    80004e84:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	2e850513          	addi	a0,a0,744 # 80009170 <CONSOLE_STATUS+0x160>
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	5a0080e7          	jalr	1440(ra) # 80005430 <_Z11printStringPKc>
    80004e98:	00000613          	li	a2,0
    80004e9c:	00a00593          	li	a1,10
    80004ea0:	00090513          	mv	a0,s2
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	73c080e7          	jalr	1852(ra) # 800055e0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004eac:	00004517          	auipc	a0,0x4
    80004eb0:	2dc50513          	addi	a0,a0,732 # 80009188 <CONSOLE_STATUS+0x178>
    80004eb4:	00000097          	auipc	ra,0x0
    80004eb8:	57c080e7          	jalr	1404(ra) # 80005430 <_Z11printStringPKc>
    80004ebc:	00000613          	li	a2,0
    80004ec0:	00a00593          	li	a1,10
    80004ec4:	00048513          	mv	a0,s1
    80004ec8:	00000097          	auipc	ra,0x0
    80004ecc:	718080e7          	jalr	1816(ra) # 800055e0 <_Z8printIntiii>
    printString(".\n");
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	2d050513          	addi	a0,a0,720 # 800091a0 <CONSOLE_STATUS+0x190>
    80004ed8:	00000097          	auipc	ra,0x0
    80004edc:	558080e7          	jalr	1368(ra) # 80005430 <_Z11printStringPKc>
    if(threadNum > n) {
    80004ee0:	0324c463          	blt	s1,s2,80004f08 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004ee4:	03205c63          	blez	s2,80004f1c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ee8:	03800513          	li	a0,56
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	f20080e7          	jalr	-224(ra) # 80001e0c <_Znwm>
    80004ef4:	00050a93          	mv	s5,a0
    80004ef8:	00048593          	mv	a1,s1
    80004efc:	00001097          	auipc	ra,0x1
    80004f00:	804080e7          	jalr	-2044(ra) # 80005700 <_ZN9BufferCPPC1Ei>
    80004f04:	0300006f          	j	80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	2a050513          	addi	a0,a0,672 # 800091a8 <CONSOLE_STATUS+0x198>
    80004f10:	00000097          	auipc	ra,0x0
    80004f14:	520080e7          	jalr	1312(ra) # 80005430 <_Z11printStringPKc>
        return;
    80004f18:	0140006f          	j	80004f2c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004f1c:	00004517          	auipc	a0,0x4
    80004f20:	2cc50513          	addi	a0,a0,716 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	50c080e7          	jalr	1292(ra) # 80005430 <_Z11printStringPKc>
        return;
    80004f2c:	000b8113          	mv	sp,s7
    80004f30:	2380006f          	j	80005168 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004f34:	01000513          	li	a0,16
    80004f38:	ffffd097          	auipc	ra,0xffffd
    80004f3c:	ed4080e7          	jalr	-300(ra) # 80001e0c <_Znwm>
    80004f40:	00050493          	mv	s1,a0
    80004f44:	00000593          	li	a1,0
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	0d4080e7          	jalr	212(ra) # 8000201c <_ZN9SemaphoreC1Ej>
    80004f50:	00007797          	auipc	a5,0x7
    80004f54:	8a97bc23          	sd	s1,-1864(a5) # 8000b808 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004f58:	00391793          	slli	a5,s2,0x3
    80004f5c:	00f78793          	addi	a5,a5,15
    80004f60:	ff07f793          	andi	a5,a5,-16
    80004f64:	40f10133          	sub	sp,sp,a5
    80004f68:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004f6c:	0019071b          	addiw	a4,s2,1
    80004f70:	00171793          	slli	a5,a4,0x1
    80004f74:	00e787b3          	add	a5,a5,a4
    80004f78:	00379793          	slli	a5,a5,0x3
    80004f7c:	00f78793          	addi	a5,a5,15
    80004f80:	ff07f793          	andi	a5,a5,-16
    80004f84:	40f10133          	sub	sp,sp,a5
    80004f88:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004f8c:	00191c13          	slli	s8,s2,0x1
    80004f90:	012c07b3          	add	a5,s8,s2
    80004f94:	00379793          	slli	a5,a5,0x3
    80004f98:	00fa07b3          	add	a5,s4,a5
    80004f9c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004fa0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004fa4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004fa8:	02800513          	li	a0,40
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	e60080e7          	jalr	-416(ra) # 80001e0c <_Znwm>
    80004fb4:	00050b13          	mv	s6,a0
    80004fb8:	012c0c33          	add	s8,s8,s2
    80004fbc:	003c1c13          	slli	s8,s8,0x3
    80004fc0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004fc4:	ffffd097          	auipc	ra,0xffffd
    80004fc8:	fd4080e7          	jalr	-44(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80004fcc:	00006797          	auipc	a5,0x6
    80004fd0:	6e478793          	addi	a5,a5,1764 # 8000b6b0 <_ZTV12ConsumerSync+0x10>
    80004fd4:	00fb3023          	sd	a5,0(s6)
    80004fd8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004fdc:	000b0513          	mv	a0,s6
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	ee4080e7          	jalr	-284(ra) # 80001ec4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004fe8:	00000493          	li	s1,0
    80004fec:	0380006f          	j	80005024 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ff0:	00006797          	auipc	a5,0x6
    80004ff4:	69878793          	addi	a5,a5,1688 # 8000b688 <_ZTV12ProducerSync+0x10>
    80004ff8:	00fcb023          	sd	a5,0(s9)
    80004ffc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005000:	00349793          	slli	a5,s1,0x3
    80005004:	00f987b3          	add	a5,s3,a5
    80005008:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000500c:	00349793          	slli	a5,s1,0x3
    80005010:	00f987b3          	add	a5,s3,a5
    80005014:	0007b503          	ld	a0,0(a5)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	eac080e7          	jalr	-340(ra) # 80001ec4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005020:	0014849b          	addiw	s1,s1,1
    80005024:	0b24d063          	bge	s1,s2,800050c4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005028:	00149793          	slli	a5,s1,0x1
    8000502c:	009787b3          	add	a5,a5,s1
    80005030:	00379793          	slli	a5,a5,0x3
    80005034:	00fa07b3          	add	a5,s4,a5
    80005038:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000503c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005040:	00006717          	auipc	a4,0x6
    80005044:	7c873703          	ld	a4,1992(a4) # 8000b808 <_ZL10waitForAll>
    80005048:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000504c:	02905863          	blez	s1,8000507c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005050:	02800513          	li	a0,40
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	db8080e7          	jalr	-584(ra) # 80001e0c <_Znwm>
    8000505c:	00050c93          	mv	s9,a0
    80005060:	00149c13          	slli	s8,s1,0x1
    80005064:	009c0c33          	add	s8,s8,s1
    80005068:	003c1c13          	slli	s8,s8,0x3
    8000506c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	f28080e7          	jalr	-216(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80005078:	f79ff06f          	j	80004ff0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000507c:	02800513          	li	a0,40
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	d8c080e7          	jalr	-628(ra) # 80001e0c <_Znwm>
    80005088:	00050c93          	mv	s9,a0
    8000508c:	00149c13          	slli	s8,s1,0x1
    80005090:	009c0c33          	add	s8,s8,s1
    80005094:	003c1c13          	slli	s8,s8,0x3
    80005098:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	efc080e7          	jalr	-260(ra) # 80001f98 <_ZN6ThreadC1Ev>
    800050a4:	00006797          	auipc	a5,0x6
    800050a8:	5bc78793          	addi	a5,a5,1468 # 8000b660 <_ZTV16ProducerKeyboard+0x10>
    800050ac:	00fcb023          	sd	a5,0(s9)
    800050b0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800050b4:	00349793          	slli	a5,s1,0x3
    800050b8:	00f987b3          	add	a5,s3,a5
    800050bc:	0197b023          	sd	s9,0(a5)
    800050c0:	f4dff06f          	j	8000500c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	e90080e7          	jalr	-368(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800050cc:	00000493          	li	s1,0
    800050d0:	00994e63          	blt	s2,s1,800050ec <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800050d4:	00006517          	auipc	a0,0x6
    800050d8:	73453503          	ld	a0,1844(a0) # 8000b808 <_ZL10waitForAll>
    800050dc:	ffffd097          	auipc	ra,0xffffd
    800050e0:	f78080e7          	jalr	-136(ra) # 80002054 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800050e4:	0014849b          	addiw	s1,s1,1
    800050e8:	fe9ff06f          	j	800050d0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800050ec:	00000493          	li	s1,0
    800050f0:	0080006f          	j	800050f8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800050f4:	0014849b          	addiw	s1,s1,1
    800050f8:	0324d263          	bge	s1,s2,8000511c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800050fc:	00349793          	slli	a5,s1,0x3
    80005100:	00f987b3          	add	a5,s3,a5
    80005104:	0007b503          	ld	a0,0(a5)
    80005108:	fe0506e3          	beqz	a0,800050f4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000510c:	00053783          	ld	a5,0(a0)
    80005110:	0087b783          	ld	a5,8(a5)
    80005114:	000780e7          	jalr	a5
    80005118:	fddff06f          	j	800050f4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000511c:	000b0a63          	beqz	s6,80005130 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005120:	000b3783          	ld	a5,0(s6)
    80005124:	0087b783          	ld	a5,8(a5)
    80005128:	000b0513          	mv	a0,s6
    8000512c:	000780e7          	jalr	a5
    delete waitForAll;
    80005130:	00006517          	auipc	a0,0x6
    80005134:	6d853503          	ld	a0,1752(a0) # 8000b808 <_ZL10waitForAll>
    80005138:	00050863          	beqz	a0,80005148 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000513c:	00053783          	ld	a5,0(a0)
    80005140:	0087b783          	ld	a5,8(a5)
    80005144:	000780e7          	jalr	a5
    delete buffer;
    80005148:	000a8e63          	beqz	s5,80005164 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000514c:	000a8513          	mv	a0,s5
    80005150:	00001097          	auipc	ra,0x1
    80005154:	8a8080e7          	jalr	-1880(ra) # 800059f8 <_ZN9BufferCPPD1Ev>
    80005158:	000a8513          	mv	a0,s5
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	cd8080e7          	jalr	-808(ra) # 80001e34 <_ZdlPv>
    80005164:	000b8113          	mv	sp,s7

}
    80005168:	f8040113          	addi	sp,s0,-128
    8000516c:	07813083          	ld	ra,120(sp)
    80005170:	07013403          	ld	s0,112(sp)
    80005174:	06813483          	ld	s1,104(sp)
    80005178:	06013903          	ld	s2,96(sp)
    8000517c:	05813983          	ld	s3,88(sp)
    80005180:	05013a03          	ld	s4,80(sp)
    80005184:	04813a83          	ld	s5,72(sp)
    80005188:	04013b03          	ld	s6,64(sp)
    8000518c:	03813b83          	ld	s7,56(sp)
    80005190:	03013c03          	ld	s8,48(sp)
    80005194:	02813c83          	ld	s9,40(sp)
    80005198:	08010113          	addi	sp,sp,128
    8000519c:	00008067          	ret
    800051a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800051a4:	000a8513          	mv	a0,s5
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	c8c080e7          	jalr	-884(ra) # 80001e34 <_ZdlPv>
    800051b0:	00048513          	mv	a0,s1
    800051b4:	00007097          	auipc	ra,0x7
    800051b8:	734080e7          	jalr	1844(ra) # 8000c8e8 <_Unwind_Resume>
    800051bc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800051c0:	00048513          	mv	a0,s1
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	c70080e7          	jalr	-912(ra) # 80001e34 <_ZdlPv>
    800051cc:	00090513          	mv	a0,s2
    800051d0:	00007097          	auipc	ra,0x7
    800051d4:	718080e7          	jalr	1816(ra) # 8000c8e8 <_Unwind_Resume>
    800051d8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800051dc:	000b0513          	mv	a0,s6
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	c54080e7          	jalr	-940(ra) # 80001e34 <_ZdlPv>
    800051e8:	00048513          	mv	a0,s1
    800051ec:	00007097          	auipc	ra,0x7
    800051f0:	6fc080e7          	jalr	1788(ra) # 8000c8e8 <_Unwind_Resume>
    800051f4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800051f8:	000c8513          	mv	a0,s9
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	c38080e7          	jalr	-968(ra) # 80001e34 <_ZdlPv>
    80005204:	00048513          	mv	a0,s1
    80005208:	00007097          	auipc	ra,0x7
    8000520c:	6e0080e7          	jalr	1760(ra) # 8000c8e8 <_Unwind_Resume>
    80005210:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005214:	000c8513          	mv	a0,s9
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	c1c080e7          	jalr	-996(ra) # 80001e34 <_ZdlPv>
    80005220:	00048513          	mv	a0,s1
    80005224:	00007097          	auipc	ra,0x7
    80005228:	6c4080e7          	jalr	1732(ra) # 8000c8e8 <_Unwind_Resume>

000000008000522c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000522c:	ff010113          	addi	sp,sp,-16
    80005230:	00113423          	sd	ra,8(sp)
    80005234:	00813023          	sd	s0,0(sp)
    80005238:	01010413          	addi	s0,sp,16
    8000523c:	00006797          	auipc	a5,0x6
    80005240:	47478793          	addi	a5,a5,1140 # 8000b6b0 <_ZTV12ConsumerSync+0x10>
    80005244:	00f53023          	sd	a5,0(a0)
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	b48080e7          	jalr	-1208(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80005250:	00813083          	ld	ra,8(sp)
    80005254:	00013403          	ld	s0,0(sp)
    80005258:	01010113          	addi	sp,sp,16
    8000525c:	00008067          	ret

0000000080005260 <_ZN12ConsumerSyncD0Ev>:
    80005260:	fe010113          	addi	sp,sp,-32
    80005264:	00113c23          	sd	ra,24(sp)
    80005268:	00813823          	sd	s0,16(sp)
    8000526c:	00913423          	sd	s1,8(sp)
    80005270:	02010413          	addi	s0,sp,32
    80005274:	00050493          	mv	s1,a0
    80005278:	00006797          	auipc	a5,0x6
    8000527c:	43878793          	addi	a5,a5,1080 # 8000b6b0 <_ZTV12ConsumerSync+0x10>
    80005280:	00f53023          	sd	a5,0(a0)
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	b0c080e7          	jalr	-1268(ra) # 80001d90 <_ZN6ThreadD1Ev>
    8000528c:	00048513          	mv	a0,s1
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	ba4080e7          	jalr	-1116(ra) # 80001e34 <_ZdlPv>
    80005298:	01813083          	ld	ra,24(sp)
    8000529c:	01013403          	ld	s0,16(sp)
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800052ac:	ff010113          	addi	sp,sp,-16
    800052b0:	00113423          	sd	ra,8(sp)
    800052b4:	00813023          	sd	s0,0(sp)
    800052b8:	01010413          	addi	s0,sp,16
    800052bc:	00006797          	auipc	a5,0x6
    800052c0:	3cc78793          	addi	a5,a5,972 # 8000b688 <_ZTV12ProducerSync+0x10>
    800052c4:	00f53023          	sd	a5,0(a0)
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	ac8080e7          	jalr	-1336(ra) # 80001d90 <_ZN6ThreadD1Ev>
    800052d0:	00813083          	ld	ra,8(sp)
    800052d4:	00013403          	ld	s0,0(sp)
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00008067          	ret

00000000800052e0 <_ZN12ProducerSyncD0Ev>:
    800052e0:	fe010113          	addi	sp,sp,-32
    800052e4:	00113c23          	sd	ra,24(sp)
    800052e8:	00813823          	sd	s0,16(sp)
    800052ec:	00913423          	sd	s1,8(sp)
    800052f0:	02010413          	addi	s0,sp,32
    800052f4:	00050493          	mv	s1,a0
    800052f8:	00006797          	auipc	a5,0x6
    800052fc:	39078793          	addi	a5,a5,912 # 8000b688 <_ZTV12ProducerSync+0x10>
    80005300:	00f53023          	sd	a5,0(a0)
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	a8c080e7          	jalr	-1396(ra) # 80001d90 <_ZN6ThreadD1Ev>
    8000530c:	00048513          	mv	a0,s1
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	b24080e7          	jalr	-1244(ra) # 80001e34 <_ZdlPv>
    80005318:	01813083          	ld	ra,24(sp)
    8000531c:	01013403          	ld	s0,16(sp)
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret

000000008000532c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000532c:	ff010113          	addi	sp,sp,-16
    80005330:	00113423          	sd	ra,8(sp)
    80005334:	00813023          	sd	s0,0(sp)
    80005338:	01010413          	addi	s0,sp,16
    8000533c:	00006797          	auipc	a5,0x6
    80005340:	32478793          	addi	a5,a5,804 # 8000b660 <_ZTV16ProducerKeyboard+0x10>
    80005344:	00f53023          	sd	a5,0(a0)
    80005348:	ffffd097          	auipc	ra,0xffffd
    8000534c:	a48080e7          	jalr	-1464(ra) # 80001d90 <_ZN6ThreadD1Ev>
    80005350:	00813083          	ld	ra,8(sp)
    80005354:	00013403          	ld	s0,0(sp)
    80005358:	01010113          	addi	sp,sp,16
    8000535c:	00008067          	ret

0000000080005360 <_ZN16ProducerKeyboardD0Ev>:
    80005360:	fe010113          	addi	sp,sp,-32
    80005364:	00113c23          	sd	ra,24(sp)
    80005368:	00813823          	sd	s0,16(sp)
    8000536c:	00913423          	sd	s1,8(sp)
    80005370:	02010413          	addi	s0,sp,32
    80005374:	00050493          	mv	s1,a0
    80005378:	00006797          	auipc	a5,0x6
    8000537c:	2e878793          	addi	a5,a5,744 # 8000b660 <_ZTV16ProducerKeyboard+0x10>
    80005380:	00f53023          	sd	a5,0(a0)
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	a0c080e7          	jalr	-1524(ra) # 80001d90 <_ZN6ThreadD1Ev>
    8000538c:	00048513          	mv	a0,s1
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	aa4080e7          	jalr	-1372(ra) # 80001e34 <_ZdlPv>
    80005398:	01813083          	ld	ra,24(sp)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	00813483          	ld	s1,8(sp)
    800053a4:	02010113          	addi	sp,sp,32
    800053a8:	00008067          	ret

00000000800053ac <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800053ac:	ff010113          	addi	sp,sp,-16
    800053b0:	00113423          	sd	ra,8(sp)
    800053b4:	00813023          	sd	s0,0(sp)
    800053b8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800053bc:	02053583          	ld	a1,32(a0)
    800053c0:	fffff097          	auipc	ra,0xfffff
    800053c4:	7e4080e7          	jalr	2020(ra) # 80004ba4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800053c8:	00813083          	ld	ra,8(sp)
    800053cc:	00013403          	ld	s0,0(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800053d8:	ff010113          	addi	sp,sp,-16
    800053dc:	00113423          	sd	ra,8(sp)
    800053e0:	00813023          	sd	s0,0(sp)
    800053e4:	01010413          	addi	s0,sp,16
        producer(td);
    800053e8:	02053583          	ld	a1,32(a0)
    800053ec:	00000097          	auipc	ra,0x0
    800053f0:	878080e7          	jalr	-1928(ra) # 80004c64 <_ZN12ProducerSync8producerEPv>
    }
    800053f4:	00813083          	ld	ra,8(sp)
    800053f8:	00013403          	ld	s0,0(sp)
    800053fc:	01010113          	addi	sp,sp,16
    80005400:	00008067          	ret

0000000080005404 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005404:	ff010113          	addi	sp,sp,-16
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	00813023          	sd	s0,0(sp)
    80005410:	01010413          	addi	s0,sp,16
        consumer(td);
    80005414:	02053583          	ld	a1,32(a0)
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	8e0080e7          	jalr	-1824(ra) # 80004cf8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005420:	00813083          	ld	ra,8(sp)
    80005424:	00013403          	ld	s0,0(sp)
    80005428:	01010113          	addi	sp,sp,16
    8000542c:	00008067          	ret

0000000080005430 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005430:	fe010113          	addi	sp,sp,-32
    80005434:	00113c23          	sd	ra,24(sp)
    80005438:	00813823          	sd	s0,16(sp)
    8000543c:	00913423          	sd	s1,8(sp)
    80005440:	02010413          	addi	s0,sp,32
    80005444:	00050493          	mv	s1,a0
    LOCK();
    80005448:	00100613          	li	a2,1
    8000544c:	00000593          	li	a1,0
    80005450:	00006517          	auipc	a0,0x6
    80005454:	3c050513          	addi	a0,a0,960 # 8000b810 <lockPrint>
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	ce8080e7          	jalr	-792(ra) # 80001140 <copy_and_swap>
    80005460:	00050863          	beqz	a0,80005470 <_Z11printStringPKc+0x40>
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	e08080e7          	jalr	-504(ra) # 8000126c <_Z15thread_dispatchv>
    8000546c:	fddff06f          	j	80005448 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005470:	0004c503          	lbu	a0,0(s1)
    80005474:	00050a63          	beqz	a0,80005488 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005478:	ffffc097          	auipc	ra,0xffffc
    8000547c:	fd0080e7          	jalr	-48(ra) # 80001448 <_Z4putcc>
        string++;
    80005480:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005484:	fedff06f          	j	80005470 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005488:	00000613          	li	a2,0
    8000548c:	00100593          	li	a1,1
    80005490:	00006517          	auipc	a0,0x6
    80005494:	38050513          	addi	a0,a0,896 # 8000b810 <lockPrint>
    80005498:	ffffc097          	auipc	ra,0xffffc
    8000549c:	ca8080e7          	jalr	-856(ra) # 80001140 <copy_and_swap>
    800054a0:	fe0514e3          	bnez	a0,80005488 <_Z11printStringPKc+0x58>
}
    800054a4:	01813083          	ld	ra,24(sp)
    800054a8:	01013403          	ld	s0,16(sp)
    800054ac:	00813483          	ld	s1,8(sp)
    800054b0:	02010113          	addi	sp,sp,32
    800054b4:	00008067          	ret

00000000800054b8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800054b8:	fd010113          	addi	sp,sp,-48
    800054bc:	02113423          	sd	ra,40(sp)
    800054c0:	02813023          	sd	s0,32(sp)
    800054c4:	00913c23          	sd	s1,24(sp)
    800054c8:	01213823          	sd	s2,16(sp)
    800054cc:	01313423          	sd	s3,8(sp)
    800054d0:	01413023          	sd	s4,0(sp)
    800054d4:	03010413          	addi	s0,sp,48
    800054d8:	00050993          	mv	s3,a0
    800054dc:	00058a13          	mv	s4,a1
    LOCK();
    800054e0:	00100613          	li	a2,1
    800054e4:	00000593          	li	a1,0
    800054e8:	00006517          	auipc	a0,0x6
    800054ec:	32850513          	addi	a0,a0,808 # 8000b810 <lockPrint>
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	c50080e7          	jalr	-944(ra) # 80001140 <copy_and_swap>
    800054f8:	00050863          	beqz	a0,80005508 <_Z9getStringPci+0x50>
    800054fc:	ffffc097          	auipc	ra,0xffffc
    80005500:	d70080e7          	jalr	-656(ra) # 8000126c <_Z15thread_dispatchv>
    80005504:	fddff06f          	j	800054e0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005508:	00000913          	li	s2,0
    8000550c:	00090493          	mv	s1,s2
    80005510:	0019091b          	addiw	s2,s2,1
    80005514:	03495a63          	bge	s2,s4,80005548 <_Z9getStringPci+0x90>
        cc = getc();
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	ee0080e7          	jalr	-288(ra) # 800013f8 <_Z4getcv>
        if(cc < 1)
    80005520:	02050463          	beqz	a0,80005548 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005524:	009984b3          	add	s1,s3,s1
    80005528:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000552c:	00a00793          	li	a5,10
    80005530:	00f50a63          	beq	a0,a5,80005544 <_Z9getStringPci+0x8c>
    80005534:	00d00793          	li	a5,13
    80005538:	fcf51ae3          	bne	a0,a5,8000550c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000553c:	00090493          	mv	s1,s2
    80005540:	0080006f          	j	80005548 <_Z9getStringPci+0x90>
    80005544:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005548:	009984b3          	add	s1,s3,s1
    8000554c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005550:	00000613          	li	a2,0
    80005554:	00100593          	li	a1,1
    80005558:	00006517          	auipc	a0,0x6
    8000555c:	2b850513          	addi	a0,a0,696 # 8000b810 <lockPrint>
    80005560:	ffffc097          	auipc	ra,0xffffc
    80005564:	be0080e7          	jalr	-1056(ra) # 80001140 <copy_and_swap>
    80005568:	fe0514e3          	bnez	a0,80005550 <_Z9getStringPci+0x98>
    return buf;
}
    8000556c:	00098513          	mv	a0,s3
    80005570:	02813083          	ld	ra,40(sp)
    80005574:	02013403          	ld	s0,32(sp)
    80005578:	01813483          	ld	s1,24(sp)
    8000557c:	01013903          	ld	s2,16(sp)
    80005580:	00813983          	ld	s3,8(sp)
    80005584:	00013a03          	ld	s4,0(sp)
    80005588:	03010113          	addi	sp,sp,48
    8000558c:	00008067          	ret

0000000080005590 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005590:	ff010113          	addi	sp,sp,-16
    80005594:	00813423          	sd	s0,8(sp)
    80005598:	01010413          	addi	s0,sp,16
    8000559c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800055a0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800055a4:	0006c603          	lbu	a2,0(a3)
    800055a8:	fd06071b          	addiw	a4,a2,-48
    800055ac:	0ff77713          	andi	a4,a4,255
    800055b0:	00900793          	li	a5,9
    800055b4:	02e7e063          	bltu	a5,a4,800055d4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800055b8:	0025179b          	slliw	a5,a0,0x2
    800055bc:	00a787bb          	addw	a5,a5,a0
    800055c0:	0017979b          	slliw	a5,a5,0x1
    800055c4:	00168693          	addi	a3,a3,1
    800055c8:	00c787bb          	addw	a5,a5,a2
    800055cc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800055d0:	fd5ff06f          	j	800055a4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800055d4:	00813403          	ld	s0,8(sp)
    800055d8:	01010113          	addi	sp,sp,16
    800055dc:	00008067          	ret

00000000800055e0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800055e0:	fc010113          	addi	sp,sp,-64
    800055e4:	02113c23          	sd	ra,56(sp)
    800055e8:	02813823          	sd	s0,48(sp)
    800055ec:	02913423          	sd	s1,40(sp)
    800055f0:	03213023          	sd	s2,32(sp)
    800055f4:	01313c23          	sd	s3,24(sp)
    800055f8:	04010413          	addi	s0,sp,64
    800055fc:	00050493          	mv	s1,a0
    80005600:	00058913          	mv	s2,a1
    80005604:	00060993          	mv	s3,a2
    LOCK();
    80005608:	00100613          	li	a2,1
    8000560c:	00000593          	li	a1,0
    80005610:	00006517          	auipc	a0,0x6
    80005614:	20050513          	addi	a0,a0,512 # 8000b810 <lockPrint>
    80005618:	ffffc097          	auipc	ra,0xffffc
    8000561c:	b28080e7          	jalr	-1240(ra) # 80001140 <copy_and_swap>
    80005620:	00050863          	beqz	a0,80005630 <_Z8printIntiii+0x50>
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	c48080e7          	jalr	-952(ra) # 8000126c <_Z15thread_dispatchv>
    8000562c:	fddff06f          	j	80005608 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005630:	00098463          	beqz	s3,80005638 <_Z8printIntiii+0x58>
    80005634:	0804c463          	bltz	s1,800056bc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005638:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000563c:	00000593          	li	a1,0
    }

    i = 0;
    80005640:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005644:	0009079b          	sext.w	a5,s2
    80005648:	0325773b          	remuw	a4,a0,s2
    8000564c:	00048613          	mv	a2,s1
    80005650:	0014849b          	addiw	s1,s1,1
    80005654:	02071693          	slli	a3,a4,0x20
    80005658:	0206d693          	srli	a3,a3,0x20
    8000565c:	00006717          	auipc	a4,0x6
    80005660:	06c70713          	addi	a4,a4,108 # 8000b6c8 <digits>
    80005664:	00d70733          	add	a4,a4,a3
    80005668:	00074683          	lbu	a3,0(a4)
    8000566c:	fd040713          	addi	a4,s0,-48
    80005670:	00c70733          	add	a4,a4,a2
    80005674:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005678:	0005071b          	sext.w	a4,a0
    8000567c:	0325553b          	divuw	a0,a0,s2
    80005680:	fcf772e3          	bgeu	a4,a5,80005644 <_Z8printIntiii+0x64>
    if(neg)
    80005684:	00058c63          	beqz	a1,8000569c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005688:	fd040793          	addi	a5,s0,-48
    8000568c:	009784b3          	add	s1,a5,s1
    80005690:	02d00793          	li	a5,45
    80005694:	fef48823          	sb	a5,-16(s1)
    80005698:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000569c:	fff4849b          	addiw	s1,s1,-1
    800056a0:	0204c463          	bltz	s1,800056c8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800056a4:	fd040793          	addi	a5,s0,-48
    800056a8:	009787b3          	add	a5,a5,s1
    800056ac:	ff07c503          	lbu	a0,-16(a5)
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	d98080e7          	jalr	-616(ra) # 80001448 <_Z4putcc>
    800056b8:	fe5ff06f          	j	8000569c <_Z8printIntiii+0xbc>
        x = -xx;
    800056bc:	4090053b          	negw	a0,s1
        neg = 1;
    800056c0:	00100593          	li	a1,1
        x = -xx;
    800056c4:	f7dff06f          	j	80005640 <_Z8printIntiii+0x60>

    UNLOCK();
    800056c8:	00000613          	li	a2,0
    800056cc:	00100593          	li	a1,1
    800056d0:	00006517          	auipc	a0,0x6
    800056d4:	14050513          	addi	a0,a0,320 # 8000b810 <lockPrint>
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	a68080e7          	jalr	-1432(ra) # 80001140 <copy_and_swap>
    800056e0:	fe0514e3          	bnez	a0,800056c8 <_Z8printIntiii+0xe8>
    800056e4:	03813083          	ld	ra,56(sp)
    800056e8:	03013403          	ld	s0,48(sp)
    800056ec:	02813483          	ld	s1,40(sp)
    800056f0:	02013903          	ld	s2,32(sp)
    800056f4:	01813983          	ld	s3,24(sp)
    800056f8:	04010113          	addi	sp,sp,64
    800056fc:	00008067          	ret

0000000080005700 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005700:	fd010113          	addi	sp,sp,-48
    80005704:	02113423          	sd	ra,40(sp)
    80005708:	02813023          	sd	s0,32(sp)
    8000570c:	00913c23          	sd	s1,24(sp)
    80005710:	01213823          	sd	s2,16(sp)
    80005714:	01313423          	sd	s3,8(sp)
    80005718:	03010413          	addi	s0,sp,48
    8000571c:	00050493          	mv	s1,a0
    80005720:	00058913          	mv	s2,a1
    80005724:	0015879b          	addiw	a5,a1,1
    80005728:	0007851b          	sext.w	a0,a5
    8000572c:	00f4a023          	sw	a5,0(s1)
    80005730:	0004a823          	sw	zero,16(s1)
    80005734:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005738:	00251513          	slli	a0,a0,0x2
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	a24080e7          	jalr	-1500(ra) # 80001160 <_Z9mem_allocm>
    80005744:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005748:	01000513          	li	a0,16
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	6c0080e7          	jalr	1728(ra) # 80001e0c <_Znwm>
    80005754:	00050993          	mv	s3,a0
    80005758:	00000593          	li	a1,0
    8000575c:	ffffd097          	auipc	ra,0xffffd
    80005760:	8c0080e7          	jalr	-1856(ra) # 8000201c <_ZN9SemaphoreC1Ej>
    80005764:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005768:	01000513          	li	a0,16
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	6a0080e7          	jalr	1696(ra) # 80001e0c <_Znwm>
    80005774:	00050993          	mv	s3,a0
    80005778:	00090593          	mv	a1,s2
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	8a0080e7          	jalr	-1888(ra) # 8000201c <_ZN9SemaphoreC1Ej>
    80005784:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005788:	01000513          	li	a0,16
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	680080e7          	jalr	1664(ra) # 80001e0c <_Znwm>
    80005794:	00050913          	mv	s2,a0
    80005798:	00100593          	li	a1,1
    8000579c:	ffffd097          	auipc	ra,0xffffd
    800057a0:	880080e7          	jalr	-1920(ra) # 8000201c <_ZN9SemaphoreC1Ej>
    800057a4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800057a8:	01000513          	li	a0,16
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	660080e7          	jalr	1632(ra) # 80001e0c <_Znwm>
    800057b4:	00050913          	mv	s2,a0
    800057b8:	00100593          	li	a1,1
    800057bc:	ffffd097          	auipc	ra,0xffffd
    800057c0:	860080e7          	jalr	-1952(ra) # 8000201c <_ZN9SemaphoreC1Ej>
    800057c4:	0324b823          	sd	s2,48(s1)
}
    800057c8:	02813083          	ld	ra,40(sp)
    800057cc:	02013403          	ld	s0,32(sp)
    800057d0:	01813483          	ld	s1,24(sp)
    800057d4:	01013903          	ld	s2,16(sp)
    800057d8:	00813983          	ld	s3,8(sp)
    800057dc:	03010113          	addi	sp,sp,48
    800057e0:	00008067          	ret
    800057e4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800057e8:	00098513          	mv	a0,s3
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	648080e7          	jalr	1608(ra) # 80001e34 <_ZdlPv>
    800057f4:	00048513          	mv	a0,s1
    800057f8:	00007097          	auipc	ra,0x7
    800057fc:	0f0080e7          	jalr	240(ra) # 8000c8e8 <_Unwind_Resume>
    80005800:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005804:	00098513          	mv	a0,s3
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	62c080e7          	jalr	1580(ra) # 80001e34 <_ZdlPv>
    80005810:	00048513          	mv	a0,s1
    80005814:	00007097          	auipc	ra,0x7
    80005818:	0d4080e7          	jalr	212(ra) # 8000c8e8 <_Unwind_Resume>
    8000581c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005820:	00090513          	mv	a0,s2
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	610080e7          	jalr	1552(ra) # 80001e34 <_ZdlPv>
    8000582c:	00048513          	mv	a0,s1
    80005830:	00007097          	auipc	ra,0x7
    80005834:	0b8080e7          	jalr	184(ra) # 8000c8e8 <_Unwind_Resume>
    80005838:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000583c:	00090513          	mv	a0,s2
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	5f4080e7          	jalr	1524(ra) # 80001e34 <_ZdlPv>
    80005848:	00048513          	mv	a0,s1
    8000584c:	00007097          	auipc	ra,0x7
    80005850:	09c080e7          	jalr	156(ra) # 8000c8e8 <_Unwind_Resume>

0000000080005854 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005854:	fe010113          	addi	sp,sp,-32
    80005858:	00113c23          	sd	ra,24(sp)
    8000585c:	00813823          	sd	s0,16(sp)
    80005860:	00913423          	sd	s1,8(sp)
    80005864:	01213023          	sd	s2,0(sp)
    80005868:	02010413          	addi	s0,sp,32
    8000586c:	00050493          	mv	s1,a0
    80005870:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005874:	01853503          	ld	a0,24(a0)
    80005878:	ffffc097          	auipc	ra,0xffffc
    8000587c:	7dc080e7          	jalr	2012(ra) # 80002054 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005880:	0304b503          	ld	a0,48(s1)
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	7d0080e7          	jalr	2000(ra) # 80002054 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000588c:	0084b783          	ld	a5,8(s1)
    80005890:	0144a703          	lw	a4,20(s1)
    80005894:	00271713          	slli	a4,a4,0x2
    80005898:	00e787b3          	add	a5,a5,a4
    8000589c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058a0:	0144a783          	lw	a5,20(s1)
    800058a4:	0017879b          	addiw	a5,a5,1
    800058a8:	0004a703          	lw	a4,0(s1)
    800058ac:	02e7e7bb          	remw	a5,a5,a4
    800058b0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800058b4:	0304b503          	ld	a0,48(s1)
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	7c8080e7          	jalr	1992(ra) # 80002080 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800058c0:	0204b503          	ld	a0,32(s1)
    800058c4:	ffffc097          	auipc	ra,0xffffc
    800058c8:	7bc080e7          	jalr	1980(ra) # 80002080 <_ZN9Semaphore6signalEv>

}
    800058cc:	01813083          	ld	ra,24(sp)
    800058d0:	01013403          	ld	s0,16(sp)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	00013903          	ld	s2,0(sp)
    800058dc:	02010113          	addi	sp,sp,32
    800058e0:	00008067          	ret

00000000800058e4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800058e4:	fe010113          	addi	sp,sp,-32
    800058e8:	00113c23          	sd	ra,24(sp)
    800058ec:	00813823          	sd	s0,16(sp)
    800058f0:	00913423          	sd	s1,8(sp)
    800058f4:	01213023          	sd	s2,0(sp)
    800058f8:	02010413          	addi	s0,sp,32
    800058fc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005900:	02053503          	ld	a0,32(a0)
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	750080e7          	jalr	1872(ra) # 80002054 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000590c:	0284b503          	ld	a0,40(s1)
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	744080e7          	jalr	1860(ra) # 80002054 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005918:	0084b703          	ld	a4,8(s1)
    8000591c:	0104a783          	lw	a5,16(s1)
    80005920:	00279693          	slli	a3,a5,0x2
    80005924:	00d70733          	add	a4,a4,a3
    80005928:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000592c:	0017879b          	addiw	a5,a5,1
    80005930:	0004a703          	lw	a4,0(s1)
    80005934:	02e7e7bb          	remw	a5,a5,a4
    80005938:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000593c:	0284b503          	ld	a0,40(s1)
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	740080e7          	jalr	1856(ra) # 80002080 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005948:	0184b503          	ld	a0,24(s1)
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	734080e7          	jalr	1844(ra) # 80002080 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005954:	00090513          	mv	a0,s2
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	00013903          	ld	s2,0(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret

0000000080005970 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	00813823          	sd	s0,16(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	01213023          	sd	s2,0(sp)
    80005984:	02010413          	addi	s0,sp,32
    80005988:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000598c:	02853503          	ld	a0,40(a0)
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	6c4080e7          	jalr	1732(ra) # 80002054 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005998:	0304b503          	ld	a0,48(s1)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	6b8080e7          	jalr	1720(ra) # 80002054 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800059a4:	0144a783          	lw	a5,20(s1)
    800059a8:	0104a903          	lw	s2,16(s1)
    800059ac:	0327ce63          	blt	a5,s2,800059e8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800059b0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800059b4:	0304b503          	ld	a0,48(s1)
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	6c8080e7          	jalr	1736(ra) # 80002080 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800059c0:	0284b503          	ld	a0,40(s1)
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	6bc080e7          	jalr	1724(ra) # 80002080 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059cc:	00090513          	mv	a0,s2
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	00813483          	ld	s1,8(sp)
    800059dc:	00013903          	ld	s2,0(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret
        ret = cap - head + tail;
    800059e8:	0004a703          	lw	a4,0(s1)
    800059ec:	4127093b          	subw	s2,a4,s2
    800059f0:	00f9093b          	addw	s2,s2,a5
    800059f4:	fc1ff06f          	j	800059b4 <_ZN9BufferCPP6getCntEv+0x44>

00000000800059f8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800059f8:	fe010113          	addi	sp,sp,-32
    800059fc:	00113c23          	sd	ra,24(sp)
    80005a00:	00813823          	sd	s0,16(sp)
    80005a04:	00913423          	sd	s1,8(sp)
    80005a08:	02010413          	addi	s0,sp,32
    80005a0c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005a10:	00a00513          	li	a0,10
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	6c0080e7          	jalr	1728(ra) # 800020d4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	8f450513          	addi	a0,a0,-1804 # 80009310 <CONSOLE_STATUS+0x300>
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	a0c080e7          	jalr	-1524(ra) # 80005430 <_Z11printStringPKc>
    while (getCnt()) {
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	f40080e7          	jalr	-192(ra) # 80005970 <_ZN9BufferCPP6getCntEv>
    80005a38:	02050c63          	beqz	a0,80005a70 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005a3c:	0084b783          	ld	a5,8(s1)
    80005a40:	0104a703          	lw	a4,16(s1)
    80005a44:	00271713          	slli	a4,a4,0x2
    80005a48:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005a4c:	0007c503          	lbu	a0,0(a5)
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	684080e7          	jalr	1668(ra) # 800020d4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005a58:	0104a783          	lw	a5,16(s1)
    80005a5c:	0017879b          	addiw	a5,a5,1
    80005a60:	0004a703          	lw	a4,0(s1)
    80005a64:	02e7e7bb          	remw	a5,a5,a4
    80005a68:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005a6c:	fc1ff06f          	j	80005a2c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005a70:	02100513          	li	a0,33
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	660080e7          	jalr	1632(ra) # 800020d4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005a7c:	00a00513          	li	a0,10
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	654080e7          	jalr	1620(ra) # 800020d4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005a88:	0084b503          	ld	a0,8(s1)
    80005a8c:	ffffb097          	auipc	ra,0xffffb
    80005a90:	70c080e7          	jalr	1804(ra) # 80001198 <_Z8mem_freePv>
    delete itemAvailable;
    80005a94:	0204b503          	ld	a0,32(s1)
    80005a98:	00050863          	beqz	a0,80005aa8 <_ZN9BufferCPPD1Ev+0xb0>
    80005a9c:	00053783          	ld	a5,0(a0)
    80005aa0:	0087b783          	ld	a5,8(a5)
    80005aa4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005aa8:	0184b503          	ld	a0,24(s1)
    80005aac:	00050863          	beqz	a0,80005abc <_ZN9BufferCPPD1Ev+0xc4>
    80005ab0:	00053783          	ld	a5,0(a0)
    80005ab4:	0087b783          	ld	a5,8(a5)
    80005ab8:	000780e7          	jalr	a5
    delete mutexTail;
    80005abc:	0304b503          	ld	a0,48(s1)
    80005ac0:	00050863          	beqz	a0,80005ad0 <_ZN9BufferCPPD1Ev+0xd8>
    80005ac4:	00053783          	ld	a5,0(a0)
    80005ac8:	0087b783          	ld	a5,8(a5)
    80005acc:	000780e7          	jalr	a5
    delete mutexHead;
    80005ad0:	0284b503          	ld	a0,40(s1)
    80005ad4:	00050863          	beqz	a0,80005ae4 <_ZN9BufferCPPD1Ev+0xec>
    80005ad8:	00053783          	ld	a5,0(a0)
    80005adc:	0087b783          	ld	a5,8(a5)
    80005ae0:	000780e7          	jalr	a5
}
    80005ae4:	01813083          	ld	ra,24(sp)
    80005ae8:	01013403          	ld	s0,16(sp)
    80005aec:	00813483          	ld	s1,8(sp)
    80005af0:	02010113          	addi	sp,sp,32
    80005af4:	00008067          	ret

0000000080005af8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005af8:	fe010113          	addi	sp,sp,-32
    80005afc:	00113c23          	sd	ra,24(sp)
    80005b00:	00813823          	sd	s0,16(sp)
    80005b04:	00913423          	sd	s1,8(sp)
    80005b08:	01213023          	sd	s2,0(sp)
    80005b0c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005b10:	00004517          	auipc	a0,0x4
    80005b14:	81850513          	addi	a0,a0,-2024 # 80009328 <CONSOLE_STATUS+0x318>
    80005b18:	00000097          	auipc	ra,0x0
    80005b1c:	918080e7          	jalr	-1768(ra) # 80005430 <_Z11printStringPKc>
     int test = getc() - '0';
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	8d8080e7          	jalr	-1832(ra) # 800013f8 <_Z4getcv>
    80005b28:	00050913          	mv	s2,a0
    80005b2c:	fd05049b          	addiw	s1,a0,-48
     getc(); // Enter posle broja
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	8c8080e7          	jalr	-1848(ra) # 800013f8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005b38:	fcb9091b          	addiw	s2,s2,-53
    80005b3c:	00100793          	li	a5,1
    80005b40:	0327f463          	bgeu	a5,s2,80005b68 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005b44:	00700793          	li	a5,7
    80005b48:	0e97e263          	bltu	a5,s1,80005c2c <_Z8userMainv+0x134>
    80005b4c:	00249493          	slli	s1,s1,0x2
    80005b50:	00004717          	auipc	a4,0x4
    80005b54:	9f070713          	addi	a4,a4,-1552 # 80009540 <CONSOLE_STATUS+0x530>
    80005b58:	00e484b3          	add	s1,s1,a4
    80005b5c:	0004a783          	lw	a5,0(s1)
    80005b60:	00e787b3          	add	a5,a5,a4
    80005b64:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005b68:	00003517          	auipc	a0,0x3
    80005b6c:	7e050513          	addi	a0,a0,2016 # 80009348 <CONSOLE_STATUS+0x338>
    80005b70:	00000097          	auipc	ra,0x0
    80005b74:	8c0080e7          	jalr	-1856(ra) # 80005430 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005b78:	01813083          	ld	ra,24(sp)
    80005b7c:	01013403          	ld	s0,16(sp)
    80005b80:	00813483          	ld	s1,8(sp)
    80005b84:	00013903          	ld	s2,0(sp)
    80005b88:	02010113          	addi	sp,sp,32
    80005b8c:	00008067          	ret
            Threads_C_API_test();
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	f18080e7          	jalr	-232(ra) # 80004aa8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005b98:	00003517          	auipc	a0,0x3
    80005b9c:	7e050513          	addi	a0,a0,2016 # 80009378 <CONSOLE_STATUS+0x368>
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	890080e7          	jalr	-1904(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005ba8:	fd1ff06f          	j	80005b78 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005bac:	ffffe097          	auipc	ra,0xffffe
    80005bb0:	ddc080e7          	jalr	-548(ra) # 80003988 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005bb4:	00004517          	auipc	a0,0x4
    80005bb8:	80450513          	addi	a0,a0,-2044 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005bbc:	00000097          	auipc	ra,0x0
    80005bc0:	874080e7          	jalr	-1932(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005bc4:	fb5ff06f          	j	80005b78 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005bc8:	ffffd097          	auipc	ra,0xffffd
    80005bcc:	614080e7          	jalr	1556(ra) # 800031dc <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005bd0:	00004517          	auipc	a0,0x4
    80005bd4:	82850513          	addi	a0,a0,-2008 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005bd8:	00000097          	auipc	ra,0x0
    80005bdc:	858080e7          	jalr	-1960(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005be0:	f99ff06f          	j	80005b78 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005be4:	fffff097          	auipc	ra,0xfffff
    80005be8:	208080e7          	jalr	520(ra) # 80004dec <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005bec:	00004517          	auipc	a0,0x4
    80005bf0:	85c50513          	addi	a0,a0,-1956 # 80009448 <CONSOLE_STATUS+0x438>
    80005bf4:	00000097          	auipc	ra,0x0
    80005bf8:	83c080e7          	jalr	-1988(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005bfc:	f7dff06f          	j	80005b78 <_Z8userMainv+0x80>
            System_Mode_test();
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	658080e7          	jalr	1624(ra) # 80006258 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005c08:	00004517          	auipc	a0,0x4
    80005c0c:	89850513          	addi	a0,a0,-1896 # 800094a0 <CONSOLE_STATUS+0x490>
    80005c10:	00000097          	auipc	ra,0x0
    80005c14:	820080e7          	jalr	-2016(ra) # 80005430 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005c18:	00004517          	auipc	a0,0x4
    80005c1c:	8a850513          	addi	a0,a0,-1880 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005c20:	00000097          	auipc	ra,0x0
    80005c24:	810080e7          	jalr	-2032(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005c28:	f51ff06f          	j	80005b78 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	8ec50513          	addi	a0,a0,-1812 # 80009518 <CONSOLE_STATUS+0x508>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	7fc080e7          	jalr	2044(ra) # 80005430 <_Z11printStringPKc>
    80005c3c:	f3dff06f          	j	80005b78 <_Z8userMainv+0x80>

0000000080005c40 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005c40:	fe010113          	addi	sp,sp,-32
    80005c44:	00113c23          	sd	ra,24(sp)
    80005c48:	00813823          	sd	s0,16(sp)
    80005c4c:	00913423          	sd	s1,8(sp)
    80005c50:	01213023          	sd	s2,0(sp)
    80005c54:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005c58:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005c5c:	00600493          	li	s1,6
    while (--i > 0) {
    80005c60:	fff4849b          	addiw	s1,s1,-1
    80005c64:	04905463          	blez	s1,80005cac <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005c68:	00004517          	auipc	a0,0x4
    80005c6c:	8f850513          	addi	a0,a0,-1800 # 80009560 <CONSOLE_STATUS+0x550>
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	7c0080e7          	jalr	1984(ra) # 80005430 <_Z11printStringPKc>
        printInt(sleep_time);
    80005c78:	00000613          	li	a2,0
    80005c7c:	00a00593          	li	a1,10
    80005c80:	0009051b          	sext.w	a0,s2
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	95c080e7          	jalr	-1700(ra) # 800055e0 <_Z8printIntiii>
        printString(" !\n");
    80005c8c:	00004517          	auipc	a0,0x4
    80005c90:	8dc50513          	addi	a0,a0,-1828 # 80009568 <CONSOLE_STATUS+0x558>
    80005c94:	fffff097          	auipc	ra,0xfffff
    80005c98:	79c080e7          	jalr	1948(ra) # 80005430 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005c9c:	00090513          	mv	a0,s2
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	73c080e7          	jalr	1852(ra) # 800013dc <_Z10time_sleepm>
    while (--i > 0) {
    80005ca8:	fb9ff06f          	j	80005c60 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005cac:	00a00793          	li	a5,10
    80005cb0:	02f95933          	divu	s2,s2,a5
    80005cb4:	fff90913          	addi	s2,s2,-1
    80005cb8:	00006797          	auipc	a5,0x6
    80005cbc:	b6078793          	addi	a5,a5,-1184 # 8000b818 <_ZL8finished>
    80005cc0:	01278933          	add	s2,a5,s2
    80005cc4:	00100793          	li	a5,1
    80005cc8:	00f90023          	sb	a5,0(s2)
}
    80005ccc:	01813083          	ld	ra,24(sp)
    80005cd0:	01013403          	ld	s0,16(sp)
    80005cd4:	00813483          	ld	s1,8(sp)
    80005cd8:	00013903          	ld	s2,0(sp)
    80005cdc:	02010113          	addi	sp,sp,32
    80005ce0:	00008067          	ret

0000000080005ce4 <_Z12testSleepingv>:

void testSleeping() {
    80005ce4:	fc010113          	addi	sp,sp,-64
    80005ce8:	02113c23          	sd	ra,56(sp)
    80005cec:	02813823          	sd	s0,48(sp)
    80005cf0:	02913423          	sd	s1,40(sp)
    80005cf4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005cf8:	00a00793          	li	a5,10
    80005cfc:	fcf43823          	sd	a5,-48(s0)
    80005d00:	01400793          	li	a5,20
    80005d04:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d08:	00000493          	li	s1,0
    80005d0c:	02c0006f          	j	80005d38 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d10:	00349793          	slli	a5,s1,0x3
    80005d14:	fd040613          	addi	a2,s0,-48
    80005d18:	00f60633          	add	a2,a2,a5
    80005d1c:	00000597          	auipc	a1,0x0
    80005d20:	f2458593          	addi	a1,a1,-220 # 80005c40 <_ZL9sleepyRunPv>
    80005d24:	fc040513          	addi	a0,s0,-64
    80005d28:	00f50533          	add	a0,a0,a5
    80005d2c:	ffffb097          	auipc	ra,0xffffb
    80005d30:	4a4080e7          	jalr	1188(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d34:	0014849b          	addiw	s1,s1,1
    80005d38:	00100793          	li	a5,1
    80005d3c:	fc97dae3          	bge	a5,s1,80005d10 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d40:	00006797          	auipc	a5,0x6
    80005d44:	ad87c783          	lbu	a5,-1320(a5) # 8000b818 <_ZL8finished>
    80005d48:	fe078ce3          	beqz	a5,80005d40 <_Z12testSleepingv+0x5c>
    80005d4c:	00006797          	auipc	a5,0x6
    80005d50:	acd7c783          	lbu	a5,-1331(a5) # 8000b819 <_ZL8finished+0x1>
    80005d54:	fe0786e3          	beqz	a5,80005d40 <_Z12testSleepingv+0x5c>
}
    80005d58:	03813083          	ld	ra,56(sp)
    80005d5c:	03013403          	ld	s0,48(sp)
    80005d60:	02813483          	ld	s1,40(sp)
    80005d64:	04010113          	addi	sp,sp,64
    80005d68:	00008067          	ret

0000000080005d6c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005d6c:	fe010113          	addi	sp,sp,-32
    80005d70:	00113c23          	sd	ra,24(sp)
    80005d74:	00813823          	sd	s0,16(sp)
    80005d78:	00913423          	sd	s1,8(sp)
    80005d7c:	01213023          	sd	s2,0(sp)
    80005d80:	02010413          	addi	s0,sp,32
    80005d84:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d88:	00100793          	li	a5,1
    80005d8c:	02a7f863          	bgeu	a5,a0,80005dbc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d90:	00a00793          	li	a5,10
    80005d94:	02f577b3          	remu	a5,a0,a5
    80005d98:	02078e63          	beqz	a5,80005dd4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d9c:	fff48513          	addi	a0,s1,-1
    80005da0:	00000097          	auipc	ra,0x0
    80005da4:	fcc080e7          	jalr	-52(ra) # 80005d6c <_ZL9fibonaccim>
    80005da8:	00050913          	mv	s2,a0
    80005dac:	ffe48513          	addi	a0,s1,-2
    80005db0:	00000097          	auipc	ra,0x0
    80005db4:	fbc080e7          	jalr	-68(ra) # 80005d6c <_ZL9fibonaccim>
    80005db8:	00a90533          	add	a0,s2,a0
}
    80005dbc:	01813083          	ld	ra,24(sp)
    80005dc0:	01013403          	ld	s0,16(sp)
    80005dc4:	00813483          	ld	s1,8(sp)
    80005dc8:	00013903          	ld	s2,0(sp)
    80005dcc:	02010113          	addi	sp,sp,32
    80005dd0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005dd4:	ffffb097          	auipc	ra,0xffffb
    80005dd8:	498080e7          	jalr	1176(ra) # 8000126c <_Z15thread_dispatchv>
    80005ddc:	fc1ff06f          	j	80005d9c <_ZL9fibonaccim+0x30>

0000000080005de0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005de0:	fe010113          	addi	sp,sp,-32
    80005de4:	00113c23          	sd	ra,24(sp)
    80005de8:	00813823          	sd	s0,16(sp)
    80005dec:	00913423          	sd	s1,8(sp)
    80005df0:	01213023          	sd	s2,0(sp)
    80005df4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005df8:	00a00493          	li	s1,10
    80005dfc:	0400006f          	j	80005e3c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e00:	00003517          	auipc	a0,0x3
    80005e04:	47850513          	addi	a0,a0,1144 # 80009278 <CONSOLE_STATUS+0x268>
    80005e08:	fffff097          	auipc	ra,0xfffff
    80005e0c:	628080e7          	jalr	1576(ra) # 80005430 <_Z11printStringPKc>
    80005e10:	00000613          	li	a2,0
    80005e14:	00a00593          	li	a1,10
    80005e18:	00048513          	mv	a0,s1
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	7c4080e7          	jalr	1988(ra) # 800055e0 <_Z8printIntiii>
    80005e24:	00003517          	auipc	a0,0x3
    80005e28:	67450513          	addi	a0,a0,1652 # 80009498 <CONSOLE_STATUS+0x488>
    80005e2c:	fffff097          	auipc	ra,0xfffff
    80005e30:	604080e7          	jalr	1540(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e34:	0014849b          	addiw	s1,s1,1
    80005e38:	0ff4f493          	andi	s1,s1,255
    80005e3c:	00c00793          	li	a5,12
    80005e40:	fc97f0e3          	bgeu	a5,s1,80005e00 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e44:	00003517          	auipc	a0,0x3
    80005e48:	43c50513          	addi	a0,a0,1084 # 80009280 <CONSOLE_STATUS+0x270>
    80005e4c:	fffff097          	auipc	ra,0xfffff
    80005e50:	5e4080e7          	jalr	1508(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e54:	00500313          	li	t1,5
    thread_dispatch();
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	414080e7          	jalr	1044(ra) # 8000126c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005e60:	01000513          	li	a0,16
    80005e64:	00000097          	auipc	ra,0x0
    80005e68:	f08080e7          	jalr	-248(ra) # 80005d6c <_ZL9fibonaccim>
    80005e6c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e70:	00003517          	auipc	a0,0x3
    80005e74:	42050513          	addi	a0,a0,1056 # 80009290 <CONSOLE_STATUS+0x280>
    80005e78:	fffff097          	auipc	ra,0xfffff
    80005e7c:	5b8080e7          	jalr	1464(ra) # 80005430 <_Z11printStringPKc>
    80005e80:	00000613          	li	a2,0
    80005e84:	00a00593          	li	a1,10
    80005e88:	0009051b          	sext.w	a0,s2
    80005e8c:	fffff097          	auipc	ra,0xfffff
    80005e90:	754080e7          	jalr	1876(ra) # 800055e0 <_Z8printIntiii>
    80005e94:	00003517          	auipc	a0,0x3
    80005e98:	60450513          	addi	a0,a0,1540 # 80009498 <CONSOLE_STATUS+0x488>
    80005e9c:	fffff097          	auipc	ra,0xfffff
    80005ea0:	594080e7          	jalr	1428(ra) # 80005430 <_Z11printStringPKc>
    80005ea4:	0400006f          	j	80005ee4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	3d050513          	addi	a0,a0,976 # 80009278 <CONSOLE_STATUS+0x268>
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	580080e7          	jalr	1408(ra) # 80005430 <_Z11printStringPKc>
    80005eb8:	00000613          	li	a2,0
    80005ebc:	00a00593          	li	a1,10
    80005ec0:	00048513          	mv	a0,s1
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	71c080e7          	jalr	1820(ra) # 800055e0 <_Z8printIntiii>
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	5cc50513          	addi	a0,a0,1484 # 80009498 <CONSOLE_STATUS+0x488>
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	55c080e7          	jalr	1372(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005edc:	0014849b          	addiw	s1,s1,1
    80005ee0:	0ff4f493          	andi	s1,s1,255
    80005ee4:	00f00793          	li	a5,15
    80005ee8:	fc97f0e3          	bgeu	a5,s1,80005ea8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005eec:	00003517          	auipc	a0,0x3
    80005ef0:	3b450513          	addi	a0,a0,948 # 800092a0 <CONSOLE_STATUS+0x290>
    80005ef4:	fffff097          	auipc	ra,0xfffff
    80005ef8:	53c080e7          	jalr	1340(ra) # 80005430 <_Z11printStringPKc>
    finishedD = true;
    80005efc:	00100793          	li	a5,1
    80005f00:	00006717          	auipc	a4,0x6
    80005f04:	90f70d23          	sb	a5,-1766(a4) # 8000b81a <_ZL9finishedD>
    thread_dispatch();
    80005f08:	ffffb097          	auipc	ra,0xffffb
    80005f0c:	364080e7          	jalr	868(ra) # 8000126c <_Z15thread_dispatchv>
}
    80005f10:	01813083          	ld	ra,24(sp)
    80005f14:	01013403          	ld	s0,16(sp)
    80005f18:	00813483          	ld	s1,8(sp)
    80005f1c:	00013903          	ld	s2,0(sp)
    80005f20:	02010113          	addi	sp,sp,32
    80005f24:	00008067          	ret

0000000080005f28 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f28:	fe010113          	addi	sp,sp,-32
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00913423          	sd	s1,8(sp)
    80005f38:	01213023          	sd	s2,0(sp)
    80005f3c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f40:	00000493          	li	s1,0
    80005f44:	0400006f          	j	80005f84 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	30050513          	addi	a0,a0,768 # 80009248 <CONSOLE_STATUS+0x238>
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	4e0080e7          	jalr	1248(ra) # 80005430 <_Z11printStringPKc>
    80005f58:	00000613          	li	a2,0
    80005f5c:	00a00593          	li	a1,10
    80005f60:	00048513          	mv	a0,s1
    80005f64:	fffff097          	auipc	ra,0xfffff
    80005f68:	67c080e7          	jalr	1660(ra) # 800055e0 <_Z8printIntiii>
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	52c50513          	addi	a0,a0,1324 # 80009498 <CONSOLE_STATUS+0x488>
    80005f74:	fffff097          	auipc	ra,0xfffff
    80005f78:	4bc080e7          	jalr	1212(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005f7c:	0014849b          	addiw	s1,s1,1
    80005f80:	0ff4f493          	andi	s1,s1,255
    80005f84:	00200793          	li	a5,2
    80005f88:	fc97f0e3          	bgeu	a5,s1,80005f48 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005f8c:	00003517          	auipc	a0,0x3
    80005f90:	2c450513          	addi	a0,a0,708 # 80009250 <CONSOLE_STATUS+0x240>
    80005f94:	fffff097          	auipc	ra,0xfffff
    80005f98:	49c080e7          	jalr	1180(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005f9c:	00700313          	li	t1,7
    thread_dispatch();
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	2cc080e7          	jalr	716(ra) # 8000126c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005fa8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005fac:	00003517          	auipc	a0,0x3
    80005fb0:	2b450513          	addi	a0,a0,692 # 80009260 <CONSOLE_STATUS+0x250>
    80005fb4:	fffff097          	auipc	ra,0xfffff
    80005fb8:	47c080e7          	jalr	1148(ra) # 80005430 <_Z11printStringPKc>
    80005fbc:	00000613          	li	a2,0
    80005fc0:	00a00593          	li	a1,10
    80005fc4:	0009051b          	sext.w	a0,s2
    80005fc8:	fffff097          	auipc	ra,0xfffff
    80005fcc:	618080e7          	jalr	1560(ra) # 800055e0 <_Z8printIntiii>
    80005fd0:	00003517          	auipc	a0,0x3
    80005fd4:	4c850513          	addi	a0,a0,1224 # 80009498 <CONSOLE_STATUS+0x488>
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	458080e7          	jalr	1112(ra) # 80005430 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005fe0:	00c00513          	li	a0,12
    80005fe4:	00000097          	auipc	ra,0x0
    80005fe8:	d88080e7          	jalr	-632(ra) # 80005d6c <_ZL9fibonaccim>
    80005fec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005ff0:	00003517          	auipc	a0,0x3
    80005ff4:	27850513          	addi	a0,a0,632 # 80009268 <CONSOLE_STATUS+0x258>
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	438080e7          	jalr	1080(ra) # 80005430 <_Z11printStringPKc>
    80006000:	00000613          	li	a2,0
    80006004:	00a00593          	li	a1,10
    80006008:	0009051b          	sext.w	a0,s2
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	5d4080e7          	jalr	1492(ra) # 800055e0 <_Z8printIntiii>
    80006014:	00003517          	auipc	a0,0x3
    80006018:	48450513          	addi	a0,a0,1156 # 80009498 <CONSOLE_STATUS+0x488>
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	414080e7          	jalr	1044(ra) # 80005430 <_Z11printStringPKc>
    80006024:	0400006f          	j	80006064 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006028:	00003517          	auipc	a0,0x3
    8000602c:	22050513          	addi	a0,a0,544 # 80009248 <CONSOLE_STATUS+0x238>
    80006030:	fffff097          	auipc	ra,0xfffff
    80006034:	400080e7          	jalr	1024(ra) # 80005430 <_Z11printStringPKc>
    80006038:	00000613          	li	a2,0
    8000603c:	00a00593          	li	a1,10
    80006040:	00048513          	mv	a0,s1
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	59c080e7          	jalr	1436(ra) # 800055e0 <_Z8printIntiii>
    8000604c:	00003517          	auipc	a0,0x3
    80006050:	44c50513          	addi	a0,a0,1100 # 80009498 <CONSOLE_STATUS+0x488>
    80006054:	fffff097          	auipc	ra,0xfffff
    80006058:	3dc080e7          	jalr	988(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000605c:	0014849b          	addiw	s1,s1,1
    80006060:	0ff4f493          	andi	s1,s1,255
    80006064:	00500793          	li	a5,5
    80006068:	fc97f0e3          	bgeu	a5,s1,80006028 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000606c:	00003517          	auipc	a0,0x3
    80006070:	1b450513          	addi	a0,a0,436 # 80009220 <CONSOLE_STATUS+0x210>
    80006074:	fffff097          	auipc	ra,0xfffff
    80006078:	3bc080e7          	jalr	956(ra) # 80005430 <_Z11printStringPKc>
    finishedC = true;
    8000607c:	00100793          	li	a5,1
    80006080:	00005717          	auipc	a4,0x5
    80006084:	78f70da3          	sb	a5,1947(a4) # 8000b81b <_ZL9finishedC>
    thread_dispatch();
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	1e4080e7          	jalr	484(ra) # 8000126c <_Z15thread_dispatchv>
}
    80006090:	01813083          	ld	ra,24(sp)
    80006094:	01013403          	ld	s0,16(sp)
    80006098:	00813483          	ld	s1,8(sp)
    8000609c:	00013903          	ld	s2,0(sp)
    800060a0:	02010113          	addi	sp,sp,32
    800060a4:	00008067          	ret

00000000800060a8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800060a8:	fe010113          	addi	sp,sp,-32
    800060ac:	00113c23          	sd	ra,24(sp)
    800060b0:	00813823          	sd	s0,16(sp)
    800060b4:	00913423          	sd	s1,8(sp)
    800060b8:	01213023          	sd	s2,0(sp)
    800060bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800060c0:	00000913          	li	s2,0
    800060c4:	0400006f          	j	80006104 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800060c8:	ffffb097          	auipc	ra,0xffffb
    800060cc:	1a4080e7          	jalr	420(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060d0:	00148493          	addi	s1,s1,1
    800060d4:	000027b7          	lui	a5,0x2
    800060d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060dc:	0097ee63          	bltu	a5,s1,800060f8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060e0:	00000713          	li	a4,0
    800060e4:	000077b7          	lui	a5,0x7
    800060e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060ec:	fce7eee3          	bltu	a5,a4,800060c8 <_ZL11workerBodyBPv+0x20>
    800060f0:	00170713          	addi	a4,a4,1
    800060f4:	ff1ff06f          	j	800060e4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800060f8:	00a00793          	li	a5,10
    800060fc:	04f90663          	beq	s2,a5,80006148 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006100:	00190913          	addi	s2,s2,1
    80006104:	00f00793          	li	a5,15
    80006108:	0527e463          	bltu	a5,s2,80006150 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000610c:	00003517          	auipc	a0,0x3
    80006110:	12450513          	addi	a0,a0,292 # 80009230 <CONSOLE_STATUS+0x220>
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	31c080e7          	jalr	796(ra) # 80005430 <_Z11printStringPKc>
    8000611c:	00000613          	li	a2,0
    80006120:	00a00593          	li	a1,10
    80006124:	0009051b          	sext.w	a0,s2
    80006128:	fffff097          	auipc	ra,0xfffff
    8000612c:	4b8080e7          	jalr	1208(ra) # 800055e0 <_Z8printIntiii>
    80006130:	00003517          	auipc	a0,0x3
    80006134:	36850513          	addi	a0,a0,872 # 80009498 <CONSOLE_STATUS+0x488>
    80006138:	fffff097          	auipc	ra,0xfffff
    8000613c:	2f8080e7          	jalr	760(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006140:	00000493          	li	s1,0
    80006144:	f91ff06f          	j	800060d4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006148:	14102ff3          	csrr	t6,sepc
    8000614c:	fb5ff06f          	j	80006100 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006150:	00003517          	auipc	a0,0x3
    80006154:	0e850513          	addi	a0,a0,232 # 80009238 <CONSOLE_STATUS+0x228>
    80006158:	fffff097          	auipc	ra,0xfffff
    8000615c:	2d8080e7          	jalr	728(ra) # 80005430 <_Z11printStringPKc>
    finishedB = true;
    80006160:	00100793          	li	a5,1
    80006164:	00005717          	auipc	a4,0x5
    80006168:	6af70c23          	sb	a5,1720(a4) # 8000b81c <_ZL9finishedB>
    thread_dispatch();
    8000616c:	ffffb097          	auipc	ra,0xffffb
    80006170:	100080e7          	jalr	256(ra) # 8000126c <_Z15thread_dispatchv>
}
    80006174:	01813083          	ld	ra,24(sp)
    80006178:	01013403          	ld	s0,16(sp)
    8000617c:	00813483          	ld	s1,8(sp)
    80006180:	00013903          	ld	s2,0(sp)
    80006184:	02010113          	addi	sp,sp,32
    80006188:	00008067          	ret

000000008000618c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000618c:	fe010113          	addi	sp,sp,-32
    80006190:	00113c23          	sd	ra,24(sp)
    80006194:	00813823          	sd	s0,16(sp)
    80006198:	00913423          	sd	s1,8(sp)
    8000619c:	01213023          	sd	s2,0(sp)
    800061a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800061a4:	00000913          	li	s2,0
    800061a8:	0380006f          	j	800061e0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	0c0080e7          	jalr	192(ra) # 8000126c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800061b4:	00148493          	addi	s1,s1,1
    800061b8:	000027b7          	lui	a5,0x2
    800061bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061c0:	0097ee63          	bltu	a5,s1,800061dc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061c4:	00000713          	li	a4,0
    800061c8:	000077b7          	lui	a5,0x7
    800061cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800061d0:	fce7eee3          	bltu	a5,a4,800061ac <_ZL11workerBodyAPv+0x20>
    800061d4:	00170713          	addi	a4,a4,1
    800061d8:	ff1ff06f          	j	800061c8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800061dc:	00190913          	addi	s2,s2,1
    800061e0:	00900793          	li	a5,9
    800061e4:	0527e063          	bltu	a5,s2,80006224 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800061e8:	00003517          	auipc	a0,0x3
    800061ec:	03050513          	addi	a0,a0,48 # 80009218 <CONSOLE_STATUS+0x208>
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	240080e7          	jalr	576(ra) # 80005430 <_Z11printStringPKc>
    800061f8:	00000613          	li	a2,0
    800061fc:	00a00593          	li	a1,10
    80006200:	0009051b          	sext.w	a0,s2
    80006204:	fffff097          	auipc	ra,0xfffff
    80006208:	3dc080e7          	jalr	988(ra) # 800055e0 <_Z8printIntiii>
    8000620c:	00003517          	auipc	a0,0x3
    80006210:	28c50513          	addi	a0,a0,652 # 80009498 <CONSOLE_STATUS+0x488>
    80006214:	fffff097          	auipc	ra,0xfffff
    80006218:	21c080e7          	jalr	540(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000621c:	00000493          	li	s1,0
    80006220:	f99ff06f          	j	800061b8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006224:	00003517          	auipc	a0,0x3
    80006228:	ffc50513          	addi	a0,a0,-4 # 80009220 <CONSOLE_STATUS+0x210>
    8000622c:	fffff097          	auipc	ra,0xfffff
    80006230:	204080e7          	jalr	516(ra) # 80005430 <_Z11printStringPKc>
    finishedA = true;
    80006234:	00100793          	li	a5,1
    80006238:	00005717          	auipc	a4,0x5
    8000623c:	5ef702a3          	sb	a5,1509(a4) # 8000b81d <_ZL9finishedA>
}
    80006240:	01813083          	ld	ra,24(sp)
    80006244:	01013403          	ld	s0,16(sp)
    80006248:	00813483          	ld	s1,8(sp)
    8000624c:	00013903          	ld	s2,0(sp)
    80006250:	02010113          	addi	sp,sp,32
    80006254:	00008067          	ret

0000000080006258 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006258:	fd010113          	addi	sp,sp,-48
    8000625c:	02113423          	sd	ra,40(sp)
    80006260:	02813023          	sd	s0,32(sp)
    80006264:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006268:	00000613          	li	a2,0
    8000626c:	00000597          	auipc	a1,0x0
    80006270:	f2058593          	addi	a1,a1,-224 # 8000618c <_ZL11workerBodyAPv>
    80006274:	fd040513          	addi	a0,s0,-48
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	f58080e7          	jalr	-168(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006280:	00003517          	auipc	a0,0x3
    80006284:	03050513          	addi	a0,a0,48 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	1a8080e7          	jalr	424(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006290:	00000613          	li	a2,0
    80006294:	00000597          	auipc	a1,0x0
    80006298:	e1458593          	addi	a1,a1,-492 # 800060a8 <_ZL11workerBodyBPv>
    8000629c:	fd840513          	addi	a0,s0,-40
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	f30080e7          	jalr	-208(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	02050513          	addi	a0,a0,32 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	180080e7          	jalr	384(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800062b8:	00000613          	li	a2,0
    800062bc:	00000597          	auipc	a1,0x0
    800062c0:	c6c58593          	addi	a1,a1,-916 # 80005f28 <_ZL11workerBodyCPv>
    800062c4:	fe040513          	addi	a0,s0,-32
    800062c8:	ffffb097          	auipc	ra,0xffffb
    800062cc:	f08080e7          	jalr	-248(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	01050513          	addi	a0,a0,16 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	158080e7          	jalr	344(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062e0:	00000613          	li	a2,0
    800062e4:	00000597          	auipc	a1,0x0
    800062e8:	afc58593          	addi	a1,a1,-1284 # 80005de0 <_ZL11workerBodyDPv>
    800062ec:	fe840513          	addi	a0,s0,-24
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	ee0080e7          	jalr	-288(ra) # 800011d0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	00050513          	mv	a0,a0
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	130080e7          	jalr	304(ra) # 80005430 <_Z11printStringPKc>
    80006308:	00c0006f          	j	80006314 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000630c:	ffffb097          	auipc	ra,0xffffb
    80006310:	f60080e7          	jalr	-160(ra) # 8000126c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006314:	00005797          	auipc	a5,0x5
    80006318:	5097c783          	lbu	a5,1289(a5) # 8000b81d <_ZL9finishedA>
    8000631c:	fe0788e3          	beqz	a5,8000630c <_Z16System_Mode_testv+0xb4>
    80006320:	00005797          	auipc	a5,0x5
    80006324:	4fc7c783          	lbu	a5,1276(a5) # 8000b81c <_ZL9finishedB>
    80006328:	fe0782e3          	beqz	a5,8000630c <_Z16System_Mode_testv+0xb4>
    8000632c:	00005797          	auipc	a5,0x5
    80006330:	4ef7c783          	lbu	a5,1263(a5) # 8000b81b <_ZL9finishedC>
    80006334:	fc078ce3          	beqz	a5,8000630c <_Z16System_Mode_testv+0xb4>
    80006338:	00005797          	auipc	a5,0x5
    8000633c:	4e27c783          	lbu	a5,1250(a5) # 8000b81a <_ZL9finishedD>
    80006340:	fc0786e3          	beqz	a5,8000630c <_Z16System_Mode_testv+0xb4>
    }

}
    80006344:	02813083          	ld	ra,40(sp)
    80006348:	02013403          	ld	s0,32(sp)
    8000634c:	03010113          	addi	sp,sp,48
    80006350:	00008067          	ret

0000000080006354 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006354:	fe010113          	addi	sp,sp,-32
    80006358:	00113c23          	sd	ra,24(sp)
    8000635c:	00813823          	sd	s0,16(sp)
    80006360:	00913423          	sd	s1,8(sp)
    80006364:	01213023          	sd	s2,0(sp)
    80006368:	02010413          	addi	s0,sp,32
    8000636c:	00050493          	mv	s1,a0
    80006370:	00058913          	mv	s2,a1
    80006374:	0015879b          	addiw	a5,a1,1
    80006378:	0007851b          	sext.w	a0,a5
    8000637c:	00f4a023          	sw	a5,0(s1)
    80006380:	0004a823          	sw	zero,16(s1)
    80006384:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006388:	00251513          	slli	a0,a0,0x2
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	dd4080e7          	jalr	-556(ra) # 80001160 <_Z9mem_allocm>
    80006394:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006398:	00000593          	li	a1,0
    8000639c:	02048513          	addi	a0,s1,32
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	f24080e7          	jalr	-220(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800063a8:	00090593          	mv	a1,s2
    800063ac:	01848513          	addi	a0,s1,24
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	f14080e7          	jalr	-236(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800063b8:	00100593          	li	a1,1
    800063bc:	02848513          	addi	a0,s1,40
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	f04080e7          	jalr	-252(ra) # 800012c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800063c8:	00100593          	li	a1,1
    800063cc:	03048513          	addi	a0,s1,48
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	ef4080e7          	jalr	-268(ra) # 800012c4 <_Z8sem_openPP4_semj>
}
    800063d8:	01813083          	ld	ra,24(sp)
    800063dc:	01013403          	ld	s0,16(sp)
    800063e0:	00813483          	ld	s1,8(sp)
    800063e4:	00013903          	ld	s2,0(sp)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret

00000000800063f0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800063f0:	fe010113          	addi	sp,sp,-32
    800063f4:	00113c23          	sd	ra,24(sp)
    800063f8:	00813823          	sd	s0,16(sp)
    800063fc:	00913423          	sd	s1,8(sp)
    80006400:	01213023          	sd	s2,0(sp)
    80006404:	02010413          	addi	s0,sp,32
    80006408:	00050493          	mv	s1,a0
    8000640c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006410:	01853503          	ld	a0,24(a0) # 80009310 <CONSOLE_STATUS+0x300>
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	f28080e7          	jalr	-216(ra) # 8000133c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000641c:	0304b503          	ld	a0,48(s1)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	f1c080e7          	jalr	-228(ra) # 8000133c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006428:	0084b783          	ld	a5,8(s1)
    8000642c:	0144a703          	lw	a4,20(s1)
    80006430:	00271713          	slli	a4,a4,0x2
    80006434:	00e787b3          	add	a5,a5,a4
    80006438:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000643c:	0144a783          	lw	a5,20(s1)
    80006440:	0017879b          	addiw	a5,a5,1
    80006444:	0004a703          	lw	a4,0(s1)
    80006448:	02e7e7bb          	remw	a5,a5,a4
    8000644c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006450:	0304b503          	ld	a0,48(s1)
    80006454:	ffffb097          	auipc	ra,0xffffb
    80006458:	f28080e7          	jalr	-216(ra) # 8000137c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000645c:	0204b503          	ld	a0,32(s1)
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	f1c080e7          	jalr	-228(ra) # 8000137c <_Z10sem_signalP4_sem>

}
    80006468:	01813083          	ld	ra,24(sp)
    8000646c:	01013403          	ld	s0,16(sp)
    80006470:	00813483          	ld	s1,8(sp)
    80006474:	00013903          	ld	s2,0(sp)
    80006478:	02010113          	addi	sp,sp,32
    8000647c:	00008067          	ret

0000000080006480 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006480:	fe010113          	addi	sp,sp,-32
    80006484:	00113c23          	sd	ra,24(sp)
    80006488:	00813823          	sd	s0,16(sp)
    8000648c:	00913423          	sd	s1,8(sp)
    80006490:	01213023          	sd	s2,0(sp)
    80006494:	02010413          	addi	s0,sp,32
    80006498:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000649c:	02053503          	ld	a0,32(a0)
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	e9c080e7          	jalr	-356(ra) # 8000133c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800064a8:	0284b503          	ld	a0,40(s1)
    800064ac:	ffffb097          	auipc	ra,0xffffb
    800064b0:	e90080e7          	jalr	-368(ra) # 8000133c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800064b4:	0084b703          	ld	a4,8(s1)
    800064b8:	0104a783          	lw	a5,16(s1)
    800064bc:	00279693          	slli	a3,a5,0x2
    800064c0:	00d70733          	add	a4,a4,a3
    800064c4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800064c8:	0017879b          	addiw	a5,a5,1
    800064cc:	0004a703          	lw	a4,0(s1)
    800064d0:	02e7e7bb          	remw	a5,a5,a4
    800064d4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800064d8:	0284b503          	ld	a0,40(s1)
    800064dc:	ffffb097          	auipc	ra,0xffffb
    800064e0:	ea0080e7          	jalr	-352(ra) # 8000137c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800064e4:	0184b503          	ld	a0,24(s1)
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	e94080e7          	jalr	-364(ra) # 8000137c <_Z10sem_signalP4_sem>

    return ret;
}
    800064f0:	00090513          	mv	a0,s2
    800064f4:	01813083          	ld	ra,24(sp)
    800064f8:	01013403          	ld	s0,16(sp)
    800064fc:	00813483          	ld	s1,8(sp)
    80006500:	00013903          	ld	s2,0(sp)
    80006504:	02010113          	addi	sp,sp,32
    80006508:	00008067          	ret

000000008000650c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000650c:	fe010113          	addi	sp,sp,-32
    80006510:	00113c23          	sd	ra,24(sp)
    80006514:	00813823          	sd	s0,16(sp)
    80006518:	00913423          	sd	s1,8(sp)
    8000651c:	01213023          	sd	s2,0(sp)
    80006520:	02010413          	addi	s0,sp,32
    80006524:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006528:	02853503          	ld	a0,40(a0)
    8000652c:	ffffb097          	auipc	ra,0xffffb
    80006530:	e10080e7          	jalr	-496(ra) # 8000133c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006534:	0304b503          	ld	a0,48(s1)
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	e04080e7          	jalr	-508(ra) # 8000133c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006540:	0144a783          	lw	a5,20(s1)
    80006544:	0104a903          	lw	s2,16(s1)
    80006548:	0327ce63          	blt	a5,s2,80006584 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000654c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006550:	0304b503          	ld	a0,48(s1)
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	e28080e7          	jalr	-472(ra) # 8000137c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000655c:	0284b503          	ld	a0,40(s1)
    80006560:	ffffb097          	auipc	ra,0xffffb
    80006564:	e1c080e7          	jalr	-484(ra) # 8000137c <_Z10sem_signalP4_sem>

    return ret;
}
    80006568:	00090513          	mv	a0,s2
    8000656c:	01813083          	ld	ra,24(sp)
    80006570:	01013403          	ld	s0,16(sp)
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	00013903          	ld	s2,0(sp)
    8000657c:	02010113          	addi	sp,sp,32
    80006580:	00008067          	ret
        ret = cap - head + tail;
    80006584:	0004a703          	lw	a4,0(s1)
    80006588:	4127093b          	subw	s2,a4,s2
    8000658c:	00f9093b          	addw	s2,s2,a5
    80006590:	fc1ff06f          	j	80006550 <_ZN6Buffer6getCntEv+0x44>

0000000080006594 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006594:	fe010113          	addi	sp,sp,-32
    80006598:	00113c23          	sd	ra,24(sp)
    8000659c:	00813823          	sd	s0,16(sp)
    800065a0:	00913423          	sd	s1,8(sp)
    800065a4:	02010413          	addi	s0,sp,32
    800065a8:	00050493          	mv	s1,a0
    putc('\n');
    800065ac:	00a00513          	li	a0,10
    800065b0:	ffffb097          	auipc	ra,0xffffb
    800065b4:	e98080e7          	jalr	-360(ra) # 80001448 <_Z4putcc>
    printString("Buffer deleted!\n");
    800065b8:	00003517          	auipc	a0,0x3
    800065bc:	d5850513          	addi	a0,a0,-680 # 80009310 <CONSOLE_STATUS+0x300>
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	e70080e7          	jalr	-400(ra) # 80005430 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800065c8:	00048513          	mv	a0,s1
    800065cc:	00000097          	auipc	ra,0x0
    800065d0:	f40080e7          	jalr	-192(ra) # 8000650c <_ZN6Buffer6getCntEv>
    800065d4:	02a05c63          	blez	a0,8000660c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800065d8:	0084b783          	ld	a5,8(s1)
    800065dc:	0104a703          	lw	a4,16(s1)
    800065e0:	00271713          	slli	a4,a4,0x2
    800065e4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800065e8:	0007c503          	lbu	a0,0(a5)
    800065ec:	ffffb097          	auipc	ra,0xffffb
    800065f0:	e5c080e7          	jalr	-420(ra) # 80001448 <_Z4putcc>
        head = (head + 1) % cap;
    800065f4:	0104a783          	lw	a5,16(s1)
    800065f8:	0017879b          	addiw	a5,a5,1
    800065fc:	0004a703          	lw	a4,0(s1)
    80006600:	02e7e7bb          	remw	a5,a5,a4
    80006604:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006608:	fc1ff06f          	j	800065c8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000660c:	02100513          	li	a0,33
    80006610:	ffffb097          	auipc	ra,0xffffb
    80006614:	e38080e7          	jalr	-456(ra) # 80001448 <_Z4putcc>
    putc('\n');
    80006618:	00a00513          	li	a0,10
    8000661c:	ffffb097          	auipc	ra,0xffffb
    80006620:	e2c080e7          	jalr	-468(ra) # 80001448 <_Z4putcc>
    mem_free(buffer);
    80006624:	0084b503          	ld	a0,8(s1)
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	b70080e7          	jalr	-1168(ra) # 80001198 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006630:	0204b503          	ld	a0,32(s1)
    80006634:	ffffb097          	auipc	ra,0xffffb
    80006638:	cd0080e7          	jalr	-816(ra) # 80001304 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000663c:	0184b503          	ld	a0,24(s1)
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	cc4080e7          	jalr	-828(ra) # 80001304 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006648:	0304b503          	ld	a0,48(s1)
    8000664c:	ffffb097          	auipc	ra,0xffffb
    80006650:	cb8080e7          	jalr	-840(ra) # 80001304 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006654:	0284b503          	ld	a0,40(s1)
    80006658:	ffffb097          	auipc	ra,0xffffb
    8000665c:	cac080e7          	jalr	-852(ra) # 80001304 <_Z9sem_closeP4_sem>
}
    80006660:	01813083          	ld	ra,24(sp)
    80006664:	01013403          	ld	s0,16(sp)
    80006668:	00813483          	ld	s1,8(sp)
    8000666c:	02010113          	addi	sp,sp,32
    80006670:	00008067          	ret

0000000080006674 <start>:
    80006674:	ff010113          	addi	sp,sp,-16
    80006678:	00813423          	sd	s0,8(sp)
    8000667c:	01010413          	addi	s0,sp,16
    80006680:	300027f3          	csrr	a5,mstatus
    80006684:	ffffe737          	lui	a4,0xffffe
    80006688:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1d7f>
    8000668c:	00e7f7b3          	and	a5,a5,a4
    80006690:	00001737          	lui	a4,0x1
    80006694:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006698:	00e7e7b3          	or	a5,a5,a4
    8000669c:	30079073          	csrw	mstatus,a5
    800066a0:	00000797          	auipc	a5,0x0
    800066a4:	16078793          	addi	a5,a5,352 # 80006800 <system_main>
    800066a8:	34179073          	csrw	mepc,a5
    800066ac:	00000793          	li	a5,0
    800066b0:	18079073          	csrw	satp,a5
    800066b4:	000107b7          	lui	a5,0x10
    800066b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800066bc:	30279073          	csrw	medeleg,a5
    800066c0:	30379073          	csrw	mideleg,a5
    800066c4:	104027f3          	csrr	a5,sie
    800066c8:	2227e793          	ori	a5,a5,546
    800066cc:	10479073          	csrw	sie,a5
    800066d0:	fff00793          	li	a5,-1
    800066d4:	00a7d793          	srli	a5,a5,0xa
    800066d8:	3b079073          	csrw	pmpaddr0,a5
    800066dc:	00f00793          	li	a5,15
    800066e0:	3a079073          	csrw	pmpcfg0,a5
    800066e4:	f14027f3          	csrr	a5,mhartid
    800066e8:	0200c737          	lui	a4,0x200c
    800066ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066f0:	0007869b          	sext.w	a3,a5
    800066f4:	00269713          	slli	a4,a3,0x2
    800066f8:	000f4637          	lui	a2,0xf4
    800066fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006700:	00d70733          	add	a4,a4,a3
    80006704:	0037979b          	slliw	a5,a5,0x3
    80006708:	020046b7          	lui	a3,0x2004
    8000670c:	00d787b3          	add	a5,a5,a3
    80006710:	00c585b3          	add	a1,a1,a2
    80006714:	00371693          	slli	a3,a4,0x3
    80006718:	00005717          	auipc	a4,0x5
    8000671c:	10870713          	addi	a4,a4,264 # 8000b820 <timer_scratch>
    80006720:	00b7b023          	sd	a1,0(a5)
    80006724:	00d70733          	add	a4,a4,a3
    80006728:	00f73c23          	sd	a5,24(a4)
    8000672c:	02c73023          	sd	a2,32(a4)
    80006730:	34071073          	csrw	mscratch,a4
    80006734:	00000797          	auipc	a5,0x0
    80006738:	6ec78793          	addi	a5,a5,1772 # 80006e20 <timervec>
    8000673c:	30579073          	csrw	mtvec,a5
    80006740:	300027f3          	csrr	a5,mstatus
    80006744:	0087e793          	ori	a5,a5,8
    80006748:	30079073          	csrw	mstatus,a5
    8000674c:	304027f3          	csrr	a5,mie
    80006750:	0807e793          	ori	a5,a5,128
    80006754:	30479073          	csrw	mie,a5
    80006758:	f14027f3          	csrr	a5,mhartid
    8000675c:	0007879b          	sext.w	a5,a5
    80006760:	00078213          	mv	tp,a5
    80006764:	30200073          	mret
    80006768:	00813403          	ld	s0,8(sp)
    8000676c:	01010113          	addi	sp,sp,16
    80006770:	00008067          	ret

0000000080006774 <timerinit>:
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00813423          	sd	s0,8(sp)
    8000677c:	01010413          	addi	s0,sp,16
    80006780:	f14027f3          	csrr	a5,mhartid
    80006784:	0200c737          	lui	a4,0x200c
    80006788:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000678c:	0007869b          	sext.w	a3,a5
    80006790:	00269713          	slli	a4,a3,0x2
    80006794:	000f4637          	lui	a2,0xf4
    80006798:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000679c:	00d70733          	add	a4,a4,a3
    800067a0:	0037979b          	slliw	a5,a5,0x3
    800067a4:	020046b7          	lui	a3,0x2004
    800067a8:	00d787b3          	add	a5,a5,a3
    800067ac:	00c585b3          	add	a1,a1,a2
    800067b0:	00371693          	slli	a3,a4,0x3
    800067b4:	00005717          	auipc	a4,0x5
    800067b8:	06c70713          	addi	a4,a4,108 # 8000b820 <timer_scratch>
    800067bc:	00b7b023          	sd	a1,0(a5)
    800067c0:	00d70733          	add	a4,a4,a3
    800067c4:	00f73c23          	sd	a5,24(a4)
    800067c8:	02c73023          	sd	a2,32(a4)
    800067cc:	34071073          	csrw	mscratch,a4
    800067d0:	00000797          	auipc	a5,0x0
    800067d4:	65078793          	addi	a5,a5,1616 # 80006e20 <timervec>
    800067d8:	30579073          	csrw	mtvec,a5
    800067dc:	300027f3          	csrr	a5,mstatus
    800067e0:	0087e793          	ori	a5,a5,8
    800067e4:	30079073          	csrw	mstatus,a5
    800067e8:	304027f3          	csrr	a5,mie
    800067ec:	0807e793          	ori	a5,a5,128
    800067f0:	30479073          	csrw	mie,a5
    800067f4:	00813403          	ld	s0,8(sp)
    800067f8:	01010113          	addi	sp,sp,16
    800067fc:	00008067          	ret

0000000080006800 <system_main>:
    80006800:	fe010113          	addi	sp,sp,-32
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00913423          	sd	s1,8(sp)
    8000680c:	00113c23          	sd	ra,24(sp)
    80006810:	02010413          	addi	s0,sp,32
    80006814:	00000097          	auipc	ra,0x0
    80006818:	0c4080e7          	jalr	196(ra) # 800068d8 <cpuid>
    8000681c:	00005497          	auipc	s1,0x5
    80006820:	f1448493          	addi	s1,s1,-236 # 8000b730 <started>
    80006824:	02050263          	beqz	a0,80006848 <system_main+0x48>
    80006828:	0004a783          	lw	a5,0(s1)
    8000682c:	0007879b          	sext.w	a5,a5
    80006830:	fe078ce3          	beqz	a5,80006828 <system_main+0x28>
    80006834:	0ff0000f          	fence
    80006838:	00003517          	auipc	a0,0x3
    8000683c:	d6850513          	addi	a0,a0,-664 # 800095a0 <CONSOLE_STATUS+0x590>
    80006840:	00001097          	auipc	ra,0x1
    80006844:	a7c080e7          	jalr	-1412(ra) # 800072bc <panic>
    80006848:	00001097          	auipc	ra,0x1
    8000684c:	9d0080e7          	jalr	-1584(ra) # 80007218 <consoleinit>
    80006850:	00001097          	auipc	ra,0x1
    80006854:	15c080e7          	jalr	348(ra) # 800079ac <printfinit>
    80006858:	00003517          	auipc	a0,0x3
    8000685c:	c4050513          	addi	a0,a0,-960 # 80009498 <CONSOLE_STATUS+0x488>
    80006860:	00001097          	auipc	ra,0x1
    80006864:	ab8080e7          	jalr	-1352(ra) # 80007318 <__printf>
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	d0850513          	addi	a0,a0,-760 # 80009570 <CONSOLE_STATUS+0x560>
    80006870:	00001097          	auipc	ra,0x1
    80006874:	aa8080e7          	jalr	-1368(ra) # 80007318 <__printf>
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	c2050513          	addi	a0,a0,-992 # 80009498 <CONSOLE_STATUS+0x488>
    80006880:	00001097          	auipc	ra,0x1
    80006884:	a98080e7          	jalr	-1384(ra) # 80007318 <__printf>
    80006888:	00001097          	auipc	ra,0x1
    8000688c:	4b0080e7          	jalr	1200(ra) # 80007d38 <kinit>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	148080e7          	jalr	328(ra) # 800069d8 <trapinit>
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	16c080e7          	jalr	364(ra) # 80006a04 <trapinithart>
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	5c0080e7          	jalr	1472(ra) # 80006e60 <plicinit>
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	5e0080e7          	jalr	1504(ra) # 80006e88 <plicinithart>
    800068b0:	00000097          	auipc	ra,0x0
    800068b4:	078080e7          	jalr	120(ra) # 80006928 <userinit>
    800068b8:	0ff0000f          	fence
    800068bc:	00100793          	li	a5,1
    800068c0:	00003517          	auipc	a0,0x3
    800068c4:	cc850513          	addi	a0,a0,-824 # 80009588 <CONSOLE_STATUS+0x578>
    800068c8:	00f4a023          	sw	a5,0(s1)
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	a4c080e7          	jalr	-1460(ra) # 80007318 <__printf>
    800068d4:	0000006f          	j	800068d4 <system_main+0xd4>

00000000800068d8 <cpuid>:
    800068d8:	ff010113          	addi	sp,sp,-16
    800068dc:	00813423          	sd	s0,8(sp)
    800068e0:	01010413          	addi	s0,sp,16
    800068e4:	00020513          	mv	a0,tp
    800068e8:	00813403          	ld	s0,8(sp)
    800068ec:	0005051b          	sext.w	a0,a0
    800068f0:	01010113          	addi	sp,sp,16
    800068f4:	00008067          	ret

00000000800068f8 <mycpu>:
    800068f8:	ff010113          	addi	sp,sp,-16
    800068fc:	00813423          	sd	s0,8(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	00020793          	mv	a5,tp
    80006908:	00813403          	ld	s0,8(sp)
    8000690c:	0007879b          	sext.w	a5,a5
    80006910:	00779793          	slli	a5,a5,0x7
    80006914:	00006517          	auipc	a0,0x6
    80006918:	f3c50513          	addi	a0,a0,-196 # 8000c850 <cpus>
    8000691c:	00f50533          	add	a0,a0,a5
    80006920:	01010113          	addi	sp,sp,16
    80006924:	00008067          	ret

0000000080006928 <userinit>:
    80006928:	ff010113          	addi	sp,sp,-16
    8000692c:	00813423          	sd	s0,8(sp)
    80006930:	01010413          	addi	s0,sp,16
    80006934:	00813403          	ld	s0,8(sp)
    80006938:	01010113          	addi	sp,sp,16
    8000693c:	ffffb317          	auipc	t1,0xffffb
    80006940:	3b430067          	jr	948(t1) # 80001cf0 <main>

0000000080006944 <either_copyout>:
    80006944:	ff010113          	addi	sp,sp,-16
    80006948:	00813023          	sd	s0,0(sp)
    8000694c:	00113423          	sd	ra,8(sp)
    80006950:	01010413          	addi	s0,sp,16
    80006954:	02051663          	bnez	a0,80006980 <either_copyout+0x3c>
    80006958:	00058513          	mv	a0,a1
    8000695c:	00060593          	mv	a1,a2
    80006960:	0006861b          	sext.w	a2,a3
    80006964:	00002097          	auipc	ra,0x2
    80006968:	c60080e7          	jalr	-928(ra) # 800085c4 <__memmove>
    8000696c:	00813083          	ld	ra,8(sp)
    80006970:	00013403          	ld	s0,0(sp)
    80006974:	00000513          	li	a0,0
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00008067          	ret
    80006980:	00003517          	auipc	a0,0x3
    80006984:	c4850513          	addi	a0,a0,-952 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	934080e7          	jalr	-1740(ra) # 800072bc <panic>

0000000080006990 <either_copyin>:
    80006990:	ff010113          	addi	sp,sp,-16
    80006994:	00813023          	sd	s0,0(sp)
    80006998:	00113423          	sd	ra,8(sp)
    8000699c:	01010413          	addi	s0,sp,16
    800069a0:	02059463          	bnez	a1,800069c8 <either_copyin+0x38>
    800069a4:	00060593          	mv	a1,a2
    800069a8:	0006861b          	sext.w	a2,a3
    800069ac:	00002097          	auipc	ra,0x2
    800069b0:	c18080e7          	jalr	-1000(ra) # 800085c4 <__memmove>
    800069b4:	00813083          	ld	ra,8(sp)
    800069b8:	00013403          	ld	s0,0(sp)
    800069bc:	00000513          	li	a0,0
    800069c0:	01010113          	addi	sp,sp,16
    800069c4:	00008067          	ret
    800069c8:	00003517          	auipc	a0,0x3
    800069cc:	c2850513          	addi	a0,a0,-984 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800069d0:	00001097          	auipc	ra,0x1
    800069d4:	8ec080e7          	jalr	-1812(ra) # 800072bc <panic>

00000000800069d8 <trapinit>:
    800069d8:	ff010113          	addi	sp,sp,-16
    800069dc:	00813423          	sd	s0,8(sp)
    800069e0:	01010413          	addi	s0,sp,16
    800069e4:	00813403          	ld	s0,8(sp)
    800069e8:	00003597          	auipc	a1,0x3
    800069ec:	c3058593          	addi	a1,a1,-976 # 80009618 <CONSOLE_STATUS+0x608>
    800069f0:	00006517          	auipc	a0,0x6
    800069f4:	ee050513          	addi	a0,a0,-288 # 8000c8d0 <tickslock>
    800069f8:	01010113          	addi	sp,sp,16
    800069fc:	00001317          	auipc	t1,0x1
    80006a00:	5cc30067          	jr	1484(t1) # 80007fc8 <initlock>

0000000080006a04 <trapinithart>:
    80006a04:	ff010113          	addi	sp,sp,-16
    80006a08:	00813423          	sd	s0,8(sp)
    80006a0c:	01010413          	addi	s0,sp,16
    80006a10:	00000797          	auipc	a5,0x0
    80006a14:	30078793          	addi	a5,a5,768 # 80006d10 <kernelvec>
    80006a18:	10579073          	csrw	stvec,a5
    80006a1c:	00813403          	ld	s0,8(sp)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret

0000000080006a28 <usertrap>:
    80006a28:	ff010113          	addi	sp,sp,-16
    80006a2c:	00813423          	sd	s0,8(sp)
    80006a30:	01010413          	addi	s0,sp,16
    80006a34:	00813403          	ld	s0,8(sp)
    80006a38:	01010113          	addi	sp,sp,16
    80006a3c:	00008067          	ret

0000000080006a40 <usertrapret>:
    80006a40:	ff010113          	addi	sp,sp,-16
    80006a44:	00813423          	sd	s0,8(sp)
    80006a48:	01010413          	addi	s0,sp,16
    80006a4c:	00813403          	ld	s0,8(sp)
    80006a50:	01010113          	addi	sp,sp,16
    80006a54:	00008067          	ret

0000000080006a58 <kerneltrap>:
    80006a58:	fe010113          	addi	sp,sp,-32
    80006a5c:	00813823          	sd	s0,16(sp)
    80006a60:	00113c23          	sd	ra,24(sp)
    80006a64:	00913423          	sd	s1,8(sp)
    80006a68:	02010413          	addi	s0,sp,32
    80006a6c:	142025f3          	csrr	a1,scause
    80006a70:	100027f3          	csrr	a5,sstatus
    80006a74:	0027f793          	andi	a5,a5,2
    80006a78:	10079c63          	bnez	a5,80006b90 <kerneltrap+0x138>
    80006a7c:	142027f3          	csrr	a5,scause
    80006a80:	0207ce63          	bltz	a5,80006abc <kerneltrap+0x64>
    80006a84:	00003517          	auipc	a0,0x3
    80006a88:	bdc50513          	addi	a0,a0,-1060 # 80009660 <CONSOLE_STATUS+0x650>
    80006a8c:	00001097          	auipc	ra,0x1
    80006a90:	88c080e7          	jalr	-1908(ra) # 80007318 <__printf>
    80006a94:	141025f3          	csrr	a1,sepc
    80006a98:	14302673          	csrr	a2,stval
    80006a9c:	00003517          	auipc	a0,0x3
    80006aa0:	bd450513          	addi	a0,a0,-1068 # 80009670 <CONSOLE_STATUS+0x660>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	874080e7          	jalr	-1932(ra) # 80007318 <__printf>
    80006aac:	00003517          	auipc	a0,0x3
    80006ab0:	bdc50513          	addi	a0,a0,-1060 # 80009688 <CONSOLE_STATUS+0x678>
    80006ab4:	00001097          	auipc	ra,0x1
    80006ab8:	808080e7          	jalr	-2040(ra) # 800072bc <panic>
    80006abc:	0ff7f713          	andi	a4,a5,255
    80006ac0:	00900693          	li	a3,9
    80006ac4:	04d70063          	beq	a4,a3,80006b04 <kerneltrap+0xac>
    80006ac8:	fff00713          	li	a4,-1
    80006acc:	03f71713          	slli	a4,a4,0x3f
    80006ad0:	00170713          	addi	a4,a4,1
    80006ad4:	fae798e3          	bne	a5,a4,80006a84 <kerneltrap+0x2c>
    80006ad8:	00000097          	auipc	ra,0x0
    80006adc:	e00080e7          	jalr	-512(ra) # 800068d8 <cpuid>
    80006ae0:	06050663          	beqz	a0,80006b4c <kerneltrap+0xf4>
    80006ae4:	144027f3          	csrr	a5,sip
    80006ae8:	ffd7f793          	andi	a5,a5,-3
    80006aec:	14479073          	csrw	sip,a5
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	3d0080e7          	jalr	976(ra) # 80006ed4 <plic_claim>
    80006b0c:	00a00793          	li	a5,10
    80006b10:	00050493          	mv	s1,a0
    80006b14:	06f50863          	beq	a0,a5,80006b84 <kerneltrap+0x12c>
    80006b18:	fc050ce3          	beqz	a0,80006af0 <kerneltrap+0x98>
    80006b1c:	00050593          	mv	a1,a0
    80006b20:	00003517          	auipc	a0,0x3
    80006b24:	b2050513          	addi	a0,a0,-1248 # 80009640 <CONSOLE_STATUS+0x630>
    80006b28:	00000097          	auipc	ra,0x0
    80006b2c:	7f0080e7          	jalr	2032(ra) # 80007318 <__printf>
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	01813083          	ld	ra,24(sp)
    80006b38:	00048513          	mv	a0,s1
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	02010113          	addi	sp,sp,32
    80006b44:	00000317          	auipc	t1,0x0
    80006b48:	3c830067          	jr	968(t1) # 80006f0c <plic_complete>
    80006b4c:	00006517          	auipc	a0,0x6
    80006b50:	d8450513          	addi	a0,a0,-636 # 8000c8d0 <tickslock>
    80006b54:	00001097          	auipc	ra,0x1
    80006b58:	498080e7          	jalr	1176(ra) # 80007fec <acquire>
    80006b5c:	00005717          	auipc	a4,0x5
    80006b60:	bd870713          	addi	a4,a4,-1064 # 8000b734 <ticks>
    80006b64:	00072783          	lw	a5,0(a4)
    80006b68:	00006517          	auipc	a0,0x6
    80006b6c:	d6850513          	addi	a0,a0,-664 # 8000c8d0 <tickslock>
    80006b70:	0017879b          	addiw	a5,a5,1
    80006b74:	00f72023          	sw	a5,0(a4)
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	540080e7          	jalr	1344(ra) # 800080b8 <release>
    80006b80:	f65ff06f          	j	80006ae4 <kerneltrap+0x8c>
    80006b84:	00001097          	auipc	ra,0x1
    80006b88:	09c080e7          	jalr	156(ra) # 80007c20 <uartintr>
    80006b8c:	fa5ff06f          	j	80006b30 <kerneltrap+0xd8>
    80006b90:	00003517          	auipc	a0,0x3
    80006b94:	a9050513          	addi	a0,a0,-1392 # 80009620 <CONSOLE_STATUS+0x610>
    80006b98:	00000097          	auipc	ra,0x0
    80006b9c:	724080e7          	jalr	1828(ra) # 800072bc <panic>

0000000080006ba0 <clockintr>:
    80006ba0:	fe010113          	addi	sp,sp,-32
    80006ba4:	00813823          	sd	s0,16(sp)
    80006ba8:	00913423          	sd	s1,8(sp)
    80006bac:	00113c23          	sd	ra,24(sp)
    80006bb0:	02010413          	addi	s0,sp,32
    80006bb4:	00006497          	auipc	s1,0x6
    80006bb8:	d1c48493          	addi	s1,s1,-740 # 8000c8d0 <tickslock>
    80006bbc:	00048513          	mv	a0,s1
    80006bc0:	00001097          	auipc	ra,0x1
    80006bc4:	42c080e7          	jalr	1068(ra) # 80007fec <acquire>
    80006bc8:	00005717          	auipc	a4,0x5
    80006bcc:	b6c70713          	addi	a4,a4,-1172 # 8000b734 <ticks>
    80006bd0:	00072783          	lw	a5,0(a4)
    80006bd4:	01013403          	ld	s0,16(sp)
    80006bd8:	01813083          	ld	ra,24(sp)
    80006bdc:	00048513          	mv	a0,s1
    80006be0:	0017879b          	addiw	a5,a5,1
    80006be4:	00813483          	ld	s1,8(sp)
    80006be8:	00f72023          	sw	a5,0(a4)
    80006bec:	02010113          	addi	sp,sp,32
    80006bf0:	00001317          	auipc	t1,0x1
    80006bf4:	4c830067          	jr	1224(t1) # 800080b8 <release>

0000000080006bf8 <devintr>:
    80006bf8:	142027f3          	csrr	a5,scause
    80006bfc:	00000513          	li	a0,0
    80006c00:	0007c463          	bltz	a5,80006c08 <devintr+0x10>
    80006c04:	00008067          	ret
    80006c08:	fe010113          	addi	sp,sp,-32
    80006c0c:	00813823          	sd	s0,16(sp)
    80006c10:	00113c23          	sd	ra,24(sp)
    80006c14:	00913423          	sd	s1,8(sp)
    80006c18:	02010413          	addi	s0,sp,32
    80006c1c:	0ff7f713          	andi	a4,a5,255
    80006c20:	00900693          	li	a3,9
    80006c24:	04d70c63          	beq	a4,a3,80006c7c <devintr+0x84>
    80006c28:	fff00713          	li	a4,-1
    80006c2c:	03f71713          	slli	a4,a4,0x3f
    80006c30:	00170713          	addi	a4,a4,1
    80006c34:	00e78c63          	beq	a5,a4,80006c4c <devintr+0x54>
    80006c38:	01813083          	ld	ra,24(sp)
    80006c3c:	01013403          	ld	s0,16(sp)
    80006c40:	00813483          	ld	s1,8(sp)
    80006c44:	02010113          	addi	sp,sp,32
    80006c48:	00008067          	ret
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	c8c080e7          	jalr	-884(ra) # 800068d8 <cpuid>
    80006c54:	06050663          	beqz	a0,80006cc0 <devintr+0xc8>
    80006c58:	144027f3          	csrr	a5,sip
    80006c5c:	ffd7f793          	andi	a5,a5,-3
    80006c60:	14479073          	csrw	sip,a5
    80006c64:	01813083          	ld	ra,24(sp)
    80006c68:	01013403          	ld	s0,16(sp)
    80006c6c:	00813483          	ld	s1,8(sp)
    80006c70:	00200513          	li	a0,2
    80006c74:	02010113          	addi	sp,sp,32
    80006c78:	00008067          	ret
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	258080e7          	jalr	600(ra) # 80006ed4 <plic_claim>
    80006c84:	00a00793          	li	a5,10
    80006c88:	00050493          	mv	s1,a0
    80006c8c:	06f50663          	beq	a0,a5,80006cf8 <devintr+0x100>
    80006c90:	00100513          	li	a0,1
    80006c94:	fa0482e3          	beqz	s1,80006c38 <devintr+0x40>
    80006c98:	00048593          	mv	a1,s1
    80006c9c:	00003517          	auipc	a0,0x3
    80006ca0:	9a450513          	addi	a0,a0,-1628 # 80009640 <CONSOLE_STATUS+0x630>
    80006ca4:	00000097          	auipc	ra,0x0
    80006ca8:	674080e7          	jalr	1652(ra) # 80007318 <__printf>
    80006cac:	00048513          	mv	a0,s1
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	25c080e7          	jalr	604(ra) # 80006f0c <plic_complete>
    80006cb8:	00100513          	li	a0,1
    80006cbc:	f7dff06f          	j	80006c38 <devintr+0x40>
    80006cc0:	00006517          	auipc	a0,0x6
    80006cc4:	c1050513          	addi	a0,a0,-1008 # 8000c8d0 <tickslock>
    80006cc8:	00001097          	auipc	ra,0x1
    80006ccc:	324080e7          	jalr	804(ra) # 80007fec <acquire>
    80006cd0:	00005717          	auipc	a4,0x5
    80006cd4:	a6470713          	addi	a4,a4,-1436 # 8000b734 <ticks>
    80006cd8:	00072783          	lw	a5,0(a4)
    80006cdc:	00006517          	auipc	a0,0x6
    80006ce0:	bf450513          	addi	a0,a0,-1036 # 8000c8d0 <tickslock>
    80006ce4:	0017879b          	addiw	a5,a5,1
    80006ce8:	00f72023          	sw	a5,0(a4)
    80006cec:	00001097          	auipc	ra,0x1
    80006cf0:	3cc080e7          	jalr	972(ra) # 800080b8 <release>
    80006cf4:	f65ff06f          	j	80006c58 <devintr+0x60>
    80006cf8:	00001097          	auipc	ra,0x1
    80006cfc:	f28080e7          	jalr	-216(ra) # 80007c20 <uartintr>
    80006d00:	fadff06f          	j	80006cac <devintr+0xb4>
	...

0000000080006d10 <kernelvec>:
    80006d10:	f0010113          	addi	sp,sp,-256
    80006d14:	00113023          	sd	ra,0(sp)
    80006d18:	00213423          	sd	sp,8(sp)
    80006d1c:	00313823          	sd	gp,16(sp)
    80006d20:	00413c23          	sd	tp,24(sp)
    80006d24:	02513023          	sd	t0,32(sp)
    80006d28:	02613423          	sd	t1,40(sp)
    80006d2c:	02713823          	sd	t2,48(sp)
    80006d30:	02813c23          	sd	s0,56(sp)
    80006d34:	04913023          	sd	s1,64(sp)
    80006d38:	04a13423          	sd	a0,72(sp)
    80006d3c:	04b13823          	sd	a1,80(sp)
    80006d40:	04c13c23          	sd	a2,88(sp)
    80006d44:	06d13023          	sd	a3,96(sp)
    80006d48:	06e13423          	sd	a4,104(sp)
    80006d4c:	06f13823          	sd	a5,112(sp)
    80006d50:	07013c23          	sd	a6,120(sp)
    80006d54:	09113023          	sd	a7,128(sp)
    80006d58:	09213423          	sd	s2,136(sp)
    80006d5c:	09313823          	sd	s3,144(sp)
    80006d60:	09413c23          	sd	s4,152(sp)
    80006d64:	0b513023          	sd	s5,160(sp)
    80006d68:	0b613423          	sd	s6,168(sp)
    80006d6c:	0b713823          	sd	s7,176(sp)
    80006d70:	0b813c23          	sd	s8,184(sp)
    80006d74:	0d913023          	sd	s9,192(sp)
    80006d78:	0da13423          	sd	s10,200(sp)
    80006d7c:	0db13823          	sd	s11,208(sp)
    80006d80:	0dc13c23          	sd	t3,216(sp)
    80006d84:	0fd13023          	sd	t4,224(sp)
    80006d88:	0fe13423          	sd	t5,232(sp)
    80006d8c:	0ff13823          	sd	t6,240(sp)
    80006d90:	cc9ff0ef          	jal	ra,80006a58 <kerneltrap>
    80006d94:	00013083          	ld	ra,0(sp)
    80006d98:	00813103          	ld	sp,8(sp)
    80006d9c:	01013183          	ld	gp,16(sp)
    80006da0:	02013283          	ld	t0,32(sp)
    80006da4:	02813303          	ld	t1,40(sp)
    80006da8:	03013383          	ld	t2,48(sp)
    80006dac:	03813403          	ld	s0,56(sp)
    80006db0:	04013483          	ld	s1,64(sp)
    80006db4:	04813503          	ld	a0,72(sp)
    80006db8:	05013583          	ld	a1,80(sp)
    80006dbc:	05813603          	ld	a2,88(sp)
    80006dc0:	06013683          	ld	a3,96(sp)
    80006dc4:	06813703          	ld	a4,104(sp)
    80006dc8:	07013783          	ld	a5,112(sp)
    80006dcc:	07813803          	ld	a6,120(sp)
    80006dd0:	08013883          	ld	a7,128(sp)
    80006dd4:	08813903          	ld	s2,136(sp)
    80006dd8:	09013983          	ld	s3,144(sp)
    80006ddc:	09813a03          	ld	s4,152(sp)
    80006de0:	0a013a83          	ld	s5,160(sp)
    80006de4:	0a813b03          	ld	s6,168(sp)
    80006de8:	0b013b83          	ld	s7,176(sp)
    80006dec:	0b813c03          	ld	s8,184(sp)
    80006df0:	0c013c83          	ld	s9,192(sp)
    80006df4:	0c813d03          	ld	s10,200(sp)
    80006df8:	0d013d83          	ld	s11,208(sp)
    80006dfc:	0d813e03          	ld	t3,216(sp)
    80006e00:	0e013e83          	ld	t4,224(sp)
    80006e04:	0e813f03          	ld	t5,232(sp)
    80006e08:	0f013f83          	ld	t6,240(sp)
    80006e0c:	10010113          	addi	sp,sp,256
    80006e10:	10200073          	sret
    80006e14:	00000013          	nop
    80006e18:	00000013          	nop
    80006e1c:	00000013          	nop

0000000080006e20 <timervec>:
    80006e20:	34051573          	csrrw	a0,mscratch,a0
    80006e24:	00b53023          	sd	a1,0(a0)
    80006e28:	00c53423          	sd	a2,8(a0)
    80006e2c:	00d53823          	sd	a3,16(a0)
    80006e30:	01853583          	ld	a1,24(a0)
    80006e34:	02053603          	ld	a2,32(a0)
    80006e38:	0005b683          	ld	a3,0(a1)
    80006e3c:	00c686b3          	add	a3,a3,a2
    80006e40:	00d5b023          	sd	a3,0(a1)
    80006e44:	00200593          	li	a1,2
    80006e48:	14459073          	csrw	sip,a1
    80006e4c:	01053683          	ld	a3,16(a0)
    80006e50:	00853603          	ld	a2,8(a0)
    80006e54:	00053583          	ld	a1,0(a0)
    80006e58:	34051573          	csrrw	a0,mscratch,a0
    80006e5c:	30200073          	mret

0000000080006e60 <plicinit>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813423          	sd	s0,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	0c0007b7          	lui	a5,0xc000
    80006e74:	00100713          	li	a4,1
    80006e78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e7c:	00e7a223          	sw	a4,4(a5)
    80006e80:	01010113          	addi	sp,sp,16
    80006e84:	00008067          	ret

0000000080006e88 <plicinithart>:
    80006e88:	ff010113          	addi	sp,sp,-16
    80006e8c:	00813023          	sd	s0,0(sp)
    80006e90:	00113423          	sd	ra,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	a40080e7          	jalr	-1472(ra) # 800068d8 <cpuid>
    80006ea0:	0085171b          	slliw	a4,a0,0x8
    80006ea4:	0c0027b7          	lui	a5,0xc002
    80006ea8:	00e787b3          	add	a5,a5,a4
    80006eac:	40200713          	li	a4,1026
    80006eb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006eb4:	00813083          	ld	ra,8(sp)
    80006eb8:	00013403          	ld	s0,0(sp)
    80006ebc:	00d5151b          	slliw	a0,a0,0xd
    80006ec0:	0c2017b7          	lui	a5,0xc201
    80006ec4:	00a78533          	add	a0,a5,a0
    80006ec8:	00052023          	sw	zero,0(a0)
    80006ecc:	01010113          	addi	sp,sp,16
    80006ed0:	00008067          	ret

0000000080006ed4 <plic_claim>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813023          	sd	s0,0(sp)
    80006edc:	00113423          	sd	ra,8(sp)
    80006ee0:	01010413          	addi	s0,sp,16
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	9f4080e7          	jalr	-1548(ra) # 800068d8 <cpuid>
    80006eec:	00813083          	ld	ra,8(sp)
    80006ef0:	00013403          	ld	s0,0(sp)
    80006ef4:	00d5151b          	slliw	a0,a0,0xd
    80006ef8:	0c2017b7          	lui	a5,0xc201
    80006efc:	00a78533          	add	a0,a5,a0
    80006f00:	00452503          	lw	a0,4(a0)
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <plic_complete>:
    80006f0c:	fe010113          	addi	sp,sp,-32
    80006f10:	00813823          	sd	s0,16(sp)
    80006f14:	00913423          	sd	s1,8(sp)
    80006f18:	00113c23          	sd	ra,24(sp)
    80006f1c:	02010413          	addi	s0,sp,32
    80006f20:	00050493          	mv	s1,a0
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	9b4080e7          	jalr	-1612(ra) # 800068d8 <cpuid>
    80006f2c:	01813083          	ld	ra,24(sp)
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	00d5179b          	slliw	a5,a0,0xd
    80006f38:	0c201737          	lui	a4,0xc201
    80006f3c:	00f707b3          	add	a5,a4,a5
    80006f40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f44:	00813483          	ld	s1,8(sp)
    80006f48:	02010113          	addi	sp,sp,32
    80006f4c:	00008067          	ret

0000000080006f50 <consolewrite>:
    80006f50:	fb010113          	addi	sp,sp,-80
    80006f54:	04813023          	sd	s0,64(sp)
    80006f58:	04113423          	sd	ra,72(sp)
    80006f5c:	02913c23          	sd	s1,56(sp)
    80006f60:	03213823          	sd	s2,48(sp)
    80006f64:	03313423          	sd	s3,40(sp)
    80006f68:	03413023          	sd	s4,32(sp)
    80006f6c:	01513c23          	sd	s5,24(sp)
    80006f70:	05010413          	addi	s0,sp,80
    80006f74:	06c05c63          	blez	a2,80006fec <consolewrite+0x9c>
    80006f78:	00060993          	mv	s3,a2
    80006f7c:	00050a13          	mv	s4,a0
    80006f80:	00058493          	mv	s1,a1
    80006f84:	00000913          	li	s2,0
    80006f88:	fff00a93          	li	s5,-1
    80006f8c:	01c0006f          	j	80006fa8 <consolewrite+0x58>
    80006f90:	fbf44503          	lbu	a0,-65(s0)
    80006f94:	0019091b          	addiw	s2,s2,1
    80006f98:	00148493          	addi	s1,s1,1
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	a9c080e7          	jalr	-1380(ra) # 80007a38 <uartputc>
    80006fa4:	03298063          	beq	s3,s2,80006fc4 <consolewrite+0x74>
    80006fa8:	00048613          	mv	a2,s1
    80006fac:	00100693          	li	a3,1
    80006fb0:	000a0593          	mv	a1,s4
    80006fb4:	fbf40513          	addi	a0,s0,-65
    80006fb8:	00000097          	auipc	ra,0x0
    80006fbc:	9d8080e7          	jalr	-1576(ra) # 80006990 <either_copyin>
    80006fc0:	fd5518e3          	bne	a0,s5,80006f90 <consolewrite+0x40>
    80006fc4:	04813083          	ld	ra,72(sp)
    80006fc8:	04013403          	ld	s0,64(sp)
    80006fcc:	03813483          	ld	s1,56(sp)
    80006fd0:	02813983          	ld	s3,40(sp)
    80006fd4:	02013a03          	ld	s4,32(sp)
    80006fd8:	01813a83          	ld	s5,24(sp)
    80006fdc:	00090513          	mv	a0,s2
    80006fe0:	03013903          	ld	s2,48(sp)
    80006fe4:	05010113          	addi	sp,sp,80
    80006fe8:	00008067          	ret
    80006fec:	00000913          	li	s2,0
    80006ff0:	fd5ff06f          	j	80006fc4 <consolewrite+0x74>

0000000080006ff4 <consoleread>:
    80006ff4:	f9010113          	addi	sp,sp,-112
    80006ff8:	06813023          	sd	s0,96(sp)
    80006ffc:	04913c23          	sd	s1,88(sp)
    80007000:	05213823          	sd	s2,80(sp)
    80007004:	05313423          	sd	s3,72(sp)
    80007008:	05413023          	sd	s4,64(sp)
    8000700c:	03513c23          	sd	s5,56(sp)
    80007010:	03613823          	sd	s6,48(sp)
    80007014:	03713423          	sd	s7,40(sp)
    80007018:	03813023          	sd	s8,32(sp)
    8000701c:	06113423          	sd	ra,104(sp)
    80007020:	01913c23          	sd	s9,24(sp)
    80007024:	07010413          	addi	s0,sp,112
    80007028:	00060b93          	mv	s7,a2
    8000702c:	00050913          	mv	s2,a0
    80007030:	00058c13          	mv	s8,a1
    80007034:	00060b1b          	sext.w	s6,a2
    80007038:	00006497          	auipc	s1,0x6
    8000703c:	8c048493          	addi	s1,s1,-1856 # 8000c8f8 <cons>
    80007040:	00400993          	li	s3,4
    80007044:	fff00a13          	li	s4,-1
    80007048:	00a00a93          	li	s5,10
    8000704c:	05705e63          	blez	s7,800070a8 <consoleread+0xb4>
    80007050:	09c4a703          	lw	a4,156(s1)
    80007054:	0984a783          	lw	a5,152(s1)
    80007058:	0007071b          	sext.w	a4,a4
    8000705c:	08e78463          	beq	a5,a4,800070e4 <consoleread+0xf0>
    80007060:	07f7f713          	andi	a4,a5,127
    80007064:	00e48733          	add	a4,s1,a4
    80007068:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000706c:	0017869b          	addiw	a3,a5,1
    80007070:	08d4ac23          	sw	a3,152(s1)
    80007074:	00070c9b          	sext.w	s9,a4
    80007078:	0b370663          	beq	a4,s3,80007124 <consoleread+0x130>
    8000707c:	00100693          	li	a3,1
    80007080:	f9f40613          	addi	a2,s0,-97
    80007084:	000c0593          	mv	a1,s8
    80007088:	00090513          	mv	a0,s2
    8000708c:	f8e40fa3          	sb	a4,-97(s0)
    80007090:	00000097          	auipc	ra,0x0
    80007094:	8b4080e7          	jalr	-1868(ra) # 80006944 <either_copyout>
    80007098:	01450863          	beq	a0,s4,800070a8 <consoleread+0xb4>
    8000709c:	001c0c13          	addi	s8,s8,1
    800070a0:	fffb8b9b          	addiw	s7,s7,-1
    800070a4:	fb5c94e3          	bne	s9,s5,8000704c <consoleread+0x58>
    800070a8:	000b851b          	sext.w	a0,s7
    800070ac:	06813083          	ld	ra,104(sp)
    800070b0:	06013403          	ld	s0,96(sp)
    800070b4:	05813483          	ld	s1,88(sp)
    800070b8:	05013903          	ld	s2,80(sp)
    800070bc:	04813983          	ld	s3,72(sp)
    800070c0:	04013a03          	ld	s4,64(sp)
    800070c4:	03813a83          	ld	s5,56(sp)
    800070c8:	02813b83          	ld	s7,40(sp)
    800070cc:	02013c03          	ld	s8,32(sp)
    800070d0:	01813c83          	ld	s9,24(sp)
    800070d4:	40ab053b          	subw	a0,s6,a0
    800070d8:	03013b03          	ld	s6,48(sp)
    800070dc:	07010113          	addi	sp,sp,112
    800070e0:	00008067          	ret
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	1d8080e7          	jalr	472(ra) # 800082bc <push_on>
    800070ec:	0984a703          	lw	a4,152(s1)
    800070f0:	09c4a783          	lw	a5,156(s1)
    800070f4:	0007879b          	sext.w	a5,a5
    800070f8:	fef70ce3          	beq	a4,a5,800070f0 <consoleread+0xfc>
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	234080e7          	jalr	564(ra) # 80008330 <pop_on>
    80007104:	0984a783          	lw	a5,152(s1)
    80007108:	07f7f713          	andi	a4,a5,127
    8000710c:	00e48733          	add	a4,s1,a4
    80007110:	01874703          	lbu	a4,24(a4)
    80007114:	0017869b          	addiw	a3,a5,1
    80007118:	08d4ac23          	sw	a3,152(s1)
    8000711c:	00070c9b          	sext.w	s9,a4
    80007120:	f5371ee3          	bne	a4,s3,8000707c <consoleread+0x88>
    80007124:	000b851b          	sext.w	a0,s7
    80007128:	f96bf2e3          	bgeu	s7,s6,800070ac <consoleread+0xb8>
    8000712c:	08f4ac23          	sw	a5,152(s1)
    80007130:	f7dff06f          	j	800070ac <consoleread+0xb8>

0000000080007134 <consputc>:
    80007134:	10000793          	li	a5,256
    80007138:	00f50663          	beq	a0,a5,80007144 <consputc+0x10>
    8000713c:	00001317          	auipc	t1,0x1
    80007140:	9f430067          	jr	-1548(t1) # 80007b30 <uartputc_sync>
    80007144:	ff010113          	addi	sp,sp,-16
    80007148:	00113423          	sd	ra,8(sp)
    8000714c:	00813023          	sd	s0,0(sp)
    80007150:	01010413          	addi	s0,sp,16
    80007154:	00800513          	li	a0,8
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	9d8080e7          	jalr	-1576(ra) # 80007b30 <uartputc_sync>
    80007160:	02000513          	li	a0,32
    80007164:	00001097          	auipc	ra,0x1
    80007168:	9cc080e7          	jalr	-1588(ra) # 80007b30 <uartputc_sync>
    8000716c:	00013403          	ld	s0,0(sp)
    80007170:	00813083          	ld	ra,8(sp)
    80007174:	00800513          	li	a0,8
    80007178:	01010113          	addi	sp,sp,16
    8000717c:	00001317          	auipc	t1,0x1
    80007180:	9b430067          	jr	-1612(t1) # 80007b30 <uartputc_sync>

0000000080007184 <consoleintr>:
    80007184:	fe010113          	addi	sp,sp,-32
    80007188:	00813823          	sd	s0,16(sp)
    8000718c:	00913423          	sd	s1,8(sp)
    80007190:	01213023          	sd	s2,0(sp)
    80007194:	00113c23          	sd	ra,24(sp)
    80007198:	02010413          	addi	s0,sp,32
    8000719c:	00005917          	auipc	s2,0x5
    800071a0:	75c90913          	addi	s2,s2,1884 # 8000c8f8 <cons>
    800071a4:	00050493          	mv	s1,a0
    800071a8:	00090513          	mv	a0,s2
    800071ac:	00001097          	auipc	ra,0x1
    800071b0:	e40080e7          	jalr	-448(ra) # 80007fec <acquire>
    800071b4:	02048c63          	beqz	s1,800071ec <consoleintr+0x68>
    800071b8:	0a092783          	lw	a5,160(s2)
    800071bc:	09892703          	lw	a4,152(s2)
    800071c0:	07f00693          	li	a3,127
    800071c4:	40e7873b          	subw	a4,a5,a4
    800071c8:	02e6e263          	bltu	a3,a4,800071ec <consoleintr+0x68>
    800071cc:	00d00713          	li	a4,13
    800071d0:	04e48063          	beq	s1,a4,80007210 <consoleintr+0x8c>
    800071d4:	07f7f713          	andi	a4,a5,127
    800071d8:	00e90733          	add	a4,s2,a4
    800071dc:	0017879b          	addiw	a5,a5,1
    800071e0:	0af92023          	sw	a5,160(s2)
    800071e4:	00970c23          	sb	s1,24(a4)
    800071e8:	08f92e23          	sw	a5,156(s2)
    800071ec:	01013403          	ld	s0,16(sp)
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	00813483          	ld	s1,8(sp)
    800071f8:	00013903          	ld	s2,0(sp)
    800071fc:	00005517          	auipc	a0,0x5
    80007200:	6fc50513          	addi	a0,a0,1788 # 8000c8f8 <cons>
    80007204:	02010113          	addi	sp,sp,32
    80007208:	00001317          	auipc	t1,0x1
    8000720c:	eb030067          	jr	-336(t1) # 800080b8 <release>
    80007210:	00a00493          	li	s1,10
    80007214:	fc1ff06f          	j	800071d4 <consoleintr+0x50>

0000000080007218 <consoleinit>:
    80007218:	fe010113          	addi	sp,sp,-32
    8000721c:	00113c23          	sd	ra,24(sp)
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	02010413          	addi	s0,sp,32
    8000722c:	00005497          	auipc	s1,0x5
    80007230:	6cc48493          	addi	s1,s1,1740 # 8000c8f8 <cons>
    80007234:	00048513          	mv	a0,s1
    80007238:	00002597          	auipc	a1,0x2
    8000723c:	46058593          	addi	a1,a1,1120 # 80009698 <CONSOLE_STATUS+0x688>
    80007240:	00001097          	auipc	ra,0x1
    80007244:	d88080e7          	jalr	-632(ra) # 80007fc8 <initlock>
    80007248:	00000097          	auipc	ra,0x0
    8000724c:	7ac080e7          	jalr	1964(ra) # 800079f4 <uartinit>
    80007250:	01813083          	ld	ra,24(sp)
    80007254:	01013403          	ld	s0,16(sp)
    80007258:	00000797          	auipc	a5,0x0
    8000725c:	d9c78793          	addi	a5,a5,-612 # 80006ff4 <consoleread>
    80007260:	0af4bc23          	sd	a5,184(s1)
    80007264:	00000797          	auipc	a5,0x0
    80007268:	cec78793          	addi	a5,a5,-788 # 80006f50 <consolewrite>
    8000726c:	0cf4b023          	sd	a5,192(s1)
    80007270:	00813483          	ld	s1,8(sp)
    80007274:	02010113          	addi	sp,sp,32
    80007278:	00008067          	ret

000000008000727c <console_read>:
    8000727c:	ff010113          	addi	sp,sp,-16
    80007280:	00813423          	sd	s0,8(sp)
    80007284:	01010413          	addi	s0,sp,16
    80007288:	00813403          	ld	s0,8(sp)
    8000728c:	00005317          	auipc	t1,0x5
    80007290:	72433303          	ld	t1,1828(t1) # 8000c9b0 <devsw+0x10>
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00030067          	jr	t1

000000008000729c <console_write>:
    8000729c:	ff010113          	addi	sp,sp,-16
    800072a0:	00813423          	sd	s0,8(sp)
    800072a4:	01010413          	addi	s0,sp,16
    800072a8:	00813403          	ld	s0,8(sp)
    800072ac:	00005317          	auipc	t1,0x5
    800072b0:	70c33303          	ld	t1,1804(t1) # 8000c9b8 <devsw+0x18>
    800072b4:	01010113          	addi	sp,sp,16
    800072b8:	00030067          	jr	t1

00000000800072bc <panic>:
    800072bc:	fe010113          	addi	sp,sp,-32
    800072c0:	00113c23          	sd	ra,24(sp)
    800072c4:	00813823          	sd	s0,16(sp)
    800072c8:	00913423          	sd	s1,8(sp)
    800072cc:	02010413          	addi	s0,sp,32
    800072d0:	00050493          	mv	s1,a0
    800072d4:	00002517          	auipc	a0,0x2
    800072d8:	3cc50513          	addi	a0,a0,972 # 800096a0 <CONSOLE_STATUS+0x690>
    800072dc:	00005797          	auipc	a5,0x5
    800072e0:	7607ae23          	sw	zero,1916(a5) # 8000ca58 <pr+0x18>
    800072e4:	00000097          	auipc	ra,0x0
    800072e8:	034080e7          	jalr	52(ra) # 80007318 <__printf>
    800072ec:	00048513          	mv	a0,s1
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	028080e7          	jalr	40(ra) # 80007318 <__printf>
    800072f8:	00002517          	auipc	a0,0x2
    800072fc:	1a050513          	addi	a0,a0,416 # 80009498 <CONSOLE_STATUS+0x488>
    80007300:	00000097          	auipc	ra,0x0
    80007304:	018080e7          	jalr	24(ra) # 80007318 <__printf>
    80007308:	00100793          	li	a5,1
    8000730c:	00004717          	auipc	a4,0x4
    80007310:	42f72623          	sw	a5,1068(a4) # 8000b738 <panicked>
    80007314:	0000006f          	j	80007314 <panic+0x58>

0000000080007318 <__printf>:
    80007318:	f3010113          	addi	sp,sp,-208
    8000731c:	08813023          	sd	s0,128(sp)
    80007320:	07313423          	sd	s3,104(sp)
    80007324:	09010413          	addi	s0,sp,144
    80007328:	05813023          	sd	s8,64(sp)
    8000732c:	08113423          	sd	ra,136(sp)
    80007330:	06913c23          	sd	s1,120(sp)
    80007334:	07213823          	sd	s2,112(sp)
    80007338:	07413023          	sd	s4,96(sp)
    8000733c:	05513c23          	sd	s5,88(sp)
    80007340:	05613823          	sd	s6,80(sp)
    80007344:	05713423          	sd	s7,72(sp)
    80007348:	03913c23          	sd	s9,56(sp)
    8000734c:	03a13823          	sd	s10,48(sp)
    80007350:	03b13423          	sd	s11,40(sp)
    80007354:	00005317          	auipc	t1,0x5
    80007358:	6ec30313          	addi	t1,t1,1772 # 8000ca40 <pr>
    8000735c:	01832c03          	lw	s8,24(t1)
    80007360:	00b43423          	sd	a1,8(s0)
    80007364:	00c43823          	sd	a2,16(s0)
    80007368:	00d43c23          	sd	a3,24(s0)
    8000736c:	02e43023          	sd	a4,32(s0)
    80007370:	02f43423          	sd	a5,40(s0)
    80007374:	03043823          	sd	a6,48(s0)
    80007378:	03143c23          	sd	a7,56(s0)
    8000737c:	00050993          	mv	s3,a0
    80007380:	4a0c1663          	bnez	s8,8000782c <__printf+0x514>
    80007384:	60098c63          	beqz	s3,8000799c <__printf+0x684>
    80007388:	0009c503          	lbu	a0,0(s3)
    8000738c:	00840793          	addi	a5,s0,8
    80007390:	f6f43c23          	sd	a5,-136(s0)
    80007394:	00000493          	li	s1,0
    80007398:	22050063          	beqz	a0,800075b8 <__printf+0x2a0>
    8000739c:	00002a37          	lui	s4,0x2
    800073a0:	00018ab7          	lui	s5,0x18
    800073a4:	000f4b37          	lui	s6,0xf4
    800073a8:	00989bb7          	lui	s7,0x989
    800073ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800073b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800073b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800073b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800073bc:	00148c9b          	addiw	s9,s1,1
    800073c0:	02500793          	li	a5,37
    800073c4:	01998933          	add	s2,s3,s9
    800073c8:	38f51263          	bne	a0,a5,8000774c <__printf+0x434>
    800073cc:	00094783          	lbu	a5,0(s2)
    800073d0:	00078c9b          	sext.w	s9,a5
    800073d4:	1e078263          	beqz	a5,800075b8 <__printf+0x2a0>
    800073d8:	0024849b          	addiw	s1,s1,2
    800073dc:	07000713          	li	a4,112
    800073e0:	00998933          	add	s2,s3,s1
    800073e4:	38e78a63          	beq	a5,a4,80007778 <__printf+0x460>
    800073e8:	20f76863          	bltu	a4,a5,800075f8 <__printf+0x2e0>
    800073ec:	42a78863          	beq	a5,a0,8000781c <__printf+0x504>
    800073f0:	06400713          	li	a4,100
    800073f4:	40e79663          	bne	a5,a4,80007800 <__printf+0x4e8>
    800073f8:	f7843783          	ld	a5,-136(s0)
    800073fc:	0007a603          	lw	a2,0(a5)
    80007400:	00878793          	addi	a5,a5,8
    80007404:	f6f43c23          	sd	a5,-136(s0)
    80007408:	42064a63          	bltz	a2,8000783c <__printf+0x524>
    8000740c:	00a00713          	li	a4,10
    80007410:	02e677bb          	remuw	a5,a2,a4
    80007414:	00002d97          	auipc	s11,0x2
    80007418:	2b4d8d93          	addi	s11,s11,692 # 800096c8 <digits>
    8000741c:	00900593          	li	a1,9
    80007420:	0006051b          	sext.w	a0,a2
    80007424:	00000c93          	li	s9,0
    80007428:	02079793          	slli	a5,a5,0x20
    8000742c:	0207d793          	srli	a5,a5,0x20
    80007430:	00fd87b3          	add	a5,s11,a5
    80007434:	0007c783          	lbu	a5,0(a5)
    80007438:	02e656bb          	divuw	a3,a2,a4
    8000743c:	f8f40023          	sb	a5,-128(s0)
    80007440:	14c5d863          	bge	a1,a2,80007590 <__printf+0x278>
    80007444:	06300593          	li	a1,99
    80007448:	00100c93          	li	s9,1
    8000744c:	02e6f7bb          	remuw	a5,a3,a4
    80007450:	02079793          	slli	a5,a5,0x20
    80007454:	0207d793          	srli	a5,a5,0x20
    80007458:	00fd87b3          	add	a5,s11,a5
    8000745c:	0007c783          	lbu	a5,0(a5)
    80007460:	02e6d73b          	divuw	a4,a3,a4
    80007464:	f8f400a3          	sb	a5,-127(s0)
    80007468:	12a5f463          	bgeu	a1,a0,80007590 <__printf+0x278>
    8000746c:	00a00693          	li	a3,10
    80007470:	00900593          	li	a1,9
    80007474:	02d777bb          	remuw	a5,a4,a3
    80007478:	02079793          	slli	a5,a5,0x20
    8000747c:	0207d793          	srli	a5,a5,0x20
    80007480:	00fd87b3          	add	a5,s11,a5
    80007484:	0007c503          	lbu	a0,0(a5)
    80007488:	02d757bb          	divuw	a5,a4,a3
    8000748c:	f8a40123          	sb	a0,-126(s0)
    80007490:	48e5f263          	bgeu	a1,a4,80007914 <__printf+0x5fc>
    80007494:	06300513          	li	a0,99
    80007498:	02d7f5bb          	remuw	a1,a5,a3
    8000749c:	02059593          	slli	a1,a1,0x20
    800074a0:	0205d593          	srli	a1,a1,0x20
    800074a4:	00bd85b3          	add	a1,s11,a1
    800074a8:	0005c583          	lbu	a1,0(a1)
    800074ac:	02d7d7bb          	divuw	a5,a5,a3
    800074b0:	f8b401a3          	sb	a1,-125(s0)
    800074b4:	48e57263          	bgeu	a0,a4,80007938 <__printf+0x620>
    800074b8:	3e700513          	li	a0,999
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b40223          	sb	a1,-124(s0)
    800074d8:	46e57663          	bgeu	a0,a4,80007944 <__printf+0x62c>
    800074dc:	02d7f5bb          	remuw	a1,a5,a3
    800074e0:	02059593          	slli	a1,a1,0x20
    800074e4:	0205d593          	srli	a1,a1,0x20
    800074e8:	00bd85b3          	add	a1,s11,a1
    800074ec:	0005c583          	lbu	a1,0(a1)
    800074f0:	02d7d7bb          	divuw	a5,a5,a3
    800074f4:	f8b402a3          	sb	a1,-123(s0)
    800074f8:	46ea7863          	bgeu	s4,a4,80007968 <__printf+0x650>
    800074fc:	02d7f5bb          	remuw	a1,a5,a3
    80007500:	02059593          	slli	a1,a1,0x20
    80007504:	0205d593          	srli	a1,a1,0x20
    80007508:	00bd85b3          	add	a1,s11,a1
    8000750c:	0005c583          	lbu	a1,0(a1)
    80007510:	02d7d7bb          	divuw	a5,a5,a3
    80007514:	f8b40323          	sb	a1,-122(s0)
    80007518:	3eeaf863          	bgeu	s5,a4,80007908 <__printf+0x5f0>
    8000751c:	02d7f5bb          	remuw	a1,a5,a3
    80007520:	02059593          	slli	a1,a1,0x20
    80007524:	0205d593          	srli	a1,a1,0x20
    80007528:	00bd85b3          	add	a1,s11,a1
    8000752c:	0005c583          	lbu	a1,0(a1)
    80007530:	02d7d7bb          	divuw	a5,a5,a3
    80007534:	f8b403a3          	sb	a1,-121(s0)
    80007538:	42eb7e63          	bgeu	s6,a4,80007974 <__printf+0x65c>
    8000753c:	02d7f5bb          	remuw	a1,a5,a3
    80007540:	02059593          	slli	a1,a1,0x20
    80007544:	0205d593          	srli	a1,a1,0x20
    80007548:	00bd85b3          	add	a1,s11,a1
    8000754c:	0005c583          	lbu	a1,0(a1)
    80007550:	02d7d7bb          	divuw	a5,a5,a3
    80007554:	f8b40423          	sb	a1,-120(s0)
    80007558:	42ebfc63          	bgeu	s7,a4,80007990 <__printf+0x678>
    8000755c:	02079793          	slli	a5,a5,0x20
    80007560:	0207d793          	srli	a5,a5,0x20
    80007564:	00fd8db3          	add	s11,s11,a5
    80007568:	000dc703          	lbu	a4,0(s11)
    8000756c:	00a00793          	li	a5,10
    80007570:	00900c93          	li	s9,9
    80007574:	f8e404a3          	sb	a4,-119(s0)
    80007578:	00065c63          	bgez	a2,80007590 <__printf+0x278>
    8000757c:	f9040713          	addi	a4,s0,-112
    80007580:	00f70733          	add	a4,a4,a5
    80007584:	02d00693          	li	a3,45
    80007588:	fed70823          	sb	a3,-16(a4)
    8000758c:	00078c93          	mv	s9,a5
    80007590:	f8040793          	addi	a5,s0,-128
    80007594:	01978cb3          	add	s9,a5,s9
    80007598:	f7f40d13          	addi	s10,s0,-129
    8000759c:	000cc503          	lbu	a0,0(s9)
    800075a0:	fffc8c93          	addi	s9,s9,-1
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	b90080e7          	jalr	-1136(ra) # 80007134 <consputc>
    800075ac:	ffac98e3          	bne	s9,s10,8000759c <__printf+0x284>
    800075b0:	00094503          	lbu	a0,0(s2)
    800075b4:	e00514e3          	bnez	a0,800073bc <__printf+0xa4>
    800075b8:	1a0c1663          	bnez	s8,80007764 <__printf+0x44c>
    800075bc:	08813083          	ld	ra,136(sp)
    800075c0:	08013403          	ld	s0,128(sp)
    800075c4:	07813483          	ld	s1,120(sp)
    800075c8:	07013903          	ld	s2,112(sp)
    800075cc:	06813983          	ld	s3,104(sp)
    800075d0:	06013a03          	ld	s4,96(sp)
    800075d4:	05813a83          	ld	s5,88(sp)
    800075d8:	05013b03          	ld	s6,80(sp)
    800075dc:	04813b83          	ld	s7,72(sp)
    800075e0:	04013c03          	ld	s8,64(sp)
    800075e4:	03813c83          	ld	s9,56(sp)
    800075e8:	03013d03          	ld	s10,48(sp)
    800075ec:	02813d83          	ld	s11,40(sp)
    800075f0:	0d010113          	addi	sp,sp,208
    800075f4:	00008067          	ret
    800075f8:	07300713          	li	a4,115
    800075fc:	1ce78a63          	beq	a5,a4,800077d0 <__printf+0x4b8>
    80007600:	07800713          	li	a4,120
    80007604:	1ee79e63          	bne	a5,a4,80007800 <__printf+0x4e8>
    80007608:	f7843783          	ld	a5,-136(s0)
    8000760c:	0007a703          	lw	a4,0(a5)
    80007610:	00878793          	addi	a5,a5,8
    80007614:	f6f43c23          	sd	a5,-136(s0)
    80007618:	28074263          	bltz	a4,8000789c <__printf+0x584>
    8000761c:	00002d97          	auipc	s11,0x2
    80007620:	0acd8d93          	addi	s11,s11,172 # 800096c8 <digits>
    80007624:	00f77793          	andi	a5,a4,15
    80007628:	00fd87b3          	add	a5,s11,a5
    8000762c:	0007c683          	lbu	a3,0(a5)
    80007630:	00f00613          	li	a2,15
    80007634:	0007079b          	sext.w	a5,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	0047559b          	srliw	a1,a4,0x4
    80007640:	0047569b          	srliw	a3,a4,0x4
    80007644:	00000c93          	li	s9,0
    80007648:	0ee65063          	bge	a2,a4,80007728 <__printf+0x410>
    8000764c:	00f6f693          	andi	a3,a3,15
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007658:	0087d79b          	srliw	a5,a5,0x8
    8000765c:	00100c93          	li	s9,1
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	0cb67263          	bgeu	a2,a1,80007728 <__printf+0x410>
    80007668:	00f7f693          	andi	a3,a5,15
    8000766c:	00dd86b3          	add	a3,s11,a3
    80007670:	0006c583          	lbu	a1,0(a3)
    80007674:	00f00613          	li	a2,15
    80007678:	0047d69b          	srliw	a3,a5,0x4
    8000767c:	f8b40123          	sb	a1,-126(s0)
    80007680:	0047d593          	srli	a1,a5,0x4
    80007684:	28f67e63          	bgeu	a2,a5,80007920 <__printf+0x608>
    80007688:	00f6f693          	andi	a3,a3,15
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c503          	lbu	a0,0(a3)
    80007694:	0087d813          	srli	a6,a5,0x8
    80007698:	0087d69b          	srliw	a3,a5,0x8
    8000769c:	f8a401a3          	sb	a0,-125(s0)
    800076a0:	28b67663          	bgeu	a2,a1,8000792c <__printf+0x614>
    800076a4:	00f6f693          	andi	a3,a3,15
    800076a8:	00dd86b3          	add	a3,s11,a3
    800076ac:	0006c583          	lbu	a1,0(a3)
    800076b0:	00c7d513          	srli	a0,a5,0xc
    800076b4:	00c7d69b          	srliw	a3,a5,0xc
    800076b8:	f8b40223          	sb	a1,-124(s0)
    800076bc:	29067a63          	bgeu	a2,a6,80007950 <__printf+0x638>
    800076c0:	00f6f693          	andi	a3,a3,15
    800076c4:	00dd86b3          	add	a3,s11,a3
    800076c8:	0006c583          	lbu	a1,0(a3)
    800076cc:	0107d813          	srli	a6,a5,0x10
    800076d0:	0107d69b          	srliw	a3,a5,0x10
    800076d4:	f8b402a3          	sb	a1,-123(s0)
    800076d8:	28a67263          	bgeu	a2,a0,8000795c <__printf+0x644>
    800076dc:	00f6f693          	andi	a3,a3,15
    800076e0:	00dd86b3          	add	a3,s11,a3
    800076e4:	0006c683          	lbu	a3,0(a3)
    800076e8:	0147d79b          	srliw	a5,a5,0x14
    800076ec:	f8d40323          	sb	a3,-122(s0)
    800076f0:	21067663          	bgeu	a2,a6,800078fc <__printf+0x5e4>
    800076f4:	02079793          	slli	a5,a5,0x20
    800076f8:	0207d793          	srli	a5,a5,0x20
    800076fc:	00fd8db3          	add	s11,s11,a5
    80007700:	000dc683          	lbu	a3,0(s11)
    80007704:	00800793          	li	a5,8
    80007708:	00700c93          	li	s9,7
    8000770c:	f8d403a3          	sb	a3,-121(s0)
    80007710:	00075c63          	bgez	a4,80007728 <__printf+0x410>
    80007714:	f9040713          	addi	a4,s0,-112
    80007718:	00f70733          	add	a4,a4,a5
    8000771c:	02d00693          	li	a3,45
    80007720:	fed70823          	sb	a3,-16(a4)
    80007724:	00078c93          	mv	s9,a5
    80007728:	f8040793          	addi	a5,s0,-128
    8000772c:	01978cb3          	add	s9,a5,s9
    80007730:	f7f40d13          	addi	s10,s0,-129
    80007734:	000cc503          	lbu	a0,0(s9)
    80007738:	fffc8c93          	addi	s9,s9,-1
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	9f8080e7          	jalr	-1544(ra) # 80007134 <consputc>
    80007744:	ff9d18e3          	bne	s10,s9,80007734 <__printf+0x41c>
    80007748:	0100006f          	j	80007758 <__printf+0x440>
    8000774c:	00000097          	auipc	ra,0x0
    80007750:	9e8080e7          	jalr	-1560(ra) # 80007134 <consputc>
    80007754:	000c8493          	mv	s1,s9
    80007758:	00094503          	lbu	a0,0(s2)
    8000775c:	c60510e3          	bnez	a0,800073bc <__printf+0xa4>
    80007760:	e40c0ee3          	beqz	s8,800075bc <__printf+0x2a4>
    80007764:	00005517          	auipc	a0,0x5
    80007768:	2dc50513          	addi	a0,a0,732 # 8000ca40 <pr>
    8000776c:	00001097          	auipc	ra,0x1
    80007770:	94c080e7          	jalr	-1716(ra) # 800080b8 <release>
    80007774:	e49ff06f          	j	800075bc <__printf+0x2a4>
    80007778:	f7843783          	ld	a5,-136(s0)
    8000777c:	03000513          	li	a0,48
    80007780:	01000d13          	li	s10,16
    80007784:	00878713          	addi	a4,a5,8
    80007788:	0007bc83          	ld	s9,0(a5)
    8000778c:	f6e43c23          	sd	a4,-136(s0)
    80007790:	00000097          	auipc	ra,0x0
    80007794:	9a4080e7          	jalr	-1628(ra) # 80007134 <consputc>
    80007798:	07800513          	li	a0,120
    8000779c:	00000097          	auipc	ra,0x0
    800077a0:	998080e7          	jalr	-1640(ra) # 80007134 <consputc>
    800077a4:	00002d97          	auipc	s11,0x2
    800077a8:	f24d8d93          	addi	s11,s11,-220 # 800096c8 <digits>
    800077ac:	03ccd793          	srli	a5,s9,0x3c
    800077b0:	00fd87b3          	add	a5,s11,a5
    800077b4:	0007c503          	lbu	a0,0(a5)
    800077b8:	fffd0d1b          	addiw	s10,s10,-1
    800077bc:	004c9c93          	slli	s9,s9,0x4
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	974080e7          	jalr	-1676(ra) # 80007134 <consputc>
    800077c8:	fe0d12e3          	bnez	s10,800077ac <__printf+0x494>
    800077cc:	f8dff06f          	j	80007758 <__printf+0x440>
    800077d0:	f7843783          	ld	a5,-136(s0)
    800077d4:	0007bc83          	ld	s9,0(a5)
    800077d8:	00878793          	addi	a5,a5,8
    800077dc:	f6f43c23          	sd	a5,-136(s0)
    800077e0:	000c9a63          	bnez	s9,800077f4 <__printf+0x4dc>
    800077e4:	1080006f          	j	800078ec <__printf+0x5d4>
    800077e8:	001c8c93          	addi	s9,s9,1
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	948080e7          	jalr	-1720(ra) # 80007134 <consputc>
    800077f4:	000cc503          	lbu	a0,0(s9)
    800077f8:	fe0518e3          	bnez	a0,800077e8 <__printf+0x4d0>
    800077fc:	f5dff06f          	j	80007758 <__printf+0x440>
    80007800:	02500513          	li	a0,37
    80007804:	00000097          	auipc	ra,0x0
    80007808:	930080e7          	jalr	-1744(ra) # 80007134 <consputc>
    8000780c:	000c8513          	mv	a0,s9
    80007810:	00000097          	auipc	ra,0x0
    80007814:	924080e7          	jalr	-1756(ra) # 80007134 <consputc>
    80007818:	f41ff06f          	j	80007758 <__printf+0x440>
    8000781c:	02500513          	li	a0,37
    80007820:	00000097          	auipc	ra,0x0
    80007824:	914080e7          	jalr	-1772(ra) # 80007134 <consputc>
    80007828:	f31ff06f          	j	80007758 <__printf+0x440>
    8000782c:	00030513          	mv	a0,t1
    80007830:	00000097          	auipc	ra,0x0
    80007834:	7bc080e7          	jalr	1980(ra) # 80007fec <acquire>
    80007838:	b4dff06f          	j	80007384 <__printf+0x6c>
    8000783c:	40c0053b          	negw	a0,a2
    80007840:	00a00713          	li	a4,10
    80007844:	02e576bb          	remuw	a3,a0,a4
    80007848:	00002d97          	auipc	s11,0x2
    8000784c:	e80d8d93          	addi	s11,s11,-384 # 800096c8 <digits>
    80007850:	ff700593          	li	a1,-9
    80007854:	02069693          	slli	a3,a3,0x20
    80007858:	0206d693          	srli	a3,a3,0x20
    8000785c:	00dd86b3          	add	a3,s11,a3
    80007860:	0006c683          	lbu	a3,0(a3)
    80007864:	02e557bb          	divuw	a5,a0,a4
    80007868:	f8d40023          	sb	a3,-128(s0)
    8000786c:	10b65e63          	bge	a2,a1,80007988 <__printf+0x670>
    80007870:	06300593          	li	a1,99
    80007874:	02e7f6bb          	remuw	a3,a5,a4
    80007878:	02069693          	slli	a3,a3,0x20
    8000787c:	0206d693          	srli	a3,a3,0x20
    80007880:	00dd86b3          	add	a3,s11,a3
    80007884:	0006c683          	lbu	a3,0(a3)
    80007888:	02e7d73b          	divuw	a4,a5,a4
    8000788c:	00200793          	li	a5,2
    80007890:	f8d400a3          	sb	a3,-127(s0)
    80007894:	bca5ece3          	bltu	a1,a0,8000746c <__printf+0x154>
    80007898:	ce5ff06f          	j	8000757c <__printf+0x264>
    8000789c:	40e007bb          	negw	a5,a4
    800078a0:	00002d97          	auipc	s11,0x2
    800078a4:	e28d8d93          	addi	s11,s11,-472 # 800096c8 <digits>
    800078a8:	00f7f693          	andi	a3,a5,15
    800078ac:	00dd86b3          	add	a3,s11,a3
    800078b0:	0006c583          	lbu	a1,0(a3)
    800078b4:	ff100613          	li	a2,-15
    800078b8:	0047d69b          	srliw	a3,a5,0x4
    800078bc:	f8b40023          	sb	a1,-128(s0)
    800078c0:	0047d59b          	srliw	a1,a5,0x4
    800078c4:	0ac75e63          	bge	a4,a2,80007980 <__printf+0x668>
    800078c8:	00f6f693          	andi	a3,a3,15
    800078cc:	00dd86b3          	add	a3,s11,a3
    800078d0:	0006c603          	lbu	a2,0(a3)
    800078d4:	00f00693          	li	a3,15
    800078d8:	0087d79b          	srliw	a5,a5,0x8
    800078dc:	f8c400a3          	sb	a2,-127(s0)
    800078e0:	d8b6e4e3          	bltu	a3,a1,80007668 <__printf+0x350>
    800078e4:	00200793          	li	a5,2
    800078e8:	e2dff06f          	j	80007714 <__printf+0x3fc>
    800078ec:	00002c97          	auipc	s9,0x2
    800078f0:	dbcc8c93          	addi	s9,s9,-580 # 800096a8 <CONSOLE_STATUS+0x698>
    800078f4:	02800513          	li	a0,40
    800078f8:	ef1ff06f          	j	800077e8 <__printf+0x4d0>
    800078fc:	00700793          	li	a5,7
    80007900:	00600c93          	li	s9,6
    80007904:	e0dff06f          	j	80007710 <__printf+0x3f8>
    80007908:	00700793          	li	a5,7
    8000790c:	00600c93          	li	s9,6
    80007910:	c69ff06f          	j	80007578 <__printf+0x260>
    80007914:	00300793          	li	a5,3
    80007918:	00200c93          	li	s9,2
    8000791c:	c5dff06f          	j	80007578 <__printf+0x260>
    80007920:	00300793          	li	a5,3
    80007924:	00200c93          	li	s9,2
    80007928:	de9ff06f          	j	80007710 <__printf+0x3f8>
    8000792c:	00400793          	li	a5,4
    80007930:	00300c93          	li	s9,3
    80007934:	dddff06f          	j	80007710 <__printf+0x3f8>
    80007938:	00400793          	li	a5,4
    8000793c:	00300c93          	li	s9,3
    80007940:	c39ff06f          	j	80007578 <__printf+0x260>
    80007944:	00500793          	li	a5,5
    80007948:	00400c93          	li	s9,4
    8000794c:	c2dff06f          	j	80007578 <__printf+0x260>
    80007950:	00500793          	li	a5,5
    80007954:	00400c93          	li	s9,4
    80007958:	db9ff06f          	j	80007710 <__printf+0x3f8>
    8000795c:	00600793          	li	a5,6
    80007960:	00500c93          	li	s9,5
    80007964:	dadff06f          	j	80007710 <__printf+0x3f8>
    80007968:	00600793          	li	a5,6
    8000796c:	00500c93          	li	s9,5
    80007970:	c09ff06f          	j	80007578 <__printf+0x260>
    80007974:	00800793          	li	a5,8
    80007978:	00700c93          	li	s9,7
    8000797c:	bfdff06f          	j	80007578 <__printf+0x260>
    80007980:	00100793          	li	a5,1
    80007984:	d91ff06f          	j	80007714 <__printf+0x3fc>
    80007988:	00100793          	li	a5,1
    8000798c:	bf1ff06f          	j	8000757c <__printf+0x264>
    80007990:	00900793          	li	a5,9
    80007994:	00800c93          	li	s9,8
    80007998:	be1ff06f          	j	80007578 <__printf+0x260>
    8000799c:	00002517          	auipc	a0,0x2
    800079a0:	d1450513          	addi	a0,a0,-748 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	918080e7          	jalr	-1768(ra) # 800072bc <panic>

00000000800079ac <printfinit>:
    800079ac:	fe010113          	addi	sp,sp,-32
    800079b0:	00813823          	sd	s0,16(sp)
    800079b4:	00913423          	sd	s1,8(sp)
    800079b8:	00113c23          	sd	ra,24(sp)
    800079bc:	02010413          	addi	s0,sp,32
    800079c0:	00005497          	auipc	s1,0x5
    800079c4:	08048493          	addi	s1,s1,128 # 8000ca40 <pr>
    800079c8:	00048513          	mv	a0,s1
    800079cc:	00002597          	auipc	a1,0x2
    800079d0:	cf458593          	addi	a1,a1,-780 # 800096c0 <CONSOLE_STATUS+0x6b0>
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	5f4080e7          	jalr	1524(ra) # 80007fc8 <initlock>
    800079dc:	01813083          	ld	ra,24(sp)
    800079e0:	01013403          	ld	s0,16(sp)
    800079e4:	0004ac23          	sw	zero,24(s1)
    800079e8:	00813483          	ld	s1,8(sp)
    800079ec:	02010113          	addi	sp,sp,32
    800079f0:	00008067          	ret

00000000800079f4 <uartinit>:
    800079f4:	ff010113          	addi	sp,sp,-16
    800079f8:	00813423          	sd	s0,8(sp)
    800079fc:	01010413          	addi	s0,sp,16
    80007a00:	100007b7          	lui	a5,0x10000
    80007a04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007a08:	f8000713          	li	a4,-128
    80007a0c:	00e781a3          	sb	a4,3(a5)
    80007a10:	00300713          	li	a4,3
    80007a14:	00e78023          	sb	a4,0(a5)
    80007a18:	000780a3          	sb	zero,1(a5)
    80007a1c:	00e781a3          	sb	a4,3(a5)
    80007a20:	00700693          	li	a3,7
    80007a24:	00d78123          	sb	a3,2(a5)
    80007a28:	00e780a3          	sb	a4,1(a5)
    80007a2c:	00813403          	ld	s0,8(sp)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret

0000000080007a38 <uartputc>:
    80007a38:	00004797          	auipc	a5,0x4
    80007a3c:	d007a783          	lw	a5,-768(a5) # 8000b738 <panicked>
    80007a40:	00078463          	beqz	a5,80007a48 <uartputc+0x10>
    80007a44:	0000006f          	j	80007a44 <uartputc+0xc>
    80007a48:	fd010113          	addi	sp,sp,-48
    80007a4c:	02813023          	sd	s0,32(sp)
    80007a50:	00913c23          	sd	s1,24(sp)
    80007a54:	01213823          	sd	s2,16(sp)
    80007a58:	01313423          	sd	s3,8(sp)
    80007a5c:	02113423          	sd	ra,40(sp)
    80007a60:	03010413          	addi	s0,sp,48
    80007a64:	00004917          	auipc	s2,0x4
    80007a68:	cdc90913          	addi	s2,s2,-804 # 8000b740 <uart_tx_r>
    80007a6c:	00093783          	ld	a5,0(s2)
    80007a70:	00004497          	auipc	s1,0x4
    80007a74:	cd848493          	addi	s1,s1,-808 # 8000b748 <uart_tx_w>
    80007a78:	0004b703          	ld	a4,0(s1)
    80007a7c:	02078693          	addi	a3,a5,32
    80007a80:	00050993          	mv	s3,a0
    80007a84:	02e69c63          	bne	a3,a4,80007abc <uartputc+0x84>
    80007a88:	00001097          	auipc	ra,0x1
    80007a8c:	834080e7          	jalr	-1996(ra) # 800082bc <push_on>
    80007a90:	00093783          	ld	a5,0(s2)
    80007a94:	0004b703          	ld	a4,0(s1)
    80007a98:	02078793          	addi	a5,a5,32
    80007a9c:	00e79463          	bne	a5,a4,80007aa4 <uartputc+0x6c>
    80007aa0:	0000006f          	j	80007aa0 <uartputc+0x68>
    80007aa4:	00001097          	auipc	ra,0x1
    80007aa8:	88c080e7          	jalr	-1908(ra) # 80008330 <pop_on>
    80007aac:	00093783          	ld	a5,0(s2)
    80007ab0:	0004b703          	ld	a4,0(s1)
    80007ab4:	02078693          	addi	a3,a5,32
    80007ab8:	fce688e3          	beq	a3,a4,80007a88 <uartputc+0x50>
    80007abc:	01f77693          	andi	a3,a4,31
    80007ac0:	00005597          	auipc	a1,0x5
    80007ac4:	fa058593          	addi	a1,a1,-96 # 8000ca60 <uart_tx_buf>
    80007ac8:	00d586b3          	add	a3,a1,a3
    80007acc:	00170713          	addi	a4,a4,1
    80007ad0:	01368023          	sb	s3,0(a3)
    80007ad4:	00e4b023          	sd	a4,0(s1)
    80007ad8:	10000637          	lui	a2,0x10000
    80007adc:	02f71063          	bne	a4,a5,80007afc <uartputc+0xc4>
    80007ae0:	0340006f          	j	80007b14 <uartputc+0xdc>
    80007ae4:	00074703          	lbu	a4,0(a4)
    80007ae8:	00f93023          	sd	a5,0(s2)
    80007aec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007af0:	00093783          	ld	a5,0(s2)
    80007af4:	0004b703          	ld	a4,0(s1)
    80007af8:	00f70e63          	beq	a4,a5,80007b14 <uartputc+0xdc>
    80007afc:	00564683          	lbu	a3,5(a2)
    80007b00:	01f7f713          	andi	a4,a5,31
    80007b04:	00e58733          	add	a4,a1,a4
    80007b08:	0206f693          	andi	a3,a3,32
    80007b0c:	00178793          	addi	a5,a5,1
    80007b10:	fc069ae3          	bnez	a3,80007ae4 <uartputc+0xac>
    80007b14:	02813083          	ld	ra,40(sp)
    80007b18:	02013403          	ld	s0,32(sp)
    80007b1c:	01813483          	ld	s1,24(sp)
    80007b20:	01013903          	ld	s2,16(sp)
    80007b24:	00813983          	ld	s3,8(sp)
    80007b28:	03010113          	addi	sp,sp,48
    80007b2c:	00008067          	ret

0000000080007b30 <uartputc_sync>:
    80007b30:	ff010113          	addi	sp,sp,-16
    80007b34:	00813423          	sd	s0,8(sp)
    80007b38:	01010413          	addi	s0,sp,16
    80007b3c:	00004717          	auipc	a4,0x4
    80007b40:	bfc72703          	lw	a4,-1028(a4) # 8000b738 <panicked>
    80007b44:	02071663          	bnez	a4,80007b70 <uartputc_sync+0x40>
    80007b48:	00050793          	mv	a5,a0
    80007b4c:	100006b7          	lui	a3,0x10000
    80007b50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007b54:	02077713          	andi	a4,a4,32
    80007b58:	fe070ce3          	beqz	a4,80007b50 <uartputc_sync+0x20>
    80007b5c:	0ff7f793          	andi	a5,a5,255
    80007b60:	00f68023          	sb	a5,0(a3)
    80007b64:	00813403          	ld	s0,8(sp)
    80007b68:	01010113          	addi	sp,sp,16
    80007b6c:	00008067          	ret
    80007b70:	0000006f          	j	80007b70 <uartputc_sync+0x40>

0000000080007b74 <uartstart>:
    80007b74:	ff010113          	addi	sp,sp,-16
    80007b78:	00813423          	sd	s0,8(sp)
    80007b7c:	01010413          	addi	s0,sp,16
    80007b80:	00004617          	auipc	a2,0x4
    80007b84:	bc060613          	addi	a2,a2,-1088 # 8000b740 <uart_tx_r>
    80007b88:	00004517          	auipc	a0,0x4
    80007b8c:	bc050513          	addi	a0,a0,-1088 # 8000b748 <uart_tx_w>
    80007b90:	00063783          	ld	a5,0(a2)
    80007b94:	00053703          	ld	a4,0(a0)
    80007b98:	04f70263          	beq	a4,a5,80007bdc <uartstart+0x68>
    80007b9c:	100005b7          	lui	a1,0x10000
    80007ba0:	00005817          	auipc	a6,0x5
    80007ba4:	ec080813          	addi	a6,a6,-320 # 8000ca60 <uart_tx_buf>
    80007ba8:	01c0006f          	j	80007bc4 <uartstart+0x50>
    80007bac:	0006c703          	lbu	a4,0(a3)
    80007bb0:	00f63023          	sd	a5,0(a2)
    80007bb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bb8:	00063783          	ld	a5,0(a2)
    80007bbc:	00053703          	ld	a4,0(a0)
    80007bc0:	00f70e63          	beq	a4,a5,80007bdc <uartstart+0x68>
    80007bc4:	01f7f713          	andi	a4,a5,31
    80007bc8:	00e806b3          	add	a3,a6,a4
    80007bcc:	0055c703          	lbu	a4,5(a1)
    80007bd0:	00178793          	addi	a5,a5,1
    80007bd4:	02077713          	andi	a4,a4,32
    80007bd8:	fc071ae3          	bnez	a4,80007bac <uartstart+0x38>
    80007bdc:	00813403          	ld	s0,8(sp)
    80007be0:	01010113          	addi	sp,sp,16
    80007be4:	00008067          	ret

0000000080007be8 <uartgetc>:
    80007be8:	ff010113          	addi	sp,sp,-16
    80007bec:	00813423          	sd	s0,8(sp)
    80007bf0:	01010413          	addi	s0,sp,16
    80007bf4:	10000737          	lui	a4,0x10000
    80007bf8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007bfc:	0017f793          	andi	a5,a5,1
    80007c00:	00078c63          	beqz	a5,80007c18 <uartgetc+0x30>
    80007c04:	00074503          	lbu	a0,0(a4)
    80007c08:	0ff57513          	andi	a0,a0,255
    80007c0c:	00813403          	ld	s0,8(sp)
    80007c10:	01010113          	addi	sp,sp,16
    80007c14:	00008067          	ret
    80007c18:	fff00513          	li	a0,-1
    80007c1c:	ff1ff06f          	j	80007c0c <uartgetc+0x24>

0000000080007c20 <uartintr>:
    80007c20:	100007b7          	lui	a5,0x10000
    80007c24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c28:	0017f793          	andi	a5,a5,1
    80007c2c:	0a078463          	beqz	a5,80007cd4 <uartintr+0xb4>
    80007c30:	fe010113          	addi	sp,sp,-32
    80007c34:	00813823          	sd	s0,16(sp)
    80007c38:	00913423          	sd	s1,8(sp)
    80007c3c:	00113c23          	sd	ra,24(sp)
    80007c40:	02010413          	addi	s0,sp,32
    80007c44:	100004b7          	lui	s1,0x10000
    80007c48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c4c:	0ff57513          	andi	a0,a0,255
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	534080e7          	jalr	1332(ra) # 80007184 <consoleintr>
    80007c58:	0054c783          	lbu	a5,5(s1)
    80007c5c:	0017f793          	andi	a5,a5,1
    80007c60:	fe0794e3          	bnez	a5,80007c48 <uartintr+0x28>
    80007c64:	00004617          	auipc	a2,0x4
    80007c68:	adc60613          	addi	a2,a2,-1316 # 8000b740 <uart_tx_r>
    80007c6c:	00004517          	auipc	a0,0x4
    80007c70:	adc50513          	addi	a0,a0,-1316 # 8000b748 <uart_tx_w>
    80007c74:	00063783          	ld	a5,0(a2)
    80007c78:	00053703          	ld	a4,0(a0)
    80007c7c:	04f70263          	beq	a4,a5,80007cc0 <uartintr+0xa0>
    80007c80:	100005b7          	lui	a1,0x10000
    80007c84:	00005817          	auipc	a6,0x5
    80007c88:	ddc80813          	addi	a6,a6,-548 # 8000ca60 <uart_tx_buf>
    80007c8c:	01c0006f          	j	80007ca8 <uartintr+0x88>
    80007c90:	0006c703          	lbu	a4,0(a3)
    80007c94:	00f63023          	sd	a5,0(a2)
    80007c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c9c:	00063783          	ld	a5,0(a2)
    80007ca0:	00053703          	ld	a4,0(a0)
    80007ca4:	00f70e63          	beq	a4,a5,80007cc0 <uartintr+0xa0>
    80007ca8:	01f7f713          	andi	a4,a5,31
    80007cac:	00e806b3          	add	a3,a6,a4
    80007cb0:	0055c703          	lbu	a4,5(a1)
    80007cb4:	00178793          	addi	a5,a5,1
    80007cb8:	02077713          	andi	a4,a4,32
    80007cbc:	fc071ae3          	bnez	a4,80007c90 <uartintr+0x70>
    80007cc0:	01813083          	ld	ra,24(sp)
    80007cc4:	01013403          	ld	s0,16(sp)
    80007cc8:	00813483          	ld	s1,8(sp)
    80007ccc:	02010113          	addi	sp,sp,32
    80007cd0:	00008067          	ret
    80007cd4:	00004617          	auipc	a2,0x4
    80007cd8:	a6c60613          	addi	a2,a2,-1428 # 8000b740 <uart_tx_r>
    80007cdc:	00004517          	auipc	a0,0x4
    80007ce0:	a6c50513          	addi	a0,a0,-1428 # 8000b748 <uart_tx_w>
    80007ce4:	00063783          	ld	a5,0(a2)
    80007ce8:	00053703          	ld	a4,0(a0)
    80007cec:	04f70263          	beq	a4,a5,80007d30 <uartintr+0x110>
    80007cf0:	100005b7          	lui	a1,0x10000
    80007cf4:	00005817          	auipc	a6,0x5
    80007cf8:	d6c80813          	addi	a6,a6,-660 # 8000ca60 <uart_tx_buf>
    80007cfc:	01c0006f          	j	80007d18 <uartintr+0xf8>
    80007d00:	0006c703          	lbu	a4,0(a3)
    80007d04:	00f63023          	sd	a5,0(a2)
    80007d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d0c:	00063783          	ld	a5,0(a2)
    80007d10:	00053703          	ld	a4,0(a0)
    80007d14:	02f70063          	beq	a4,a5,80007d34 <uartintr+0x114>
    80007d18:	01f7f713          	andi	a4,a5,31
    80007d1c:	00e806b3          	add	a3,a6,a4
    80007d20:	0055c703          	lbu	a4,5(a1)
    80007d24:	00178793          	addi	a5,a5,1
    80007d28:	02077713          	andi	a4,a4,32
    80007d2c:	fc071ae3          	bnez	a4,80007d00 <uartintr+0xe0>
    80007d30:	00008067          	ret
    80007d34:	00008067          	ret

0000000080007d38 <kinit>:
    80007d38:	fc010113          	addi	sp,sp,-64
    80007d3c:	02913423          	sd	s1,40(sp)
    80007d40:	fffff7b7          	lui	a5,0xfffff
    80007d44:	00006497          	auipc	s1,0x6
    80007d48:	d3b48493          	addi	s1,s1,-709 # 8000da7f <end+0xfff>
    80007d4c:	02813823          	sd	s0,48(sp)
    80007d50:	01313c23          	sd	s3,24(sp)
    80007d54:	00f4f4b3          	and	s1,s1,a5
    80007d58:	02113c23          	sd	ra,56(sp)
    80007d5c:	03213023          	sd	s2,32(sp)
    80007d60:	01413823          	sd	s4,16(sp)
    80007d64:	01513423          	sd	s5,8(sp)
    80007d68:	04010413          	addi	s0,sp,64
    80007d6c:	000017b7          	lui	a5,0x1
    80007d70:	01100993          	li	s3,17
    80007d74:	00f487b3          	add	a5,s1,a5
    80007d78:	01b99993          	slli	s3,s3,0x1b
    80007d7c:	06f9e063          	bltu	s3,a5,80007ddc <kinit+0xa4>
    80007d80:	00005a97          	auipc	s5,0x5
    80007d84:	d00a8a93          	addi	s5,s5,-768 # 8000ca80 <end>
    80007d88:	0754ec63          	bltu	s1,s5,80007e00 <kinit+0xc8>
    80007d8c:	0734fa63          	bgeu	s1,s3,80007e00 <kinit+0xc8>
    80007d90:	00088a37          	lui	s4,0x88
    80007d94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d98:	00004917          	auipc	s2,0x4
    80007d9c:	9b890913          	addi	s2,s2,-1608 # 8000b750 <kmem>
    80007da0:	00ca1a13          	slli	s4,s4,0xc
    80007da4:	0140006f          	j	80007db8 <kinit+0x80>
    80007da8:	000017b7          	lui	a5,0x1
    80007dac:	00f484b3          	add	s1,s1,a5
    80007db0:	0554e863          	bltu	s1,s5,80007e00 <kinit+0xc8>
    80007db4:	0534f663          	bgeu	s1,s3,80007e00 <kinit+0xc8>
    80007db8:	00001637          	lui	a2,0x1
    80007dbc:	00100593          	li	a1,1
    80007dc0:	00048513          	mv	a0,s1
    80007dc4:	00000097          	auipc	ra,0x0
    80007dc8:	5e4080e7          	jalr	1508(ra) # 800083a8 <__memset>
    80007dcc:	00093783          	ld	a5,0(s2)
    80007dd0:	00f4b023          	sd	a5,0(s1)
    80007dd4:	00993023          	sd	s1,0(s2)
    80007dd8:	fd4498e3          	bne	s1,s4,80007da8 <kinit+0x70>
    80007ddc:	03813083          	ld	ra,56(sp)
    80007de0:	03013403          	ld	s0,48(sp)
    80007de4:	02813483          	ld	s1,40(sp)
    80007de8:	02013903          	ld	s2,32(sp)
    80007dec:	01813983          	ld	s3,24(sp)
    80007df0:	01013a03          	ld	s4,16(sp)
    80007df4:	00813a83          	ld	s5,8(sp)
    80007df8:	04010113          	addi	sp,sp,64
    80007dfc:	00008067          	ret
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	8e050513          	addi	a0,a0,-1824 # 800096e0 <digits+0x18>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	4b4080e7          	jalr	1204(ra) # 800072bc <panic>

0000000080007e10 <freerange>:
    80007e10:	fc010113          	addi	sp,sp,-64
    80007e14:	000017b7          	lui	a5,0x1
    80007e18:	02913423          	sd	s1,40(sp)
    80007e1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e20:	009504b3          	add	s1,a0,s1
    80007e24:	fffff537          	lui	a0,0xfffff
    80007e28:	02813823          	sd	s0,48(sp)
    80007e2c:	02113c23          	sd	ra,56(sp)
    80007e30:	03213023          	sd	s2,32(sp)
    80007e34:	01313c23          	sd	s3,24(sp)
    80007e38:	01413823          	sd	s4,16(sp)
    80007e3c:	01513423          	sd	s5,8(sp)
    80007e40:	01613023          	sd	s6,0(sp)
    80007e44:	04010413          	addi	s0,sp,64
    80007e48:	00a4f4b3          	and	s1,s1,a0
    80007e4c:	00f487b3          	add	a5,s1,a5
    80007e50:	06f5e463          	bltu	a1,a5,80007eb8 <freerange+0xa8>
    80007e54:	00005a97          	auipc	s5,0x5
    80007e58:	c2ca8a93          	addi	s5,s5,-980 # 8000ca80 <end>
    80007e5c:	0954e263          	bltu	s1,s5,80007ee0 <freerange+0xd0>
    80007e60:	01100993          	li	s3,17
    80007e64:	01b99993          	slli	s3,s3,0x1b
    80007e68:	0734fc63          	bgeu	s1,s3,80007ee0 <freerange+0xd0>
    80007e6c:	00058a13          	mv	s4,a1
    80007e70:	00004917          	auipc	s2,0x4
    80007e74:	8e090913          	addi	s2,s2,-1824 # 8000b750 <kmem>
    80007e78:	00002b37          	lui	s6,0x2
    80007e7c:	0140006f          	j	80007e90 <freerange+0x80>
    80007e80:	000017b7          	lui	a5,0x1
    80007e84:	00f484b3          	add	s1,s1,a5
    80007e88:	0554ec63          	bltu	s1,s5,80007ee0 <freerange+0xd0>
    80007e8c:	0534fa63          	bgeu	s1,s3,80007ee0 <freerange+0xd0>
    80007e90:	00001637          	lui	a2,0x1
    80007e94:	00100593          	li	a1,1
    80007e98:	00048513          	mv	a0,s1
    80007e9c:	00000097          	auipc	ra,0x0
    80007ea0:	50c080e7          	jalr	1292(ra) # 800083a8 <__memset>
    80007ea4:	00093703          	ld	a4,0(s2)
    80007ea8:	016487b3          	add	a5,s1,s6
    80007eac:	00e4b023          	sd	a4,0(s1)
    80007eb0:	00993023          	sd	s1,0(s2)
    80007eb4:	fcfa76e3          	bgeu	s4,a5,80007e80 <freerange+0x70>
    80007eb8:	03813083          	ld	ra,56(sp)
    80007ebc:	03013403          	ld	s0,48(sp)
    80007ec0:	02813483          	ld	s1,40(sp)
    80007ec4:	02013903          	ld	s2,32(sp)
    80007ec8:	01813983          	ld	s3,24(sp)
    80007ecc:	01013a03          	ld	s4,16(sp)
    80007ed0:	00813a83          	ld	s5,8(sp)
    80007ed4:	00013b03          	ld	s6,0(sp)
    80007ed8:	04010113          	addi	sp,sp,64
    80007edc:	00008067          	ret
    80007ee0:	00002517          	auipc	a0,0x2
    80007ee4:	80050513          	addi	a0,a0,-2048 # 800096e0 <digits+0x18>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	3d4080e7          	jalr	980(ra) # 800072bc <panic>

0000000080007ef0 <kfree>:
    80007ef0:	fe010113          	addi	sp,sp,-32
    80007ef4:	00813823          	sd	s0,16(sp)
    80007ef8:	00113c23          	sd	ra,24(sp)
    80007efc:	00913423          	sd	s1,8(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	03451793          	slli	a5,a0,0x34
    80007f08:	04079c63          	bnez	a5,80007f60 <kfree+0x70>
    80007f0c:	00005797          	auipc	a5,0x5
    80007f10:	b7478793          	addi	a5,a5,-1164 # 8000ca80 <end>
    80007f14:	00050493          	mv	s1,a0
    80007f18:	04f56463          	bltu	a0,a5,80007f60 <kfree+0x70>
    80007f1c:	01100793          	li	a5,17
    80007f20:	01b79793          	slli	a5,a5,0x1b
    80007f24:	02f57e63          	bgeu	a0,a5,80007f60 <kfree+0x70>
    80007f28:	00001637          	lui	a2,0x1
    80007f2c:	00100593          	li	a1,1
    80007f30:	00000097          	auipc	ra,0x0
    80007f34:	478080e7          	jalr	1144(ra) # 800083a8 <__memset>
    80007f38:	00004797          	auipc	a5,0x4
    80007f3c:	81878793          	addi	a5,a5,-2024 # 8000b750 <kmem>
    80007f40:	0007b703          	ld	a4,0(a5)
    80007f44:	01813083          	ld	ra,24(sp)
    80007f48:	01013403          	ld	s0,16(sp)
    80007f4c:	00e4b023          	sd	a4,0(s1)
    80007f50:	0097b023          	sd	s1,0(a5)
    80007f54:	00813483          	ld	s1,8(sp)
    80007f58:	02010113          	addi	sp,sp,32
    80007f5c:	00008067          	ret
    80007f60:	00001517          	auipc	a0,0x1
    80007f64:	78050513          	addi	a0,a0,1920 # 800096e0 <digits+0x18>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	354080e7          	jalr	852(ra) # 800072bc <panic>

0000000080007f70 <kalloc>:
    80007f70:	fe010113          	addi	sp,sp,-32
    80007f74:	00813823          	sd	s0,16(sp)
    80007f78:	00913423          	sd	s1,8(sp)
    80007f7c:	00113c23          	sd	ra,24(sp)
    80007f80:	02010413          	addi	s0,sp,32
    80007f84:	00003797          	auipc	a5,0x3
    80007f88:	7cc78793          	addi	a5,a5,1996 # 8000b750 <kmem>
    80007f8c:	0007b483          	ld	s1,0(a5)
    80007f90:	02048063          	beqz	s1,80007fb0 <kalloc+0x40>
    80007f94:	0004b703          	ld	a4,0(s1)
    80007f98:	00001637          	lui	a2,0x1
    80007f9c:	00500593          	li	a1,5
    80007fa0:	00048513          	mv	a0,s1
    80007fa4:	00e7b023          	sd	a4,0(a5)
    80007fa8:	00000097          	auipc	ra,0x0
    80007fac:	400080e7          	jalr	1024(ra) # 800083a8 <__memset>
    80007fb0:	01813083          	ld	ra,24(sp)
    80007fb4:	01013403          	ld	s0,16(sp)
    80007fb8:	00048513          	mv	a0,s1
    80007fbc:	00813483          	ld	s1,8(sp)
    80007fc0:	02010113          	addi	sp,sp,32
    80007fc4:	00008067          	ret

0000000080007fc8 <initlock>:
    80007fc8:	ff010113          	addi	sp,sp,-16
    80007fcc:	00813423          	sd	s0,8(sp)
    80007fd0:	01010413          	addi	s0,sp,16
    80007fd4:	00813403          	ld	s0,8(sp)
    80007fd8:	00b53423          	sd	a1,8(a0)
    80007fdc:	00052023          	sw	zero,0(a0)
    80007fe0:	00053823          	sd	zero,16(a0)
    80007fe4:	01010113          	addi	sp,sp,16
    80007fe8:	00008067          	ret

0000000080007fec <acquire>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00913423          	sd	s1,8(sp)
    80007ff8:	00113c23          	sd	ra,24(sp)
    80007ffc:	01213023          	sd	s2,0(sp)
    80008000:	02010413          	addi	s0,sp,32
    80008004:	00050493          	mv	s1,a0
    80008008:	10002973          	csrr	s2,sstatus
    8000800c:	100027f3          	csrr	a5,sstatus
    80008010:	ffd7f793          	andi	a5,a5,-3
    80008014:	10079073          	csrw	sstatus,a5
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	8e0080e7          	jalr	-1824(ra) # 800068f8 <mycpu>
    80008020:	07852783          	lw	a5,120(a0)
    80008024:	06078e63          	beqz	a5,800080a0 <acquire+0xb4>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	8d0080e7          	jalr	-1840(ra) # 800068f8 <mycpu>
    80008030:	07852783          	lw	a5,120(a0)
    80008034:	0004a703          	lw	a4,0(s1)
    80008038:	0017879b          	addiw	a5,a5,1
    8000803c:	06f52c23          	sw	a5,120(a0)
    80008040:	04071063          	bnez	a4,80008080 <acquire+0x94>
    80008044:	00100713          	li	a4,1
    80008048:	00070793          	mv	a5,a4
    8000804c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008050:	0007879b          	sext.w	a5,a5
    80008054:	fe079ae3          	bnez	a5,80008048 <acquire+0x5c>
    80008058:	0ff0000f          	fence
    8000805c:	fffff097          	auipc	ra,0xfffff
    80008060:	89c080e7          	jalr	-1892(ra) # 800068f8 <mycpu>
    80008064:	01813083          	ld	ra,24(sp)
    80008068:	01013403          	ld	s0,16(sp)
    8000806c:	00a4b823          	sd	a0,16(s1)
    80008070:	00013903          	ld	s2,0(sp)
    80008074:	00813483          	ld	s1,8(sp)
    80008078:	02010113          	addi	sp,sp,32
    8000807c:	00008067          	ret
    80008080:	0104b903          	ld	s2,16(s1)
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	874080e7          	jalr	-1932(ra) # 800068f8 <mycpu>
    8000808c:	faa91ce3          	bne	s2,a0,80008044 <acquire+0x58>
    80008090:	00001517          	auipc	a0,0x1
    80008094:	65850513          	addi	a0,a0,1624 # 800096e8 <digits+0x20>
    80008098:	fffff097          	auipc	ra,0xfffff
    8000809c:	224080e7          	jalr	548(ra) # 800072bc <panic>
    800080a0:	00195913          	srli	s2,s2,0x1
    800080a4:	fffff097          	auipc	ra,0xfffff
    800080a8:	854080e7          	jalr	-1964(ra) # 800068f8 <mycpu>
    800080ac:	00197913          	andi	s2,s2,1
    800080b0:	07252e23          	sw	s2,124(a0)
    800080b4:	f75ff06f          	j	80008028 <acquire+0x3c>

00000000800080b8 <release>:
    800080b8:	fe010113          	addi	sp,sp,-32
    800080bc:	00813823          	sd	s0,16(sp)
    800080c0:	00113c23          	sd	ra,24(sp)
    800080c4:	00913423          	sd	s1,8(sp)
    800080c8:	01213023          	sd	s2,0(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	00052783          	lw	a5,0(a0)
    800080d4:	00079a63          	bnez	a5,800080e8 <release+0x30>
    800080d8:	00001517          	auipc	a0,0x1
    800080dc:	61850513          	addi	a0,a0,1560 # 800096f0 <digits+0x28>
    800080e0:	fffff097          	auipc	ra,0xfffff
    800080e4:	1dc080e7          	jalr	476(ra) # 800072bc <panic>
    800080e8:	01053903          	ld	s2,16(a0)
    800080ec:	00050493          	mv	s1,a0
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	808080e7          	jalr	-2040(ra) # 800068f8 <mycpu>
    800080f8:	fea910e3          	bne	s2,a0,800080d8 <release+0x20>
    800080fc:	0004b823          	sd	zero,16(s1)
    80008100:	0ff0000f          	fence
    80008104:	0f50000f          	fence	iorw,ow
    80008108:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000810c:	ffffe097          	auipc	ra,0xffffe
    80008110:	7ec080e7          	jalr	2028(ra) # 800068f8 <mycpu>
    80008114:	100027f3          	csrr	a5,sstatus
    80008118:	0027f793          	andi	a5,a5,2
    8000811c:	04079a63          	bnez	a5,80008170 <release+0xb8>
    80008120:	07852783          	lw	a5,120(a0)
    80008124:	02f05e63          	blez	a5,80008160 <release+0xa8>
    80008128:	fff7871b          	addiw	a4,a5,-1
    8000812c:	06e52c23          	sw	a4,120(a0)
    80008130:	00071c63          	bnez	a4,80008148 <release+0x90>
    80008134:	07c52783          	lw	a5,124(a0)
    80008138:	00078863          	beqz	a5,80008148 <release+0x90>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	0027e793          	ori	a5,a5,2
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	01813083          	ld	ra,24(sp)
    8000814c:	01013403          	ld	s0,16(sp)
    80008150:	00813483          	ld	s1,8(sp)
    80008154:	00013903          	ld	s2,0(sp)
    80008158:	02010113          	addi	sp,sp,32
    8000815c:	00008067          	ret
    80008160:	00001517          	auipc	a0,0x1
    80008164:	5b050513          	addi	a0,a0,1456 # 80009710 <digits+0x48>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	154080e7          	jalr	340(ra) # 800072bc <panic>
    80008170:	00001517          	auipc	a0,0x1
    80008174:	58850513          	addi	a0,a0,1416 # 800096f8 <digits+0x30>
    80008178:	fffff097          	auipc	ra,0xfffff
    8000817c:	144080e7          	jalr	324(ra) # 800072bc <panic>

0000000080008180 <holding>:
    80008180:	00052783          	lw	a5,0(a0)
    80008184:	00079663          	bnez	a5,80008190 <holding+0x10>
    80008188:	00000513          	li	a0,0
    8000818c:	00008067          	ret
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	00113c23          	sd	ra,24(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	01053483          	ld	s1,16(a0)
    800081a8:	ffffe097          	auipc	ra,0xffffe
    800081ac:	750080e7          	jalr	1872(ra) # 800068f8 <mycpu>
    800081b0:	01813083          	ld	ra,24(sp)
    800081b4:	01013403          	ld	s0,16(sp)
    800081b8:	40a48533          	sub	a0,s1,a0
    800081bc:	00153513          	seqz	a0,a0
    800081c0:	00813483          	ld	s1,8(sp)
    800081c4:	02010113          	addi	sp,sp,32
    800081c8:	00008067          	ret

00000000800081cc <push_off>:
    800081cc:	fe010113          	addi	sp,sp,-32
    800081d0:	00813823          	sd	s0,16(sp)
    800081d4:	00113c23          	sd	ra,24(sp)
    800081d8:	00913423          	sd	s1,8(sp)
    800081dc:	02010413          	addi	s0,sp,32
    800081e0:	100024f3          	csrr	s1,sstatus
    800081e4:	100027f3          	csrr	a5,sstatus
    800081e8:	ffd7f793          	andi	a5,a5,-3
    800081ec:	10079073          	csrw	sstatus,a5
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	708080e7          	jalr	1800(ra) # 800068f8 <mycpu>
    800081f8:	07852783          	lw	a5,120(a0)
    800081fc:	02078663          	beqz	a5,80008228 <push_off+0x5c>
    80008200:	ffffe097          	auipc	ra,0xffffe
    80008204:	6f8080e7          	jalr	1784(ra) # 800068f8 <mycpu>
    80008208:	07852783          	lw	a5,120(a0)
    8000820c:	01813083          	ld	ra,24(sp)
    80008210:	01013403          	ld	s0,16(sp)
    80008214:	0017879b          	addiw	a5,a5,1
    80008218:	06f52c23          	sw	a5,120(a0)
    8000821c:	00813483          	ld	s1,8(sp)
    80008220:	02010113          	addi	sp,sp,32
    80008224:	00008067          	ret
    80008228:	0014d493          	srli	s1,s1,0x1
    8000822c:	ffffe097          	auipc	ra,0xffffe
    80008230:	6cc080e7          	jalr	1740(ra) # 800068f8 <mycpu>
    80008234:	0014f493          	andi	s1,s1,1
    80008238:	06952e23          	sw	s1,124(a0)
    8000823c:	fc5ff06f          	j	80008200 <push_off+0x34>

0000000080008240 <pop_off>:
    80008240:	ff010113          	addi	sp,sp,-16
    80008244:	00813023          	sd	s0,0(sp)
    80008248:	00113423          	sd	ra,8(sp)
    8000824c:	01010413          	addi	s0,sp,16
    80008250:	ffffe097          	auipc	ra,0xffffe
    80008254:	6a8080e7          	jalr	1704(ra) # 800068f8 <mycpu>
    80008258:	100027f3          	csrr	a5,sstatus
    8000825c:	0027f793          	andi	a5,a5,2
    80008260:	04079663          	bnez	a5,800082ac <pop_off+0x6c>
    80008264:	07852783          	lw	a5,120(a0)
    80008268:	02f05a63          	blez	a5,8000829c <pop_off+0x5c>
    8000826c:	fff7871b          	addiw	a4,a5,-1
    80008270:	06e52c23          	sw	a4,120(a0)
    80008274:	00071c63          	bnez	a4,8000828c <pop_off+0x4c>
    80008278:	07c52783          	lw	a5,124(a0)
    8000827c:	00078863          	beqz	a5,8000828c <pop_off+0x4c>
    80008280:	100027f3          	csrr	a5,sstatus
    80008284:	0027e793          	ori	a5,a5,2
    80008288:	10079073          	csrw	sstatus,a5
    8000828c:	00813083          	ld	ra,8(sp)
    80008290:	00013403          	ld	s0,0(sp)
    80008294:	01010113          	addi	sp,sp,16
    80008298:	00008067          	ret
    8000829c:	00001517          	auipc	a0,0x1
    800082a0:	47450513          	addi	a0,a0,1140 # 80009710 <digits+0x48>
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	018080e7          	jalr	24(ra) # 800072bc <panic>
    800082ac:	00001517          	auipc	a0,0x1
    800082b0:	44c50513          	addi	a0,a0,1100 # 800096f8 <digits+0x30>
    800082b4:	fffff097          	auipc	ra,0xfffff
    800082b8:	008080e7          	jalr	8(ra) # 800072bc <panic>

00000000800082bc <push_on>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00113c23          	sd	ra,24(sp)
    800082c8:	00913423          	sd	s1,8(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	100024f3          	csrr	s1,sstatus
    800082d4:	100027f3          	csrr	a5,sstatus
    800082d8:	0027e793          	ori	a5,a5,2
    800082dc:	10079073          	csrw	sstatus,a5
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	618080e7          	jalr	1560(ra) # 800068f8 <mycpu>
    800082e8:	07852783          	lw	a5,120(a0)
    800082ec:	02078663          	beqz	a5,80008318 <push_on+0x5c>
    800082f0:	ffffe097          	auipc	ra,0xffffe
    800082f4:	608080e7          	jalr	1544(ra) # 800068f8 <mycpu>
    800082f8:	07852783          	lw	a5,120(a0)
    800082fc:	01813083          	ld	ra,24(sp)
    80008300:	01013403          	ld	s0,16(sp)
    80008304:	0017879b          	addiw	a5,a5,1
    80008308:	06f52c23          	sw	a5,120(a0)
    8000830c:	00813483          	ld	s1,8(sp)
    80008310:	02010113          	addi	sp,sp,32
    80008314:	00008067          	ret
    80008318:	0014d493          	srli	s1,s1,0x1
    8000831c:	ffffe097          	auipc	ra,0xffffe
    80008320:	5dc080e7          	jalr	1500(ra) # 800068f8 <mycpu>
    80008324:	0014f493          	andi	s1,s1,1
    80008328:	06952e23          	sw	s1,124(a0)
    8000832c:	fc5ff06f          	j	800082f0 <push_on+0x34>

0000000080008330 <pop_on>:
    80008330:	ff010113          	addi	sp,sp,-16
    80008334:	00813023          	sd	s0,0(sp)
    80008338:	00113423          	sd	ra,8(sp)
    8000833c:	01010413          	addi	s0,sp,16
    80008340:	ffffe097          	auipc	ra,0xffffe
    80008344:	5b8080e7          	jalr	1464(ra) # 800068f8 <mycpu>
    80008348:	100027f3          	csrr	a5,sstatus
    8000834c:	0027f793          	andi	a5,a5,2
    80008350:	04078463          	beqz	a5,80008398 <pop_on+0x68>
    80008354:	07852783          	lw	a5,120(a0)
    80008358:	02f05863          	blez	a5,80008388 <pop_on+0x58>
    8000835c:	fff7879b          	addiw	a5,a5,-1
    80008360:	06f52c23          	sw	a5,120(a0)
    80008364:	07853783          	ld	a5,120(a0)
    80008368:	00079863          	bnez	a5,80008378 <pop_on+0x48>
    8000836c:	100027f3          	csrr	a5,sstatus
    80008370:	ffd7f793          	andi	a5,a5,-3
    80008374:	10079073          	csrw	sstatus,a5
    80008378:	00813083          	ld	ra,8(sp)
    8000837c:	00013403          	ld	s0,0(sp)
    80008380:	01010113          	addi	sp,sp,16
    80008384:	00008067          	ret
    80008388:	00001517          	auipc	a0,0x1
    8000838c:	3b050513          	addi	a0,a0,944 # 80009738 <digits+0x70>
    80008390:	fffff097          	auipc	ra,0xfffff
    80008394:	f2c080e7          	jalr	-212(ra) # 800072bc <panic>
    80008398:	00001517          	auipc	a0,0x1
    8000839c:	38050513          	addi	a0,a0,896 # 80009718 <digits+0x50>
    800083a0:	fffff097          	auipc	ra,0xfffff
    800083a4:	f1c080e7          	jalr	-228(ra) # 800072bc <panic>

00000000800083a8 <__memset>:
    800083a8:	ff010113          	addi	sp,sp,-16
    800083ac:	00813423          	sd	s0,8(sp)
    800083b0:	01010413          	addi	s0,sp,16
    800083b4:	1a060e63          	beqz	a2,80008570 <__memset+0x1c8>
    800083b8:	40a007b3          	neg	a5,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00778693          	addi	a3,a5,7
    800083c4:	00b00813          	li	a6,11
    800083c8:	0ff5f593          	andi	a1,a1,255
    800083cc:	fff6071b          	addiw	a4,a2,-1
    800083d0:	1b06e663          	bltu	a3,a6,8000857c <__memset+0x1d4>
    800083d4:	1cd76463          	bltu	a4,a3,8000859c <__memset+0x1f4>
    800083d8:	1a078e63          	beqz	a5,80008594 <__memset+0x1ec>
    800083dc:	00b50023          	sb	a1,0(a0)
    800083e0:	00100713          	li	a4,1
    800083e4:	1ae78463          	beq	a5,a4,8000858c <__memset+0x1e4>
    800083e8:	00b500a3          	sb	a1,1(a0)
    800083ec:	00200713          	li	a4,2
    800083f0:	1ae78a63          	beq	a5,a4,800085a4 <__memset+0x1fc>
    800083f4:	00b50123          	sb	a1,2(a0)
    800083f8:	00300713          	li	a4,3
    800083fc:	18e78463          	beq	a5,a4,80008584 <__memset+0x1dc>
    80008400:	00b501a3          	sb	a1,3(a0)
    80008404:	00400713          	li	a4,4
    80008408:	1ae78263          	beq	a5,a4,800085ac <__memset+0x204>
    8000840c:	00b50223          	sb	a1,4(a0)
    80008410:	00500713          	li	a4,5
    80008414:	1ae78063          	beq	a5,a4,800085b4 <__memset+0x20c>
    80008418:	00b502a3          	sb	a1,5(a0)
    8000841c:	00700713          	li	a4,7
    80008420:	18e79e63          	bne	a5,a4,800085bc <__memset+0x214>
    80008424:	00b50323          	sb	a1,6(a0)
    80008428:	00700e93          	li	t4,7
    8000842c:	00859713          	slli	a4,a1,0x8
    80008430:	00e5e733          	or	a4,a1,a4
    80008434:	01059e13          	slli	t3,a1,0x10
    80008438:	01c76e33          	or	t3,a4,t3
    8000843c:	01859313          	slli	t1,a1,0x18
    80008440:	006e6333          	or	t1,t3,t1
    80008444:	02059893          	slli	a7,a1,0x20
    80008448:	40f60e3b          	subw	t3,a2,a5
    8000844c:	011368b3          	or	a7,t1,a7
    80008450:	02859813          	slli	a6,a1,0x28
    80008454:	0108e833          	or	a6,a7,a6
    80008458:	03059693          	slli	a3,a1,0x30
    8000845c:	003e589b          	srliw	a7,t3,0x3
    80008460:	00d866b3          	or	a3,a6,a3
    80008464:	03859713          	slli	a4,a1,0x38
    80008468:	00389813          	slli	a6,a7,0x3
    8000846c:	00f507b3          	add	a5,a0,a5
    80008470:	00e6e733          	or	a4,a3,a4
    80008474:	000e089b          	sext.w	a7,t3
    80008478:	00f806b3          	add	a3,a6,a5
    8000847c:	00e7b023          	sd	a4,0(a5)
    80008480:	00878793          	addi	a5,a5,8
    80008484:	fed79ce3          	bne	a5,a3,8000847c <__memset+0xd4>
    80008488:	ff8e7793          	andi	a5,t3,-8
    8000848c:	0007871b          	sext.w	a4,a5
    80008490:	01d787bb          	addw	a5,a5,t4
    80008494:	0ce88e63          	beq	a7,a4,80008570 <__memset+0x1c8>
    80008498:	00f50733          	add	a4,a0,a5
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0017871b          	addiw	a4,a5,1
    800084a4:	0cc77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0027871b          	addiw	a4,a5,2
    800084b4:	0ac77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0037871b          	addiw	a4,a5,3
    800084c4:	0ac77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	0047871b          	addiw	a4,a5,4
    800084d4:	08c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	0057871b          	addiw	a4,a5,5
    800084e4:	08c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0067871b          	addiw	a4,a5,6
    800084f4:	06c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0077871b          	addiw	a4,a5,7
    80008504:	06c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0087871b          	addiw	a4,a5,8
    80008514:	04c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	0097871b          	addiw	a4,a5,9
    80008524:	04c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	00a7871b          	addiw	a4,a5,10
    80008534:	02c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	00b7871b          	addiw	a4,a5,11
    80008544:	02c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	00c7871b          	addiw	a4,a5,12
    80008554:	00c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	00d7879b          	addiw	a5,a5,13
    80008564:	00c7f663          	bgeu	a5,a2,80008570 <__memset+0x1c8>
    80008568:	00f507b3          	add	a5,a0,a5
    8000856c:	00b78023          	sb	a1,0(a5)
    80008570:	00813403          	ld	s0,8(sp)
    80008574:	01010113          	addi	sp,sp,16
    80008578:	00008067          	ret
    8000857c:	00b00693          	li	a3,11
    80008580:	e55ff06f          	j	800083d4 <__memset+0x2c>
    80008584:	00300e93          	li	t4,3
    80008588:	ea5ff06f          	j	8000842c <__memset+0x84>
    8000858c:	00100e93          	li	t4,1
    80008590:	e9dff06f          	j	8000842c <__memset+0x84>
    80008594:	00000e93          	li	t4,0
    80008598:	e95ff06f          	j	8000842c <__memset+0x84>
    8000859c:	00000793          	li	a5,0
    800085a0:	ef9ff06f          	j	80008498 <__memset+0xf0>
    800085a4:	00200e93          	li	t4,2
    800085a8:	e85ff06f          	j	8000842c <__memset+0x84>
    800085ac:	00400e93          	li	t4,4
    800085b0:	e7dff06f          	j	8000842c <__memset+0x84>
    800085b4:	00500e93          	li	t4,5
    800085b8:	e75ff06f          	j	8000842c <__memset+0x84>
    800085bc:	00600e93          	li	t4,6
    800085c0:	e6dff06f          	j	8000842c <__memset+0x84>

00000000800085c4 <__memmove>:
    800085c4:	ff010113          	addi	sp,sp,-16
    800085c8:	00813423          	sd	s0,8(sp)
    800085cc:	01010413          	addi	s0,sp,16
    800085d0:	0e060863          	beqz	a2,800086c0 <__memmove+0xfc>
    800085d4:	fff6069b          	addiw	a3,a2,-1
    800085d8:	0006881b          	sext.w	a6,a3
    800085dc:	0ea5e863          	bltu	a1,a0,800086cc <__memmove+0x108>
    800085e0:	00758713          	addi	a4,a1,7
    800085e4:	00a5e7b3          	or	a5,a1,a0
    800085e8:	40a70733          	sub	a4,a4,a0
    800085ec:	0077f793          	andi	a5,a5,7
    800085f0:	00f73713          	sltiu	a4,a4,15
    800085f4:	00174713          	xori	a4,a4,1
    800085f8:	0017b793          	seqz	a5,a5
    800085fc:	00e7f7b3          	and	a5,a5,a4
    80008600:	10078863          	beqz	a5,80008710 <__memmove+0x14c>
    80008604:	00900793          	li	a5,9
    80008608:	1107f463          	bgeu	a5,a6,80008710 <__memmove+0x14c>
    8000860c:	0036581b          	srliw	a6,a2,0x3
    80008610:	fff8081b          	addiw	a6,a6,-1
    80008614:	02081813          	slli	a6,a6,0x20
    80008618:	01d85893          	srli	a7,a6,0x1d
    8000861c:	00858813          	addi	a6,a1,8
    80008620:	00058793          	mv	a5,a1
    80008624:	00050713          	mv	a4,a0
    80008628:	01088833          	add	a6,a7,a6
    8000862c:	0007b883          	ld	a7,0(a5)
    80008630:	00878793          	addi	a5,a5,8
    80008634:	00870713          	addi	a4,a4,8
    80008638:	ff173c23          	sd	a7,-8(a4)
    8000863c:	ff0798e3          	bne	a5,a6,8000862c <__memmove+0x68>
    80008640:	ff867713          	andi	a4,a2,-8
    80008644:	02071793          	slli	a5,a4,0x20
    80008648:	0207d793          	srli	a5,a5,0x20
    8000864c:	00f585b3          	add	a1,a1,a5
    80008650:	40e686bb          	subw	a3,a3,a4
    80008654:	00f507b3          	add	a5,a0,a5
    80008658:	06e60463          	beq	a2,a4,800086c0 <__memmove+0xfc>
    8000865c:	0005c703          	lbu	a4,0(a1)
    80008660:	00e78023          	sb	a4,0(a5)
    80008664:	04068e63          	beqz	a3,800086c0 <__memmove+0xfc>
    80008668:	0015c603          	lbu	a2,1(a1)
    8000866c:	00100713          	li	a4,1
    80008670:	00c780a3          	sb	a2,1(a5)
    80008674:	04e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008678:	0025c603          	lbu	a2,2(a1)
    8000867c:	00200713          	li	a4,2
    80008680:	00c78123          	sb	a2,2(a5)
    80008684:	02e68e63          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008688:	0035c603          	lbu	a2,3(a1)
    8000868c:	00300713          	li	a4,3
    80008690:	00c781a3          	sb	a2,3(a5)
    80008694:	02e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008698:	0045c603          	lbu	a2,4(a1)
    8000869c:	00400713          	li	a4,4
    800086a0:	00c78223          	sb	a2,4(a5)
    800086a4:	00e68e63          	beq	a3,a4,800086c0 <__memmove+0xfc>
    800086a8:	0055c603          	lbu	a2,5(a1)
    800086ac:	00500713          	li	a4,5
    800086b0:	00c782a3          	sb	a2,5(a5)
    800086b4:	00e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    800086b8:	0065c703          	lbu	a4,6(a1)
    800086bc:	00e78323          	sb	a4,6(a5)
    800086c0:	00813403          	ld	s0,8(sp)
    800086c4:	01010113          	addi	sp,sp,16
    800086c8:	00008067          	ret
    800086cc:	02061713          	slli	a4,a2,0x20
    800086d0:	02075713          	srli	a4,a4,0x20
    800086d4:	00e587b3          	add	a5,a1,a4
    800086d8:	f0f574e3          	bgeu	a0,a5,800085e0 <__memmove+0x1c>
    800086dc:	02069613          	slli	a2,a3,0x20
    800086e0:	02065613          	srli	a2,a2,0x20
    800086e4:	fff64613          	not	a2,a2
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00c78633          	add	a2,a5,a2
    800086f0:	fff7c683          	lbu	a3,-1(a5)
    800086f4:	fff78793          	addi	a5,a5,-1
    800086f8:	fff70713          	addi	a4,a4,-1
    800086fc:	00d70023          	sb	a3,0(a4)
    80008700:	fec798e3          	bne	a5,a2,800086f0 <__memmove+0x12c>
    80008704:	00813403          	ld	s0,8(sp)
    80008708:	01010113          	addi	sp,sp,16
    8000870c:	00008067          	ret
    80008710:	02069713          	slli	a4,a3,0x20
    80008714:	02075713          	srli	a4,a4,0x20
    80008718:	00170713          	addi	a4,a4,1
    8000871c:	00e50733          	add	a4,a0,a4
    80008720:	00050793          	mv	a5,a0
    80008724:	0005c683          	lbu	a3,0(a1)
    80008728:	00178793          	addi	a5,a5,1
    8000872c:	00158593          	addi	a1,a1,1
    80008730:	fed78fa3          	sb	a3,-1(a5)
    80008734:	fee798e3          	bne	a5,a4,80008724 <__memmove+0x160>
    80008738:	f89ff06f          	j	800086c0 <__memmove+0xfc>

000000008000873c <__putc>:
    8000873c:	fe010113          	addi	sp,sp,-32
    80008740:	00813823          	sd	s0,16(sp)
    80008744:	00113c23          	sd	ra,24(sp)
    80008748:	02010413          	addi	s0,sp,32
    8000874c:	00050793          	mv	a5,a0
    80008750:	fef40593          	addi	a1,s0,-17
    80008754:	00100613          	li	a2,1
    80008758:	00000513          	li	a0,0
    8000875c:	fef407a3          	sb	a5,-17(s0)
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	b3c080e7          	jalr	-1220(ra) # 8000729c <console_write>
    80008768:	01813083          	ld	ra,24(sp)
    8000876c:	01013403          	ld	s0,16(sp)
    80008770:	02010113          	addi	sp,sp,32
    80008774:	00008067          	ret

0000000080008778 <__getc>:
    80008778:	fe010113          	addi	sp,sp,-32
    8000877c:	00813823          	sd	s0,16(sp)
    80008780:	00113c23          	sd	ra,24(sp)
    80008784:	02010413          	addi	s0,sp,32
    80008788:	fe840593          	addi	a1,s0,-24
    8000878c:	00100613          	li	a2,1
    80008790:	00000513          	li	a0,0
    80008794:	fffff097          	auipc	ra,0xfffff
    80008798:	ae8080e7          	jalr	-1304(ra) # 8000727c <console_read>
    8000879c:	fe844503          	lbu	a0,-24(s0)
    800087a0:	01813083          	ld	ra,24(sp)
    800087a4:	01013403          	ld	s0,16(sp)
    800087a8:	02010113          	addi	sp,sp,32
    800087ac:	00008067          	ret

00000000800087b0 <console_handler>:
    800087b0:	fe010113          	addi	sp,sp,-32
    800087b4:	00813823          	sd	s0,16(sp)
    800087b8:	00113c23          	sd	ra,24(sp)
    800087bc:	00913423          	sd	s1,8(sp)
    800087c0:	02010413          	addi	s0,sp,32
    800087c4:	14202773          	csrr	a4,scause
    800087c8:	100027f3          	csrr	a5,sstatus
    800087cc:	0027f793          	andi	a5,a5,2
    800087d0:	06079e63          	bnez	a5,8000884c <console_handler+0x9c>
    800087d4:	00074c63          	bltz	a4,800087ec <console_handler+0x3c>
    800087d8:	01813083          	ld	ra,24(sp)
    800087dc:	01013403          	ld	s0,16(sp)
    800087e0:	00813483          	ld	s1,8(sp)
    800087e4:	02010113          	addi	sp,sp,32
    800087e8:	00008067          	ret
    800087ec:	0ff77713          	andi	a4,a4,255
    800087f0:	00900793          	li	a5,9
    800087f4:	fef712e3          	bne	a4,a5,800087d8 <console_handler+0x28>
    800087f8:	ffffe097          	auipc	ra,0xffffe
    800087fc:	6dc080e7          	jalr	1756(ra) # 80006ed4 <plic_claim>
    80008800:	00a00793          	li	a5,10
    80008804:	00050493          	mv	s1,a0
    80008808:	02f50c63          	beq	a0,a5,80008840 <console_handler+0x90>
    8000880c:	fc0506e3          	beqz	a0,800087d8 <console_handler+0x28>
    80008810:	00050593          	mv	a1,a0
    80008814:	00001517          	auipc	a0,0x1
    80008818:	e2c50513          	addi	a0,a0,-468 # 80009640 <CONSOLE_STATUS+0x630>
    8000881c:	fffff097          	auipc	ra,0xfffff
    80008820:	afc080e7          	jalr	-1284(ra) # 80007318 <__printf>
    80008824:	01013403          	ld	s0,16(sp)
    80008828:	01813083          	ld	ra,24(sp)
    8000882c:	00048513          	mv	a0,s1
    80008830:	00813483          	ld	s1,8(sp)
    80008834:	02010113          	addi	sp,sp,32
    80008838:	ffffe317          	auipc	t1,0xffffe
    8000883c:	6d430067          	jr	1748(t1) # 80006f0c <plic_complete>
    80008840:	fffff097          	auipc	ra,0xfffff
    80008844:	3e0080e7          	jalr	992(ra) # 80007c20 <uartintr>
    80008848:	fddff06f          	j	80008824 <console_handler+0x74>
    8000884c:	00001517          	auipc	a0,0x1
    80008850:	ef450513          	addi	a0,a0,-268 # 80009740 <digits+0x78>
    80008854:	fffff097          	auipc	ra,0xfffff
    80008858:	a68080e7          	jalr	-1432(ra) # 800072bc <panic>
	...
