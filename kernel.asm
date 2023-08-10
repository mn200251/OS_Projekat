
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8c813103          	ld	sp,-1848(sp) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	024020ef          	jal	ra,80002040 <start>

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
    80001088:	161000ef          	jal	ra,800019e8 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001120 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001124:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001128:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000112c:	0085b103          	ld	sp,8(a1)

    80001130:	00008067          	ret

0000000080001134 <_Z9mem_allocm>:

#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

void* mem_alloc (size_t size)
{
    80001134:	fd010113          	addi	sp,sp,-48
    80001138:	02113423          	sd	ra,40(sp)
    8000113c:	02813023          	sd	s0,32(sp)
    80001140:	03010413          	addi	s0,sp,48
    80001144:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000001UL;
    80001148:	00100793          	li	a5,1
    8000114c:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("ld a0, %0" : : "m" (code));
    80001150:	fe843503          	ld	a0,-24(s0)

    __asm__ volatile("ld a1, %0" : : "m" (size));
    80001154:	fd843583          	ld	a1,-40(s0)

    __asm__ volatile("ecall");
    80001158:	00000073          	ecall

    void* ptr;

    asm volatile("sd a0, %0" : "=m" (ptr));
    8000115c:	fea43023          	sd	a0,-32(s0)

    printString("mem_alloc: ");
    80001160:	00004517          	auipc	a0,0x4
    80001164:	ec050513          	addi	a0,a0,-320 # 80005020 <CONSOLE_STATUS+0x10>
    80001168:	00001097          	auipc	ra,0x1
    8000116c:	dac080e7          	jalr	-596(ra) # 80001f14 <_Z11printStringPKc>
    printInteger(size_t(ptr));
    80001170:	fe043503          	ld	a0,-32(s0)
    80001174:	00001097          	auipc	ra,0x1
    80001178:	e10080e7          	jalr	-496(ra) # 80001f84 <_Z12printIntegerm>
    printString("\n");
    8000117c:	00004517          	auipc	a0,0x4
    80001180:	f8450513          	addi	a0,a0,-124 # 80005100 <CONSOLE_STATUS+0xf0>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	d90080e7          	jalr	-624(ra) # 80001f14 <_Z11printStringPKc>

    return ptr;
}
    8000118c:	fe043503          	ld	a0,-32(s0)
    80001190:	02813083          	ld	ra,40(sp)
    80001194:	02013403          	ld	s0,32(sp)
    80001198:	03010113          	addi	sp,sp,48
    8000119c:	00008067          	ret

00000000800011a0 <_Z8mem_freePv>:

int mem_free (void* ptr)
{
    800011a0:	fd010113          	addi	sp,sp,-48
    800011a4:	02813423          	sd	s0,40(sp)
    800011a8:	03010413          	addi	s0,sp,48
    800011ac:	fca43c23          	sd	a0,-40(s0)
    size_t code = 0x0000000000000002UL;
    800011b0:	00200793          	li	a5,2
    800011b4:	fef43423          	sd	a5,-24(s0)
    asm volatile("ld a0, %0" : : "m" (code));
    800011b8:	fe843503          	ld	a0,-24(s0)

    asm volatile("ld a1, %0" : : "m" (ptr));
    800011bc:	fd843583          	ld	a1,-40(s0)

    asm volatile("ecall");
    800011c0:	00000073          	ecall

    int val;

    asm volatile("sd a0, %0" : "=m" (val));
    800011c4:	fea43223          	sd	a0,-28(s0)
//    printString("mem_free: ");
//    printInteger(val);
//    printString("\n");

    return val;
    800011c8:	fe442503          	lw	a0,-28(s0)
    800011cc:	02813403          	ld	s0,40(sp)
    800011d0:	03010113          	addi	sp,sp,48
    800011d4:	00008067          	ret

00000000800011d8 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800011d8:	fe010113          	addi	sp,sp,-32
    800011dc:	00113c23          	sd	ra,24(sp)
    800011e0:	00813823          	sd	s0,16(sp)
    800011e4:	00913423          	sd	s1,8(sp)
    800011e8:	01213023          	sd	s2,0(sp)
    800011ec:	02010413          	addi	s0,sp,32
    800011f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800011f4:	00100793          	li	a5,1
    800011f8:	02a7f863          	bgeu	a5,a0,80001228 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    800011fc:	00a00793          	li	a5,10
    80001200:	02f577b3          	remu	a5,a0,a5
    80001204:	02078e63          	beqz	a5,80001240 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001208:	fff48513          	addi	a0,s1,-1
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	fcc080e7          	jalr	-52(ra) # 800011d8 <_ZL9fibonaccim>
    80001214:	00050913          	mv	s2,a0
    80001218:	ffe48513          	addi	a0,s1,-2
    8000121c:	00000097          	auipc	ra,0x0
    80001220:	fbc080e7          	jalr	-68(ra) # 800011d8 <_ZL9fibonaccim>
    80001224:	00a90533          	add	a0,s2,a0
}
    80001228:	01813083          	ld	ra,24(sp)
    8000122c:	01013403          	ld	s0,16(sp)
    80001230:	00813483          	ld	s1,8(sp)
    80001234:	00013903          	ld	s2,0(sp)
    80001238:	02010113          	addi	sp,sp,32
    8000123c:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001240:	00000097          	auipc	ra,0x0
    80001244:	60c080e7          	jalr	1548(ra) # 8000184c <_ZN3TCB5yieldEv>
    80001248:	fc1ff06f          	j	80001208 <_ZL9fibonaccim+0x30>

000000008000124c <_Z11workerBodyAv>:
{
    8000124c:	fe010113          	addi	sp,sp,-32
    80001250:	00113c23          	sd	ra,24(sp)
    80001254:	00813823          	sd	s0,16(sp)
    80001258:	00913423          	sd	s1,8(sp)
    8000125c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001260:	00000493          	li	s1,0
    80001264:	0300006f          	j	80001294 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001268:	00168693          	addi	a3,a3,1
    8000126c:	000027b7          	lui	a5,0x2
    80001270:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001274:	00d7ee63          	bltu	a5,a3,80001290 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001278:	00000713          	li	a4,0
    8000127c:	000077b7          	lui	a5,0x7
    80001280:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001284:	fee7e2e3          	bltu	a5,a4,80001268 <_Z11workerBodyAv+0x1c>
    80001288:	00170713          	addi	a4,a4,1
    8000128c:	ff1ff06f          	j	8000127c <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001290:	00148493          	addi	s1,s1,1
    80001294:	00900793          	li	a5,9
    80001298:	0297ec63          	bltu	a5,s1,800012d0 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    8000129c:	00004517          	auipc	a0,0x4
    800012a0:	d9450513          	addi	a0,a0,-620 # 80005030 <CONSOLE_STATUS+0x20>
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	c70080e7          	jalr	-912(ra) # 80001f14 <_Z11printStringPKc>
        printInteger(i);
    800012ac:	00048513          	mv	a0,s1
    800012b0:	00001097          	auipc	ra,0x1
    800012b4:	cd4080e7          	jalr	-812(ra) # 80001f84 <_Z12printIntegerm>
        printString("\n");
    800012b8:	00004517          	auipc	a0,0x4
    800012bc:	e4850513          	addi	a0,a0,-440 # 80005100 <CONSOLE_STATUS+0xf0>
    800012c0:	00001097          	auipc	ra,0x1
    800012c4:	c54080e7          	jalr	-940(ra) # 80001f14 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012c8:	00000693          	li	a3,0
    800012cc:	fa1ff06f          	j	8000126c <_Z11workerBodyAv+0x20>
}
    800012d0:	01813083          	ld	ra,24(sp)
    800012d4:	01013403          	ld	s0,16(sp)
    800012d8:	00813483          	ld	s1,8(sp)
    800012dc:	02010113          	addi	sp,sp,32
    800012e0:	00008067          	ret

00000000800012e4 <_Z11workerBodyBv>:
{
    800012e4:	fe010113          	addi	sp,sp,-32
    800012e8:	00113c23          	sd	ra,24(sp)
    800012ec:	00813823          	sd	s0,16(sp)
    800012f0:	00913423          	sd	s1,8(sp)
    800012f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800012f8:	00000493          	li	s1,0
    800012fc:	0300006f          	j	8000132c <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001300:	00168693          	addi	a3,a3,1
    80001304:	000027b7          	lui	a5,0x2
    80001308:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000130c:	00d7ee63          	bltu	a5,a3,80001328 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001310:	00000713          	li	a4,0
    80001314:	000077b7          	lui	a5,0x7
    80001318:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000131c:	fee7e2e3          	bltu	a5,a4,80001300 <_Z11workerBodyBv+0x1c>
    80001320:	00170713          	addi	a4,a4,1
    80001324:	ff1ff06f          	j	80001314 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001328:	00148493          	addi	s1,s1,1
    8000132c:	00f00793          	li	a5,15
    80001330:	0297ec63          	bltu	a5,s1,80001368 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001334:	00004517          	auipc	a0,0x4
    80001338:	d0450513          	addi	a0,a0,-764 # 80005038 <CONSOLE_STATUS+0x28>
    8000133c:	00001097          	auipc	ra,0x1
    80001340:	bd8080e7          	jalr	-1064(ra) # 80001f14 <_Z11printStringPKc>
        printInteger(i);
    80001344:	00048513          	mv	a0,s1
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	c3c080e7          	jalr	-964(ra) # 80001f84 <_Z12printIntegerm>
        printString("\n");
    80001350:	00004517          	auipc	a0,0x4
    80001354:	db050513          	addi	a0,a0,-592 # 80005100 <CONSOLE_STATUS+0xf0>
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	bbc080e7          	jalr	-1092(ra) # 80001f14 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001360:	00000693          	li	a3,0
    80001364:	fa1ff06f          	j	80001304 <_Z11workerBodyBv+0x20>
}
    80001368:	01813083          	ld	ra,24(sp)
    8000136c:	01013403          	ld	s0,16(sp)
    80001370:	00813483          	ld	s1,8(sp)
    80001374:	02010113          	addi	sp,sp,32
    80001378:	00008067          	ret

000000008000137c <_Z11workerBodyCv>:

void workerBodyC()
{
    8000137c:	fe010113          	addi	sp,sp,-32
    80001380:	00113c23          	sd	ra,24(sp)
    80001384:	00813823          	sd	s0,16(sp)
    80001388:	00913423          	sd	s1,8(sp)
    8000138c:	01213023          	sd	s2,0(sp)
    80001390:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001394:	00000493          	li	s1,0
    80001398:	0380006f          	j	800013d0 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	ca450513          	addi	a0,a0,-860 # 80005040 <CONSOLE_STATUS+0x30>
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	b70080e7          	jalr	-1168(ra) # 80001f14 <_Z11printStringPKc>
        printInteger(i);
    800013ac:	00048513          	mv	a0,s1
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	bd4080e7          	jalr	-1068(ra) # 80001f84 <_Z12printIntegerm>
        printString("\n");
    800013b8:	00004517          	auipc	a0,0x4
    800013bc:	d4850513          	addi	a0,a0,-696 # 80005100 <CONSOLE_STATUS+0xf0>
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	b54080e7          	jalr	-1196(ra) # 80001f14 <_Z11printStringPKc>
    for (; i < 3; i++)
    800013c8:	0014849b          	addiw	s1,s1,1
    800013cc:	0ff4f493          	andi	s1,s1,255
    800013d0:	00200793          	li	a5,2
    800013d4:	fc97f4e3          	bgeu	a5,s1,8000139c <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800013d8:	00004517          	auipc	a0,0x4
    800013dc:	c7050513          	addi	a0,a0,-912 # 80005048 <CONSOLE_STATUS+0x38>
    800013e0:	00001097          	auipc	ra,0x1
    800013e4:	b34080e7          	jalr	-1228(ra) # 80001f14 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013e8:	00700313          	li	t1,7
    TCB::yield();
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	460080e7          	jalr	1120(ra) # 8000184c <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013f4:	00030913          	mv	s2,t1

    printString("C: t1=");
    800013f8:	00004517          	auipc	a0,0x4
    800013fc:	c6050513          	addi	a0,a0,-928 # 80005058 <CONSOLE_STATUS+0x48>
    80001400:	00001097          	auipc	ra,0x1
    80001404:	b14080e7          	jalr	-1260(ra) # 80001f14 <_Z11printStringPKc>
    printInteger(t1);
    80001408:	00090513          	mv	a0,s2
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	b78080e7          	jalr	-1160(ra) # 80001f84 <_Z12printIntegerm>
    printString("\n");
    80001414:	00004517          	auipc	a0,0x4
    80001418:	cec50513          	addi	a0,a0,-788 # 80005100 <CONSOLE_STATUS+0xf0>
    8000141c:	00001097          	auipc	ra,0x1
    80001420:	af8080e7          	jalr	-1288(ra) # 80001f14 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001424:	00c00513          	li	a0,12
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	db0080e7          	jalr	-592(ra) # 800011d8 <_ZL9fibonaccim>
    80001430:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001434:	00004517          	auipc	a0,0x4
    80001438:	c2c50513          	addi	a0,a0,-980 # 80005060 <CONSOLE_STATUS+0x50>
    8000143c:	00001097          	auipc	ra,0x1
    80001440:	ad8080e7          	jalr	-1320(ra) # 80001f14 <_Z11printStringPKc>
    printInteger(result);
    80001444:	00090513          	mv	a0,s2
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	b3c080e7          	jalr	-1220(ra) # 80001f84 <_Z12printIntegerm>
    printString("\n");
    80001450:	00004517          	auipc	a0,0x4
    80001454:	cb050513          	addi	a0,a0,-848 # 80005100 <CONSOLE_STATUS+0xf0>
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	abc080e7          	jalr	-1348(ra) # 80001f14 <_Z11printStringPKc>
    80001460:	0380006f          	j	80001498 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	bdc50513          	addi	a0,a0,-1060 # 80005040 <CONSOLE_STATUS+0x30>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	aa8080e7          	jalr	-1368(ra) # 80001f14 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	b0c080e7          	jalr	-1268(ra) # 80001f84 <_Z12printIntegerm>
        printString("\n");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	c8050513          	addi	a0,a0,-896 # 80005100 <CONSOLE_STATUS+0xf0>
    80001488:	00001097          	auipc	ra,0x1
    8000148c:	a8c080e7          	jalr	-1396(ra) # 80001f14 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00500793          	li	a5,5
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800014a0:	01813083          	ld	ra,24(sp)
    800014a4:	01013403          	ld	s0,16(sp)
    800014a8:	00813483          	ld	s1,8(sp)
    800014ac:	00013903          	ld	s2,0(sp)
    800014b0:	02010113          	addi	sp,sp,32
    800014b4:	00008067          	ret

00000000800014b8 <_Z11workerBodyDv>:

void workerBodyD()
{
    800014b8:	fe010113          	addi	sp,sp,-32
    800014bc:	00113c23          	sd	ra,24(sp)
    800014c0:	00813823          	sd	s0,16(sp)
    800014c4:	00913423          	sd	s1,8(sp)
    800014c8:	01213023          	sd	s2,0(sp)
    800014cc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800014d0:	00a00493          	li	s1,10
    800014d4:	0380006f          	j	8000150c <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	b9850513          	addi	a0,a0,-1128 # 80005070 <CONSOLE_STATUS+0x60>
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	a34080e7          	jalr	-1484(ra) # 80001f14 <_Z11printStringPKc>
        printInteger(i);
    800014e8:	00048513          	mv	a0,s1
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	a98080e7          	jalr	-1384(ra) # 80001f84 <_Z12printIntegerm>
        printString("\n");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	c0c50513          	addi	a0,a0,-1012 # 80005100 <CONSOLE_STATUS+0xf0>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	a18080e7          	jalr	-1512(ra) # 80001f14 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001504:	0014849b          	addiw	s1,s1,1
    80001508:	0ff4f493          	andi	s1,s1,255
    8000150c:	00c00793          	li	a5,12
    80001510:	fc97f4e3          	bgeu	a5,s1,800014d8 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001514:	00004517          	auipc	a0,0x4
    80001518:	b6450513          	addi	a0,a0,-1180 # 80005078 <CONSOLE_STATUS+0x68>
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	9f8080e7          	jalr	-1544(ra) # 80001f14 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001524:	00500313          	li	t1,5
    TCB::yield();
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	324080e7          	jalr	804(ra) # 8000184c <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001530:	01000513          	li	a0,16
    80001534:	00000097          	auipc	ra,0x0
    80001538:	ca4080e7          	jalr	-860(ra) # 800011d8 <_ZL9fibonaccim>
    8000153c:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	b4850513          	addi	a0,a0,-1208 # 80005088 <CONSOLE_STATUS+0x78>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	9cc080e7          	jalr	-1588(ra) # 80001f14 <_Z11printStringPKc>
    printInteger(result);
    80001550:	00090513          	mv	a0,s2
    80001554:	00001097          	auipc	ra,0x1
    80001558:	a30080e7          	jalr	-1488(ra) # 80001f84 <_Z12printIntegerm>
    printString("\n");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	ba450513          	addi	a0,a0,-1116 # 80005100 <CONSOLE_STATUS+0xf0>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	9b0080e7          	jalr	-1616(ra) # 80001f14 <_Z11printStringPKc>
    8000156c:	0380006f          	j	800015a4 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001570:	00004517          	auipc	a0,0x4
    80001574:	b0050513          	addi	a0,a0,-1280 # 80005070 <CONSOLE_STATUS+0x60>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	99c080e7          	jalr	-1636(ra) # 80001f14 <_Z11printStringPKc>
        printInteger(i);
    80001580:	00048513          	mv	a0,s1
    80001584:	00001097          	auipc	ra,0x1
    80001588:	a00080e7          	jalr	-1536(ra) # 80001f84 <_Z12printIntegerm>
        printString("\n");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	b7450513          	addi	a0,a0,-1164 # 80005100 <CONSOLE_STATUS+0xf0>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	980080e7          	jalr	-1664(ra) # 80001f14 <_Z11printStringPKc>
    for (; i < 16; i++)
    8000159c:	0014849b          	addiw	s1,s1,1
    800015a0:	0ff4f493          	andi	s1,s1,255
    800015a4:	00f00793          	li	a5,15
    800015a8:	fc97f4e3          	bgeu	a5,s1,80001570 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800015ac:	01813083          	ld	ra,24(sp)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	00813483          	ld	s1,8(sp)
    800015b8:	00013903          	ld	s2,0(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_Z8userMainv>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

void userMain()
{
    800015c4:	fb010113          	addi	sp,sp,-80
    800015c8:	04113423          	sd	ra,72(sp)
    800015cc:	04813023          	sd	s0,64(sp)
    800015d0:	02913c23          	sd	s1,56(sp)
    800015d4:	03213823          	sd	s2,48(sp)
    800015d8:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015dc:	00004797          	auipc	a5,0x4
    800015e0:	2cc7b783          	ld	a5,716(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015e4:	10579073          	csrw	stvec,a5

    __putc('1');
    800015e8:	03100513          	li	a0,49
    800015ec:	00003097          	auipc	ra,0x3
    800015f0:	b10080e7          	jalr	-1264(ra) # 800040fc <__putc>
    __putc('\n');
    800015f4:	00a00513          	li	a0,10
    800015f8:	00003097          	auipc	ra,0x3
    800015fc:	b04080e7          	jalr	-1276(ra) # 800040fc <__putc>

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001600:	00000513          	li	a0,0
    80001604:	00000097          	auipc	ra,0x0
    80001608:	180080e7          	jalr	384(ra) # 80001784 <_ZN3TCB12createThreadEPFvvE>
    8000160c:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001610:	00004797          	auipc	a5,0x4
    80001614:	2c07b783          	ld	a5,704(a5) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001618:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	2a453503          	ld	a0,676(a0) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	160080e7          	jalr	352(ra) # 80001784 <_ZN3TCB12createThreadEPFvvE>
    8000162c:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a6850513          	addi	a0,a0,-1432 # 80005098 <CONSOLE_STATUS+0x88>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	8dc080e7          	jalr	-1828(ra) # 80001f14 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001640:	00004517          	auipc	a0,0x4
    80001644:	27053503          	ld	a0,624(a0) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	13c080e7          	jalr	316(ra) # 80001784 <_ZN3TCB12createThreadEPFvvE>
    80001650:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	a5c50513          	addi	a0,a0,-1444 # 800050b0 <CONSOLE_STATUS+0xa0>
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	8b8080e7          	jalr	-1864(ra) # 80001f14 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    80001664:	00004517          	auipc	a0,0x4
    80001668:	27c53503          	ld	a0,636(a0) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	118080e7          	jalr	280(ra) # 80001784 <_ZN3TCB12createThreadEPFvvE>
    80001674:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001678:	00004517          	auipc	a0,0x4
    8000167c:	a5050513          	addi	a0,a0,-1456 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	894080e7          	jalr	-1900(ra) # 80001f14 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001688:	00004517          	auipc	a0,0x4
    8000168c:	26053503          	ld	a0,608(a0) # 800058e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	0f4080e7          	jalr	244(ra) # 80001784 <_ZN3TCB12createThreadEPFvvE>
    80001698:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	a4450513          	addi	a0,a0,-1468 # 800050e0 <CONSOLE_STATUS+0xd0>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	870080e7          	jalr	-1936(ra) # 80001f14 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800016ac:	00200793          	li	a5,2
    800016b0:	1007a073          	csrs	sstatus,a5
}
    800016b4:	00c0006f          	j	800016c0 <_Z8userMainv+0xfc>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	194080e7          	jalr	404(ra) # 8000184c <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    800016c0:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800016c4:	0287c783          	lbu	a5,40(a5)
    800016c8:	fe0788e3          	beqz	a5,800016b8 <_Z8userMainv+0xf4>
             threads[2]->isFinished() &&
    800016cc:	fc843783          	ld	a5,-56(s0)
    800016d0:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    800016d4:	fe0782e3          	beqz	a5,800016b8 <_Z8userMainv+0xf4>
             threads[3]->isFinished() &&
    800016d8:	fd043783          	ld	a5,-48(s0)
    800016dc:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    800016e0:	fc078ce3          	beqz	a5,800016b8 <_Z8userMainv+0xf4>
             threads[4]->isFinished()))
    800016e4:	fd843783          	ld	a5,-40(s0)
    800016e8:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    800016ec:	fc0786e3          	beqz	a5,800016b8 <_Z8userMainv+0xf4>
    800016f0:	fb840493          	addi	s1,s0,-72
    800016f4:	0140006f          	j	80001708 <_Z8userMainv+0x144>
    }

    for (auto &thread: threads)
    {
        delete thread;
    800016f8:	00090513          	mv	a0,s2
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	27c080e7          	jalr	636(ra) # 80001978 <_ZdlPv>
    for (auto &thread: threads)
    80001704:	00848493          	addi	s1,s1,8
    80001708:	fe040793          	addi	a5,s0,-32
    8000170c:	02f48063          	beq	s1,a5,8000172c <_Z8userMainv+0x168>
        delete thread;
    80001710:	0004b903          	ld	s2,0(s1)
    80001714:	fe0908e3          	beqz	s2,80001704 <_Z8userMainv+0x140>
    ~TCB() { delete[] stack; }
    80001718:	00893503          	ld	a0,8(s2)
    8000171c:	fc050ee3          	beqz	a0,800016f8 <_Z8userMainv+0x134>
    80001720:	00000097          	auipc	ra,0x0
    80001724:	280080e7          	jalr	640(ra) # 800019a0 <_ZdaPv>
    80001728:	fd1ff06f          	j	800016f8 <_Z8userMainv+0x134>
    }
    printString("Finished\n");
    8000172c:	00004517          	auipc	a0,0x4
    80001730:	9cc50513          	addi	a0,a0,-1588 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001734:	00000097          	auipc	ra,0x0
    80001738:	7e0080e7          	jalr	2016(ra) # 80001f14 <_Z11printStringPKc>
}
    8000173c:	04813083          	ld	ra,72(sp)
    80001740:	04013403          	ld	s0,64(sp)
    80001744:	03813483          	ld	s1,56(sp)
    80001748:	03013903          	ld	s2,48(sp)
    8000174c:	05010113          	addi	sp,sp,80
    80001750:	00008067          	ret

0000000080001754 <main>:

void main()
{
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00113423          	sd	ra,8(sp)
    8000175c:	00813023          	sd	s0,0(sp)
    80001760:	01010413          	addi	s0,sp,16
        char character = __getc();
        __putc(character + 30);
    }
    */

    MemoryAllocator::initialise();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	544080e7          	jalr	1348(ra) # 80001ca8 <_ZN15MemoryAllocator10initialiseEv>


    userMain();
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	e58080e7          	jalr	-424(ra) # 800015c4 <_Z8userMainv>
}
    80001774:	00813083          	ld	ra,8(sp)
    80001778:	00013403          	ld	s0,0(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00113c23          	sd	ra,24(sp)
    8000178c:	00813823          	sd	s0,16(sp)
    80001790:	00913423          	sd	s1,8(sp)
    80001794:	01213023          	sd	s2,0(sp)
    80001798:	02010413          	addi	s0,sp,32
    8000179c:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800017a0:	03000513          	li	a0,48
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	184080e7          	jalr	388(ra) # 80001928 <_Znwm>
    800017ac:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800017b0:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800017b4:	00090a63          	beqz	s2,800017c8 <_ZN3TCB12createThreadEPFvvE+0x44>
    800017b8:	00002537          	lui	a0,0x2
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	194080e7          	jalr	404(ra) # 80001950 <_Znam>
    800017c4:	0080006f          	j	800017cc <_ZN3TCB12createThreadEPFvvE+0x48>
    800017c8:	00000513          	li	a0,0
            finished(false)
    800017cc:	00a4b423          	sd	a0,8(s1)
    800017d0:	00000797          	auipc	a5,0x0
    800017d4:	09878793          	addi	a5,a5,152 # 80001868 <_ZN3TCB13threadWrapperEv>
    800017d8:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800017dc:	02050863          	beqz	a0,8000180c <_ZN3TCB12createThreadEPFvvE+0x88>
    800017e0:	000027b7          	lui	a5,0x2
    800017e4:	00f507b3          	add	a5,a0,a5
            finished(false)
    800017e8:	00f4bc23          	sd	a5,24(s1)
    800017ec:	00200793          	li	a5,2
    800017f0:	02f4b023          	sd	a5,32(s1)
    800017f4:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800017f8:	02090c63          	beqz	s2,80001830 <_ZN3TCB12createThreadEPFvvE+0xac>
    800017fc:	00048513          	mv	a0,s1
    80001800:	00000097          	auipc	ra,0x0
    80001804:	408080e7          	jalr	1032(ra) # 80001c08 <_ZN9Scheduler3putEP3TCB>
    80001808:	0280006f          	j	80001830 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000180c:	00000793          	li	a5,0
    80001810:	fd9ff06f          	j	800017e8 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001814:	00050913          	mv	s2,a0
    80001818:	00048513          	mv	a0,s1
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	15c080e7          	jalr	348(ra) # 80001978 <_ZdlPv>
    80001824:	00090513          	mv	a0,s2
    80001828:	00005097          	auipc	ra,0x5
    8000182c:	220080e7          	jalr	544(ra) # 80006a48 <_Unwind_Resume>
}
    80001830:	00048513          	mv	a0,s1
    80001834:	01813083          	ld	ra,24(sp)
    80001838:	01013403          	ld	s0,16(sp)
    8000183c:	00813483          	ld	s1,8(sp)
    80001840:	00013903          	ld	s2,0(sp)
    80001844:	02010113          	addi	sp,sp,32
    80001848:	00008067          	ret

000000008000184c <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001858:	00000073          	ecall
}
    8000185c:	00813403          	ld	s0,8(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001868:	fe010113          	addi	sp,sp,-32
    8000186c:	00113c23          	sd	ra,24(sp)
    80001870:	00813823          	sd	s0,16(sp)
    80001874:	00913423          	sd	s1,8(sp)
    80001878:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	14c080e7          	jalr	332(ra) # 800019c8 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001884:	00004497          	auipc	s1,0x4
    80001888:	0bc48493          	addi	s1,s1,188 # 80005940 <_ZN3TCB7runningE>
    8000188c:	0004b783          	ld	a5,0(s1)
    80001890:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001894:	000780e7          	jalr	a5
    running->setFinished(true);
    80001898:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    8000189c:	00100713          	li	a4,1
    800018a0:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	fa8080e7          	jalr	-88(ra) # 8000184c <_ZN3TCB5yieldEv>
}
    800018ac:	01813083          	ld	ra,24(sp)
    800018b0:	01013403          	ld	s0,16(sp)
    800018b4:	00813483          	ld	s1,8(sp)
    800018b8:	02010113          	addi	sp,sp,32
    800018bc:	00008067          	ret

00000000800018c0 <_ZN3TCB8dispatchEv>:
{
    800018c0:	fe010113          	addi	sp,sp,-32
    800018c4:	00113c23          	sd	ra,24(sp)
    800018c8:	00813823          	sd	s0,16(sp)
    800018cc:	00913423          	sd	s1,8(sp)
    800018d0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800018d4:	00004497          	auipc	s1,0x4
    800018d8:	06c4b483          	ld	s1,108(s1) # 80005940 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800018dc:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800018e0:	02078c63          	beqz	a5,80001918 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	2bc080e7          	jalr	700(ra) # 80001ba0 <_ZN9Scheduler3getEv>
    800018ec:	00004797          	auipc	a5,0x4
    800018f0:	04a7ba23          	sd	a0,84(a5) # 80005940 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800018f4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800018f8:	01048513          	addi	a0,s1,16
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	824080e7          	jalr	-2012(ra) # 80001120 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001904:	01813083          	ld	ra,24(sp)
    80001908:	01013403          	ld	s0,16(sp)
    8000190c:	00813483          	ld	s1,8(sp)
    80001910:	02010113          	addi	sp,sp,32
    80001914:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001918:	00048513          	mv	a0,s1
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	2ec080e7          	jalr	748(ra) # 80001c08 <_ZN9Scheduler3putEP3TCB>
    80001924:	fc1ff06f          	j	800018e4 <_ZN3TCB8dispatchEv+0x24>

0000000080001928 <_Znwm>:
#include "../h/syscall_c.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00113423          	sd	ra,8(sp)
    80001930:	00813023          	sd	s0,0(sp)
    80001934:	01010413          	addi	s0,sp,16
    // return __mem_alloc(n);
    // return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
    80001938:	fffff097          	auipc	ra,0xfffff
    8000193c:	7fc080e7          	jalr	2044(ra) # 80001134 <_Z9mem_allocm>
}
    80001940:	00813083          	ld	ra,8(sp)
    80001944:	00013403          	ld	s0,0(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <_Znam>:

void *operator new[](size_t n)
{
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00113423          	sd	ra,8(sp)
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	01010413          	addi	s0,sp,16
    // return __mem_alloc(n);
    // return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
    80001960:	fffff097          	auipc	ra,0xfffff
    80001964:	7d4080e7          	jalr	2004(ra) # 80001134 <_Z9mem_allocm>
}
    80001968:	00813083          	ld	ra,8(sp)
    8000196c:	00013403          	ld	s0,0(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    // __mem_free(p);
    // MemoryAllocator::mem_free(p);
    mem_free(p);
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	818080e7          	jalr	-2024(ra) # 800011a0 <_Z8mem_freePv>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	00813023          	sd	s0,0(sp)
    800019ac:	01010413          	addi	s0,sp,16
    // __mem_free(p);
    // MemoryAllocator::mem_free(p);
    mem_free(p);
    800019b0:	fffff097          	auipc	ra,0xfffff
    800019b4:	7f0080e7          	jalr	2032(ra) # 800011a0 <_Z8mem_freePv>
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../lib/mem.h"

void Riscv::popSppSpie()
{
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800019d4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800019d8:	10200073          	sret
}
    800019dc:	00813403          	ld	s0,8(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret

00000000800019e8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800019e8:	f7010113          	addi	sp,sp,-144
    800019ec:	08113423          	sd	ra,136(sp)
    800019f0:	08813023          	sd	s0,128(sp)
    800019f4:	06913c23          	sd	s1,120(sp)
    800019f8:	09010413          	addi	s0,sp,144
    uint64 a[8];
    asm volatile("sd a0, %0" : "=m" (a[0]));
    800019fc:	faa43023          	sd	a0,-96(s0)
    asm volatile("sd a1, %0" : "=m" (a[1]));
    80001a00:	fab43423          	sd	a1,-88(s0)
    asm volatile("sd a2, %0" : "=m" (a[2]));
    80001a04:	fac43823          	sd	a2,-80(s0)
    asm volatile("sd a3, %0" : "=m" (a[3]));
    80001a08:	fad43c23          	sd	a3,-72(s0)
    asm volatile("sd a4, %0" : "=m" (a[4]));
    80001a0c:	fce43023          	sd	a4,-64(s0)
    asm volatile("sd a5, %0" : "=m" (a[5]));
    80001a10:	fcf43423          	sd	a5,-56(s0)
    asm volatile("sd a6, %0" : "=m" (a[6]));
    80001a14:	fd043823          	sd	a6,-48(s0)
    asm volatile("sd a7, %0" : "=m" (a[7]));
    80001a18:	fd143c23          	sd	a7,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a1c:	141027f3          	csrr	a5,sepc
    80001a20:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001a24:	f8843783          	ld	a5,-120(s0)

    uint64 volatile sepc = r_sepc() + 4;
    80001a28:	00478793          	addi	a5,a5,4
    80001a2c:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a30:	100027f3          	csrr	a5,sstatus
    80001a34:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80001a38:	f8043783          	ld	a5,-128(s0)
    uint64 volatile sstatus = r_sstatus();
    80001a3c:	f8f43823          	sd	a5,-112(s0)

    // retrieve stack pointer relative to saved registers
    void* SP;
    asm volatile("csrr %0, sscratch" : "=r" (SP));
    80001a40:	140024f3          	csrr	s1,sscratch
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a44:	142027f3          	csrr	a5,scause
    80001a48:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001a4c:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001a50:	ff870693          	addi	a3,a4,-8
    80001a54:	00100793          	li	a5,1
    80001a58:	02d7fc63          	bgeu	a5,a3,80001a90 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
            // w_sepc(sepc);
        }
        // w_sstatus(sstatus);
        // w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001a5c:	fff00793          	li	a5,-1
    80001a60:	03f79793          	slli	a5,a5,0x3f
    80001a64:	00178793          	addi	a5,a5,1
    80001a68:	08f70a63          	beq	a4,a5,80001afc <_ZN5Riscv20handleSupervisorTrapEv+0x114>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001a6c:	fff00793          	li	a5,-1
    80001a70:	03f79793          	slli	a5,a5,0x3f
    80001a74:	00978793          	addi	a5,a5,9
    80001a78:	0cf70e63          	beq	a4,a5,80001b54 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    }
    else
    {
        // unexpected trap cause
    }
    80001a7c:	08813083          	ld	ra,136(sp)
    80001a80:	08013403          	ld	s0,128(sp)
    80001a84:	07813483          	ld	s1,120(sp)
    80001a88:	09010113          	addi	sp,sp,144
    80001a8c:	00008067          	ret
        w_sepc(sepc);
    80001a90:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a94:	14179073          	csrw	sepc,a5
        if (a[0] == 0x0000000000000001UL)
    80001a98:	fa043783          	ld	a5,-96(s0)
    80001a9c:	00100713          	li	a4,1
    80001aa0:	02e78663          	beq	a5,a4,80001acc <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
        else if (a[0] == 0x0000000000000002UL)
    80001aa4:	00200713          	li	a4,2
    80001aa8:	02e78e63          	beq	a5,a4,80001ae4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            TCB::timeSliceCounter = 0;
    80001aac:	00004797          	auipc	a5,0x4
    80001ab0:	e0c7b783          	ld	a5,-500(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ab4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	e08080e7          	jalr	-504(ra) # 800018c0 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001ac0:	f9043783          	ld	a5,-112(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ac4:	10079073          	csrw	sstatus,a5
}
    80001ac8:	fb5ff06f          	j	80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x94>
            void* retVal = MemoryAllocator::mem_alloc(size);
    80001acc:	fa843503          	ld	a0,-88(s0)
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	248080e7          	jalr	584(ra) # 80001d18 <_ZN15MemoryAllocator9mem_allocEm>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001ad8:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001adc:	04a4b823          	sd	a0,80(s1)
    80001ae0:	f9dff06f          	j	80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x94>
            int retVal = MemoryAllocator::mem_free(ptr);
    80001ae4:	fa843503          	ld	a0,-88(s0)
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	370080e7          	jalr	880(ra) # 80001e58 <_ZN15MemoryAllocator8mem_freeEPv>
            asm volatile("mv %0, a0" : "=r" (retVal));
    80001af0:	00050793          	mv	a5,a0
            asm volatile("sd a0, 10 * 8(%0)" : : "r" (SP));
    80001af4:	04a4b823          	sd	a0,80(s1)
    80001af8:	f85ff06f          	j	80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x94>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001afc:	00200793          	li	a5,2
    80001b00:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001b04:	00004717          	auipc	a4,0x4
    80001b08:	db473703          	ld	a4,-588(a4) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b0c:	00073783          	ld	a5,0(a4)
    80001b10:	00178793          	addi	a5,a5,1
    80001b14:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001b18:	00004717          	auipc	a4,0x4
    80001b1c:	db873703          	ld	a4,-584(a4) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b20:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001b24:	02073703          	ld	a4,32(a4)
    80001b28:	f4e7eae3          	bltu	a5,a4,80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x94>
            TCB::timeSliceCounter = 0;
    80001b2c:	00004797          	auipc	a5,0x4
    80001b30:	d8c7b783          	ld	a5,-628(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b34:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	d88080e7          	jalr	-632(ra) # 800018c0 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001b40:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b44:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001b48:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b4c:	14179073          	csrw	sepc,a5
}
    80001b50:	f2dff06f          	j	80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x94>
        console_handler();
    80001b54:	00002097          	auipc	ra,0x2
    80001b58:	61c080e7          	jalr	1564(ra) # 80004170 <console_handler>
    80001b5c:	f21ff06f          	j	80001a7c <_ZN5Riscv20handleSupervisorTrapEv+0x94>

0000000080001b60 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    80001b6c:	00100793          	li	a5,1
    80001b70:	00f50863          	beq	a0,a5,80001b80 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret
    80001b80:	000107b7          	lui	a5,0x10
    80001b84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b88:	fef596e3          	bne	a1,a5,80001b74 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001b8c:	00004797          	auipc	a5,0x4
    80001b90:	dc478793          	addi	a5,a5,-572 # 80005950 <_ZN9Scheduler16readyThreadQueueE>
    80001b94:	0007b023          	sd	zero,0(a5)
    80001b98:	0007b423          	sd	zero,8(a5)
    80001b9c:	fd9ff06f          	j	80001b74 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ba0 <_ZN9Scheduler3getEv>:
{
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001bb4:	00004517          	auipc	a0,0x4
    80001bb8:	d9c53503          	ld	a0,-612(a0) # 80005950 <_ZN9Scheduler16readyThreadQueueE>
    80001bbc:	04050263          	beqz	a0,80001c00 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001bc0:	00853783          	ld	a5,8(a0)
    80001bc4:	00004717          	auipc	a4,0x4
    80001bc8:	d8f73623          	sd	a5,-628(a4) # 80005950 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001bcc:	02078463          	beqz	a5,80001bf4 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001bd0:	00053483          	ld	s1,0(a0)
        delete elem;
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	da4080e7          	jalr	-604(ra) # 80001978 <_ZdlPv>
}
    80001bdc:	00048513          	mv	a0,s1
    80001be0:	01813083          	ld	ra,24(sp)
    80001be4:	01013403          	ld	s0,16(sp)
    80001be8:	00813483          	ld	s1,8(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret
        if (!head) { tail = 0; }
    80001bf4:	00004797          	auipc	a5,0x4
    80001bf8:	d607b223          	sd	zero,-668(a5) # 80005958 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001bfc:	fd5ff06f          	j	80001bd0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001c00:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001c04:	fd9ff06f          	j	80001bdc <_ZN9Scheduler3getEv+0x3c>

0000000080001c08 <_ZN9Scheduler3putEP3TCB>:
{
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	02010413          	addi	s0,sp,32
    80001c1c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001c20:	01000513          	li	a0,16
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	d04080e7          	jalr	-764(ra) # 80001928 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001c2c:	00953023          	sd	s1,0(a0)
    80001c30:	00053423          	sd	zero,8(a0)
        if (tail)
    80001c34:	00004797          	auipc	a5,0x4
    80001c38:	d247b783          	ld	a5,-732(a5) # 80005958 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c3c:	02078263          	beqz	a5,80001c60 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001c40:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c44:	00004797          	auipc	a5,0x4
    80001c48:	d0a7ba23          	sd	a0,-748(a5) # 80005958 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c4c:	01813083          	ld	ra,24(sp)
    80001c50:	01013403          	ld	s0,16(sp)
    80001c54:	00813483          	ld	s1,8(sp)
    80001c58:	02010113          	addi	sp,sp,32
    80001c5c:	00008067          	ret
            head = tail = elem;
    80001c60:	00004797          	auipc	a5,0x4
    80001c64:	cf078793          	addi	a5,a5,-784 # 80005950 <_ZN9Scheduler16readyThreadQueueE>
    80001c68:	00a7b423          	sd	a0,8(a5)
    80001c6c:	00a7b023          	sd	a0,0(a5)
    80001c70:	fddff06f          	j	80001c4c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c74 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    80001c84:	000105b7          	lui	a1,0x10
    80001c88:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c8c:	00100513          	li	a0,1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	ed0080e7          	jalr	-304(ra) # 80001b60 <_Z41__static_initialization_and_destruction_0ii>
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001cb4:	00004797          	auipc	a5,0x4
    80001cb8:	bec7b783          	ld	a5,-1044(a5) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001cbc:	0007b703          	ld	a4,0(a5)
    80001cc0:	fc077713          	andi	a4,a4,-64
    80001cc4:	04070613          	addi	a2,a4,64
    80001cc8:	00004797          	auipc	a5,0x4
    80001ccc:	c9878793          	addi	a5,a5,-872 # 80005960 <_ZN15MemoryAllocator8memStartE>
    80001cd0:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001cd4:	00004697          	auipc	a3,0x4
    80001cd8:	c046b683          	ld	a3,-1020(a3) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cdc:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001ce0:	fc06f693          	andi	a3,a3,-64
    80001ce4:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001ce8:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001cec:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001cf0:	0107b683          	ld	a3,16(a5)
    80001cf4:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001cf8:	0087b703          	ld	a4,8(a5)
    80001cfc:	0007b783          	ld	a5,0(a5)
    80001d00:	40f707b3          	sub	a5,a4,a5
    80001d04:	0067d793          	srli	a5,a5,0x6
    80001d08:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00813423          	sd	s0,8(sp)
    80001d20:	01010413          	addi	s0,sp,16
    if (size == 0)
    80001d24:	0c050063          	beqz	a0,80001de4 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        return nullptr;

    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001d28:	00850513          	addi	a0,a0,8
    size_t blockNum = 0;

    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001d2c:	03f57793          	andi	a5,a0,63
    80001d30:	02078a63          	beqz	a5,80001d64 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001d34:	00655793          	srli	a5,a0,0x6
    80001d38:	00178793          	addi	a5,a5,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001d3c:	00004697          	auipc	a3,0x4
    80001d40:	c346b683          	ld	a3,-972(a3) # 80005970 <_ZN15MemoryAllocator4headE>
    80001d44:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001d48:	06050263          	beqz	a0,80001dac <_ZN15MemoryAllocator9mem_allocEm+0x94>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001d4c:	01053703          	ld	a4,16(a0)
    80001d50:	00f77e63          	bgeu	a4,a5,80001d6c <_ZN15MemoryAllocator9mem_allocEm+0x54>
            printString("\n");
            */

            return ptr;
        }
        curr = curr->next;
    80001d54:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001d58:	fea698e3          	bne	a3,a0,80001d48 <_ZN15MemoryAllocator9mem_allocEm+0x30>
            break;
    }

    return nullptr;
    80001d5c:	00000513          	li	a0,0
    80001d60:	04c0006f          	j	80001dac <_ZN15MemoryAllocator9mem_allocEm+0x94>
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001d64:	00655793          	srli	a5,a0,0x6
    80001d68:	fd5ff06f          	j	80001d3c <_ZN15MemoryAllocator9mem_allocEm+0x24>
            curr->size -= blockNum;
    80001d6c:	40f70733          	sub	a4,a4,a5
    80001d70:	00e53823          	sd	a4,16(a0)
            if (curr->size == 0)
    80001d74:	02071263          	bnez	a4,80001d98 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                if (curr == MemoryAllocator::head)
    80001d78:	04d50063          	beq	a0,a3,80001db8 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001d7c:	00053703          	ld	a4,0(a0)
    80001d80:	04070463          	beqz	a4,80001dc8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80001d84:	00853683          	ld	a3,8(a0)
    80001d88:	04068063          	beqz	a3,80001dc8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
                    curr->prev->next = curr->next;
    80001d8c:	00e6b023          	sd	a4,0(a3)
                    curr->next->prev = curr->prev;
    80001d90:	00853683          	ld	a3,8(a0)
    80001d94:	00d73423          	sd	a3,8(a4)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size  * MEM_BLOCK_SIZE);
    80001d98:	01053703          	ld	a4,16(a0)
    80001d9c:	00671713          	slli	a4,a4,0x6
    80001da0:	00e50533          	add	a0,a0,a4
            allocatedMem->blockNum = blockNum;
    80001da4:	00f53023          	sd	a5,0(a0)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001da8:	00850513          	addi	a0,a0,8
}
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001db8:	0006b703          	ld	a4,0(a3)
    80001dbc:	00004697          	auipc	a3,0x4
    80001dc0:	bae6ba23          	sd	a4,-1100(a3) # 80005970 <_ZN15MemoryAllocator4headE>
    80001dc4:	fb9ff06f          	j	80001d7c <_ZN15MemoryAllocator9mem_allocEm+0x64>
                else if (curr->prev != nullptr)
    80001dc8:	00853683          	ld	a3,8(a0)
    80001dcc:	00068663          	beqz	a3,80001dd8 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
                    curr->prev->next = nullptr;
    80001dd0:	0006b023          	sd	zero,0(a3)
    80001dd4:	fc5ff06f          	j	80001d98 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                else if (curr->next != nullptr)
    80001dd8:	fc0700e3          	beqz	a4,80001d98 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                    curr->next->prev = nullptr;
    80001ddc:	00073423          	sd	zero,8(a4)
    80001de0:	fb9ff06f          	j	80001d98 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        return nullptr;
    80001de4:	00000513          	li	a0,0
    80001de8:	fc5ff06f          	j	80001dac <_ZN15MemoryAllocator9mem_allocEm+0x94>

0000000080001dec <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00813423          	sd	s0,8(sp)
    80001df4:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001df8:	04050863          	beqz	a0,80001e48 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001dfc:	00053783          	ld	a5,0(a0)
    80001e00:	04078863          	beqz	a5,80001e50 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001e04:	01053683          	ld	a3,16(a0)
    80001e08:	00669713          	slli	a4,a3,0x6
    80001e0c:	00e50733          	add	a4,a0,a4
    80001e10:	00f70a63          	beq	a4,a5,80001e24 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001e14:	00000513          	li	a0,0
    }
}
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret
        curr->size += curr->next->size;
    80001e24:	0107b703          	ld	a4,16(a5)
    80001e28:	00e686b3          	add	a3,a3,a4
    80001e2c:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001e30:	0007b783          	ld	a5,0(a5)
    80001e34:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001e38:	00078463          	beqz	a5,80001e40 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001e3c:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001e40:	00100513          	li	a0,1
    80001e44:	fd5ff06f          	j	80001e18 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001e48:	00000513          	li	a0,0
    80001e4c:	fcdff06f          	j	80001e18 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001e50:	00000513          	li	a0,0
    80001e54:	fc5ff06f          	j	80001e18 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001e58 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	00913423          	sd	s1,8(sp)
    80001e68:	02010413          	addi	s0,sp,32
    80001e6c:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)ptr - sizeof(AllocatedMem));
    80001e70:	ff850513          	addi	a0,a0,-8
    size_t blockNum = allocatedMem->blockNum;
    80001e74:	ff873603          	ld	a2,-8(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001e78:	00004697          	auipc	a3,0x4
    80001e7c:	af86b683          	ld	a3,-1288(a3) # 80005970 <_ZN15MemoryAllocator4headE>
    80001e80:	02068063          	beqz	a3,80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80001e84:	02d56263          	bltu	a0,a3,80001ea8 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001e88:	00068793          	mv	a5,a3
    80001e8c:	00078493          	mv	s1,a5
    80001e90:	0007b783          	ld	a5,0(a5)
    80001e94:	00078c63          	beqz	a5,80001eac <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001e98:	fea7eae3          	bltu	a5,a0,80001e8c <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    80001e9c:	0100006f          	j	80001eac <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        curr = 0;
    80001ea0:	00068493          	mv	s1,a3
    80001ea4:	0080006f          	j	80001eac <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001ea8:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001eac:	00c53823          	sd	a2,16(a0)
    newSeg->prev = curr;
    80001eb0:	00953423          	sd	s1,8(a0)
    if (curr) newSeg->next = curr->next;
    80001eb4:	04048663          	beqz	s1,80001f00 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    80001eb8:	0004b783          	ld	a5,0(s1)
    80001ebc:	fef73c23          	sd	a5,-8(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001ec0:	ff873783          	ld	a5,-8(a4)
    80001ec4:	00078463          	beqz	a5,80001ecc <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    80001ec8:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001ecc:	02048e63          	beqz	s1,80001f08 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80001ed0:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	f18080e7          	jalr	-232(ra) # 80001dec <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001edc:	00048513          	mv	a0,s1
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	f0c080e7          	jalr	-244(ra) # 80001dec <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
}
    80001ee8:	00000513          	li	a0,0
    80001eec:	01813083          	ld	ra,24(sp)
    80001ef0:	01013403          	ld	s0,16(sp)
    80001ef4:	00813483          	ld	s1,8(sp)
    80001ef8:	02010113          	addi	sp,sp,32
    80001efc:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001f00:	fed73c23          	sd	a3,-8(a4)
    80001f04:	fbdff06f          	j	80001ec0 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    else MemoryAllocator::head = newSeg;
    80001f08:	00004797          	auipc	a5,0x4
    80001f0c:	a6a7b423          	sd	a0,-1432(a5) # 80005970 <_ZN15MemoryAllocator4headE>
    80001f10:	fc5ff06f          	j	80001ed4 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>

0000000080001f14 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f14:	fd010113          	addi	sp,sp,-48
    80001f18:	02113423          	sd	ra,40(sp)
    80001f1c:	02813023          	sd	s0,32(sp)
    80001f20:	00913c23          	sd	s1,24(sp)
    80001f24:	01213823          	sd	s2,16(sp)
    80001f28:	03010413          	addi	s0,sp,48
    80001f2c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f30:	100027f3          	csrr	a5,sstatus
    80001f34:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001f38:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f3c:	00200793          	li	a5,2
    80001f40:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001f44:	0004c503          	lbu	a0,0(s1)
    80001f48:	00050a63          	beqz	a0,80001f5c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001f4c:	00002097          	auipc	ra,0x2
    80001f50:	1b0080e7          	jalr	432(ra) # 800040fc <__putc>
        string++;
    80001f54:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f58:	fedff06f          	j	80001f44 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f5c:	0009091b          	sext.w	s2,s2
    80001f60:	00297913          	andi	s2,s2,2
    80001f64:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f68:	10092073          	csrs	sstatus,s2
}
    80001f6c:	02813083          	ld	ra,40(sp)
    80001f70:	02013403          	ld	s0,32(sp)
    80001f74:	01813483          	ld	s1,24(sp)
    80001f78:	01013903          	ld	s2,16(sp)
    80001f7c:	03010113          	addi	sp,sp,48
    80001f80:	00008067          	ret

0000000080001f84 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001f84:	fc010113          	addi	sp,sp,-64
    80001f88:	02113c23          	sd	ra,56(sp)
    80001f8c:	02813823          	sd	s0,48(sp)
    80001f90:	02913423          	sd	s1,40(sp)
    80001f94:	03213023          	sd	s2,32(sp)
    80001f98:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f9c:	100027f3          	csrr	a5,sstatus
    80001fa0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001fa4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001fa8:	00200793          	li	a5,2
    80001fac:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001fb0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001fb4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001fb8:	00a00613          	li	a2,10
    80001fbc:	02c5773b          	remuw	a4,a0,a2
    80001fc0:	02071693          	slli	a3,a4,0x20
    80001fc4:	0206d693          	srli	a3,a3,0x20
    80001fc8:	00003717          	auipc	a4,0x3
    80001fcc:	14070713          	addi	a4,a4,320 # 80005108 <_ZZ12printIntegermE6digits>
    80001fd0:	00d70733          	add	a4,a4,a3
    80001fd4:	00074703          	lbu	a4,0(a4)
    80001fd8:	fe040693          	addi	a3,s0,-32
    80001fdc:	009687b3          	add	a5,a3,s1
    80001fe0:	0014849b          	addiw	s1,s1,1
    80001fe4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001fe8:	0005071b          	sext.w	a4,a0
    80001fec:	02c5553b          	divuw	a0,a0,a2
    80001ff0:	00900793          	li	a5,9
    80001ff4:	fce7e2e3          	bltu	a5,a4,80001fb8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001ff8:	fff4849b          	addiw	s1,s1,-1
    80001ffc:	0004ce63          	bltz	s1,80002018 <_Z12printIntegerm+0x94>
    80002000:	fe040793          	addi	a5,s0,-32
    80002004:	009787b3          	add	a5,a5,s1
    80002008:	ff07c503          	lbu	a0,-16(a5)
    8000200c:	00002097          	auipc	ra,0x2
    80002010:	0f0080e7          	jalr	240(ra) # 800040fc <__putc>
    80002014:	fe5ff06f          	j	80001ff8 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002018:	0009091b          	sext.w	s2,s2
    8000201c:	00297913          	andi	s2,s2,2
    80002020:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002024:	10092073          	csrs	sstatus,s2
    80002028:	03813083          	ld	ra,56(sp)
    8000202c:	03013403          	ld	s0,48(sp)
    80002030:	02813483          	ld	s1,40(sp)
    80002034:	02013903          	ld	s2,32(sp)
    80002038:	04010113          	addi	sp,sp,64
    8000203c:	00008067          	ret

0000000080002040 <start>:
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    8000204c:	300027f3          	csrr	a5,mstatus
    80002050:	ffffe737          	lui	a4,0xffffe
    80002054:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c1f>
    80002058:	00e7f7b3          	and	a5,a5,a4
    8000205c:	00001737          	lui	a4,0x1
    80002060:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002064:	00e7e7b3          	or	a5,a5,a4
    80002068:	30079073          	csrw	mstatus,a5
    8000206c:	00000797          	auipc	a5,0x0
    80002070:	16078793          	addi	a5,a5,352 # 800021cc <system_main>
    80002074:	34179073          	csrw	mepc,a5
    80002078:	00000793          	li	a5,0
    8000207c:	18079073          	csrw	satp,a5
    80002080:	000107b7          	lui	a5,0x10
    80002084:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002088:	30279073          	csrw	medeleg,a5
    8000208c:	30379073          	csrw	mideleg,a5
    80002090:	104027f3          	csrr	a5,sie
    80002094:	2227e793          	ori	a5,a5,546
    80002098:	10479073          	csrw	sie,a5
    8000209c:	fff00793          	li	a5,-1
    800020a0:	00a7d793          	srli	a5,a5,0xa
    800020a4:	3b079073          	csrw	pmpaddr0,a5
    800020a8:	00f00793          	li	a5,15
    800020ac:	3a079073          	csrw	pmpcfg0,a5
    800020b0:	f14027f3          	csrr	a5,mhartid
    800020b4:	0200c737          	lui	a4,0x200c
    800020b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020bc:	0007869b          	sext.w	a3,a5
    800020c0:	00269713          	slli	a4,a3,0x2
    800020c4:	000f4637          	lui	a2,0xf4
    800020c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020cc:	00d70733          	add	a4,a4,a3
    800020d0:	0037979b          	slliw	a5,a5,0x3
    800020d4:	020046b7          	lui	a3,0x2004
    800020d8:	00d787b3          	add	a5,a5,a3
    800020dc:	00c585b3          	add	a1,a1,a2
    800020e0:	00371693          	slli	a3,a4,0x3
    800020e4:	00004717          	auipc	a4,0x4
    800020e8:	89c70713          	addi	a4,a4,-1892 # 80005980 <timer_scratch>
    800020ec:	00b7b023          	sd	a1,0(a5)
    800020f0:	00d70733          	add	a4,a4,a3
    800020f4:	00f73c23          	sd	a5,24(a4)
    800020f8:	02c73023          	sd	a2,32(a4)
    800020fc:	34071073          	csrw	mscratch,a4
    80002100:	00000797          	auipc	a5,0x0
    80002104:	6e078793          	addi	a5,a5,1760 # 800027e0 <timervec>
    80002108:	30579073          	csrw	mtvec,a5
    8000210c:	300027f3          	csrr	a5,mstatus
    80002110:	0087e793          	ori	a5,a5,8
    80002114:	30079073          	csrw	mstatus,a5
    80002118:	304027f3          	csrr	a5,mie
    8000211c:	0807e793          	ori	a5,a5,128
    80002120:	30479073          	csrw	mie,a5
    80002124:	f14027f3          	csrr	a5,mhartid
    80002128:	0007879b          	sext.w	a5,a5
    8000212c:	00078213          	mv	tp,a5
    80002130:	30200073          	mret
    80002134:	00813403          	ld	s0,8(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <timerinit>:
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    8000214c:	f14027f3          	csrr	a5,mhartid
    80002150:	0200c737          	lui	a4,0x200c
    80002154:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002158:	0007869b          	sext.w	a3,a5
    8000215c:	00269713          	slli	a4,a3,0x2
    80002160:	000f4637          	lui	a2,0xf4
    80002164:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002168:	00d70733          	add	a4,a4,a3
    8000216c:	0037979b          	slliw	a5,a5,0x3
    80002170:	020046b7          	lui	a3,0x2004
    80002174:	00d787b3          	add	a5,a5,a3
    80002178:	00c585b3          	add	a1,a1,a2
    8000217c:	00371693          	slli	a3,a4,0x3
    80002180:	00004717          	auipc	a4,0x4
    80002184:	80070713          	addi	a4,a4,-2048 # 80005980 <timer_scratch>
    80002188:	00b7b023          	sd	a1,0(a5)
    8000218c:	00d70733          	add	a4,a4,a3
    80002190:	00f73c23          	sd	a5,24(a4)
    80002194:	02c73023          	sd	a2,32(a4)
    80002198:	34071073          	csrw	mscratch,a4
    8000219c:	00000797          	auipc	a5,0x0
    800021a0:	64478793          	addi	a5,a5,1604 # 800027e0 <timervec>
    800021a4:	30579073          	csrw	mtvec,a5
    800021a8:	300027f3          	csrr	a5,mstatus
    800021ac:	0087e793          	ori	a5,a5,8
    800021b0:	30079073          	csrw	mstatus,a5
    800021b4:	304027f3          	csrr	a5,mie
    800021b8:	0807e793          	ori	a5,a5,128
    800021bc:	30479073          	csrw	mie,a5
    800021c0:	00813403          	ld	s0,8(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <system_main>:
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	00113c23          	sd	ra,24(sp)
    800021dc:	02010413          	addi	s0,sp,32
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	0c4080e7          	jalr	196(ra) # 800022a4 <cpuid>
    800021e8:	00003497          	auipc	s1,0x3
    800021ec:	72848493          	addi	s1,s1,1832 # 80005910 <started>
    800021f0:	02050263          	beqz	a0,80002214 <system_main+0x48>
    800021f4:	0004a783          	lw	a5,0(s1)
    800021f8:	0007879b          	sext.w	a5,a5
    800021fc:	fe078ce3          	beqz	a5,800021f4 <system_main+0x28>
    80002200:	0ff0000f          	fence
    80002204:	00003517          	auipc	a0,0x3
    80002208:	f4450513          	addi	a0,a0,-188 # 80005148 <_ZZ12printIntegermE6digits+0x40>
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	a70080e7          	jalr	-1424(ra) # 80002c7c <panic>
    80002214:	00001097          	auipc	ra,0x1
    80002218:	9c4080e7          	jalr	-1596(ra) # 80002bd8 <consoleinit>
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	150080e7          	jalr	336(ra) # 8000336c <printfinit>
    80002224:	00003517          	auipc	a0,0x3
    80002228:	edc50513          	addi	a0,a0,-292 # 80005100 <CONSOLE_STATUS+0xf0>
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	aac080e7          	jalr	-1364(ra) # 80002cd8 <__printf>
    80002234:	00003517          	auipc	a0,0x3
    80002238:	ee450513          	addi	a0,a0,-284 # 80005118 <_ZZ12printIntegermE6digits+0x10>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	a9c080e7          	jalr	-1380(ra) # 80002cd8 <__printf>
    80002244:	00003517          	auipc	a0,0x3
    80002248:	ebc50513          	addi	a0,a0,-324 # 80005100 <CONSOLE_STATUS+0xf0>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	a8c080e7          	jalr	-1396(ra) # 80002cd8 <__printf>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	4a4080e7          	jalr	1188(ra) # 800036f8 <kinit>
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	148080e7          	jalr	328(ra) # 800023a4 <trapinit>
    80002264:	00000097          	auipc	ra,0x0
    80002268:	16c080e7          	jalr	364(ra) # 800023d0 <trapinithart>
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	5b4080e7          	jalr	1460(ra) # 80002820 <plicinit>
    80002274:	00000097          	auipc	ra,0x0
    80002278:	5d4080e7          	jalr	1492(ra) # 80002848 <plicinithart>
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	078080e7          	jalr	120(ra) # 800022f4 <userinit>
    80002284:	0ff0000f          	fence
    80002288:	00100793          	li	a5,1
    8000228c:	00003517          	auipc	a0,0x3
    80002290:	ea450513          	addi	a0,a0,-348 # 80005130 <_ZZ12printIntegermE6digits+0x28>
    80002294:	00f4a023          	sw	a5,0(s1)
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	a40080e7          	jalr	-1472(ra) # 80002cd8 <__printf>
    800022a0:	0000006f          	j	800022a0 <system_main+0xd4>

00000000800022a4 <cpuid>:
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00813423          	sd	s0,8(sp)
    800022ac:	01010413          	addi	s0,sp,16
    800022b0:	00020513          	mv	a0,tp
    800022b4:	00813403          	ld	s0,8(sp)
    800022b8:	0005051b          	sext.w	a0,a0
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <mycpu>:
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    800022d0:	00020793          	mv	a5,tp
    800022d4:	00813403          	ld	s0,8(sp)
    800022d8:	0007879b          	sext.w	a5,a5
    800022dc:	00779793          	slli	a5,a5,0x7
    800022e0:	00004517          	auipc	a0,0x4
    800022e4:	6d050513          	addi	a0,a0,1744 # 800069b0 <cpus>
    800022e8:	00f50533          	add	a0,a0,a5
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <userinit>:
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16
    80002300:	00813403          	ld	s0,8(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	fffff317          	auipc	t1,0xfffff
    8000230c:	44c30067          	jr	1100(t1) # 80001754 <main>

0000000080002310 <either_copyout>:
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00813023          	sd	s0,0(sp)
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	01010413          	addi	s0,sp,16
    80002320:	02051663          	bnez	a0,8000234c <either_copyout+0x3c>
    80002324:	00058513          	mv	a0,a1
    80002328:	00060593          	mv	a1,a2
    8000232c:	0006861b          	sext.w	a2,a3
    80002330:	00002097          	auipc	ra,0x2
    80002334:	c54080e7          	jalr	-940(ra) # 80003f84 <__memmove>
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	00000513          	li	a0,0
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret
    8000234c:	00003517          	auipc	a0,0x3
    80002350:	e2450513          	addi	a0,a0,-476 # 80005170 <_ZZ12printIntegermE6digits+0x68>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	928080e7          	jalr	-1752(ra) # 80002c7c <panic>

000000008000235c <either_copyin>:
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813023          	sd	s0,0(sp)
    80002364:	00113423          	sd	ra,8(sp)
    80002368:	01010413          	addi	s0,sp,16
    8000236c:	02059463          	bnez	a1,80002394 <either_copyin+0x38>
    80002370:	00060593          	mv	a1,a2
    80002374:	0006861b          	sext.w	a2,a3
    80002378:	00002097          	auipc	ra,0x2
    8000237c:	c0c080e7          	jalr	-1012(ra) # 80003f84 <__memmove>
    80002380:	00813083          	ld	ra,8(sp)
    80002384:	00013403          	ld	s0,0(sp)
    80002388:	00000513          	li	a0,0
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret
    80002394:	00003517          	auipc	a0,0x3
    80002398:	e0450513          	addi	a0,a0,-508 # 80005198 <_ZZ12printIntegermE6digits+0x90>
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	8e0080e7          	jalr	-1824(ra) # 80002c7c <panic>

00000000800023a4 <trapinit>:
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00813423          	sd	s0,8(sp)
    800023ac:	01010413          	addi	s0,sp,16
    800023b0:	00813403          	ld	s0,8(sp)
    800023b4:	00003597          	auipc	a1,0x3
    800023b8:	e0c58593          	addi	a1,a1,-500 # 800051c0 <_ZZ12printIntegermE6digits+0xb8>
    800023bc:	00004517          	auipc	a0,0x4
    800023c0:	67450513          	addi	a0,a0,1652 # 80006a30 <tickslock>
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00001317          	auipc	t1,0x1
    800023cc:	5c030067          	jr	1472(t1) # 80003988 <initlock>

00000000800023d0 <trapinithart>:
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00813423          	sd	s0,8(sp)
    800023d8:	01010413          	addi	s0,sp,16
    800023dc:	00000797          	auipc	a5,0x0
    800023e0:	2f478793          	addi	a5,a5,756 # 800026d0 <kernelvec>
    800023e4:	10579073          	csrw	stvec,a5
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <usertrap>:
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <usertrapret>:
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    80002418:	00813403          	ld	s0,8(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <kerneltrap>:
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00113c23          	sd	ra,24(sp)
    80002430:	00913423          	sd	s1,8(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	142025f3          	csrr	a1,scause
    8000243c:	100027f3          	csrr	a5,sstatus
    80002440:	0027f793          	andi	a5,a5,2
    80002444:	10079c63          	bnez	a5,8000255c <kerneltrap+0x138>
    80002448:	142027f3          	csrr	a5,scause
    8000244c:	0207ce63          	bltz	a5,80002488 <kerneltrap+0x64>
    80002450:	00003517          	auipc	a0,0x3
    80002454:	db850513          	addi	a0,a0,-584 # 80005208 <_ZZ12printIntegermE6digits+0x100>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	880080e7          	jalr	-1920(ra) # 80002cd8 <__printf>
    80002460:	141025f3          	csrr	a1,sepc
    80002464:	14302673          	csrr	a2,stval
    80002468:	00003517          	auipc	a0,0x3
    8000246c:	db050513          	addi	a0,a0,-592 # 80005218 <_ZZ12printIntegermE6digits+0x110>
    80002470:	00001097          	auipc	ra,0x1
    80002474:	868080e7          	jalr	-1944(ra) # 80002cd8 <__printf>
    80002478:	00003517          	auipc	a0,0x3
    8000247c:	db850513          	addi	a0,a0,-584 # 80005230 <_ZZ12printIntegermE6digits+0x128>
    80002480:	00000097          	auipc	ra,0x0
    80002484:	7fc080e7          	jalr	2044(ra) # 80002c7c <panic>
    80002488:	0ff7f713          	andi	a4,a5,255
    8000248c:	00900693          	li	a3,9
    80002490:	04d70063          	beq	a4,a3,800024d0 <kerneltrap+0xac>
    80002494:	fff00713          	li	a4,-1
    80002498:	03f71713          	slli	a4,a4,0x3f
    8000249c:	00170713          	addi	a4,a4,1
    800024a0:	fae798e3          	bne	a5,a4,80002450 <kerneltrap+0x2c>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	e00080e7          	jalr	-512(ra) # 800022a4 <cpuid>
    800024ac:	06050663          	beqz	a0,80002518 <kerneltrap+0xf4>
    800024b0:	144027f3          	csrr	a5,sip
    800024b4:	ffd7f793          	andi	a5,a5,-3
    800024b8:	14479073          	csrw	sip,a5
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	02010113          	addi	sp,sp,32
    800024cc:	00008067          	ret
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	3c4080e7          	jalr	964(ra) # 80002894 <plic_claim>
    800024d8:	00a00793          	li	a5,10
    800024dc:	00050493          	mv	s1,a0
    800024e0:	06f50863          	beq	a0,a5,80002550 <kerneltrap+0x12c>
    800024e4:	fc050ce3          	beqz	a0,800024bc <kerneltrap+0x98>
    800024e8:	00050593          	mv	a1,a0
    800024ec:	00003517          	auipc	a0,0x3
    800024f0:	cfc50513          	addi	a0,a0,-772 # 800051e8 <_ZZ12printIntegermE6digits+0xe0>
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	7e4080e7          	jalr	2020(ra) # 80002cd8 <__printf>
    800024fc:	01013403          	ld	s0,16(sp)
    80002500:	01813083          	ld	ra,24(sp)
    80002504:	00048513          	mv	a0,s1
    80002508:	00813483          	ld	s1,8(sp)
    8000250c:	02010113          	addi	sp,sp,32
    80002510:	00000317          	auipc	t1,0x0
    80002514:	3bc30067          	jr	956(t1) # 800028cc <plic_complete>
    80002518:	00004517          	auipc	a0,0x4
    8000251c:	51850513          	addi	a0,a0,1304 # 80006a30 <tickslock>
    80002520:	00001097          	auipc	ra,0x1
    80002524:	48c080e7          	jalr	1164(ra) # 800039ac <acquire>
    80002528:	00003717          	auipc	a4,0x3
    8000252c:	3ec70713          	addi	a4,a4,1004 # 80005914 <ticks>
    80002530:	00072783          	lw	a5,0(a4)
    80002534:	00004517          	auipc	a0,0x4
    80002538:	4fc50513          	addi	a0,a0,1276 # 80006a30 <tickslock>
    8000253c:	0017879b          	addiw	a5,a5,1
    80002540:	00f72023          	sw	a5,0(a4)
    80002544:	00001097          	auipc	ra,0x1
    80002548:	534080e7          	jalr	1332(ra) # 80003a78 <release>
    8000254c:	f65ff06f          	j	800024b0 <kerneltrap+0x8c>
    80002550:	00001097          	auipc	ra,0x1
    80002554:	090080e7          	jalr	144(ra) # 800035e0 <uartintr>
    80002558:	fa5ff06f          	j	800024fc <kerneltrap+0xd8>
    8000255c:	00003517          	auipc	a0,0x3
    80002560:	c6c50513          	addi	a0,a0,-916 # 800051c8 <_ZZ12printIntegermE6digits+0xc0>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	718080e7          	jalr	1816(ra) # 80002c7c <panic>

000000008000256c <clockintr>:
    8000256c:	fe010113          	addi	sp,sp,-32
    80002570:	00813823          	sd	s0,16(sp)
    80002574:	00913423          	sd	s1,8(sp)
    80002578:	00113c23          	sd	ra,24(sp)
    8000257c:	02010413          	addi	s0,sp,32
    80002580:	00004497          	auipc	s1,0x4
    80002584:	4b048493          	addi	s1,s1,1200 # 80006a30 <tickslock>
    80002588:	00048513          	mv	a0,s1
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	420080e7          	jalr	1056(ra) # 800039ac <acquire>
    80002594:	00003717          	auipc	a4,0x3
    80002598:	38070713          	addi	a4,a4,896 # 80005914 <ticks>
    8000259c:	00072783          	lw	a5,0(a4)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	01813083          	ld	ra,24(sp)
    800025a8:	00048513          	mv	a0,s1
    800025ac:	0017879b          	addiw	a5,a5,1
    800025b0:	00813483          	ld	s1,8(sp)
    800025b4:	00f72023          	sw	a5,0(a4)
    800025b8:	02010113          	addi	sp,sp,32
    800025bc:	00001317          	auipc	t1,0x1
    800025c0:	4bc30067          	jr	1212(t1) # 80003a78 <release>

00000000800025c4 <devintr>:
    800025c4:	142027f3          	csrr	a5,scause
    800025c8:	00000513          	li	a0,0
    800025cc:	0007c463          	bltz	a5,800025d4 <devintr+0x10>
    800025d0:	00008067          	ret
    800025d4:	fe010113          	addi	sp,sp,-32
    800025d8:	00813823          	sd	s0,16(sp)
    800025dc:	00113c23          	sd	ra,24(sp)
    800025e0:	00913423          	sd	s1,8(sp)
    800025e4:	02010413          	addi	s0,sp,32
    800025e8:	0ff7f713          	andi	a4,a5,255
    800025ec:	00900693          	li	a3,9
    800025f0:	04d70c63          	beq	a4,a3,80002648 <devintr+0x84>
    800025f4:	fff00713          	li	a4,-1
    800025f8:	03f71713          	slli	a4,a4,0x3f
    800025fc:	00170713          	addi	a4,a4,1
    80002600:	00e78c63          	beq	a5,a4,80002618 <devintr+0x54>
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	01013403          	ld	s0,16(sp)
    8000260c:	00813483          	ld	s1,8(sp)
    80002610:	02010113          	addi	sp,sp,32
    80002614:	00008067          	ret
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	c8c080e7          	jalr	-884(ra) # 800022a4 <cpuid>
    80002620:	06050663          	beqz	a0,8000268c <devintr+0xc8>
    80002624:	144027f3          	csrr	a5,sip
    80002628:	ffd7f793          	andi	a5,a5,-3
    8000262c:	14479073          	csrw	sip,a5
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	01013403          	ld	s0,16(sp)
    80002638:	00813483          	ld	s1,8(sp)
    8000263c:	00200513          	li	a0,2
    80002640:	02010113          	addi	sp,sp,32
    80002644:	00008067          	ret
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	24c080e7          	jalr	588(ra) # 80002894 <plic_claim>
    80002650:	00a00793          	li	a5,10
    80002654:	00050493          	mv	s1,a0
    80002658:	06f50663          	beq	a0,a5,800026c4 <devintr+0x100>
    8000265c:	00100513          	li	a0,1
    80002660:	fa0482e3          	beqz	s1,80002604 <devintr+0x40>
    80002664:	00048593          	mv	a1,s1
    80002668:	00003517          	auipc	a0,0x3
    8000266c:	b8050513          	addi	a0,a0,-1152 # 800051e8 <_ZZ12printIntegermE6digits+0xe0>
    80002670:	00000097          	auipc	ra,0x0
    80002674:	668080e7          	jalr	1640(ra) # 80002cd8 <__printf>
    80002678:	00048513          	mv	a0,s1
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	250080e7          	jalr	592(ra) # 800028cc <plic_complete>
    80002684:	00100513          	li	a0,1
    80002688:	f7dff06f          	j	80002604 <devintr+0x40>
    8000268c:	00004517          	auipc	a0,0x4
    80002690:	3a450513          	addi	a0,a0,932 # 80006a30 <tickslock>
    80002694:	00001097          	auipc	ra,0x1
    80002698:	318080e7          	jalr	792(ra) # 800039ac <acquire>
    8000269c:	00003717          	auipc	a4,0x3
    800026a0:	27870713          	addi	a4,a4,632 # 80005914 <ticks>
    800026a4:	00072783          	lw	a5,0(a4)
    800026a8:	00004517          	auipc	a0,0x4
    800026ac:	38850513          	addi	a0,a0,904 # 80006a30 <tickslock>
    800026b0:	0017879b          	addiw	a5,a5,1
    800026b4:	00f72023          	sw	a5,0(a4)
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	3c0080e7          	jalr	960(ra) # 80003a78 <release>
    800026c0:	f65ff06f          	j	80002624 <devintr+0x60>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	f1c080e7          	jalr	-228(ra) # 800035e0 <uartintr>
    800026cc:	fadff06f          	j	80002678 <devintr+0xb4>

00000000800026d0 <kernelvec>:
    800026d0:	f0010113          	addi	sp,sp,-256
    800026d4:	00113023          	sd	ra,0(sp)
    800026d8:	00213423          	sd	sp,8(sp)
    800026dc:	00313823          	sd	gp,16(sp)
    800026e0:	00413c23          	sd	tp,24(sp)
    800026e4:	02513023          	sd	t0,32(sp)
    800026e8:	02613423          	sd	t1,40(sp)
    800026ec:	02713823          	sd	t2,48(sp)
    800026f0:	02813c23          	sd	s0,56(sp)
    800026f4:	04913023          	sd	s1,64(sp)
    800026f8:	04a13423          	sd	a0,72(sp)
    800026fc:	04b13823          	sd	a1,80(sp)
    80002700:	04c13c23          	sd	a2,88(sp)
    80002704:	06d13023          	sd	a3,96(sp)
    80002708:	06e13423          	sd	a4,104(sp)
    8000270c:	06f13823          	sd	a5,112(sp)
    80002710:	07013c23          	sd	a6,120(sp)
    80002714:	09113023          	sd	a7,128(sp)
    80002718:	09213423          	sd	s2,136(sp)
    8000271c:	09313823          	sd	s3,144(sp)
    80002720:	09413c23          	sd	s4,152(sp)
    80002724:	0b513023          	sd	s5,160(sp)
    80002728:	0b613423          	sd	s6,168(sp)
    8000272c:	0b713823          	sd	s7,176(sp)
    80002730:	0b813c23          	sd	s8,184(sp)
    80002734:	0d913023          	sd	s9,192(sp)
    80002738:	0da13423          	sd	s10,200(sp)
    8000273c:	0db13823          	sd	s11,208(sp)
    80002740:	0dc13c23          	sd	t3,216(sp)
    80002744:	0fd13023          	sd	t4,224(sp)
    80002748:	0fe13423          	sd	t5,232(sp)
    8000274c:	0ff13823          	sd	t6,240(sp)
    80002750:	cd5ff0ef          	jal	ra,80002424 <kerneltrap>
    80002754:	00013083          	ld	ra,0(sp)
    80002758:	00813103          	ld	sp,8(sp)
    8000275c:	01013183          	ld	gp,16(sp)
    80002760:	02013283          	ld	t0,32(sp)
    80002764:	02813303          	ld	t1,40(sp)
    80002768:	03013383          	ld	t2,48(sp)
    8000276c:	03813403          	ld	s0,56(sp)
    80002770:	04013483          	ld	s1,64(sp)
    80002774:	04813503          	ld	a0,72(sp)
    80002778:	05013583          	ld	a1,80(sp)
    8000277c:	05813603          	ld	a2,88(sp)
    80002780:	06013683          	ld	a3,96(sp)
    80002784:	06813703          	ld	a4,104(sp)
    80002788:	07013783          	ld	a5,112(sp)
    8000278c:	07813803          	ld	a6,120(sp)
    80002790:	08013883          	ld	a7,128(sp)
    80002794:	08813903          	ld	s2,136(sp)
    80002798:	09013983          	ld	s3,144(sp)
    8000279c:	09813a03          	ld	s4,152(sp)
    800027a0:	0a013a83          	ld	s5,160(sp)
    800027a4:	0a813b03          	ld	s6,168(sp)
    800027a8:	0b013b83          	ld	s7,176(sp)
    800027ac:	0b813c03          	ld	s8,184(sp)
    800027b0:	0c013c83          	ld	s9,192(sp)
    800027b4:	0c813d03          	ld	s10,200(sp)
    800027b8:	0d013d83          	ld	s11,208(sp)
    800027bc:	0d813e03          	ld	t3,216(sp)
    800027c0:	0e013e83          	ld	t4,224(sp)
    800027c4:	0e813f03          	ld	t5,232(sp)
    800027c8:	0f013f83          	ld	t6,240(sp)
    800027cc:	10010113          	addi	sp,sp,256
    800027d0:	10200073          	sret
    800027d4:	00000013          	nop
    800027d8:	00000013          	nop
    800027dc:	00000013          	nop

00000000800027e0 <timervec>:
    800027e0:	34051573          	csrrw	a0,mscratch,a0
    800027e4:	00b53023          	sd	a1,0(a0)
    800027e8:	00c53423          	sd	a2,8(a0)
    800027ec:	00d53823          	sd	a3,16(a0)
    800027f0:	01853583          	ld	a1,24(a0)
    800027f4:	02053603          	ld	a2,32(a0)
    800027f8:	0005b683          	ld	a3,0(a1)
    800027fc:	00c686b3          	add	a3,a3,a2
    80002800:	00d5b023          	sd	a3,0(a1)
    80002804:	00200593          	li	a1,2
    80002808:	14459073          	csrw	sip,a1
    8000280c:	01053683          	ld	a3,16(a0)
    80002810:	00853603          	ld	a2,8(a0)
    80002814:	00053583          	ld	a1,0(a0)
    80002818:	34051573          	csrrw	a0,mscratch,a0
    8000281c:	30200073          	mret

0000000080002820 <plicinit>:
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00813423          	sd	s0,8(sp)
    80002828:	01010413          	addi	s0,sp,16
    8000282c:	00813403          	ld	s0,8(sp)
    80002830:	0c0007b7          	lui	a5,0xc000
    80002834:	00100713          	li	a4,1
    80002838:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000283c:	00e7a223          	sw	a4,4(a5)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <plicinithart>:
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	01010413          	addi	s0,sp,16
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	a4c080e7          	jalr	-1460(ra) # 800022a4 <cpuid>
    80002860:	0085171b          	slliw	a4,a0,0x8
    80002864:	0c0027b7          	lui	a5,0xc002
    80002868:	00e787b3          	add	a5,a5,a4
    8000286c:	40200713          	li	a4,1026
    80002870:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	00d5151b          	slliw	a0,a0,0xd
    80002880:	0c2017b7          	lui	a5,0xc201
    80002884:	00a78533          	add	a0,a5,a0
    80002888:	00052023          	sw	zero,0(a0)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret

0000000080002894 <plic_claim>:
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	01010413          	addi	s0,sp,16
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	a00080e7          	jalr	-1536(ra) # 800022a4 <cpuid>
    800028ac:	00813083          	ld	ra,8(sp)
    800028b0:	00013403          	ld	s0,0(sp)
    800028b4:	00d5151b          	slliw	a0,a0,0xd
    800028b8:	0c2017b7          	lui	a5,0xc201
    800028bc:	00a78533          	add	a0,a5,a0
    800028c0:	00452503          	lw	a0,4(a0)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret

00000000800028cc <plic_complete>:
    800028cc:	fe010113          	addi	sp,sp,-32
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	00113c23          	sd	ra,24(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00050493          	mv	s1,a0
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	9c0080e7          	jalr	-1600(ra) # 800022a4 <cpuid>
    800028ec:	01813083          	ld	ra,24(sp)
    800028f0:	01013403          	ld	s0,16(sp)
    800028f4:	00d5179b          	slliw	a5,a0,0xd
    800028f8:	0c201737          	lui	a4,0xc201
    800028fc:	00f707b3          	add	a5,a4,a5
    80002900:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	02010113          	addi	sp,sp,32
    8000290c:	00008067          	ret

0000000080002910 <consolewrite>:
    80002910:	fb010113          	addi	sp,sp,-80
    80002914:	04813023          	sd	s0,64(sp)
    80002918:	04113423          	sd	ra,72(sp)
    8000291c:	02913c23          	sd	s1,56(sp)
    80002920:	03213823          	sd	s2,48(sp)
    80002924:	03313423          	sd	s3,40(sp)
    80002928:	03413023          	sd	s4,32(sp)
    8000292c:	01513c23          	sd	s5,24(sp)
    80002930:	05010413          	addi	s0,sp,80
    80002934:	06c05c63          	blez	a2,800029ac <consolewrite+0x9c>
    80002938:	00060993          	mv	s3,a2
    8000293c:	00050a13          	mv	s4,a0
    80002940:	00058493          	mv	s1,a1
    80002944:	00000913          	li	s2,0
    80002948:	fff00a93          	li	s5,-1
    8000294c:	01c0006f          	j	80002968 <consolewrite+0x58>
    80002950:	fbf44503          	lbu	a0,-65(s0)
    80002954:	0019091b          	addiw	s2,s2,1
    80002958:	00148493          	addi	s1,s1,1
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	a9c080e7          	jalr	-1380(ra) # 800033f8 <uartputc>
    80002964:	03298063          	beq	s3,s2,80002984 <consolewrite+0x74>
    80002968:	00048613          	mv	a2,s1
    8000296c:	00100693          	li	a3,1
    80002970:	000a0593          	mv	a1,s4
    80002974:	fbf40513          	addi	a0,s0,-65
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	9e4080e7          	jalr	-1564(ra) # 8000235c <either_copyin>
    80002980:	fd5518e3          	bne	a0,s5,80002950 <consolewrite+0x40>
    80002984:	04813083          	ld	ra,72(sp)
    80002988:	04013403          	ld	s0,64(sp)
    8000298c:	03813483          	ld	s1,56(sp)
    80002990:	02813983          	ld	s3,40(sp)
    80002994:	02013a03          	ld	s4,32(sp)
    80002998:	01813a83          	ld	s5,24(sp)
    8000299c:	00090513          	mv	a0,s2
    800029a0:	03013903          	ld	s2,48(sp)
    800029a4:	05010113          	addi	sp,sp,80
    800029a8:	00008067          	ret
    800029ac:	00000913          	li	s2,0
    800029b0:	fd5ff06f          	j	80002984 <consolewrite+0x74>

00000000800029b4 <consoleread>:
    800029b4:	f9010113          	addi	sp,sp,-112
    800029b8:	06813023          	sd	s0,96(sp)
    800029bc:	04913c23          	sd	s1,88(sp)
    800029c0:	05213823          	sd	s2,80(sp)
    800029c4:	05313423          	sd	s3,72(sp)
    800029c8:	05413023          	sd	s4,64(sp)
    800029cc:	03513c23          	sd	s5,56(sp)
    800029d0:	03613823          	sd	s6,48(sp)
    800029d4:	03713423          	sd	s7,40(sp)
    800029d8:	03813023          	sd	s8,32(sp)
    800029dc:	06113423          	sd	ra,104(sp)
    800029e0:	01913c23          	sd	s9,24(sp)
    800029e4:	07010413          	addi	s0,sp,112
    800029e8:	00060b93          	mv	s7,a2
    800029ec:	00050913          	mv	s2,a0
    800029f0:	00058c13          	mv	s8,a1
    800029f4:	00060b1b          	sext.w	s6,a2
    800029f8:	00004497          	auipc	s1,0x4
    800029fc:	06048493          	addi	s1,s1,96 # 80006a58 <cons>
    80002a00:	00400993          	li	s3,4
    80002a04:	fff00a13          	li	s4,-1
    80002a08:	00a00a93          	li	s5,10
    80002a0c:	05705e63          	blez	s7,80002a68 <consoleread+0xb4>
    80002a10:	09c4a703          	lw	a4,156(s1)
    80002a14:	0984a783          	lw	a5,152(s1)
    80002a18:	0007071b          	sext.w	a4,a4
    80002a1c:	08e78463          	beq	a5,a4,80002aa4 <consoleread+0xf0>
    80002a20:	07f7f713          	andi	a4,a5,127
    80002a24:	00e48733          	add	a4,s1,a4
    80002a28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a2c:	0017869b          	addiw	a3,a5,1
    80002a30:	08d4ac23          	sw	a3,152(s1)
    80002a34:	00070c9b          	sext.w	s9,a4
    80002a38:	0b370663          	beq	a4,s3,80002ae4 <consoleread+0x130>
    80002a3c:	00100693          	li	a3,1
    80002a40:	f9f40613          	addi	a2,s0,-97
    80002a44:	000c0593          	mv	a1,s8
    80002a48:	00090513          	mv	a0,s2
    80002a4c:	f8e40fa3          	sb	a4,-97(s0)
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	8c0080e7          	jalr	-1856(ra) # 80002310 <either_copyout>
    80002a58:	01450863          	beq	a0,s4,80002a68 <consoleread+0xb4>
    80002a5c:	001c0c13          	addi	s8,s8,1
    80002a60:	fffb8b9b          	addiw	s7,s7,-1
    80002a64:	fb5c94e3          	bne	s9,s5,80002a0c <consoleread+0x58>
    80002a68:	000b851b          	sext.w	a0,s7
    80002a6c:	06813083          	ld	ra,104(sp)
    80002a70:	06013403          	ld	s0,96(sp)
    80002a74:	05813483          	ld	s1,88(sp)
    80002a78:	05013903          	ld	s2,80(sp)
    80002a7c:	04813983          	ld	s3,72(sp)
    80002a80:	04013a03          	ld	s4,64(sp)
    80002a84:	03813a83          	ld	s5,56(sp)
    80002a88:	02813b83          	ld	s7,40(sp)
    80002a8c:	02013c03          	ld	s8,32(sp)
    80002a90:	01813c83          	ld	s9,24(sp)
    80002a94:	40ab053b          	subw	a0,s6,a0
    80002a98:	03013b03          	ld	s6,48(sp)
    80002a9c:	07010113          	addi	sp,sp,112
    80002aa0:	00008067          	ret
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	1d8080e7          	jalr	472(ra) # 80003c7c <push_on>
    80002aac:	0984a703          	lw	a4,152(s1)
    80002ab0:	09c4a783          	lw	a5,156(s1)
    80002ab4:	0007879b          	sext.w	a5,a5
    80002ab8:	fef70ce3          	beq	a4,a5,80002ab0 <consoleread+0xfc>
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	234080e7          	jalr	564(ra) # 80003cf0 <pop_on>
    80002ac4:	0984a783          	lw	a5,152(s1)
    80002ac8:	07f7f713          	andi	a4,a5,127
    80002acc:	00e48733          	add	a4,s1,a4
    80002ad0:	01874703          	lbu	a4,24(a4)
    80002ad4:	0017869b          	addiw	a3,a5,1
    80002ad8:	08d4ac23          	sw	a3,152(s1)
    80002adc:	00070c9b          	sext.w	s9,a4
    80002ae0:	f5371ee3          	bne	a4,s3,80002a3c <consoleread+0x88>
    80002ae4:	000b851b          	sext.w	a0,s7
    80002ae8:	f96bf2e3          	bgeu	s7,s6,80002a6c <consoleread+0xb8>
    80002aec:	08f4ac23          	sw	a5,152(s1)
    80002af0:	f7dff06f          	j	80002a6c <consoleread+0xb8>

0000000080002af4 <consputc>:
    80002af4:	10000793          	li	a5,256
    80002af8:	00f50663          	beq	a0,a5,80002b04 <consputc+0x10>
    80002afc:	00001317          	auipc	t1,0x1
    80002b00:	9f430067          	jr	-1548(t1) # 800034f0 <uartputc_sync>
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00800513          	li	a0,8
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	9d8080e7          	jalr	-1576(ra) # 800034f0 <uartputc_sync>
    80002b20:	02000513          	li	a0,32
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	9cc080e7          	jalr	-1588(ra) # 800034f0 <uartputc_sync>
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00800513          	li	a0,8
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00001317          	auipc	t1,0x1
    80002b40:	9b430067          	jr	-1612(t1) # 800034f0 <uartputc_sync>

0000000080002b44 <consoleintr>:
    80002b44:	fe010113          	addi	sp,sp,-32
    80002b48:	00813823          	sd	s0,16(sp)
    80002b4c:	00913423          	sd	s1,8(sp)
    80002b50:	01213023          	sd	s2,0(sp)
    80002b54:	00113c23          	sd	ra,24(sp)
    80002b58:	02010413          	addi	s0,sp,32
    80002b5c:	00004917          	auipc	s2,0x4
    80002b60:	efc90913          	addi	s2,s2,-260 # 80006a58 <cons>
    80002b64:	00050493          	mv	s1,a0
    80002b68:	00090513          	mv	a0,s2
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	e40080e7          	jalr	-448(ra) # 800039ac <acquire>
    80002b74:	02048c63          	beqz	s1,80002bac <consoleintr+0x68>
    80002b78:	0a092783          	lw	a5,160(s2)
    80002b7c:	09892703          	lw	a4,152(s2)
    80002b80:	07f00693          	li	a3,127
    80002b84:	40e7873b          	subw	a4,a5,a4
    80002b88:	02e6e263          	bltu	a3,a4,80002bac <consoleintr+0x68>
    80002b8c:	00d00713          	li	a4,13
    80002b90:	04e48063          	beq	s1,a4,80002bd0 <consoleintr+0x8c>
    80002b94:	07f7f713          	andi	a4,a5,127
    80002b98:	00e90733          	add	a4,s2,a4
    80002b9c:	0017879b          	addiw	a5,a5,1
    80002ba0:	0af92023          	sw	a5,160(s2)
    80002ba4:	00970c23          	sb	s1,24(a4)
    80002ba8:	08f92e23          	sw	a5,156(s2)
    80002bac:	01013403          	ld	s0,16(sp)
    80002bb0:	01813083          	ld	ra,24(sp)
    80002bb4:	00813483          	ld	s1,8(sp)
    80002bb8:	00013903          	ld	s2,0(sp)
    80002bbc:	00004517          	auipc	a0,0x4
    80002bc0:	e9c50513          	addi	a0,a0,-356 # 80006a58 <cons>
    80002bc4:	02010113          	addi	sp,sp,32
    80002bc8:	00001317          	auipc	t1,0x1
    80002bcc:	eb030067          	jr	-336(t1) # 80003a78 <release>
    80002bd0:	00a00493          	li	s1,10
    80002bd4:	fc1ff06f          	j	80002b94 <consoleintr+0x50>

0000000080002bd8 <consoleinit>:
    80002bd8:	fe010113          	addi	sp,sp,-32
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00813823          	sd	s0,16(sp)
    80002be4:	00913423          	sd	s1,8(sp)
    80002be8:	02010413          	addi	s0,sp,32
    80002bec:	00004497          	auipc	s1,0x4
    80002bf0:	e6c48493          	addi	s1,s1,-404 # 80006a58 <cons>
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00002597          	auipc	a1,0x2
    80002bfc:	64858593          	addi	a1,a1,1608 # 80005240 <_ZZ12printIntegermE6digits+0x138>
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	d88080e7          	jalr	-632(ra) # 80003988 <initlock>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	7ac080e7          	jalr	1964(ra) # 800033b4 <uartinit>
    80002c10:	01813083          	ld	ra,24(sp)
    80002c14:	01013403          	ld	s0,16(sp)
    80002c18:	00000797          	auipc	a5,0x0
    80002c1c:	d9c78793          	addi	a5,a5,-612 # 800029b4 <consoleread>
    80002c20:	0af4bc23          	sd	a5,184(s1)
    80002c24:	00000797          	auipc	a5,0x0
    80002c28:	cec78793          	addi	a5,a5,-788 # 80002910 <consolewrite>
    80002c2c:	0cf4b023          	sd	a5,192(s1)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret

0000000080002c3c <console_read>:
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00813423          	sd	s0,8(sp)
    80002c44:	01010413          	addi	s0,sp,16
    80002c48:	00813403          	ld	s0,8(sp)
    80002c4c:	00004317          	auipc	t1,0x4
    80002c50:	ec433303          	ld	t1,-316(t1) # 80006b10 <devsw+0x10>
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00030067          	jr	t1

0000000080002c5c <console_write>:
    80002c5c:	ff010113          	addi	sp,sp,-16
    80002c60:	00813423          	sd	s0,8(sp)
    80002c64:	01010413          	addi	s0,sp,16
    80002c68:	00813403          	ld	s0,8(sp)
    80002c6c:	00004317          	auipc	t1,0x4
    80002c70:	eac33303          	ld	t1,-340(t1) # 80006b18 <devsw+0x18>
    80002c74:	01010113          	addi	sp,sp,16
    80002c78:	00030067          	jr	t1

0000000080002c7c <panic>:
    80002c7c:	fe010113          	addi	sp,sp,-32
    80002c80:	00113c23          	sd	ra,24(sp)
    80002c84:	00813823          	sd	s0,16(sp)
    80002c88:	00913423          	sd	s1,8(sp)
    80002c8c:	02010413          	addi	s0,sp,32
    80002c90:	00050493          	mv	s1,a0
    80002c94:	00002517          	auipc	a0,0x2
    80002c98:	5b450513          	addi	a0,a0,1460 # 80005248 <_ZZ12printIntegermE6digits+0x140>
    80002c9c:	00004797          	auipc	a5,0x4
    80002ca0:	f007ae23          	sw	zero,-228(a5) # 80006bb8 <pr+0x18>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	034080e7          	jalr	52(ra) # 80002cd8 <__printf>
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	028080e7          	jalr	40(ra) # 80002cd8 <__printf>
    80002cb8:	00002517          	auipc	a0,0x2
    80002cbc:	44850513          	addi	a0,a0,1096 # 80005100 <CONSOLE_STATUS+0xf0>
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	018080e7          	jalr	24(ra) # 80002cd8 <__printf>
    80002cc8:	00100793          	li	a5,1
    80002ccc:	00003717          	auipc	a4,0x3
    80002cd0:	c4f72623          	sw	a5,-948(a4) # 80005918 <panicked>
    80002cd4:	0000006f          	j	80002cd4 <panic+0x58>

0000000080002cd8 <__printf>:
    80002cd8:	f3010113          	addi	sp,sp,-208
    80002cdc:	08813023          	sd	s0,128(sp)
    80002ce0:	07313423          	sd	s3,104(sp)
    80002ce4:	09010413          	addi	s0,sp,144
    80002ce8:	05813023          	sd	s8,64(sp)
    80002cec:	08113423          	sd	ra,136(sp)
    80002cf0:	06913c23          	sd	s1,120(sp)
    80002cf4:	07213823          	sd	s2,112(sp)
    80002cf8:	07413023          	sd	s4,96(sp)
    80002cfc:	05513c23          	sd	s5,88(sp)
    80002d00:	05613823          	sd	s6,80(sp)
    80002d04:	05713423          	sd	s7,72(sp)
    80002d08:	03913c23          	sd	s9,56(sp)
    80002d0c:	03a13823          	sd	s10,48(sp)
    80002d10:	03b13423          	sd	s11,40(sp)
    80002d14:	00004317          	auipc	t1,0x4
    80002d18:	e8c30313          	addi	t1,t1,-372 # 80006ba0 <pr>
    80002d1c:	01832c03          	lw	s8,24(t1)
    80002d20:	00b43423          	sd	a1,8(s0)
    80002d24:	00c43823          	sd	a2,16(s0)
    80002d28:	00d43c23          	sd	a3,24(s0)
    80002d2c:	02e43023          	sd	a4,32(s0)
    80002d30:	02f43423          	sd	a5,40(s0)
    80002d34:	03043823          	sd	a6,48(s0)
    80002d38:	03143c23          	sd	a7,56(s0)
    80002d3c:	00050993          	mv	s3,a0
    80002d40:	4a0c1663          	bnez	s8,800031ec <__printf+0x514>
    80002d44:	60098c63          	beqz	s3,8000335c <__printf+0x684>
    80002d48:	0009c503          	lbu	a0,0(s3)
    80002d4c:	00840793          	addi	a5,s0,8
    80002d50:	f6f43c23          	sd	a5,-136(s0)
    80002d54:	00000493          	li	s1,0
    80002d58:	22050063          	beqz	a0,80002f78 <__printf+0x2a0>
    80002d5c:	00002a37          	lui	s4,0x2
    80002d60:	00018ab7          	lui	s5,0x18
    80002d64:	000f4b37          	lui	s6,0xf4
    80002d68:	00989bb7          	lui	s7,0x989
    80002d6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d7c:	00148c9b          	addiw	s9,s1,1
    80002d80:	02500793          	li	a5,37
    80002d84:	01998933          	add	s2,s3,s9
    80002d88:	38f51263          	bne	a0,a5,8000310c <__printf+0x434>
    80002d8c:	00094783          	lbu	a5,0(s2)
    80002d90:	00078c9b          	sext.w	s9,a5
    80002d94:	1e078263          	beqz	a5,80002f78 <__printf+0x2a0>
    80002d98:	0024849b          	addiw	s1,s1,2
    80002d9c:	07000713          	li	a4,112
    80002da0:	00998933          	add	s2,s3,s1
    80002da4:	38e78a63          	beq	a5,a4,80003138 <__printf+0x460>
    80002da8:	20f76863          	bltu	a4,a5,80002fb8 <__printf+0x2e0>
    80002dac:	42a78863          	beq	a5,a0,800031dc <__printf+0x504>
    80002db0:	06400713          	li	a4,100
    80002db4:	40e79663          	bne	a5,a4,800031c0 <__printf+0x4e8>
    80002db8:	f7843783          	ld	a5,-136(s0)
    80002dbc:	0007a603          	lw	a2,0(a5)
    80002dc0:	00878793          	addi	a5,a5,8
    80002dc4:	f6f43c23          	sd	a5,-136(s0)
    80002dc8:	42064a63          	bltz	a2,800031fc <__printf+0x524>
    80002dcc:	00a00713          	li	a4,10
    80002dd0:	02e677bb          	remuw	a5,a2,a4
    80002dd4:	00002d97          	auipc	s11,0x2
    80002dd8:	49cd8d93          	addi	s11,s11,1180 # 80005270 <digits>
    80002ddc:	00900593          	li	a1,9
    80002de0:	0006051b          	sext.w	a0,a2
    80002de4:	00000c93          	li	s9,0
    80002de8:	02079793          	slli	a5,a5,0x20
    80002dec:	0207d793          	srli	a5,a5,0x20
    80002df0:	00fd87b3          	add	a5,s11,a5
    80002df4:	0007c783          	lbu	a5,0(a5)
    80002df8:	02e656bb          	divuw	a3,a2,a4
    80002dfc:	f8f40023          	sb	a5,-128(s0)
    80002e00:	14c5d863          	bge	a1,a2,80002f50 <__printf+0x278>
    80002e04:	06300593          	li	a1,99
    80002e08:	00100c93          	li	s9,1
    80002e0c:	02e6f7bb          	remuw	a5,a3,a4
    80002e10:	02079793          	slli	a5,a5,0x20
    80002e14:	0207d793          	srli	a5,a5,0x20
    80002e18:	00fd87b3          	add	a5,s11,a5
    80002e1c:	0007c783          	lbu	a5,0(a5)
    80002e20:	02e6d73b          	divuw	a4,a3,a4
    80002e24:	f8f400a3          	sb	a5,-127(s0)
    80002e28:	12a5f463          	bgeu	a1,a0,80002f50 <__printf+0x278>
    80002e2c:	00a00693          	li	a3,10
    80002e30:	00900593          	li	a1,9
    80002e34:	02d777bb          	remuw	a5,a4,a3
    80002e38:	02079793          	slli	a5,a5,0x20
    80002e3c:	0207d793          	srli	a5,a5,0x20
    80002e40:	00fd87b3          	add	a5,s11,a5
    80002e44:	0007c503          	lbu	a0,0(a5)
    80002e48:	02d757bb          	divuw	a5,a4,a3
    80002e4c:	f8a40123          	sb	a0,-126(s0)
    80002e50:	48e5f263          	bgeu	a1,a4,800032d4 <__printf+0x5fc>
    80002e54:	06300513          	li	a0,99
    80002e58:	02d7f5bb          	remuw	a1,a5,a3
    80002e5c:	02059593          	slli	a1,a1,0x20
    80002e60:	0205d593          	srli	a1,a1,0x20
    80002e64:	00bd85b3          	add	a1,s11,a1
    80002e68:	0005c583          	lbu	a1,0(a1)
    80002e6c:	02d7d7bb          	divuw	a5,a5,a3
    80002e70:	f8b401a3          	sb	a1,-125(s0)
    80002e74:	48e57263          	bgeu	a0,a4,800032f8 <__printf+0x620>
    80002e78:	3e700513          	li	a0,999
    80002e7c:	02d7f5bb          	remuw	a1,a5,a3
    80002e80:	02059593          	slli	a1,a1,0x20
    80002e84:	0205d593          	srli	a1,a1,0x20
    80002e88:	00bd85b3          	add	a1,s11,a1
    80002e8c:	0005c583          	lbu	a1,0(a1)
    80002e90:	02d7d7bb          	divuw	a5,a5,a3
    80002e94:	f8b40223          	sb	a1,-124(s0)
    80002e98:	46e57663          	bgeu	a0,a4,80003304 <__printf+0x62c>
    80002e9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ea0:	02059593          	slli	a1,a1,0x20
    80002ea4:	0205d593          	srli	a1,a1,0x20
    80002ea8:	00bd85b3          	add	a1,s11,a1
    80002eac:	0005c583          	lbu	a1,0(a1)
    80002eb0:	02d7d7bb          	divuw	a5,a5,a3
    80002eb4:	f8b402a3          	sb	a1,-123(s0)
    80002eb8:	46ea7863          	bgeu	s4,a4,80003328 <__printf+0x650>
    80002ebc:	02d7f5bb          	remuw	a1,a5,a3
    80002ec0:	02059593          	slli	a1,a1,0x20
    80002ec4:	0205d593          	srli	a1,a1,0x20
    80002ec8:	00bd85b3          	add	a1,s11,a1
    80002ecc:	0005c583          	lbu	a1,0(a1)
    80002ed0:	02d7d7bb          	divuw	a5,a5,a3
    80002ed4:	f8b40323          	sb	a1,-122(s0)
    80002ed8:	3eeaf863          	bgeu	s5,a4,800032c8 <__printf+0x5f0>
    80002edc:	02d7f5bb          	remuw	a1,a5,a3
    80002ee0:	02059593          	slli	a1,a1,0x20
    80002ee4:	0205d593          	srli	a1,a1,0x20
    80002ee8:	00bd85b3          	add	a1,s11,a1
    80002eec:	0005c583          	lbu	a1,0(a1)
    80002ef0:	02d7d7bb          	divuw	a5,a5,a3
    80002ef4:	f8b403a3          	sb	a1,-121(s0)
    80002ef8:	42eb7e63          	bgeu	s6,a4,80003334 <__printf+0x65c>
    80002efc:	02d7f5bb          	remuw	a1,a5,a3
    80002f00:	02059593          	slli	a1,a1,0x20
    80002f04:	0205d593          	srli	a1,a1,0x20
    80002f08:	00bd85b3          	add	a1,s11,a1
    80002f0c:	0005c583          	lbu	a1,0(a1)
    80002f10:	02d7d7bb          	divuw	a5,a5,a3
    80002f14:	f8b40423          	sb	a1,-120(s0)
    80002f18:	42ebfc63          	bgeu	s7,a4,80003350 <__printf+0x678>
    80002f1c:	02079793          	slli	a5,a5,0x20
    80002f20:	0207d793          	srli	a5,a5,0x20
    80002f24:	00fd8db3          	add	s11,s11,a5
    80002f28:	000dc703          	lbu	a4,0(s11)
    80002f2c:	00a00793          	li	a5,10
    80002f30:	00900c93          	li	s9,9
    80002f34:	f8e404a3          	sb	a4,-119(s0)
    80002f38:	00065c63          	bgez	a2,80002f50 <__printf+0x278>
    80002f3c:	f9040713          	addi	a4,s0,-112
    80002f40:	00f70733          	add	a4,a4,a5
    80002f44:	02d00693          	li	a3,45
    80002f48:	fed70823          	sb	a3,-16(a4)
    80002f4c:	00078c93          	mv	s9,a5
    80002f50:	f8040793          	addi	a5,s0,-128
    80002f54:	01978cb3          	add	s9,a5,s9
    80002f58:	f7f40d13          	addi	s10,s0,-129
    80002f5c:	000cc503          	lbu	a0,0(s9)
    80002f60:	fffc8c93          	addi	s9,s9,-1
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	b90080e7          	jalr	-1136(ra) # 80002af4 <consputc>
    80002f6c:	ffac98e3          	bne	s9,s10,80002f5c <__printf+0x284>
    80002f70:	00094503          	lbu	a0,0(s2)
    80002f74:	e00514e3          	bnez	a0,80002d7c <__printf+0xa4>
    80002f78:	1a0c1663          	bnez	s8,80003124 <__printf+0x44c>
    80002f7c:	08813083          	ld	ra,136(sp)
    80002f80:	08013403          	ld	s0,128(sp)
    80002f84:	07813483          	ld	s1,120(sp)
    80002f88:	07013903          	ld	s2,112(sp)
    80002f8c:	06813983          	ld	s3,104(sp)
    80002f90:	06013a03          	ld	s4,96(sp)
    80002f94:	05813a83          	ld	s5,88(sp)
    80002f98:	05013b03          	ld	s6,80(sp)
    80002f9c:	04813b83          	ld	s7,72(sp)
    80002fa0:	04013c03          	ld	s8,64(sp)
    80002fa4:	03813c83          	ld	s9,56(sp)
    80002fa8:	03013d03          	ld	s10,48(sp)
    80002fac:	02813d83          	ld	s11,40(sp)
    80002fb0:	0d010113          	addi	sp,sp,208
    80002fb4:	00008067          	ret
    80002fb8:	07300713          	li	a4,115
    80002fbc:	1ce78a63          	beq	a5,a4,80003190 <__printf+0x4b8>
    80002fc0:	07800713          	li	a4,120
    80002fc4:	1ee79e63          	bne	a5,a4,800031c0 <__printf+0x4e8>
    80002fc8:	f7843783          	ld	a5,-136(s0)
    80002fcc:	0007a703          	lw	a4,0(a5)
    80002fd0:	00878793          	addi	a5,a5,8
    80002fd4:	f6f43c23          	sd	a5,-136(s0)
    80002fd8:	28074263          	bltz	a4,8000325c <__printf+0x584>
    80002fdc:	00002d97          	auipc	s11,0x2
    80002fe0:	294d8d93          	addi	s11,s11,660 # 80005270 <digits>
    80002fe4:	00f77793          	andi	a5,a4,15
    80002fe8:	00fd87b3          	add	a5,s11,a5
    80002fec:	0007c683          	lbu	a3,0(a5)
    80002ff0:	00f00613          	li	a2,15
    80002ff4:	0007079b          	sext.w	a5,a4
    80002ff8:	f8d40023          	sb	a3,-128(s0)
    80002ffc:	0047559b          	srliw	a1,a4,0x4
    80003000:	0047569b          	srliw	a3,a4,0x4
    80003004:	00000c93          	li	s9,0
    80003008:	0ee65063          	bge	a2,a4,800030e8 <__printf+0x410>
    8000300c:	00f6f693          	andi	a3,a3,15
    80003010:	00dd86b3          	add	a3,s11,a3
    80003014:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003018:	0087d79b          	srliw	a5,a5,0x8
    8000301c:	00100c93          	li	s9,1
    80003020:	f8d400a3          	sb	a3,-127(s0)
    80003024:	0cb67263          	bgeu	a2,a1,800030e8 <__printf+0x410>
    80003028:	00f7f693          	andi	a3,a5,15
    8000302c:	00dd86b3          	add	a3,s11,a3
    80003030:	0006c583          	lbu	a1,0(a3)
    80003034:	00f00613          	li	a2,15
    80003038:	0047d69b          	srliw	a3,a5,0x4
    8000303c:	f8b40123          	sb	a1,-126(s0)
    80003040:	0047d593          	srli	a1,a5,0x4
    80003044:	28f67e63          	bgeu	a2,a5,800032e0 <__printf+0x608>
    80003048:	00f6f693          	andi	a3,a3,15
    8000304c:	00dd86b3          	add	a3,s11,a3
    80003050:	0006c503          	lbu	a0,0(a3)
    80003054:	0087d813          	srli	a6,a5,0x8
    80003058:	0087d69b          	srliw	a3,a5,0x8
    8000305c:	f8a401a3          	sb	a0,-125(s0)
    80003060:	28b67663          	bgeu	a2,a1,800032ec <__printf+0x614>
    80003064:	00f6f693          	andi	a3,a3,15
    80003068:	00dd86b3          	add	a3,s11,a3
    8000306c:	0006c583          	lbu	a1,0(a3)
    80003070:	00c7d513          	srli	a0,a5,0xc
    80003074:	00c7d69b          	srliw	a3,a5,0xc
    80003078:	f8b40223          	sb	a1,-124(s0)
    8000307c:	29067a63          	bgeu	a2,a6,80003310 <__printf+0x638>
    80003080:	00f6f693          	andi	a3,a3,15
    80003084:	00dd86b3          	add	a3,s11,a3
    80003088:	0006c583          	lbu	a1,0(a3)
    8000308c:	0107d813          	srli	a6,a5,0x10
    80003090:	0107d69b          	srliw	a3,a5,0x10
    80003094:	f8b402a3          	sb	a1,-123(s0)
    80003098:	28a67263          	bgeu	a2,a0,8000331c <__printf+0x644>
    8000309c:	00f6f693          	andi	a3,a3,15
    800030a0:	00dd86b3          	add	a3,s11,a3
    800030a4:	0006c683          	lbu	a3,0(a3)
    800030a8:	0147d79b          	srliw	a5,a5,0x14
    800030ac:	f8d40323          	sb	a3,-122(s0)
    800030b0:	21067663          	bgeu	a2,a6,800032bc <__printf+0x5e4>
    800030b4:	02079793          	slli	a5,a5,0x20
    800030b8:	0207d793          	srli	a5,a5,0x20
    800030bc:	00fd8db3          	add	s11,s11,a5
    800030c0:	000dc683          	lbu	a3,0(s11)
    800030c4:	00800793          	li	a5,8
    800030c8:	00700c93          	li	s9,7
    800030cc:	f8d403a3          	sb	a3,-121(s0)
    800030d0:	00075c63          	bgez	a4,800030e8 <__printf+0x410>
    800030d4:	f9040713          	addi	a4,s0,-112
    800030d8:	00f70733          	add	a4,a4,a5
    800030dc:	02d00693          	li	a3,45
    800030e0:	fed70823          	sb	a3,-16(a4)
    800030e4:	00078c93          	mv	s9,a5
    800030e8:	f8040793          	addi	a5,s0,-128
    800030ec:	01978cb3          	add	s9,a5,s9
    800030f0:	f7f40d13          	addi	s10,s0,-129
    800030f4:	000cc503          	lbu	a0,0(s9)
    800030f8:	fffc8c93          	addi	s9,s9,-1
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	9f8080e7          	jalr	-1544(ra) # 80002af4 <consputc>
    80003104:	ff9d18e3          	bne	s10,s9,800030f4 <__printf+0x41c>
    80003108:	0100006f          	j	80003118 <__printf+0x440>
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	9e8080e7          	jalr	-1560(ra) # 80002af4 <consputc>
    80003114:	000c8493          	mv	s1,s9
    80003118:	00094503          	lbu	a0,0(s2)
    8000311c:	c60510e3          	bnez	a0,80002d7c <__printf+0xa4>
    80003120:	e40c0ee3          	beqz	s8,80002f7c <__printf+0x2a4>
    80003124:	00004517          	auipc	a0,0x4
    80003128:	a7c50513          	addi	a0,a0,-1412 # 80006ba0 <pr>
    8000312c:	00001097          	auipc	ra,0x1
    80003130:	94c080e7          	jalr	-1716(ra) # 80003a78 <release>
    80003134:	e49ff06f          	j	80002f7c <__printf+0x2a4>
    80003138:	f7843783          	ld	a5,-136(s0)
    8000313c:	03000513          	li	a0,48
    80003140:	01000d13          	li	s10,16
    80003144:	00878713          	addi	a4,a5,8
    80003148:	0007bc83          	ld	s9,0(a5)
    8000314c:	f6e43c23          	sd	a4,-136(s0)
    80003150:	00000097          	auipc	ra,0x0
    80003154:	9a4080e7          	jalr	-1628(ra) # 80002af4 <consputc>
    80003158:	07800513          	li	a0,120
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	998080e7          	jalr	-1640(ra) # 80002af4 <consputc>
    80003164:	00002d97          	auipc	s11,0x2
    80003168:	10cd8d93          	addi	s11,s11,268 # 80005270 <digits>
    8000316c:	03ccd793          	srli	a5,s9,0x3c
    80003170:	00fd87b3          	add	a5,s11,a5
    80003174:	0007c503          	lbu	a0,0(a5)
    80003178:	fffd0d1b          	addiw	s10,s10,-1
    8000317c:	004c9c93          	slli	s9,s9,0x4
    80003180:	00000097          	auipc	ra,0x0
    80003184:	974080e7          	jalr	-1676(ra) # 80002af4 <consputc>
    80003188:	fe0d12e3          	bnez	s10,8000316c <__printf+0x494>
    8000318c:	f8dff06f          	j	80003118 <__printf+0x440>
    80003190:	f7843783          	ld	a5,-136(s0)
    80003194:	0007bc83          	ld	s9,0(a5)
    80003198:	00878793          	addi	a5,a5,8
    8000319c:	f6f43c23          	sd	a5,-136(s0)
    800031a0:	000c9a63          	bnez	s9,800031b4 <__printf+0x4dc>
    800031a4:	1080006f          	j	800032ac <__printf+0x5d4>
    800031a8:	001c8c93          	addi	s9,s9,1
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	948080e7          	jalr	-1720(ra) # 80002af4 <consputc>
    800031b4:	000cc503          	lbu	a0,0(s9)
    800031b8:	fe0518e3          	bnez	a0,800031a8 <__printf+0x4d0>
    800031bc:	f5dff06f          	j	80003118 <__printf+0x440>
    800031c0:	02500513          	li	a0,37
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	930080e7          	jalr	-1744(ra) # 80002af4 <consputc>
    800031cc:	000c8513          	mv	a0,s9
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	924080e7          	jalr	-1756(ra) # 80002af4 <consputc>
    800031d8:	f41ff06f          	j	80003118 <__printf+0x440>
    800031dc:	02500513          	li	a0,37
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	914080e7          	jalr	-1772(ra) # 80002af4 <consputc>
    800031e8:	f31ff06f          	j	80003118 <__printf+0x440>
    800031ec:	00030513          	mv	a0,t1
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	7bc080e7          	jalr	1980(ra) # 800039ac <acquire>
    800031f8:	b4dff06f          	j	80002d44 <__printf+0x6c>
    800031fc:	40c0053b          	negw	a0,a2
    80003200:	00a00713          	li	a4,10
    80003204:	02e576bb          	remuw	a3,a0,a4
    80003208:	00002d97          	auipc	s11,0x2
    8000320c:	068d8d93          	addi	s11,s11,104 # 80005270 <digits>
    80003210:	ff700593          	li	a1,-9
    80003214:	02069693          	slli	a3,a3,0x20
    80003218:	0206d693          	srli	a3,a3,0x20
    8000321c:	00dd86b3          	add	a3,s11,a3
    80003220:	0006c683          	lbu	a3,0(a3)
    80003224:	02e557bb          	divuw	a5,a0,a4
    80003228:	f8d40023          	sb	a3,-128(s0)
    8000322c:	10b65e63          	bge	a2,a1,80003348 <__printf+0x670>
    80003230:	06300593          	li	a1,99
    80003234:	02e7f6bb          	remuw	a3,a5,a4
    80003238:	02069693          	slli	a3,a3,0x20
    8000323c:	0206d693          	srli	a3,a3,0x20
    80003240:	00dd86b3          	add	a3,s11,a3
    80003244:	0006c683          	lbu	a3,0(a3)
    80003248:	02e7d73b          	divuw	a4,a5,a4
    8000324c:	00200793          	li	a5,2
    80003250:	f8d400a3          	sb	a3,-127(s0)
    80003254:	bca5ece3          	bltu	a1,a0,80002e2c <__printf+0x154>
    80003258:	ce5ff06f          	j	80002f3c <__printf+0x264>
    8000325c:	40e007bb          	negw	a5,a4
    80003260:	00002d97          	auipc	s11,0x2
    80003264:	010d8d93          	addi	s11,s11,16 # 80005270 <digits>
    80003268:	00f7f693          	andi	a3,a5,15
    8000326c:	00dd86b3          	add	a3,s11,a3
    80003270:	0006c583          	lbu	a1,0(a3)
    80003274:	ff100613          	li	a2,-15
    80003278:	0047d69b          	srliw	a3,a5,0x4
    8000327c:	f8b40023          	sb	a1,-128(s0)
    80003280:	0047d59b          	srliw	a1,a5,0x4
    80003284:	0ac75e63          	bge	a4,a2,80003340 <__printf+0x668>
    80003288:	00f6f693          	andi	a3,a3,15
    8000328c:	00dd86b3          	add	a3,s11,a3
    80003290:	0006c603          	lbu	a2,0(a3)
    80003294:	00f00693          	li	a3,15
    80003298:	0087d79b          	srliw	a5,a5,0x8
    8000329c:	f8c400a3          	sb	a2,-127(s0)
    800032a0:	d8b6e4e3          	bltu	a3,a1,80003028 <__printf+0x350>
    800032a4:	00200793          	li	a5,2
    800032a8:	e2dff06f          	j	800030d4 <__printf+0x3fc>
    800032ac:	00002c97          	auipc	s9,0x2
    800032b0:	fa4c8c93          	addi	s9,s9,-92 # 80005250 <_ZZ12printIntegermE6digits+0x148>
    800032b4:	02800513          	li	a0,40
    800032b8:	ef1ff06f          	j	800031a8 <__printf+0x4d0>
    800032bc:	00700793          	li	a5,7
    800032c0:	00600c93          	li	s9,6
    800032c4:	e0dff06f          	j	800030d0 <__printf+0x3f8>
    800032c8:	00700793          	li	a5,7
    800032cc:	00600c93          	li	s9,6
    800032d0:	c69ff06f          	j	80002f38 <__printf+0x260>
    800032d4:	00300793          	li	a5,3
    800032d8:	00200c93          	li	s9,2
    800032dc:	c5dff06f          	j	80002f38 <__printf+0x260>
    800032e0:	00300793          	li	a5,3
    800032e4:	00200c93          	li	s9,2
    800032e8:	de9ff06f          	j	800030d0 <__printf+0x3f8>
    800032ec:	00400793          	li	a5,4
    800032f0:	00300c93          	li	s9,3
    800032f4:	dddff06f          	j	800030d0 <__printf+0x3f8>
    800032f8:	00400793          	li	a5,4
    800032fc:	00300c93          	li	s9,3
    80003300:	c39ff06f          	j	80002f38 <__printf+0x260>
    80003304:	00500793          	li	a5,5
    80003308:	00400c93          	li	s9,4
    8000330c:	c2dff06f          	j	80002f38 <__printf+0x260>
    80003310:	00500793          	li	a5,5
    80003314:	00400c93          	li	s9,4
    80003318:	db9ff06f          	j	800030d0 <__printf+0x3f8>
    8000331c:	00600793          	li	a5,6
    80003320:	00500c93          	li	s9,5
    80003324:	dadff06f          	j	800030d0 <__printf+0x3f8>
    80003328:	00600793          	li	a5,6
    8000332c:	00500c93          	li	s9,5
    80003330:	c09ff06f          	j	80002f38 <__printf+0x260>
    80003334:	00800793          	li	a5,8
    80003338:	00700c93          	li	s9,7
    8000333c:	bfdff06f          	j	80002f38 <__printf+0x260>
    80003340:	00100793          	li	a5,1
    80003344:	d91ff06f          	j	800030d4 <__printf+0x3fc>
    80003348:	00100793          	li	a5,1
    8000334c:	bf1ff06f          	j	80002f3c <__printf+0x264>
    80003350:	00900793          	li	a5,9
    80003354:	00800c93          	li	s9,8
    80003358:	be1ff06f          	j	80002f38 <__printf+0x260>
    8000335c:	00002517          	auipc	a0,0x2
    80003360:	efc50513          	addi	a0,a0,-260 # 80005258 <_ZZ12printIntegermE6digits+0x150>
    80003364:	00000097          	auipc	ra,0x0
    80003368:	918080e7          	jalr	-1768(ra) # 80002c7c <panic>

000000008000336c <printfinit>:
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00004497          	auipc	s1,0x4
    80003384:	82048493          	addi	s1,s1,-2016 # 80006ba0 <pr>
    80003388:	00048513          	mv	a0,s1
    8000338c:	00002597          	auipc	a1,0x2
    80003390:	edc58593          	addi	a1,a1,-292 # 80005268 <_ZZ12printIntegermE6digits+0x160>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	5f4080e7          	jalr	1524(ra) # 80003988 <initlock>
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	0004ac23          	sw	zero,24(s1)
    800033a8:	00813483          	ld	s1,8(sp)
    800033ac:	02010113          	addi	sp,sp,32
    800033b0:	00008067          	ret

00000000800033b4 <uartinit>:
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00813423          	sd	s0,8(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	100007b7          	lui	a5,0x10000
    800033c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033c8:	f8000713          	li	a4,-128
    800033cc:	00e781a3          	sb	a4,3(a5)
    800033d0:	00300713          	li	a4,3
    800033d4:	00e78023          	sb	a4,0(a5)
    800033d8:	000780a3          	sb	zero,1(a5)
    800033dc:	00e781a3          	sb	a4,3(a5)
    800033e0:	00700693          	li	a3,7
    800033e4:	00d78123          	sb	a3,2(a5)
    800033e8:	00e780a3          	sb	a4,1(a5)
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <uartputc>:
    800033f8:	00002797          	auipc	a5,0x2
    800033fc:	5207a783          	lw	a5,1312(a5) # 80005918 <panicked>
    80003400:	00078463          	beqz	a5,80003408 <uartputc+0x10>
    80003404:	0000006f          	j	80003404 <uartputc+0xc>
    80003408:	fd010113          	addi	sp,sp,-48
    8000340c:	02813023          	sd	s0,32(sp)
    80003410:	00913c23          	sd	s1,24(sp)
    80003414:	01213823          	sd	s2,16(sp)
    80003418:	01313423          	sd	s3,8(sp)
    8000341c:	02113423          	sd	ra,40(sp)
    80003420:	03010413          	addi	s0,sp,48
    80003424:	00002917          	auipc	s2,0x2
    80003428:	4fc90913          	addi	s2,s2,1276 # 80005920 <uart_tx_r>
    8000342c:	00093783          	ld	a5,0(s2)
    80003430:	00002497          	auipc	s1,0x2
    80003434:	4f848493          	addi	s1,s1,1272 # 80005928 <uart_tx_w>
    80003438:	0004b703          	ld	a4,0(s1)
    8000343c:	02078693          	addi	a3,a5,32
    80003440:	00050993          	mv	s3,a0
    80003444:	02e69c63          	bne	a3,a4,8000347c <uartputc+0x84>
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	834080e7          	jalr	-1996(ra) # 80003c7c <push_on>
    80003450:	00093783          	ld	a5,0(s2)
    80003454:	0004b703          	ld	a4,0(s1)
    80003458:	02078793          	addi	a5,a5,32
    8000345c:	00e79463          	bne	a5,a4,80003464 <uartputc+0x6c>
    80003460:	0000006f          	j	80003460 <uartputc+0x68>
    80003464:	00001097          	auipc	ra,0x1
    80003468:	88c080e7          	jalr	-1908(ra) # 80003cf0 <pop_on>
    8000346c:	00093783          	ld	a5,0(s2)
    80003470:	0004b703          	ld	a4,0(s1)
    80003474:	02078693          	addi	a3,a5,32
    80003478:	fce688e3          	beq	a3,a4,80003448 <uartputc+0x50>
    8000347c:	01f77693          	andi	a3,a4,31
    80003480:	00003597          	auipc	a1,0x3
    80003484:	74058593          	addi	a1,a1,1856 # 80006bc0 <uart_tx_buf>
    80003488:	00d586b3          	add	a3,a1,a3
    8000348c:	00170713          	addi	a4,a4,1
    80003490:	01368023          	sb	s3,0(a3)
    80003494:	00e4b023          	sd	a4,0(s1)
    80003498:	10000637          	lui	a2,0x10000
    8000349c:	02f71063          	bne	a4,a5,800034bc <uartputc+0xc4>
    800034a0:	0340006f          	j	800034d4 <uartputc+0xdc>
    800034a4:	00074703          	lbu	a4,0(a4)
    800034a8:	00f93023          	sd	a5,0(s2)
    800034ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034b0:	00093783          	ld	a5,0(s2)
    800034b4:	0004b703          	ld	a4,0(s1)
    800034b8:	00f70e63          	beq	a4,a5,800034d4 <uartputc+0xdc>
    800034bc:	00564683          	lbu	a3,5(a2)
    800034c0:	01f7f713          	andi	a4,a5,31
    800034c4:	00e58733          	add	a4,a1,a4
    800034c8:	0206f693          	andi	a3,a3,32
    800034cc:	00178793          	addi	a5,a5,1
    800034d0:	fc069ae3          	bnez	a3,800034a4 <uartputc+0xac>
    800034d4:	02813083          	ld	ra,40(sp)
    800034d8:	02013403          	ld	s0,32(sp)
    800034dc:	01813483          	ld	s1,24(sp)
    800034e0:	01013903          	ld	s2,16(sp)
    800034e4:	00813983          	ld	s3,8(sp)
    800034e8:	03010113          	addi	sp,sp,48
    800034ec:	00008067          	ret

00000000800034f0 <uartputc_sync>:
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    800034fc:	00002717          	auipc	a4,0x2
    80003500:	41c72703          	lw	a4,1052(a4) # 80005918 <panicked>
    80003504:	02071663          	bnez	a4,80003530 <uartputc_sync+0x40>
    80003508:	00050793          	mv	a5,a0
    8000350c:	100006b7          	lui	a3,0x10000
    80003510:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003514:	02077713          	andi	a4,a4,32
    80003518:	fe070ce3          	beqz	a4,80003510 <uartputc_sync+0x20>
    8000351c:	0ff7f793          	andi	a5,a5,255
    80003520:	00f68023          	sb	a5,0(a3)
    80003524:	00813403          	ld	s0,8(sp)
    80003528:	01010113          	addi	sp,sp,16
    8000352c:	00008067          	ret
    80003530:	0000006f          	j	80003530 <uartputc_sync+0x40>

0000000080003534 <uartstart>:
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00813423          	sd	s0,8(sp)
    8000353c:	01010413          	addi	s0,sp,16
    80003540:	00002617          	auipc	a2,0x2
    80003544:	3e060613          	addi	a2,a2,992 # 80005920 <uart_tx_r>
    80003548:	00002517          	auipc	a0,0x2
    8000354c:	3e050513          	addi	a0,a0,992 # 80005928 <uart_tx_w>
    80003550:	00063783          	ld	a5,0(a2)
    80003554:	00053703          	ld	a4,0(a0)
    80003558:	04f70263          	beq	a4,a5,8000359c <uartstart+0x68>
    8000355c:	100005b7          	lui	a1,0x10000
    80003560:	00003817          	auipc	a6,0x3
    80003564:	66080813          	addi	a6,a6,1632 # 80006bc0 <uart_tx_buf>
    80003568:	01c0006f          	j	80003584 <uartstart+0x50>
    8000356c:	0006c703          	lbu	a4,0(a3)
    80003570:	00f63023          	sd	a5,0(a2)
    80003574:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003578:	00063783          	ld	a5,0(a2)
    8000357c:	00053703          	ld	a4,0(a0)
    80003580:	00f70e63          	beq	a4,a5,8000359c <uartstart+0x68>
    80003584:	01f7f713          	andi	a4,a5,31
    80003588:	00e806b3          	add	a3,a6,a4
    8000358c:	0055c703          	lbu	a4,5(a1)
    80003590:	00178793          	addi	a5,a5,1
    80003594:	02077713          	andi	a4,a4,32
    80003598:	fc071ae3          	bnez	a4,8000356c <uartstart+0x38>
    8000359c:	00813403          	ld	s0,8(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <uartgetc>:
    800035a8:	ff010113          	addi	sp,sp,-16
    800035ac:	00813423          	sd	s0,8(sp)
    800035b0:	01010413          	addi	s0,sp,16
    800035b4:	10000737          	lui	a4,0x10000
    800035b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035bc:	0017f793          	andi	a5,a5,1
    800035c0:	00078c63          	beqz	a5,800035d8 <uartgetc+0x30>
    800035c4:	00074503          	lbu	a0,0(a4)
    800035c8:	0ff57513          	andi	a0,a0,255
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret
    800035d8:	fff00513          	li	a0,-1
    800035dc:	ff1ff06f          	j	800035cc <uartgetc+0x24>

00000000800035e0 <uartintr>:
    800035e0:	100007b7          	lui	a5,0x10000
    800035e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800035e8:	0017f793          	andi	a5,a5,1
    800035ec:	0a078463          	beqz	a5,80003694 <uartintr+0xb4>
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	02010413          	addi	s0,sp,32
    80003604:	100004b7          	lui	s1,0x10000
    80003608:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000360c:	0ff57513          	andi	a0,a0,255
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	534080e7          	jalr	1332(ra) # 80002b44 <consoleintr>
    80003618:	0054c783          	lbu	a5,5(s1)
    8000361c:	0017f793          	andi	a5,a5,1
    80003620:	fe0794e3          	bnez	a5,80003608 <uartintr+0x28>
    80003624:	00002617          	auipc	a2,0x2
    80003628:	2fc60613          	addi	a2,a2,764 # 80005920 <uart_tx_r>
    8000362c:	00002517          	auipc	a0,0x2
    80003630:	2fc50513          	addi	a0,a0,764 # 80005928 <uart_tx_w>
    80003634:	00063783          	ld	a5,0(a2)
    80003638:	00053703          	ld	a4,0(a0)
    8000363c:	04f70263          	beq	a4,a5,80003680 <uartintr+0xa0>
    80003640:	100005b7          	lui	a1,0x10000
    80003644:	00003817          	auipc	a6,0x3
    80003648:	57c80813          	addi	a6,a6,1404 # 80006bc0 <uart_tx_buf>
    8000364c:	01c0006f          	j	80003668 <uartintr+0x88>
    80003650:	0006c703          	lbu	a4,0(a3)
    80003654:	00f63023          	sd	a5,0(a2)
    80003658:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000365c:	00063783          	ld	a5,0(a2)
    80003660:	00053703          	ld	a4,0(a0)
    80003664:	00f70e63          	beq	a4,a5,80003680 <uartintr+0xa0>
    80003668:	01f7f713          	andi	a4,a5,31
    8000366c:	00e806b3          	add	a3,a6,a4
    80003670:	0055c703          	lbu	a4,5(a1)
    80003674:	00178793          	addi	a5,a5,1
    80003678:	02077713          	andi	a4,a4,32
    8000367c:	fc071ae3          	bnez	a4,80003650 <uartintr+0x70>
    80003680:	01813083          	ld	ra,24(sp)
    80003684:	01013403          	ld	s0,16(sp)
    80003688:	00813483          	ld	s1,8(sp)
    8000368c:	02010113          	addi	sp,sp,32
    80003690:	00008067          	ret
    80003694:	00002617          	auipc	a2,0x2
    80003698:	28c60613          	addi	a2,a2,652 # 80005920 <uart_tx_r>
    8000369c:	00002517          	auipc	a0,0x2
    800036a0:	28c50513          	addi	a0,a0,652 # 80005928 <uart_tx_w>
    800036a4:	00063783          	ld	a5,0(a2)
    800036a8:	00053703          	ld	a4,0(a0)
    800036ac:	04f70263          	beq	a4,a5,800036f0 <uartintr+0x110>
    800036b0:	100005b7          	lui	a1,0x10000
    800036b4:	00003817          	auipc	a6,0x3
    800036b8:	50c80813          	addi	a6,a6,1292 # 80006bc0 <uart_tx_buf>
    800036bc:	01c0006f          	j	800036d8 <uartintr+0xf8>
    800036c0:	0006c703          	lbu	a4,0(a3)
    800036c4:	00f63023          	sd	a5,0(a2)
    800036c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036cc:	00063783          	ld	a5,0(a2)
    800036d0:	00053703          	ld	a4,0(a0)
    800036d4:	02f70063          	beq	a4,a5,800036f4 <uartintr+0x114>
    800036d8:	01f7f713          	andi	a4,a5,31
    800036dc:	00e806b3          	add	a3,a6,a4
    800036e0:	0055c703          	lbu	a4,5(a1)
    800036e4:	00178793          	addi	a5,a5,1
    800036e8:	02077713          	andi	a4,a4,32
    800036ec:	fc071ae3          	bnez	a4,800036c0 <uartintr+0xe0>
    800036f0:	00008067          	ret
    800036f4:	00008067          	ret

00000000800036f8 <kinit>:
    800036f8:	fc010113          	addi	sp,sp,-64
    800036fc:	02913423          	sd	s1,40(sp)
    80003700:	fffff7b7          	lui	a5,0xfffff
    80003704:	00004497          	auipc	s1,0x4
    80003708:	4db48493          	addi	s1,s1,1243 # 80007bdf <end+0xfff>
    8000370c:	02813823          	sd	s0,48(sp)
    80003710:	01313c23          	sd	s3,24(sp)
    80003714:	00f4f4b3          	and	s1,s1,a5
    80003718:	02113c23          	sd	ra,56(sp)
    8000371c:	03213023          	sd	s2,32(sp)
    80003720:	01413823          	sd	s4,16(sp)
    80003724:	01513423          	sd	s5,8(sp)
    80003728:	04010413          	addi	s0,sp,64
    8000372c:	000017b7          	lui	a5,0x1
    80003730:	01100993          	li	s3,17
    80003734:	00f487b3          	add	a5,s1,a5
    80003738:	01b99993          	slli	s3,s3,0x1b
    8000373c:	06f9e063          	bltu	s3,a5,8000379c <kinit+0xa4>
    80003740:	00003a97          	auipc	s5,0x3
    80003744:	4a0a8a93          	addi	s5,s5,1184 # 80006be0 <end>
    80003748:	0754ec63          	bltu	s1,s5,800037c0 <kinit+0xc8>
    8000374c:	0734fa63          	bgeu	s1,s3,800037c0 <kinit+0xc8>
    80003750:	00088a37          	lui	s4,0x88
    80003754:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003758:	00002917          	auipc	s2,0x2
    8000375c:	1d890913          	addi	s2,s2,472 # 80005930 <kmem>
    80003760:	00ca1a13          	slli	s4,s4,0xc
    80003764:	0140006f          	j	80003778 <kinit+0x80>
    80003768:	000017b7          	lui	a5,0x1
    8000376c:	00f484b3          	add	s1,s1,a5
    80003770:	0554e863          	bltu	s1,s5,800037c0 <kinit+0xc8>
    80003774:	0534f663          	bgeu	s1,s3,800037c0 <kinit+0xc8>
    80003778:	00001637          	lui	a2,0x1
    8000377c:	00100593          	li	a1,1
    80003780:	00048513          	mv	a0,s1
    80003784:	00000097          	auipc	ra,0x0
    80003788:	5e4080e7          	jalr	1508(ra) # 80003d68 <__memset>
    8000378c:	00093783          	ld	a5,0(s2)
    80003790:	00f4b023          	sd	a5,0(s1)
    80003794:	00993023          	sd	s1,0(s2)
    80003798:	fd4498e3          	bne	s1,s4,80003768 <kinit+0x70>
    8000379c:	03813083          	ld	ra,56(sp)
    800037a0:	03013403          	ld	s0,48(sp)
    800037a4:	02813483          	ld	s1,40(sp)
    800037a8:	02013903          	ld	s2,32(sp)
    800037ac:	01813983          	ld	s3,24(sp)
    800037b0:	01013a03          	ld	s4,16(sp)
    800037b4:	00813a83          	ld	s5,8(sp)
    800037b8:	04010113          	addi	sp,sp,64
    800037bc:	00008067          	ret
    800037c0:	00002517          	auipc	a0,0x2
    800037c4:	ac850513          	addi	a0,a0,-1336 # 80005288 <digits+0x18>
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	4b4080e7          	jalr	1204(ra) # 80002c7c <panic>

00000000800037d0 <freerange>:
    800037d0:	fc010113          	addi	sp,sp,-64
    800037d4:	000017b7          	lui	a5,0x1
    800037d8:	02913423          	sd	s1,40(sp)
    800037dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800037e0:	009504b3          	add	s1,a0,s1
    800037e4:	fffff537          	lui	a0,0xfffff
    800037e8:	02813823          	sd	s0,48(sp)
    800037ec:	02113c23          	sd	ra,56(sp)
    800037f0:	03213023          	sd	s2,32(sp)
    800037f4:	01313c23          	sd	s3,24(sp)
    800037f8:	01413823          	sd	s4,16(sp)
    800037fc:	01513423          	sd	s5,8(sp)
    80003800:	01613023          	sd	s6,0(sp)
    80003804:	04010413          	addi	s0,sp,64
    80003808:	00a4f4b3          	and	s1,s1,a0
    8000380c:	00f487b3          	add	a5,s1,a5
    80003810:	06f5e463          	bltu	a1,a5,80003878 <freerange+0xa8>
    80003814:	00003a97          	auipc	s5,0x3
    80003818:	3cca8a93          	addi	s5,s5,972 # 80006be0 <end>
    8000381c:	0954e263          	bltu	s1,s5,800038a0 <freerange+0xd0>
    80003820:	01100993          	li	s3,17
    80003824:	01b99993          	slli	s3,s3,0x1b
    80003828:	0734fc63          	bgeu	s1,s3,800038a0 <freerange+0xd0>
    8000382c:	00058a13          	mv	s4,a1
    80003830:	00002917          	auipc	s2,0x2
    80003834:	10090913          	addi	s2,s2,256 # 80005930 <kmem>
    80003838:	00002b37          	lui	s6,0x2
    8000383c:	0140006f          	j	80003850 <freerange+0x80>
    80003840:	000017b7          	lui	a5,0x1
    80003844:	00f484b3          	add	s1,s1,a5
    80003848:	0554ec63          	bltu	s1,s5,800038a0 <freerange+0xd0>
    8000384c:	0534fa63          	bgeu	s1,s3,800038a0 <freerange+0xd0>
    80003850:	00001637          	lui	a2,0x1
    80003854:	00100593          	li	a1,1
    80003858:	00048513          	mv	a0,s1
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	50c080e7          	jalr	1292(ra) # 80003d68 <__memset>
    80003864:	00093703          	ld	a4,0(s2)
    80003868:	016487b3          	add	a5,s1,s6
    8000386c:	00e4b023          	sd	a4,0(s1)
    80003870:	00993023          	sd	s1,0(s2)
    80003874:	fcfa76e3          	bgeu	s4,a5,80003840 <freerange+0x70>
    80003878:	03813083          	ld	ra,56(sp)
    8000387c:	03013403          	ld	s0,48(sp)
    80003880:	02813483          	ld	s1,40(sp)
    80003884:	02013903          	ld	s2,32(sp)
    80003888:	01813983          	ld	s3,24(sp)
    8000388c:	01013a03          	ld	s4,16(sp)
    80003890:	00813a83          	ld	s5,8(sp)
    80003894:	00013b03          	ld	s6,0(sp)
    80003898:	04010113          	addi	sp,sp,64
    8000389c:	00008067          	ret
    800038a0:	00002517          	auipc	a0,0x2
    800038a4:	9e850513          	addi	a0,a0,-1560 # 80005288 <digits+0x18>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	3d4080e7          	jalr	980(ra) # 80002c7c <panic>

00000000800038b0 <kfree>:
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	00913423          	sd	s1,8(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	03451793          	slli	a5,a0,0x34
    800038c8:	04079c63          	bnez	a5,80003920 <kfree+0x70>
    800038cc:	00003797          	auipc	a5,0x3
    800038d0:	31478793          	addi	a5,a5,788 # 80006be0 <end>
    800038d4:	00050493          	mv	s1,a0
    800038d8:	04f56463          	bltu	a0,a5,80003920 <kfree+0x70>
    800038dc:	01100793          	li	a5,17
    800038e0:	01b79793          	slli	a5,a5,0x1b
    800038e4:	02f57e63          	bgeu	a0,a5,80003920 <kfree+0x70>
    800038e8:	00001637          	lui	a2,0x1
    800038ec:	00100593          	li	a1,1
    800038f0:	00000097          	auipc	ra,0x0
    800038f4:	478080e7          	jalr	1144(ra) # 80003d68 <__memset>
    800038f8:	00002797          	auipc	a5,0x2
    800038fc:	03878793          	addi	a5,a5,56 # 80005930 <kmem>
    80003900:	0007b703          	ld	a4,0(a5)
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00e4b023          	sd	a4,0(s1)
    80003910:	0097b023          	sd	s1,0(a5)
    80003914:	00813483          	ld	s1,8(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    80003920:	00002517          	auipc	a0,0x2
    80003924:	96850513          	addi	a0,a0,-1688 # 80005288 <digits+0x18>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	354080e7          	jalr	852(ra) # 80002c7c <panic>

0000000080003930 <kalloc>:
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00813823          	sd	s0,16(sp)
    80003938:	00913423          	sd	s1,8(sp)
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	00002797          	auipc	a5,0x2
    80003948:	fec78793          	addi	a5,a5,-20 # 80005930 <kmem>
    8000394c:	0007b483          	ld	s1,0(a5)
    80003950:	02048063          	beqz	s1,80003970 <kalloc+0x40>
    80003954:	0004b703          	ld	a4,0(s1)
    80003958:	00001637          	lui	a2,0x1
    8000395c:	00500593          	li	a1,5
    80003960:	00048513          	mv	a0,s1
    80003964:	00e7b023          	sd	a4,0(a5)
    80003968:	00000097          	auipc	ra,0x0
    8000396c:	400080e7          	jalr	1024(ra) # 80003d68 <__memset>
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00048513          	mv	a0,s1
    8000397c:	00813483          	ld	s1,8(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret

0000000080003988 <initlock>:
    80003988:	ff010113          	addi	sp,sp,-16
    8000398c:	00813423          	sd	s0,8(sp)
    80003990:	01010413          	addi	s0,sp,16
    80003994:	00813403          	ld	s0,8(sp)
    80003998:	00b53423          	sd	a1,8(a0)
    8000399c:	00052023          	sw	zero,0(a0)
    800039a0:	00053823          	sd	zero,16(a0)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret

00000000800039ac <acquire>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	01213023          	sd	s2,0(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	00050493          	mv	s1,a0
    800039c8:	10002973          	csrr	s2,sstatus
    800039cc:	100027f3          	csrr	a5,sstatus
    800039d0:	ffd7f793          	andi	a5,a5,-3
    800039d4:	10079073          	csrw	sstatus,a5
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	8ec080e7          	jalr	-1812(ra) # 800022c4 <mycpu>
    800039e0:	07852783          	lw	a5,120(a0)
    800039e4:	06078e63          	beqz	a5,80003a60 <acquire+0xb4>
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	8dc080e7          	jalr	-1828(ra) # 800022c4 <mycpu>
    800039f0:	07852783          	lw	a5,120(a0)
    800039f4:	0004a703          	lw	a4,0(s1)
    800039f8:	0017879b          	addiw	a5,a5,1
    800039fc:	06f52c23          	sw	a5,120(a0)
    80003a00:	04071063          	bnez	a4,80003a40 <acquire+0x94>
    80003a04:	00100713          	li	a4,1
    80003a08:	00070793          	mv	a5,a4
    80003a0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a10:	0007879b          	sext.w	a5,a5
    80003a14:	fe079ae3          	bnez	a5,80003a08 <acquire+0x5c>
    80003a18:	0ff0000f          	fence
    80003a1c:	fffff097          	auipc	ra,0xfffff
    80003a20:	8a8080e7          	jalr	-1880(ra) # 800022c4 <mycpu>
    80003a24:	01813083          	ld	ra,24(sp)
    80003a28:	01013403          	ld	s0,16(sp)
    80003a2c:	00a4b823          	sd	a0,16(s1)
    80003a30:	00013903          	ld	s2,0(sp)
    80003a34:	00813483          	ld	s1,8(sp)
    80003a38:	02010113          	addi	sp,sp,32
    80003a3c:	00008067          	ret
    80003a40:	0104b903          	ld	s2,16(s1)
    80003a44:	fffff097          	auipc	ra,0xfffff
    80003a48:	880080e7          	jalr	-1920(ra) # 800022c4 <mycpu>
    80003a4c:	faa91ce3          	bne	s2,a0,80003a04 <acquire+0x58>
    80003a50:	00002517          	auipc	a0,0x2
    80003a54:	84050513          	addi	a0,a0,-1984 # 80005290 <digits+0x20>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	224080e7          	jalr	548(ra) # 80002c7c <panic>
    80003a60:	00195913          	srli	s2,s2,0x1
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	860080e7          	jalr	-1952(ra) # 800022c4 <mycpu>
    80003a6c:	00197913          	andi	s2,s2,1
    80003a70:	07252e23          	sw	s2,124(a0)
    80003a74:	f75ff06f          	j	800039e8 <acquire+0x3c>

0000000080003a78 <release>:
    80003a78:	fe010113          	addi	sp,sp,-32
    80003a7c:	00813823          	sd	s0,16(sp)
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00913423          	sd	s1,8(sp)
    80003a88:	01213023          	sd	s2,0(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	00052783          	lw	a5,0(a0)
    80003a94:	00079a63          	bnez	a5,80003aa8 <release+0x30>
    80003a98:	00002517          	auipc	a0,0x2
    80003a9c:	80050513          	addi	a0,a0,-2048 # 80005298 <digits+0x28>
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	1dc080e7          	jalr	476(ra) # 80002c7c <panic>
    80003aa8:	01053903          	ld	s2,16(a0)
    80003aac:	00050493          	mv	s1,a0
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	814080e7          	jalr	-2028(ra) # 800022c4 <mycpu>
    80003ab8:	fea910e3          	bne	s2,a0,80003a98 <release+0x20>
    80003abc:	0004b823          	sd	zero,16(s1)
    80003ac0:	0ff0000f          	fence
    80003ac4:	0f50000f          	fence	iorw,ow
    80003ac8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	7f8080e7          	jalr	2040(ra) # 800022c4 <mycpu>
    80003ad4:	100027f3          	csrr	a5,sstatus
    80003ad8:	0027f793          	andi	a5,a5,2
    80003adc:	04079a63          	bnez	a5,80003b30 <release+0xb8>
    80003ae0:	07852783          	lw	a5,120(a0)
    80003ae4:	02f05e63          	blez	a5,80003b20 <release+0xa8>
    80003ae8:	fff7871b          	addiw	a4,a5,-1
    80003aec:	06e52c23          	sw	a4,120(a0)
    80003af0:	00071c63          	bnez	a4,80003b08 <release+0x90>
    80003af4:	07c52783          	lw	a5,124(a0)
    80003af8:	00078863          	beqz	a5,80003b08 <release+0x90>
    80003afc:	100027f3          	csrr	a5,sstatus
    80003b00:	0027e793          	ori	a5,a5,2
    80003b04:	10079073          	csrw	sstatus,a5
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	00013903          	ld	s2,0(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret
    80003b20:	00001517          	auipc	a0,0x1
    80003b24:	79850513          	addi	a0,a0,1944 # 800052b8 <digits+0x48>
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	154080e7          	jalr	340(ra) # 80002c7c <panic>
    80003b30:	00001517          	auipc	a0,0x1
    80003b34:	77050513          	addi	a0,a0,1904 # 800052a0 <digits+0x30>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	144080e7          	jalr	324(ra) # 80002c7c <panic>

0000000080003b40 <holding>:
    80003b40:	00052783          	lw	a5,0(a0)
    80003b44:	00079663          	bnez	a5,80003b50 <holding+0x10>
    80003b48:	00000513          	li	a0,0
    80003b4c:	00008067          	ret
    80003b50:	fe010113          	addi	sp,sp,-32
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	00113c23          	sd	ra,24(sp)
    80003b60:	02010413          	addi	s0,sp,32
    80003b64:	01053483          	ld	s1,16(a0)
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	75c080e7          	jalr	1884(ra) # 800022c4 <mycpu>
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	40a48533          	sub	a0,s1,a0
    80003b7c:	00153513          	seqz	a0,a0
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret

0000000080003b8c <push_off>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	100024f3          	csrr	s1,sstatus
    80003ba4:	100027f3          	csrr	a5,sstatus
    80003ba8:	ffd7f793          	andi	a5,a5,-3
    80003bac:	10079073          	csrw	sstatus,a5
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	714080e7          	jalr	1812(ra) # 800022c4 <mycpu>
    80003bb8:	07852783          	lw	a5,120(a0)
    80003bbc:	02078663          	beqz	a5,80003be8 <push_off+0x5c>
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	704080e7          	jalr	1796(ra) # 800022c4 <mycpu>
    80003bc8:	07852783          	lw	a5,120(a0)
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	0017879b          	addiw	a5,a5,1
    80003bd8:	06f52c23          	sw	a5,120(a0)
    80003bdc:	00813483          	ld	s1,8(sp)
    80003be0:	02010113          	addi	sp,sp,32
    80003be4:	00008067          	ret
    80003be8:	0014d493          	srli	s1,s1,0x1
    80003bec:	ffffe097          	auipc	ra,0xffffe
    80003bf0:	6d8080e7          	jalr	1752(ra) # 800022c4 <mycpu>
    80003bf4:	0014f493          	andi	s1,s1,1
    80003bf8:	06952e23          	sw	s1,124(a0)
    80003bfc:	fc5ff06f          	j	80003bc0 <push_off+0x34>

0000000080003c00 <pop_off>:
    80003c00:	ff010113          	addi	sp,sp,-16
    80003c04:	00813023          	sd	s0,0(sp)
    80003c08:	00113423          	sd	ra,8(sp)
    80003c0c:	01010413          	addi	s0,sp,16
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	6b4080e7          	jalr	1716(ra) # 800022c4 <mycpu>
    80003c18:	100027f3          	csrr	a5,sstatus
    80003c1c:	0027f793          	andi	a5,a5,2
    80003c20:	04079663          	bnez	a5,80003c6c <pop_off+0x6c>
    80003c24:	07852783          	lw	a5,120(a0)
    80003c28:	02f05a63          	blez	a5,80003c5c <pop_off+0x5c>
    80003c2c:	fff7871b          	addiw	a4,a5,-1
    80003c30:	06e52c23          	sw	a4,120(a0)
    80003c34:	00071c63          	bnez	a4,80003c4c <pop_off+0x4c>
    80003c38:	07c52783          	lw	a5,124(a0)
    80003c3c:	00078863          	beqz	a5,80003c4c <pop_off+0x4c>
    80003c40:	100027f3          	csrr	a5,sstatus
    80003c44:	0027e793          	ori	a5,a5,2
    80003c48:	10079073          	csrw	sstatus,a5
    80003c4c:	00813083          	ld	ra,8(sp)
    80003c50:	00013403          	ld	s0,0(sp)
    80003c54:	01010113          	addi	sp,sp,16
    80003c58:	00008067          	ret
    80003c5c:	00001517          	auipc	a0,0x1
    80003c60:	65c50513          	addi	a0,a0,1628 # 800052b8 <digits+0x48>
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	018080e7          	jalr	24(ra) # 80002c7c <panic>
    80003c6c:	00001517          	auipc	a0,0x1
    80003c70:	63450513          	addi	a0,a0,1588 # 800052a0 <digits+0x30>
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	008080e7          	jalr	8(ra) # 80002c7c <panic>

0000000080003c7c <push_on>:
    80003c7c:	fe010113          	addi	sp,sp,-32
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00913423          	sd	s1,8(sp)
    80003c8c:	02010413          	addi	s0,sp,32
    80003c90:	100024f3          	csrr	s1,sstatus
    80003c94:	100027f3          	csrr	a5,sstatus
    80003c98:	0027e793          	ori	a5,a5,2
    80003c9c:	10079073          	csrw	sstatus,a5
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	624080e7          	jalr	1572(ra) # 800022c4 <mycpu>
    80003ca8:	07852783          	lw	a5,120(a0)
    80003cac:	02078663          	beqz	a5,80003cd8 <push_on+0x5c>
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	614080e7          	jalr	1556(ra) # 800022c4 <mycpu>
    80003cb8:	07852783          	lw	a5,120(a0)
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	0017879b          	addiw	a5,a5,1
    80003cc8:	06f52c23          	sw	a5,120(a0)
    80003ccc:	00813483          	ld	s1,8(sp)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00008067          	ret
    80003cd8:	0014d493          	srli	s1,s1,0x1
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	5e8080e7          	jalr	1512(ra) # 800022c4 <mycpu>
    80003ce4:	0014f493          	andi	s1,s1,1
    80003ce8:	06952e23          	sw	s1,124(a0)
    80003cec:	fc5ff06f          	j	80003cb0 <push_on+0x34>

0000000080003cf0 <pop_on>:
    80003cf0:	ff010113          	addi	sp,sp,-16
    80003cf4:	00813023          	sd	s0,0(sp)
    80003cf8:	00113423          	sd	ra,8(sp)
    80003cfc:	01010413          	addi	s0,sp,16
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	5c4080e7          	jalr	1476(ra) # 800022c4 <mycpu>
    80003d08:	100027f3          	csrr	a5,sstatus
    80003d0c:	0027f793          	andi	a5,a5,2
    80003d10:	04078463          	beqz	a5,80003d58 <pop_on+0x68>
    80003d14:	07852783          	lw	a5,120(a0)
    80003d18:	02f05863          	blez	a5,80003d48 <pop_on+0x58>
    80003d1c:	fff7879b          	addiw	a5,a5,-1
    80003d20:	06f52c23          	sw	a5,120(a0)
    80003d24:	07853783          	ld	a5,120(a0)
    80003d28:	00079863          	bnez	a5,80003d38 <pop_on+0x48>
    80003d2c:	100027f3          	csrr	a5,sstatus
    80003d30:	ffd7f793          	andi	a5,a5,-3
    80003d34:	10079073          	csrw	sstatus,a5
    80003d38:	00813083          	ld	ra,8(sp)
    80003d3c:	00013403          	ld	s0,0(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret
    80003d48:	00001517          	auipc	a0,0x1
    80003d4c:	59850513          	addi	a0,a0,1432 # 800052e0 <digits+0x70>
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	f2c080e7          	jalr	-212(ra) # 80002c7c <panic>
    80003d58:	00001517          	auipc	a0,0x1
    80003d5c:	56850513          	addi	a0,a0,1384 # 800052c0 <digits+0x50>
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	f1c080e7          	jalr	-228(ra) # 80002c7c <panic>

0000000080003d68 <__memset>:
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    80003d74:	1a060e63          	beqz	a2,80003f30 <__memset+0x1c8>
    80003d78:	40a007b3          	neg	a5,a0
    80003d7c:	0077f793          	andi	a5,a5,7
    80003d80:	00778693          	addi	a3,a5,7
    80003d84:	00b00813          	li	a6,11
    80003d88:	0ff5f593          	andi	a1,a1,255
    80003d8c:	fff6071b          	addiw	a4,a2,-1
    80003d90:	1b06e663          	bltu	a3,a6,80003f3c <__memset+0x1d4>
    80003d94:	1cd76463          	bltu	a4,a3,80003f5c <__memset+0x1f4>
    80003d98:	1a078e63          	beqz	a5,80003f54 <__memset+0x1ec>
    80003d9c:	00b50023          	sb	a1,0(a0)
    80003da0:	00100713          	li	a4,1
    80003da4:	1ae78463          	beq	a5,a4,80003f4c <__memset+0x1e4>
    80003da8:	00b500a3          	sb	a1,1(a0)
    80003dac:	00200713          	li	a4,2
    80003db0:	1ae78a63          	beq	a5,a4,80003f64 <__memset+0x1fc>
    80003db4:	00b50123          	sb	a1,2(a0)
    80003db8:	00300713          	li	a4,3
    80003dbc:	18e78463          	beq	a5,a4,80003f44 <__memset+0x1dc>
    80003dc0:	00b501a3          	sb	a1,3(a0)
    80003dc4:	00400713          	li	a4,4
    80003dc8:	1ae78263          	beq	a5,a4,80003f6c <__memset+0x204>
    80003dcc:	00b50223          	sb	a1,4(a0)
    80003dd0:	00500713          	li	a4,5
    80003dd4:	1ae78063          	beq	a5,a4,80003f74 <__memset+0x20c>
    80003dd8:	00b502a3          	sb	a1,5(a0)
    80003ddc:	00700713          	li	a4,7
    80003de0:	18e79e63          	bne	a5,a4,80003f7c <__memset+0x214>
    80003de4:	00b50323          	sb	a1,6(a0)
    80003de8:	00700e93          	li	t4,7
    80003dec:	00859713          	slli	a4,a1,0x8
    80003df0:	00e5e733          	or	a4,a1,a4
    80003df4:	01059e13          	slli	t3,a1,0x10
    80003df8:	01c76e33          	or	t3,a4,t3
    80003dfc:	01859313          	slli	t1,a1,0x18
    80003e00:	006e6333          	or	t1,t3,t1
    80003e04:	02059893          	slli	a7,a1,0x20
    80003e08:	40f60e3b          	subw	t3,a2,a5
    80003e0c:	011368b3          	or	a7,t1,a7
    80003e10:	02859813          	slli	a6,a1,0x28
    80003e14:	0108e833          	or	a6,a7,a6
    80003e18:	03059693          	slli	a3,a1,0x30
    80003e1c:	003e589b          	srliw	a7,t3,0x3
    80003e20:	00d866b3          	or	a3,a6,a3
    80003e24:	03859713          	slli	a4,a1,0x38
    80003e28:	00389813          	slli	a6,a7,0x3
    80003e2c:	00f507b3          	add	a5,a0,a5
    80003e30:	00e6e733          	or	a4,a3,a4
    80003e34:	000e089b          	sext.w	a7,t3
    80003e38:	00f806b3          	add	a3,a6,a5
    80003e3c:	00e7b023          	sd	a4,0(a5)
    80003e40:	00878793          	addi	a5,a5,8
    80003e44:	fed79ce3          	bne	a5,a3,80003e3c <__memset+0xd4>
    80003e48:	ff8e7793          	andi	a5,t3,-8
    80003e4c:	0007871b          	sext.w	a4,a5
    80003e50:	01d787bb          	addw	a5,a5,t4
    80003e54:	0ce88e63          	beq	a7,a4,80003f30 <__memset+0x1c8>
    80003e58:	00f50733          	add	a4,a0,a5
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	0017871b          	addiw	a4,a5,1
    80003e64:	0cc77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0027871b          	addiw	a4,a5,2
    80003e74:	0ac77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0037871b          	addiw	a4,a5,3
    80003e84:	0ac77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0047871b          	addiw	a4,a5,4
    80003e94:	08c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0057871b          	addiw	a4,a5,5
    80003ea4:	08c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0067871b          	addiw	a4,a5,6
    80003eb4:	06c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0077871b          	addiw	a4,a5,7
    80003ec4:	06c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0087871b          	addiw	a4,a5,8
    80003ed4:	04c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0097871b          	addiw	a4,a5,9
    80003ee4:	04c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	00a7871b          	addiw	a4,a5,10
    80003ef4:	02c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	00b7871b          	addiw	a4,a5,11
    80003f04:	02c77663          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	00c7871b          	addiw	a4,a5,12
    80003f14:	00c77e63          	bgeu	a4,a2,80003f30 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	00d7879b          	addiw	a5,a5,13
    80003f24:	00c7f663          	bgeu	a5,a2,80003f30 <__memset+0x1c8>
    80003f28:	00f507b3          	add	a5,a0,a5
    80003f2c:	00b78023          	sb	a1,0(a5)
    80003f30:	00813403          	ld	s0,8(sp)
    80003f34:	01010113          	addi	sp,sp,16
    80003f38:	00008067          	ret
    80003f3c:	00b00693          	li	a3,11
    80003f40:	e55ff06f          	j	80003d94 <__memset+0x2c>
    80003f44:	00300e93          	li	t4,3
    80003f48:	ea5ff06f          	j	80003dec <__memset+0x84>
    80003f4c:	00100e93          	li	t4,1
    80003f50:	e9dff06f          	j	80003dec <__memset+0x84>
    80003f54:	00000e93          	li	t4,0
    80003f58:	e95ff06f          	j	80003dec <__memset+0x84>
    80003f5c:	00000793          	li	a5,0
    80003f60:	ef9ff06f          	j	80003e58 <__memset+0xf0>
    80003f64:	00200e93          	li	t4,2
    80003f68:	e85ff06f          	j	80003dec <__memset+0x84>
    80003f6c:	00400e93          	li	t4,4
    80003f70:	e7dff06f          	j	80003dec <__memset+0x84>
    80003f74:	00500e93          	li	t4,5
    80003f78:	e75ff06f          	j	80003dec <__memset+0x84>
    80003f7c:	00600e93          	li	t4,6
    80003f80:	e6dff06f          	j	80003dec <__memset+0x84>

0000000080003f84 <__memmove>:
    80003f84:	ff010113          	addi	sp,sp,-16
    80003f88:	00813423          	sd	s0,8(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    80003f90:	0e060863          	beqz	a2,80004080 <__memmove+0xfc>
    80003f94:	fff6069b          	addiw	a3,a2,-1
    80003f98:	0006881b          	sext.w	a6,a3
    80003f9c:	0ea5e863          	bltu	a1,a0,8000408c <__memmove+0x108>
    80003fa0:	00758713          	addi	a4,a1,7
    80003fa4:	00a5e7b3          	or	a5,a1,a0
    80003fa8:	40a70733          	sub	a4,a4,a0
    80003fac:	0077f793          	andi	a5,a5,7
    80003fb0:	00f73713          	sltiu	a4,a4,15
    80003fb4:	00174713          	xori	a4,a4,1
    80003fb8:	0017b793          	seqz	a5,a5
    80003fbc:	00e7f7b3          	and	a5,a5,a4
    80003fc0:	10078863          	beqz	a5,800040d0 <__memmove+0x14c>
    80003fc4:	00900793          	li	a5,9
    80003fc8:	1107f463          	bgeu	a5,a6,800040d0 <__memmove+0x14c>
    80003fcc:	0036581b          	srliw	a6,a2,0x3
    80003fd0:	fff8081b          	addiw	a6,a6,-1
    80003fd4:	02081813          	slli	a6,a6,0x20
    80003fd8:	01d85893          	srli	a7,a6,0x1d
    80003fdc:	00858813          	addi	a6,a1,8
    80003fe0:	00058793          	mv	a5,a1
    80003fe4:	00050713          	mv	a4,a0
    80003fe8:	01088833          	add	a6,a7,a6
    80003fec:	0007b883          	ld	a7,0(a5)
    80003ff0:	00878793          	addi	a5,a5,8
    80003ff4:	00870713          	addi	a4,a4,8
    80003ff8:	ff173c23          	sd	a7,-8(a4)
    80003ffc:	ff0798e3          	bne	a5,a6,80003fec <__memmove+0x68>
    80004000:	ff867713          	andi	a4,a2,-8
    80004004:	02071793          	slli	a5,a4,0x20
    80004008:	0207d793          	srli	a5,a5,0x20
    8000400c:	00f585b3          	add	a1,a1,a5
    80004010:	40e686bb          	subw	a3,a3,a4
    80004014:	00f507b3          	add	a5,a0,a5
    80004018:	06e60463          	beq	a2,a4,80004080 <__memmove+0xfc>
    8000401c:	0005c703          	lbu	a4,0(a1)
    80004020:	00e78023          	sb	a4,0(a5)
    80004024:	04068e63          	beqz	a3,80004080 <__memmove+0xfc>
    80004028:	0015c603          	lbu	a2,1(a1)
    8000402c:	00100713          	li	a4,1
    80004030:	00c780a3          	sb	a2,1(a5)
    80004034:	04e68663          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004038:	0025c603          	lbu	a2,2(a1)
    8000403c:	00200713          	li	a4,2
    80004040:	00c78123          	sb	a2,2(a5)
    80004044:	02e68e63          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004048:	0035c603          	lbu	a2,3(a1)
    8000404c:	00300713          	li	a4,3
    80004050:	00c781a3          	sb	a2,3(a5)
    80004054:	02e68663          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004058:	0045c603          	lbu	a2,4(a1)
    8000405c:	00400713          	li	a4,4
    80004060:	00c78223          	sb	a2,4(a5)
    80004064:	00e68e63          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004068:	0055c603          	lbu	a2,5(a1)
    8000406c:	00500713          	li	a4,5
    80004070:	00c782a3          	sb	a2,5(a5)
    80004074:	00e68663          	beq	a3,a4,80004080 <__memmove+0xfc>
    80004078:	0065c703          	lbu	a4,6(a1)
    8000407c:	00e78323          	sb	a4,6(a5)
    80004080:	00813403          	ld	s0,8(sp)
    80004084:	01010113          	addi	sp,sp,16
    80004088:	00008067          	ret
    8000408c:	02061713          	slli	a4,a2,0x20
    80004090:	02075713          	srli	a4,a4,0x20
    80004094:	00e587b3          	add	a5,a1,a4
    80004098:	f0f574e3          	bgeu	a0,a5,80003fa0 <__memmove+0x1c>
    8000409c:	02069613          	slli	a2,a3,0x20
    800040a0:	02065613          	srli	a2,a2,0x20
    800040a4:	fff64613          	not	a2,a2
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00c78633          	add	a2,a5,a2
    800040b0:	fff7c683          	lbu	a3,-1(a5)
    800040b4:	fff78793          	addi	a5,a5,-1
    800040b8:	fff70713          	addi	a4,a4,-1
    800040bc:	00d70023          	sb	a3,0(a4)
    800040c0:	fec798e3          	bne	a5,a2,800040b0 <__memmove+0x12c>
    800040c4:	00813403          	ld	s0,8(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret
    800040d0:	02069713          	slli	a4,a3,0x20
    800040d4:	02075713          	srli	a4,a4,0x20
    800040d8:	00170713          	addi	a4,a4,1
    800040dc:	00e50733          	add	a4,a0,a4
    800040e0:	00050793          	mv	a5,a0
    800040e4:	0005c683          	lbu	a3,0(a1)
    800040e8:	00178793          	addi	a5,a5,1
    800040ec:	00158593          	addi	a1,a1,1
    800040f0:	fed78fa3          	sb	a3,-1(a5)
    800040f4:	fee798e3          	bne	a5,a4,800040e4 <__memmove+0x160>
    800040f8:	f89ff06f          	j	80004080 <__memmove+0xfc>

00000000800040fc <__putc>:
    800040fc:	fe010113          	addi	sp,sp,-32
    80004100:	00813823          	sd	s0,16(sp)
    80004104:	00113c23          	sd	ra,24(sp)
    80004108:	02010413          	addi	s0,sp,32
    8000410c:	00050793          	mv	a5,a0
    80004110:	fef40593          	addi	a1,s0,-17
    80004114:	00100613          	li	a2,1
    80004118:	00000513          	li	a0,0
    8000411c:	fef407a3          	sb	a5,-17(s0)
    80004120:	fffff097          	auipc	ra,0xfffff
    80004124:	b3c080e7          	jalr	-1220(ra) # 80002c5c <console_write>
    80004128:	01813083          	ld	ra,24(sp)
    8000412c:	01013403          	ld	s0,16(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret

0000000080004138 <__getc>:
    80004138:	fe010113          	addi	sp,sp,-32
    8000413c:	00813823          	sd	s0,16(sp)
    80004140:	00113c23          	sd	ra,24(sp)
    80004144:	02010413          	addi	s0,sp,32
    80004148:	fe840593          	addi	a1,s0,-24
    8000414c:	00100613          	li	a2,1
    80004150:	00000513          	li	a0,0
    80004154:	fffff097          	auipc	ra,0xfffff
    80004158:	ae8080e7          	jalr	-1304(ra) # 80002c3c <console_read>
    8000415c:	fe844503          	lbu	a0,-24(s0)
    80004160:	01813083          	ld	ra,24(sp)
    80004164:	01013403          	ld	s0,16(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret

0000000080004170 <console_handler>:
    80004170:	fe010113          	addi	sp,sp,-32
    80004174:	00813823          	sd	s0,16(sp)
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	00913423          	sd	s1,8(sp)
    80004180:	02010413          	addi	s0,sp,32
    80004184:	14202773          	csrr	a4,scause
    80004188:	100027f3          	csrr	a5,sstatus
    8000418c:	0027f793          	andi	a5,a5,2
    80004190:	06079e63          	bnez	a5,8000420c <console_handler+0x9c>
    80004194:	00074c63          	bltz	a4,800041ac <console_handler+0x3c>
    80004198:	01813083          	ld	ra,24(sp)
    8000419c:	01013403          	ld	s0,16(sp)
    800041a0:	00813483          	ld	s1,8(sp)
    800041a4:	02010113          	addi	sp,sp,32
    800041a8:	00008067          	ret
    800041ac:	0ff77713          	andi	a4,a4,255
    800041b0:	00900793          	li	a5,9
    800041b4:	fef712e3          	bne	a4,a5,80004198 <console_handler+0x28>
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	6dc080e7          	jalr	1756(ra) # 80002894 <plic_claim>
    800041c0:	00a00793          	li	a5,10
    800041c4:	00050493          	mv	s1,a0
    800041c8:	02f50c63          	beq	a0,a5,80004200 <console_handler+0x90>
    800041cc:	fc0506e3          	beqz	a0,80004198 <console_handler+0x28>
    800041d0:	00050593          	mv	a1,a0
    800041d4:	00001517          	auipc	a0,0x1
    800041d8:	01450513          	addi	a0,a0,20 # 800051e8 <_ZZ12printIntegermE6digits+0xe0>
    800041dc:	fffff097          	auipc	ra,0xfffff
    800041e0:	afc080e7          	jalr	-1284(ra) # 80002cd8 <__printf>
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	01813083          	ld	ra,24(sp)
    800041ec:	00048513          	mv	a0,s1
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	02010113          	addi	sp,sp,32
    800041f8:	ffffe317          	auipc	t1,0xffffe
    800041fc:	6d430067          	jr	1748(t1) # 800028cc <plic_complete>
    80004200:	fffff097          	auipc	ra,0xfffff
    80004204:	3e0080e7          	jalr	992(ra) # 800035e0 <uartintr>
    80004208:	fddff06f          	j	800041e4 <console_handler+0x74>
    8000420c:	00001517          	auipc	a0,0x1
    80004210:	0dc50513          	addi	a0,a0,220 # 800052e8 <digits+0x78>
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	a68080e7          	jalr	-1432(ra) # 80002c7c <panic>
	...
