
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	86813103          	ld	sp,-1944(sp) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	719010ef          	jal	ra,80001f34 <start>

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

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	0a5000ef          	jal	ra,80001928 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00113c23          	sd	ra,24(sp)
    8000112c:	00813823          	sd	s0,16(sp)
    80001130:	00913423          	sd	s1,8(sp)
    80001134:	01213023          	sd	s2,0(sp)
    80001138:	02010413          	addi	s0,sp,32
    8000113c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001140:	00100793          	li	a5,1
    80001144:	02a7f863          	bgeu	a5,a0,80001174 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001148:	00a00793          	li	a5,10
    8000114c:	02f577b3          	remu	a5,a0,a5
    80001150:	02078e63          	beqz	a5,8000118c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001154:	fff48513          	addi	a0,s1,-1
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	fcc080e7          	jalr	-52(ra) # 80001124 <_ZL9fibonaccim>
    80001160:	00050913          	mv	s2,a0
    80001164:	ffe48513          	addi	a0,s1,-2
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	fbc080e7          	jalr	-68(ra) # 80001124 <_ZL9fibonaccim>
    80001170:	00a90533          	add	a0,s2,a0
}
    80001174:	01813083          	ld	ra,24(sp)
    80001178:	01013403          	ld	s0,16(sp)
    8000117c:	00813483          	ld	s1,8(sp)
    80001180:	00013903          	ld	s2,0(sp)
    80001184:	02010113          	addi	sp,sp,32
    80001188:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000118c:	00000097          	auipc	ra,0x0
    80001190:	600080e7          	jalr	1536(ra) # 8000178c <_ZN3TCB5yieldEv>
    80001194:	fc1ff06f          	j	80001154 <_ZL9fibonaccim+0x30>

0000000080001198 <_Z11workerBodyAv>:
{
    80001198:	fe010113          	addi	sp,sp,-32
    8000119c:	00113c23          	sd	ra,24(sp)
    800011a0:	00813823          	sd	s0,16(sp)
    800011a4:	00913423          	sd	s1,8(sp)
    800011a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800011ac:	00000493          	li	s1,0
    800011b0:	0300006f          	j	800011e0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800011b4:	00168693          	addi	a3,a3,1
    800011b8:	000027b7          	lui	a5,0x2
    800011bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800011c0:	00d7ee63          	bltu	a5,a3,800011dc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800011c4:	00000713          	li	a4,0
    800011c8:	000077b7          	lui	a5,0x7
    800011cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800011d0:	fee7e2e3          	bltu	a5,a4,800011b4 <_Z11workerBodyAv+0x1c>
    800011d4:	00170713          	addi	a4,a4,1
    800011d8:	ff1ff06f          	j	800011c8 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800011dc:	00148493          	addi	s1,s1,1
    800011e0:	00900793          	li	a5,9
    800011e4:	0297ec63          	bltu	a5,s1,8000121c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800011e8:	00004517          	auipc	a0,0x4
    800011ec:	e3850513          	addi	a0,a0,-456 # 80005020 <CONSOLE_STATUS+0x10>
    800011f0:	00001097          	auipc	ra,0x1
    800011f4:	c18080e7          	jalr	-1000(ra) # 80001e08 <_Z11printStringPKc>
        printInteger(i);
    800011f8:	00048513          	mv	a0,s1
    800011fc:	00001097          	auipc	ra,0x1
    80001200:	c7c080e7          	jalr	-900(ra) # 80001e78 <_Z12printIntegerm>
        printString("\n");
    80001204:	00004517          	auipc	a0,0x4
    80001208:	eec50513          	addi	a0,a0,-276 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	bfc080e7          	jalr	-1028(ra) # 80001e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001214:	00000693          	li	a3,0
    80001218:	fa1ff06f          	j	800011b8 <_Z11workerBodyAv+0x20>
}
    8000121c:	01813083          	ld	ra,24(sp)
    80001220:	01013403          	ld	s0,16(sp)
    80001224:	00813483          	ld	s1,8(sp)
    80001228:	02010113          	addi	sp,sp,32
    8000122c:	00008067          	ret

0000000080001230 <_Z11workerBodyBv>:
{
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00113c23          	sd	ra,24(sp)
    80001238:	00813823          	sd	s0,16(sp)
    8000123c:	00913423          	sd	s1,8(sp)
    80001240:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001244:	00000493          	li	s1,0
    80001248:	0300006f          	j	80001278 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000124c:	00168693          	addi	a3,a3,1
    80001250:	000027b7          	lui	a5,0x2
    80001254:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001258:	00d7ee63          	bltu	a5,a3,80001274 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000125c:	00000713          	li	a4,0
    80001260:	000077b7          	lui	a5,0x7
    80001264:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001268:	fee7e2e3          	bltu	a5,a4,8000124c <_Z11workerBodyBv+0x1c>
    8000126c:	00170713          	addi	a4,a4,1
    80001270:	ff1ff06f          	j	80001260 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001274:	00148493          	addi	s1,s1,1
    80001278:	00f00793          	li	a5,15
    8000127c:	0297ec63          	bltu	a5,s1,800012b4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001280:	00004517          	auipc	a0,0x4
    80001284:	da850513          	addi	a0,a0,-600 # 80005028 <CONSOLE_STATUS+0x18>
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	b80080e7          	jalr	-1152(ra) # 80001e08 <_Z11printStringPKc>
        printInteger(i);
    80001290:	00048513          	mv	a0,s1
    80001294:	00001097          	auipc	ra,0x1
    80001298:	be4080e7          	jalr	-1052(ra) # 80001e78 <_Z12printIntegerm>
        printString("\n");
    8000129c:	00004517          	auipc	a0,0x4
    800012a0:	e5450513          	addi	a0,a0,-428 # 800050f0 <CONSOLE_STATUS+0xe0>
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	b64080e7          	jalr	-1180(ra) # 80001e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012ac:	00000693          	li	a3,0
    800012b0:	fa1ff06f          	j	80001250 <_Z11workerBodyBv+0x20>
}
    800012b4:	01813083          	ld	ra,24(sp)
    800012b8:	01013403          	ld	s0,16(sp)
    800012bc:	00813483          	ld	s1,8(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	01213023          	sd	s2,0(sp)
    800012dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800012e0:	00000493          	li	s1,0
    800012e4:	0380006f          	j	8000131c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800012e8:	00004517          	auipc	a0,0x4
    800012ec:	d4850513          	addi	a0,a0,-696 # 80005030 <CONSOLE_STATUS+0x20>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	b18080e7          	jalr	-1256(ra) # 80001e08 <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	b7c080e7          	jalr	-1156(ra) # 80001e78 <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	dec50513          	addi	a0,a0,-532 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	afc080e7          	jalr	-1284(ra) # 80001e08 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001314:	0014849b          	addiw	s1,s1,1
    80001318:	0ff4f493          	andi	s1,s1,255
    8000131c:	00200793          	li	a5,2
    80001320:	fc97f4e3          	bgeu	a5,s1,800012e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001324:	00004517          	auipc	a0,0x4
    80001328:	d1450513          	addi	a0,a0,-748 # 80005038 <CONSOLE_STATUS+0x28>
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	adc080e7          	jalr	-1316(ra) # 80001e08 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001334:	00700313          	li	t1,7
    TCB::yield();
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	454080e7          	jalr	1108(ra) # 8000178c <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001340:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001344:	00004517          	auipc	a0,0x4
    80001348:	d0450513          	addi	a0,a0,-764 # 80005048 <CONSOLE_STATUS+0x38>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	abc080e7          	jalr	-1348(ra) # 80001e08 <_Z11printStringPKc>
    printInteger(t1);
    80001354:	00090513          	mv	a0,s2
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	b20080e7          	jalr	-1248(ra) # 80001e78 <_Z12printIntegerm>
    printString("\n");
    80001360:	00004517          	auipc	a0,0x4
    80001364:	d9050513          	addi	a0,a0,-624 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	aa0080e7          	jalr	-1376(ra) # 80001e08 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001370:	00c00513          	li	a0,12
    80001374:	00000097          	auipc	ra,0x0
    80001378:	db0080e7          	jalr	-592(ra) # 80001124 <_ZL9fibonaccim>
    8000137c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	cd050513          	addi	a0,a0,-816 # 80005050 <CONSOLE_STATUS+0x40>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	a80080e7          	jalr	-1408(ra) # 80001e08 <_Z11printStringPKc>
    printInteger(result);
    80001390:	00090513          	mv	a0,s2
    80001394:	00001097          	auipc	ra,0x1
    80001398:	ae4080e7          	jalr	-1308(ra) # 80001e78 <_Z12printIntegerm>
    printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	d5450513          	addi	a0,a0,-684 # 800050f0 <CONSOLE_STATUS+0xe0>
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	a64080e7          	jalr	-1436(ra) # 80001e08 <_Z11printStringPKc>
    800013ac:	0380006f          	j	800013e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800013b0:	00004517          	auipc	a0,0x4
    800013b4:	c8050513          	addi	a0,a0,-896 # 80005030 <CONSOLE_STATUS+0x20>
    800013b8:	00001097          	auipc	ra,0x1
    800013bc:	a50080e7          	jalr	-1456(ra) # 80001e08 <_Z11printStringPKc>
        printInteger(i);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00001097          	auipc	ra,0x1
    800013c8:	ab4080e7          	jalr	-1356(ra) # 80001e78 <_Z12printIntegerm>
        printString("\n");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	d2450513          	addi	a0,a0,-732 # 800050f0 <CONSOLE_STATUS+0xe0>
    800013d4:	00001097          	auipc	ra,0x1
    800013d8:	a34080e7          	jalr	-1484(ra) # 80001e08 <_Z11printStringPKc>
    for (; i < 6; i++)
    800013dc:	0014849b          	addiw	s1,s1,1
    800013e0:	0ff4f493          	andi	s1,s1,255
    800013e4:	00500793          	li	a5,5
    800013e8:	fc97f4e3          	bgeu	a5,s1,800013b0 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	00013903          	ld	s2,0(sp)
    800013fc:	02010113          	addi	sp,sp,32
    80001400:	00008067          	ret

0000000080001404 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001404:	fe010113          	addi	sp,sp,-32
    80001408:	00113c23          	sd	ra,24(sp)
    8000140c:	00813823          	sd	s0,16(sp)
    80001410:	00913423          	sd	s1,8(sp)
    80001414:	01213023          	sd	s2,0(sp)
    80001418:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000141c:	00a00493          	li	s1,10
    80001420:	0380006f          	j	80001458 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c3c50513          	addi	a0,a0,-964 # 80005060 <CONSOLE_STATUS+0x50>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	9dc080e7          	jalr	-1572(ra) # 80001e08 <_Z11printStringPKc>
        printInteger(i);
    80001434:	00048513          	mv	a0,s1
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	a40080e7          	jalr	-1472(ra) # 80001e78 <_Z12printIntegerm>
        printString("\n");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	cb050513          	addi	a0,a0,-848 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	9c0080e7          	jalr	-1600(ra) # 80001e08 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001450:	0014849b          	addiw	s1,s1,1
    80001454:	0ff4f493          	andi	s1,s1,255
    80001458:	00c00793          	li	a5,12
    8000145c:	fc97f4e3          	bgeu	a5,s1,80001424 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	c0850513          	addi	a0,a0,-1016 # 80005068 <CONSOLE_STATUS+0x58>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	9a0080e7          	jalr	-1632(ra) # 80001e08 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001470:	00500313          	li	t1,5
    TCB::yield();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	318080e7          	jalr	792(ra) # 8000178c <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000147c:	01000513          	li	a0,16
    80001480:	00000097          	auipc	ra,0x0
    80001484:	ca4080e7          	jalr	-860(ra) # 80001124 <_ZL9fibonaccim>
    80001488:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bec50513          	addi	a0,a0,-1044 # 80005078 <CONSOLE_STATUS+0x68>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	974080e7          	jalr	-1676(ra) # 80001e08 <_Z11printStringPKc>
    printInteger(result);
    8000149c:	00090513          	mv	a0,s2
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	9d8080e7          	jalr	-1576(ra) # 80001e78 <_Z12printIntegerm>
    printString("\n");
    800014a8:	00004517          	auipc	a0,0x4
    800014ac:	c4850513          	addi	a0,a0,-952 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	958080e7          	jalr	-1704(ra) # 80001e08 <_Z11printStringPKc>
    800014b8:	0380006f          	j	800014f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	ba450513          	addi	a0,a0,-1116 # 80005060 <CONSOLE_STATUS+0x50>
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	944080e7          	jalr	-1724(ra) # 80001e08 <_Z11printStringPKc>
        printInteger(i);
    800014cc:	00048513          	mv	a0,s1
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	9a8080e7          	jalr	-1624(ra) # 80001e78 <_Z12printIntegerm>
        printString("\n");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	c1850513          	addi	a0,a0,-1000 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	928080e7          	jalr	-1752(ra) # 80001e08 <_Z11printStringPKc>
    for (; i < 16; i++)
    800014e8:	0014849b          	addiw	s1,s1,1
    800014ec:	0ff4f493          	andi	s1,s1,255
    800014f0:	00f00793          	li	a5,15
    800014f4:	fc97f4e3          	bgeu	a5,s1,800014bc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800014f8:	01813083          	ld	ra,24(sp)
    800014fc:	01013403          	ld	s0,16(sp)
    80001500:	00813483          	ld	s1,8(sp)
    80001504:	00013903          	ld	s2,0(sp)
    80001508:	02010113          	addi	sp,sp,32
    8000150c:	00008067          	ret

0000000080001510 <_Z8userMainv>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

void userMain()
{
    80001510:	fb010113          	addi	sp,sp,-80
    80001514:	04113423          	sd	ra,72(sp)
    80001518:	04813023          	sd	s0,64(sp)
    8000151c:	02913c23          	sd	s1,56(sp)
    80001520:	03213823          	sd	s2,48(sp)
    80001524:	05010413          	addi	s0,sp,80
    __putc('1');
    80001528:	03100513          	li	a0,49
    8000152c:	00003097          	auipc	ra,0x3
    80001530:	ad0080e7          	jalr	-1328(ra) # 80003ffc <__putc>

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001534:	00000513          	li	a0,0
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	18c080e7          	jalr	396(ra) # 800016c4 <_ZN3TCB12createThreadEPFvvE>
    80001540:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001544:	00004797          	auipc	a5,0x4
    80001548:	32c7b783          	ld	a5,812(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000154c:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001550:	00004517          	auipc	a0,0x4
    80001554:	31053503          	ld	a0,784(a0) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	16c080e7          	jalr	364(ra) # 800016c4 <_ZN3TCB12createThreadEPFvvE>
    80001560:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001564:	00004517          	auipc	a0,0x4
    80001568:	b2450513          	addi	a0,a0,-1244 # 80005088 <CONSOLE_STATUS+0x78>
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	89c080e7          	jalr	-1892(ra) # 80001e08 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001574:	00004517          	auipc	a0,0x4
    80001578:	2dc53503          	ld	a0,732(a0) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	148080e7          	jalr	328(ra) # 800016c4 <_ZN3TCB12createThreadEPFvvE>
    80001584:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001588:	00004517          	auipc	a0,0x4
    8000158c:	b1850513          	addi	a0,a0,-1256 # 800050a0 <CONSOLE_STATUS+0x90>
    80001590:	00001097          	auipc	ra,0x1
    80001594:	878080e7          	jalr	-1928(ra) # 80001e08 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    80001598:	00004517          	auipc	a0,0x4
    8000159c:	2e853503          	ld	a0,744(a0) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x48>
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	124080e7          	jalr	292(ra) # 800016c4 <_ZN3TCB12createThreadEPFvvE>
    800015a8:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800015ac:	00004517          	auipc	a0,0x4
    800015b0:	b0c50513          	addi	a0,a0,-1268 # 800050b8 <CONSOLE_STATUS+0xa8>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	854080e7          	jalr	-1964(ra) # 80001e08 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	2cc53503          	ld	a0,716(a0) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x50>
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	100080e7          	jalr	256(ra) # 800016c4 <_ZN3TCB12createThreadEPFvvE>
    800015cc:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800015d0:	00004517          	auipc	a0,0x4
    800015d4:	b0050513          	addi	a0,a0,-1280 # 800050d0 <CONSOLE_STATUS+0xc0>
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	830080e7          	jalr	-2000(ra) # 80001e08 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015e0:	00004797          	auipc	a5,0x4
    800015e4:	2687b783          	ld	a5,616(a5) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015e8:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800015ec:	00200793          	li	a5,2
    800015f0:	1007a073          	csrs	sstatus,a5
}
    800015f4:	00c0006f          	j	80001600 <_Z8userMainv+0xf0>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	194080e7          	jalr	404(ra) # 8000178c <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001600:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001604:	0287c783          	lbu	a5,40(a5)
    80001608:	fe0788e3          	beqz	a5,800015f8 <_Z8userMainv+0xe8>
             threads[2]->isFinished() &&
    8000160c:	fc843783          	ld	a5,-56(s0)
    80001610:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001614:	fe0782e3          	beqz	a5,800015f8 <_Z8userMainv+0xe8>
             threads[3]->isFinished() &&
    80001618:	fd043783          	ld	a5,-48(s0)
    8000161c:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001620:	fc078ce3          	beqz	a5,800015f8 <_Z8userMainv+0xe8>
             threads[4]->isFinished()))
    80001624:	fd843783          	ld	a5,-40(s0)
    80001628:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    8000162c:	fc0786e3          	beqz	a5,800015f8 <_Z8userMainv+0xe8>
    80001630:	fb840493          	addi	s1,s0,-72
    80001634:	0140006f          	j	80001648 <_Z8userMainv+0x138>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001638:	00090513          	mv	a0,s2
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	27c080e7          	jalr	636(ra) # 800018b8 <_ZdlPv>
    for (auto &thread: threads)
    80001644:	00848493          	addi	s1,s1,8
    80001648:	fe040793          	addi	a5,s0,-32
    8000164c:	02f48063          	beq	s1,a5,8000166c <_Z8userMainv+0x15c>
        delete thread;
    80001650:	0004b903          	ld	s2,0(s1)
    80001654:	fe0908e3          	beqz	s2,80001644 <_Z8userMainv+0x134>
    ~TCB() { delete[] stack; }
    80001658:	00893503          	ld	a0,8(s2)
    8000165c:	fc050ee3          	beqz	a0,80001638 <_Z8userMainv+0x128>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	280080e7          	jalr	640(ra) # 800018e0 <_ZdaPv>
    80001668:	fd1ff06f          	j	80001638 <_Z8userMainv+0x128>
    }
    printString("Finished\n");
    8000166c:	00004517          	auipc	a0,0x4
    80001670:	a7c50513          	addi	a0,a0,-1412 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001674:	00000097          	auipc	ra,0x0
    80001678:	794080e7          	jalr	1940(ra) # 80001e08 <_Z11printStringPKc>
}
    8000167c:	04813083          	ld	ra,72(sp)
    80001680:	04013403          	ld	s0,64(sp)
    80001684:	03813483          	ld	s1,56(sp)
    80001688:	03013903          	ld	s2,48(sp)
    8000168c:	05010113          	addi	sp,sp,80
    80001690:	00008067          	ret

0000000080001694 <main>:

void main()
{
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00113423          	sd	ra,8(sp)
    8000169c:	00813023          	sd	s0,0(sp)
    800016a0:	01010413          	addi	s0,sp,16
        char character = __getc();
        __putc(character + 30);
    }
    */

    MemoryAllocator::initialise();
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	4f4080e7          	jalr	1268(ra) # 80001b98 <_ZN15MemoryAllocator10initialiseEv>


    userMain();
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	e64080e7          	jalr	-412(ra) # 80001510 <_Z8userMainv>
}
    800016b4:	00813083          	ld	ra,8(sp)
    800016b8:	00013403          	ld	s0,0(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret

00000000800016c4 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800016c4:	fe010113          	addi	sp,sp,-32
    800016c8:	00113c23          	sd	ra,24(sp)
    800016cc:	00813823          	sd	s0,16(sp)
    800016d0:	00913423          	sd	s1,8(sp)
    800016d4:	01213023          	sd	s2,0(sp)
    800016d8:	02010413          	addi	s0,sp,32
    800016dc:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800016e0:	03000513          	li	a0,48
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	184080e7          	jalr	388(ra) # 80001868 <_Znwm>
    800016ec:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800016f0:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800016f4:	00090a63          	beqz	s2,80001708 <_ZN3TCB12createThreadEPFvvE+0x44>
    800016f8:	00002537          	lui	a0,0x2
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	194080e7          	jalr	404(ra) # 80001890 <_Znam>
    80001704:	0080006f          	j	8000170c <_ZN3TCB12createThreadEPFvvE+0x48>
    80001708:	00000513          	li	a0,0
            finished(false)
    8000170c:	00a4b423          	sd	a0,8(s1)
    80001710:	00000797          	auipc	a5,0x0
    80001714:	09878793          	addi	a5,a5,152 # 800017a8 <_ZN3TCB13threadWrapperEv>
    80001718:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000171c:	02050863          	beqz	a0,8000174c <_ZN3TCB12createThreadEPFvvE+0x88>
    80001720:	000027b7          	lui	a5,0x2
    80001724:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001728:	00f4bc23          	sd	a5,24(s1)
    8000172c:	00200793          	li	a5,2
    80001730:	02f4b023          	sd	a5,32(s1)
    80001734:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001738:	02090c63          	beqz	s2,80001770 <_ZN3TCB12createThreadEPFvvE+0xac>
    8000173c:	00048513          	mv	a0,s1
    80001740:	00000097          	auipc	ra,0x0
    80001744:	3b8080e7          	jalr	952(ra) # 80001af8 <_ZN9Scheduler3putEP3TCB>
    80001748:	0280006f          	j	80001770 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000174c:	00000793          	li	a5,0
    80001750:	fd9ff06f          	j	80001728 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001754:	00050913          	mv	s2,a0
    80001758:	00048513          	mv	a0,s1
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	15c080e7          	jalr	348(ra) # 800018b8 <_ZdlPv>
    80001764:	00090513          	mv	a0,s2
    80001768:	00005097          	auipc	ra,0x5
    8000176c:	280080e7          	jalr	640(ra) # 800069e8 <_Unwind_Resume>
}
    80001770:	00048513          	mv	a0,s1
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	00013903          	ld	s2,0(sp)
    80001784:	02010113          	addi	sp,sp,32
    80001788:	00008067          	ret

000000008000178c <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00813423          	sd	s0,8(sp)
    80001794:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001798:	00000073          	ecall
}
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret

00000000800017a8 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	14c080e7          	jalr	332(ra) # 80001908 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800017c4:	00004497          	auipc	s1,0x4
    800017c8:	11c48493          	addi	s1,s1,284 # 800058e0 <_ZN3TCB7runningE>
    800017cc:	0004b783          	ld	a5,0(s1)
    800017d0:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800017d4:	000780e7          	jalr	a5
    running->setFinished(true);
    800017d8:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800017dc:	00100713          	li	a4,1
    800017e0:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	fa8080e7          	jalr	-88(ra) # 8000178c <_ZN3TCB5yieldEv>
}
    800017ec:	01813083          	ld	ra,24(sp)
    800017f0:	01013403          	ld	s0,16(sp)
    800017f4:	00813483          	ld	s1,8(sp)
    800017f8:	02010113          	addi	sp,sp,32
    800017fc:	00008067          	ret

0000000080001800 <_ZN3TCB8dispatchEv>:
{
    80001800:	fe010113          	addi	sp,sp,-32
    80001804:	00113c23          	sd	ra,24(sp)
    80001808:	00813823          	sd	s0,16(sp)
    8000180c:	00913423          	sd	s1,8(sp)
    80001810:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001814:	00004497          	auipc	s1,0x4
    80001818:	0cc4b483          	ld	s1,204(s1) # 800058e0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000181c:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001820:	02078c63          	beqz	a5,80001858 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	26c080e7          	jalr	620(ra) # 80001a90 <_ZN9Scheduler3getEv>
    8000182c:	00004797          	auipc	a5,0x4
    80001830:	0aa7ba23          	sd	a0,180(a5) # 800058e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001834:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001838:	01048513          	addi	a0,s1,16
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	8d4080e7          	jalr	-1836(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001844:	01813083          	ld	ra,24(sp)
    80001848:	01013403          	ld	s0,16(sp)
    8000184c:	00813483          	ld	s1,8(sp)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001858:	00048513          	mv	a0,s1
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	29c080e7          	jalr	668(ra) # 80001af8 <_ZN9Scheduler3putEP3TCB>
    80001864:	fc1ff06f          	j	80001824 <_ZN3TCB8dispatchEv+0x24>

0000000080001868 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	390080e7          	jalr	912(ra) # 80001c08 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_Znam>:

void *operator new[](size_t n)
{
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	368080e7          	jalr	872(ra) # 80001c08 <_ZN15MemoryAllocator9mem_allocEm>
}
    800018a8:	00813083          	ld	ra,8(sp)
    800018ac:	00013403          	ld	s0,0(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	47c080e7          	jalr	1148(ra) # 80001d44 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800018d0:	00813083          	ld	ra,8(sp)
    800018d4:	00013403          	ld	s0,0(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00113423          	sd	ra,8(sp)
    800018e8:	00813023          	sd	s0,0(sp)
    800018ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	454080e7          	jalr	1108(ra) # 80001d44 <_ZN15MemoryAllocator8mem_freeEPv>
    800018f8:	00813083          	ld	ra,8(sp)
    800018fc:	00013403          	ld	s0,0(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00813423          	sd	s0,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001914:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001918:	10200073          	sret
}
    8000191c:	00813403          	ld	s0,8(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001928:	fa010113          	addi	sp,sp,-96
    8000192c:	04113c23          	sd	ra,88(sp)
    80001930:	04813823          	sd	s0,80(sp)
    80001934:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001938:	142027f3          	csrr	a5,scause
    8000193c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001940:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001944:	ff870693          	addi	a3,a4,-8
    80001948:	00100793          	li	a5,1
    8000194c:	02d7fa63          	bgeu	a5,a3,80001980 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001950:	fff00793          	li	a5,-1
    80001954:	03f79793          	slli	a5,a5,0x3f
    80001958:	00178793          	addi	a5,a5,1
    8000195c:	06f70863          	beq	a4,a5,800019cc <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001960:	fff00793          	li	a5,-1
    80001964:	03f79793          	slli	a5,a5,0x3f
    80001968:	00978793          	addi	a5,a5,9
    8000196c:	0cf70c63          	beq	a4,a5,80001a44 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80001970:	05813083          	ld	ra,88(sp)
    80001974:	05013403          	ld	s0,80(sp)
    80001978:	06010113          	addi	sp,sp,96
    8000197c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001980:	141027f3          	csrr	a5,sepc
    80001984:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001988:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    8000198c:	00478793          	addi	a5,a5,4
    80001990:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001994:	100027f3          	csrr	a5,sstatus
    80001998:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000199c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800019a0:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    800019a4:	00004797          	auipc	a5,0x4
    800019a8:	eb47b783          	ld	a5,-332(a5) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019ac:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	e50080e7          	jalr	-432(ra) # 80001800 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    800019b8:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800019bc:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800019c0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800019c4:	14179073          	csrw	sepc,a5
}
    800019c8:	fa9ff06f          	j	80001970 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800019cc:	00200793          	li	a5,2
    800019d0:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800019d4:	00004717          	auipc	a4,0x4
    800019d8:	e8473703          	ld	a4,-380(a4) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019dc:	00073783          	ld	a5,0(a4)
    800019e0:	00178793          	addi	a5,a5,1
    800019e4:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800019e8:	00004717          	auipc	a4,0x4
    800019ec:	e8873703          	ld	a4,-376(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019f0:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800019f4:	02073703          	ld	a4,32(a4)
    800019f8:	f6e7ece3          	bltu	a5,a4,80001970 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800019fc:	141027f3          	csrr	a5,sepc
    80001a00:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001a04:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80001a08:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a0c:	100027f3          	csrr	a5,sstatus
    80001a10:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001a14:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80001a18:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80001a1c:	00004797          	auipc	a5,0x4
    80001a20:	e3c7b783          	ld	a5,-452(a5) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a24:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	dd8080e7          	jalr	-552(ra) # 80001800 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001a30:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a34:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001a38:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a3c:	14179073          	csrw	sepc,a5
}
    80001a40:	f31ff06f          	j	80001970 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	62c080e7          	jalr	1580(ra) # 80004070 <console_handler>
    80001a4c:	f25ff06f          	j	80001970 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001a50 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00813423          	sd	s0,8(sp)
    80001a58:	01010413          	addi	s0,sp,16
    80001a5c:	00100793          	li	a5,1
    80001a60:	00f50863          	beq	a0,a5,80001a70 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001a64:	00813403          	ld	s0,8(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret
    80001a70:	000107b7          	lui	a5,0x10
    80001a74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001a78:	fef596e3          	bne	a1,a5,80001a64 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a7c:	00004797          	auipc	a5,0x4
    80001a80:	e7478793          	addi	a5,a5,-396 # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
    80001a84:	0007b023          	sd	zero,0(a5)
    80001a88:	0007b423          	sd	zero,8(a5)
    80001a8c:	fd9ff06f          	j	80001a64 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001a90 <_ZN9Scheduler3getEv>:
{
    80001a90:	fe010113          	addi	sp,sp,-32
    80001a94:	00113c23          	sd	ra,24(sp)
    80001a98:	00813823          	sd	s0,16(sp)
    80001a9c:	00913423          	sd	s1,8(sp)
    80001aa0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001aa4:	00004517          	auipc	a0,0x4
    80001aa8:	e4c53503          	ld	a0,-436(a0) # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
    80001aac:	04050263          	beqz	a0,80001af0 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001ab0:	00853783          	ld	a5,8(a0)
    80001ab4:	00004717          	auipc	a4,0x4
    80001ab8:	e2f73e23          	sd	a5,-452(a4) # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001abc:	02078463          	beqz	a5,80001ae4 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001ac0:	00053483          	ld	s1,0(a0)
        delete elem;
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	df4080e7          	jalr	-524(ra) # 800018b8 <_ZdlPv>
}
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	01813083          	ld	ra,24(sp)
    80001ad4:	01013403          	ld	s0,16(sp)
    80001ad8:	00813483          	ld	s1,8(sp)
    80001adc:	02010113          	addi	sp,sp,32
    80001ae0:	00008067          	ret
        if (!head) { tail = 0; }
    80001ae4:	00004797          	auipc	a5,0x4
    80001ae8:	e007ba23          	sd	zero,-492(a5) # 800058f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001aec:	fd5ff06f          	j	80001ac0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001af0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001af4:	fd9ff06f          	j	80001acc <_ZN9Scheduler3getEv+0x3c>

0000000080001af8 <_ZN9Scheduler3putEP3TCB>:
{
    80001af8:	fe010113          	addi	sp,sp,-32
    80001afc:	00113c23          	sd	ra,24(sp)
    80001b00:	00813823          	sd	s0,16(sp)
    80001b04:	00913423          	sd	s1,8(sp)
    80001b08:	02010413          	addi	s0,sp,32
    80001b0c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001b10:	01000513          	li	a0,16
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	d54080e7          	jalr	-684(ra) # 80001868 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001b1c:	00953023          	sd	s1,0(a0)
    80001b20:	00053423          	sd	zero,8(a0)
        if (tail)
    80001b24:	00004797          	auipc	a5,0x4
    80001b28:	dd47b783          	ld	a5,-556(a5) # 800058f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b2c:	02078263          	beqz	a5,80001b50 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001b30:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b34:	00004797          	auipc	a5,0x4
    80001b38:	dca7b223          	sd	a0,-572(a5) # 800058f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret
            head = tail = elem;
    80001b50:	00004797          	auipc	a5,0x4
    80001b54:	da078793          	addi	a5,a5,-608 # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
    80001b58:	00a7b423          	sd	a0,8(a5)
    80001b5c:	00a7b023          	sd	a0,0(a5)
    80001b60:	fddff06f          	j	80001b3c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001b64 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    80001b74:	000105b7          	lui	a1,0x10
    80001b78:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001b7c:	00100513          	li	a0,1
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	ed0080e7          	jalr	-304(ra) # 80001a50 <_Z41__static_initialization_and_destruction_0ii>
    80001b88:	00813083          	ld	ra,8(sp)
    80001b8c:	00013403          	ld	s0,0(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN15MemoryAllocator10initialiseEv>:
void* MemoryAllocator::memStart = nullptr;
void* MemoryAllocator::memEnd = nullptr;
FreeMem* MemoryAllocator::head = nullptr;

void MemoryAllocator::initialise()
{
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    // trim je start location to be aligned with blocks
    //MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    MemoryAllocator::memStart = (void*)((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - ((size_t)HEAP_START_ADDR % MEM_BLOCK_SIZE));
    80001ba4:	00004797          	auipc	a5,0x4
    80001ba8:	c9c7b783          	ld	a5,-868(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bac:	0007b703          	ld	a4,0(a5)
    80001bb0:	fc077713          	andi	a4,a4,-64
    80001bb4:	04070613          	addi	a2,a4,64
    80001bb8:	00004797          	auipc	a5,0x4
    80001bbc:	d4878793          	addi	a5,a5,-696 # 80005900 <_ZN15MemoryAllocator8memStartE>
    80001bc0:	00c7b023          	sd	a2,0(a5)

    // calculate the size that will be discarded in memory
    size_t trimSize = ((size_t)HEAP_END_ADDR - (size_t)MemoryAllocator::memStart) % MEM_BLOCK_SIZE;
    80001bc4:	00004697          	auipc	a3,0x4
    80001bc8:	cb46b683          	ld	a3,-844(a3) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001bcc:	0006b683          	ld	a3,0(a3)

    MemoryAllocator::memEnd = (void*) ((size_t)HEAP_END_ADDR - trimSize);
    80001bd0:	fc06f693          	andi	a3,a3,-64
    80001bd4:	00d7b423          	sd	a3,8(a5)

    // Create the first free segment
    MemoryAllocator::head = (FreeMem*)MemoryAllocator::memStart;
    80001bd8:	00c7b823          	sd	a2,16(a5)
    MemoryAllocator::head->next = nullptr;
    80001bdc:	04073023          	sd	zero,64(a4)
    MemoryAllocator::head->prev = nullptr;
    80001be0:	0107b683          	ld	a3,16(a5)
    80001be4:	0006b423          	sd	zero,8(a3)
    MemoryAllocator::head->size = ((size_t)MemoryAllocator::memEnd - (size_t)MemoryAllocator::memStart) / MEM_BLOCK_SIZE;
    80001be8:	0087b703          	ld	a4,8(a5)
    80001bec:	0007b783          	ld	a5,0(a5)
    80001bf0:	40f707b3          	sub	a5,a4,a5
    80001bf4:	0067d793          	srli	a5,a5,0x6
    80001bf8:	00f6b823          	sd	a5,16(a3)
    printString("\n");
    printInteger((size_t)MemoryAllocator::memEnd);
    printString("\n");
    printInteger((size_t)MemoryAllocator::head->size);
     */
}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size)
{
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00813423          	sd	s0,8(sp)
    80001c10:	01010413          	addi	s0,sp,16
    // Calculate number of blocks
    // In front of every allocated block needs to be a struct
    size_t totalSize = size + sizeof(AllocatedMem);
    80001c14:	00850713          	addi	a4,a0,8
    size_t blockNum = 0;


    if (totalSize % MEM_BLOCK_SIZE != 0)
    80001c18:	03f77793          	andi	a5,a4,63
    80001c1c:	02078a63          	beqz	a5,80001c50 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        blockNum = totalSize / MEM_BLOCK_SIZE + 1; // mozda ne treba hardkovoati jedinicu
    80001c20:	00675713          	srli	a4,a4,0x6
    80001c24:	00170713          	addi	a4,a4,1
    else
        blockNum = totalSize / MEM_BLOCK_SIZE;

    // Find the first free segment if exists
    FreeMem* curr = MemoryAllocator::head;
    80001c28:	00004697          	auipc	a3,0x4
    80001c2c:	ce86b683          	ld	a3,-792(a3) # 80005910 <_ZN15MemoryAllocator4headE>
    80001c30:	00068513          	mv	a0,a3

    while (curr != nullptr)
    80001c34:	06050663          	beqz	a0,80001ca0 <_ZN15MemoryAllocator9mem_allocEm+0x98>
    {
        // Found free soace in a segment
        // Allocate the highest memory, so we potentially don't have to move the FreeMem struct
        if (curr->size >= blockNum)
    80001c38:	01053783          	ld	a5,16(a0)
    80001c3c:	00e7fe63          	bgeu	a5,a4,80001c58 <_ZN15MemoryAllocator9mem_allocEm+0x50>
            allocatedMem->blockNum = blockNum;
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));

            return ptr;
        }
        curr = curr->next;
    80001c40:	00053503          	ld	a0,0(a0)

        // Prevents infinite loop
        if (curr == MemoryAllocator::head)
    80001c44:	fea698e3          	bne	a3,a0,80001c34 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
            break;
    }

    return nullptr;
    80001c48:	00000513          	li	a0,0
    80001c4c:	0540006f          	j	80001ca0 <_ZN15MemoryAllocator9mem_allocEm+0x98>
        blockNum = totalSize / MEM_BLOCK_SIZE;
    80001c50:	00675713          	srli	a4,a4,0x6
    80001c54:	fd5ff06f          	j	80001c28 <_ZN15MemoryAllocator9mem_allocEm+0x20>
            curr->size -= blockNum;
    80001c58:	40e787b3          	sub	a5,a5,a4
    80001c5c:	00f53823          	sd	a5,16(a0)
            if (curr->size == 0)
    80001c60:	02079263          	bnez	a5,80001c84 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
                if (curr == MemoryAllocator::head)
    80001c64:	04d50463          	beq	a0,a3,80001cac <_ZN15MemoryAllocator9mem_allocEm+0xa4>
                if (curr->next != nullptr && curr->prev != nullptr)
    80001c68:	00053783          	ld	a5,0(a0)
    80001c6c:	04078863          	beqz	a5,80001cbc <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80001c70:	00853683          	ld	a3,8(a0)
    80001c74:	04068463          	beqz	a3,80001cbc <_ZN15MemoryAllocator9mem_allocEm+0xb4>
                    curr->prev->next = curr->next;
    80001c78:	00f6b023          	sd	a5,0(a3)
                    curr->next->prev = curr->prev;
    80001c7c:	00853683          	ld	a3,8(a0)
    80001c80:	00d7b423          	sd	a3,8(a5)
            AllocatedMem* allocatedMem = (AllocatedMem*)((size_t)curr + curr->size * MEM_BLOCK_SIZE - blockNum * MEM_BLOCK_SIZE);
    80001c84:	01053783          	ld	a5,16(a0)
    80001c88:	00679793          	slli	a5,a5,0x6
    80001c8c:	00f50533          	add	a0,a0,a5
    80001c90:	00671793          	slli	a5,a4,0x6
    80001c94:	40f50533          	sub	a0,a0,a5
            allocatedMem->blockNum = blockNum;
    80001c98:	00e53023          	sd	a4,0(a0)
            void* ptr = (void*)((size_t)allocatedMem + sizeof(AllocatedMem));
    80001c9c:	00850513          	addi	a0,a0,8
}
    80001ca0:	00813403          	ld	s0,8(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret
                    MemoryAllocator::head = MemoryAllocator::head->next;
    80001cac:	0006b783          	ld	a5,0(a3)
    80001cb0:	00004697          	auipc	a3,0x4
    80001cb4:	c6f6b023          	sd	a5,-928(a3) # 80005910 <_ZN15MemoryAllocator4headE>
    80001cb8:	fb1ff06f          	j	80001c68 <_ZN15MemoryAllocator9mem_allocEm+0x60>
                else if (curr->prev != nullptr)
    80001cbc:	00853683          	ld	a3,8(a0)
    80001cc0:	00068663          	beqz	a3,80001ccc <_ZN15MemoryAllocator9mem_allocEm+0xc4>
                    curr->prev->next = nullptr;
    80001cc4:	0006b023          	sd	zero,0(a3)
    80001cc8:	fbdff06f          	j	80001c84 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
                else if (curr->next != nullptr)
    80001ccc:	fa078ce3          	beqz	a5,80001c84 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
                    curr->next->prev = nullptr;
    80001cd0:	0007b423          	sd	zero,8(a5)
    80001cd4:	fb1ff06f          	j	80001c84 <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080001cd8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>:

    return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *curr)
{
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00813423          	sd	s0,8(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80001ce4:	04050863          	beqz	a0,80001d34 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x5c>
    if (curr->next && ((size_t)curr + curr->size * MEM_BLOCK_SIZE == (size_t)(curr->next)))
    80001ce8:	00053783          	ld	a5,0(a0)
    80001cec:	04078863          	beqz	a5,80001d3c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x64>
    80001cf0:	01053683          	ld	a3,16(a0)
    80001cf4:	00669713          	slli	a4,a3,0x6
    80001cf8:	00e50733          	add	a4,a0,a4
    80001cfc:	00f70a63          	beq	a4,a5,80001d10 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x38>
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    else
    {
        return 0;
    80001d00:	00000513          	li	a0,0
    }
}
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret
        curr->size += curr->next->size;
    80001d10:	0107b703          	ld	a4,16(a5)
    80001d14:	00e686b3          	add	a3,a3,a4
    80001d18:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80001d1c:	0007b783          	ld	a5,0(a5)
    80001d20:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001d24:	00078463          	beqz	a5,80001d2c <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x54>
    80001d28:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001d2c:	00100513          	li	a0,1
    80001d30:	fd5ff06f          	j	80001d04 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
    if (!curr) return 0;
    80001d34:	00000513          	li	a0,0
    80001d38:	fcdff06f          	j	80001d04 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>
        return 0;
    80001d3c:	00000513          	li	a0,0
    80001d40:	fc5ff06f          	j	80001d04 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem+0x2c>

0000000080001d44 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80001d44:	fe010113          	addi	sp,sp,-32
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	00813823          	sd	s0,16(sp)
    80001d50:	00913423          	sd	s1,8(sp)
    80001d54:	02010413          	addi	s0,sp,32
    80001d58:	00050713          	mv	a4,a0
    AllocatedMem* allocatedMem = (AllocatedMem*)(size_t)ptr - sizeof(AllocatedMem);
    80001d5c:	fc050513          	addi	a0,a0,-64
    size_t blockNum = allocatedMem->blockNum;
    80001d60:	fc073603          	ld	a2,-64(a4)
    if (!MemoryAllocator::head || addr < (size_t)MemoryAllocator::head)
    80001d64:	00004797          	auipc	a5,0x4
    80001d68:	bac7b783          	ld	a5,-1108(a5) # 80005910 <_ZN15MemoryAllocator4headE>
    80001d6c:	02078063          	beqz	a5,80001d8c <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80001d70:	00050693          	mv	a3,a0
    80001d74:	02f56063          	bltu	a0,a5,80001d94 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        for (curr = MemoryAllocator::head; curr->next != nullptr && addr > (size_t) curr->next; curr = curr->next);
    80001d78:	00078493          	mv	s1,a5
    80001d7c:	0007b783          	ld	a5,0(a5)
    80001d80:	00078c63          	beqz	a5,80001d98 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001d84:	fed7eae3          	bltu	a5,a3,80001d78 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    80001d88:	0100006f          	j	80001d98 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        curr = 0;
    80001d8c:	00078493          	mv	s1,a5
    80001d90:	0080006f          	j	80001d98 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001d94:	00000493          	li	s1,0
    newSeg->size = blockNum;
    80001d98:	fcc73823          	sd	a2,-48(a4)
    newSeg->prev = curr;
    80001d9c:	fc973423          	sd	s1,-56(a4)
    if (curr) newSeg->next = curr->next;
    80001da0:	04048663          	beqz	s1,80001dec <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    80001da4:	0004b783          	ld	a5,0(s1)
    80001da8:	fcf73023          	sd	a5,-64(a4)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001dac:	fc073783          	ld	a5,-64(a4)
    80001db0:	00078463          	beqz	a5,80001db8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    80001db4:	00a7b423          	sd	a0,8(a5)
    if (curr) curr->next = newSeg;
    80001db8:	04048263          	beqz	s1,80001dfc <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
    80001dbc:	00a4b023          	sd	a0,0(s1)
    MemoryAllocator::tryToJoin(newSeg);
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	f18080e7          	jalr	-232(ra) # 80001cd8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
    MemoryAllocator::tryToJoin(curr);
    80001dc8:	00048513          	mv	a0,s1
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	f0c080e7          	jalr	-244(ra) # 80001cd8 <_ZN15MemoryAllocator9tryToJoinEP7FreeMem>
}
    80001dd4:	00000513          	li	a0,0
    80001dd8:	01813083          	ld	ra,24(sp)
    80001ddc:	01013403          	ld	s0,16(sp)
    80001de0:	00813483          	ld	s1,8(sp)
    80001de4:	02010113          	addi	sp,sp,32
    80001de8:	00008067          	ret
    else newSeg->next = MemoryAllocator::head;
    80001dec:	00004797          	auipc	a5,0x4
    80001df0:	b247b783          	ld	a5,-1244(a5) # 80005910 <_ZN15MemoryAllocator4headE>
    80001df4:	fcf73023          	sd	a5,-64(a4)
    80001df8:	fb5ff06f          	j	80001dac <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    else MemoryAllocator::head = newSeg;
    80001dfc:	00004797          	auipc	a5,0x4
    80001e00:	b0a7ba23          	sd	a0,-1260(a5) # 80005910 <_ZN15MemoryAllocator4headE>
    80001e04:	fbdff06f          	j	80001dc0 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>

0000000080001e08 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e08:	fd010113          	addi	sp,sp,-48
    80001e0c:	02113423          	sd	ra,40(sp)
    80001e10:	02813023          	sd	s0,32(sp)
    80001e14:	00913c23          	sd	s1,24(sp)
    80001e18:	01213823          	sd	s2,16(sp)
    80001e1c:	03010413          	addi	s0,sp,48
    80001e20:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e24:	100027f3          	csrr	a5,sstatus
    80001e28:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e2c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e30:	00200793          	li	a5,2
    80001e34:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001e38:	0004c503          	lbu	a0,0(s1)
    80001e3c:	00050a63          	beqz	a0,80001e50 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e40:	00002097          	auipc	ra,0x2
    80001e44:	1bc080e7          	jalr	444(ra) # 80003ffc <__putc>
        string++;
    80001e48:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e4c:	fedff06f          	j	80001e38 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e50:	0009091b          	sext.w	s2,s2
    80001e54:	00297913          	andi	s2,s2,2
    80001e58:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e5c:	10092073          	csrs	sstatus,s2
}
    80001e60:	02813083          	ld	ra,40(sp)
    80001e64:	02013403          	ld	s0,32(sp)
    80001e68:	01813483          	ld	s1,24(sp)
    80001e6c:	01013903          	ld	s2,16(sp)
    80001e70:	03010113          	addi	sp,sp,48
    80001e74:	00008067          	ret

0000000080001e78 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001e78:	fc010113          	addi	sp,sp,-64
    80001e7c:	02113c23          	sd	ra,56(sp)
    80001e80:	02813823          	sd	s0,48(sp)
    80001e84:	02913423          	sd	s1,40(sp)
    80001e88:	03213023          	sd	s2,32(sp)
    80001e8c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e90:	100027f3          	csrr	a5,sstatus
    80001e94:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e98:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e9c:	00200793          	li	a5,2
    80001ea0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001ea4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001ea8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001eac:	00a00613          	li	a2,10
    80001eb0:	02c5773b          	remuw	a4,a0,a2
    80001eb4:	02071693          	slli	a3,a4,0x20
    80001eb8:	0206d693          	srli	a3,a3,0x20
    80001ebc:	00003717          	auipc	a4,0x3
    80001ec0:	23c70713          	addi	a4,a4,572 # 800050f8 <_ZZ12printIntegermE6digits>
    80001ec4:	00d70733          	add	a4,a4,a3
    80001ec8:	00074703          	lbu	a4,0(a4)
    80001ecc:	fe040693          	addi	a3,s0,-32
    80001ed0:	009687b3          	add	a5,a3,s1
    80001ed4:	0014849b          	addiw	s1,s1,1
    80001ed8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001edc:	0005071b          	sext.w	a4,a0
    80001ee0:	02c5553b          	divuw	a0,a0,a2
    80001ee4:	00900793          	li	a5,9
    80001ee8:	fce7e2e3          	bltu	a5,a4,80001eac <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001eec:	fff4849b          	addiw	s1,s1,-1
    80001ef0:	0004ce63          	bltz	s1,80001f0c <_Z12printIntegerm+0x94>
    80001ef4:	fe040793          	addi	a5,s0,-32
    80001ef8:	009787b3          	add	a5,a5,s1
    80001efc:	ff07c503          	lbu	a0,-16(a5)
    80001f00:	00002097          	auipc	ra,0x2
    80001f04:	0fc080e7          	jalr	252(ra) # 80003ffc <__putc>
    80001f08:	fe5ff06f          	j	80001eec <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f0c:	0009091b          	sext.w	s2,s2
    80001f10:	00297913          	andi	s2,s2,2
    80001f14:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f18:	10092073          	csrs	sstatus,s2
    80001f1c:	03813083          	ld	ra,56(sp)
    80001f20:	03013403          	ld	s0,48(sp)
    80001f24:	02813483          	ld	s1,40(sp)
    80001f28:	02013903          	ld	s2,32(sp)
    80001f2c:	04010113          	addi	sp,sp,64
    80001f30:	00008067          	ret

0000000080001f34 <start>:
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00813423          	sd	s0,8(sp)
    80001f3c:	01010413          	addi	s0,sp,16
    80001f40:	300027f3          	csrr	a5,mstatus
    80001f44:	ffffe737          	lui	a4,0xffffe
    80001f48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c7f>
    80001f4c:	00e7f7b3          	and	a5,a5,a4
    80001f50:	00001737          	lui	a4,0x1
    80001f54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001f58:	00e7e7b3          	or	a5,a5,a4
    80001f5c:	30079073          	csrw	mstatus,a5
    80001f60:	00000797          	auipc	a5,0x0
    80001f64:	16078793          	addi	a5,a5,352 # 800020c0 <system_main>
    80001f68:	34179073          	csrw	mepc,a5
    80001f6c:	00000793          	li	a5,0
    80001f70:	18079073          	csrw	satp,a5
    80001f74:	000107b7          	lui	a5,0x10
    80001f78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f7c:	30279073          	csrw	medeleg,a5
    80001f80:	30379073          	csrw	mideleg,a5
    80001f84:	104027f3          	csrr	a5,sie
    80001f88:	2227e793          	ori	a5,a5,546
    80001f8c:	10479073          	csrw	sie,a5
    80001f90:	fff00793          	li	a5,-1
    80001f94:	00a7d793          	srli	a5,a5,0xa
    80001f98:	3b079073          	csrw	pmpaddr0,a5
    80001f9c:	00f00793          	li	a5,15
    80001fa0:	3a079073          	csrw	pmpcfg0,a5
    80001fa4:	f14027f3          	csrr	a5,mhartid
    80001fa8:	0200c737          	lui	a4,0x200c
    80001fac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001fb0:	0007869b          	sext.w	a3,a5
    80001fb4:	00269713          	slli	a4,a3,0x2
    80001fb8:	000f4637          	lui	a2,0xf4
    80001fbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fc0:	00d70733          	add	a4,a4,a3
    80001fc4:	0037979b          	slliw	a5,a5,0x3
    80001fc8:	020046b7          	lui	a3,0x2004
    80001fcc:	00d787b3          	add	a5,a5,a3
    80001fd0:	00c585b3          	add	a1,a1,a2
    80001fd4:	00371693          	slli	a3,a4,0x3
    80001fd8:	00004717          	auipc	a4,0x4
    80001fdc:	94870713          	addi	a4,a4,-1720 # 80005920 <timer_scratch>
    80001fe0:	00b7b023          	sd	a1,0(a5)
    80001fe4:	00d70733          	add	a4,a4,a3
    80001fe8:	00f73c23          	sd	a5,24(a4)
    80001fec:	02c73023          	sd	a2,32(a4)
    80001ff0:	34071073          	csrw	mscratch,a4
    80001ff4:	00000797          	auipc	a5,0x0
    80001ff8:	6ec78793          	addi	a5,a5,1772 # 800026e0 <timervec>
    80001ffc:	30579073          	csrw	mtvec,a5
    80002000:	300027f3          	csrr	a5,mstatus
    80002004:	0087e793          	ori	a5,a5,8
    80002008:	30079073          	csrw	mstatus,a5
    8000200c:	304027f3          	csrr	a5,mie
    80002010:	0807e793          	ori	a5,a5,128
    80002014:	30479073          	csrw	mie,a5
    80002018:	f14027f3          	csrr	a5,mhartid
    8000201c:	0007879b          	sext.w	a5,a5
    80002020:	00078213          	mv	tp,a5
    80002024:	30200073          	mret
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <timerinit>:
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813423          	sd	s0,8(sp)
    8000203c:	01010413          	addi	s0,sp,16
    80002040:	f14027f3          	csrr	a5,mhartid
    80002044:	0200c737          	lui	a4,0x200c
    80002048:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000204c:	0007869b          	sext.w	a3,a5
    80002050:	00269713          	slli	a4,a3,0x2
    80002054:	000f4637          	lui	a2,0xf4
    80002058:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000205c:	00d70733          	add	a4,a4,a3
    80002060:	0037979b          	slliw	a5,a5,0x3
    80002064:	020046b7          	lui	a3,0x2004
    80002068:	00d787b3          	add	a5,a5,a3
    8000206c:	00c585b3          	add	a1,a1,a2
    80002070:	00371693          	slli	a3,a4,0x3
    80002074:	00004717          	auipc	a4,0x4
    80002078:	8ac70713          	addi	a4,a4,-1876 # 80005920 <timer_scratch>
    8000207c:	00b7b023          	sd	a1,0(a5)
    80002080:	00d70733          	add	a4,a4,a3
    80002084:	00f73c23          	sd	a5,24(a4)
    80002088:	02c73023          	sd	a2,32(a4)
    8000208c:	34071073          	csrw	mscratch,a4
    80002090:	00000797          	auipc	a5,0x0
    80002094:	65078793          	addi	a5,a5,1616 # 800026e0 <timervec>
    80002098:	30579073          	csrw	mtvec,a5
    8000209c:	300027f3          	csrr	a5,mstatus
    800020a0:	0087e793          	ori	a5,a5,8
    800020a4:	30079073          	csrw	mstatus,a5
    800020a8:	304027f3          	csrr	a5,mie
    800020ac:	0807e793          	ori	a5,a5,128
    800020b0:	30479073          	csrw	mie,a5
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret

00000000800020c0 <system_main>:
    800020c0:	fe010113          	addi	sp,sp,-32
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	00113c23          	sd	ra,24(sp)
    800020d0:	02010413          	addi	s0,sp,32
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	0c4080e7          	jalr	196(ra) # 80002198 <cpuid>
    800020dc:	00003497          	auipc	s1,0x3
    800020e0:	7d448493          	addi	s1,s1,2004 # 800058b0 <started>
    800020e4:	02050263          	beqz	a0,80002108 <system_main+0x48>
    800020e8:	0004a783          	lw	a5,0(s1)
    800020ec:	0007879b          	sext.w	a5,a5
    800020f0:	fe078ce3          	beqz	a5,800020e8 <system_main+0x28>
    800020f4:	0ff0000f          	fence
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	04050513          	addi	a0,a0,64 # 80005138 <_ZZ12printIntegermE6digits+0x40>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	a7c080e7          	jalr	-1412(ra) # 80002b7c <panic>
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	9d0080e7          	jalr	-1584(ra) # 80002ad8 <consoleinit>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	15c080e7          	jalr	348(ra) # 8000326c <printfinit>
    80002118:	00003517          	auipc	a0,0x3
    8000211c:	fd850513          	addi	a0,a0,-40 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002120:	00001097          	auipc	ra,0x1
    80002124:	ab8080e7          	jalr	-1352(ra) # 80002bd8 <__printf>
    80002128:	00003517          	auipc	a0,0x3
    8000212c:	fe050513          	addi	a0,a0,-32 # 80005108 <_ZZ12printIntegermE6digits+0x10>
    80002130:	00001097          	auipc	ra,0x1
    80002134:	aa8080e7          	jalr	-1368(ra) # 80002bd8 <__printf>
    80002138:	00003517          	auipc	a0,0x3
    8000213c:	fb850513          	addi	a0,a0,-72 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002140:	00001097          	auipc	ra,0x1
    80002144:	a98080e7          	jalr	-1384(ra) # 80002bd8 <__printf>
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	4b0080e7          	jalr	1200(ra) # 800035f8 <kinit>
    80002150:	00000097          	auipc	ra,0x0
    80002154:	148080e7          	jalr	328(ra) # 80002298 <trapinit>
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	16c080e7          	jalr	364(ra) # 800022c4 <trapinithart>
    80002160:	00000097          	auipc	ra,0x0
    80002164:	5c0080e7          	jalr	1472(ra) # 80002720 <plicinit>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	5e0080e7          	jalr	1504(ra) # 80002748 <plicinithart>
    80002170:	00000097          	auipc	ra,0x0
    80002174:	078080e7          	jalr	120(ra) # 800021e8 <userinit>
    80002178:	0ff0000f          	fence
    8000217c:	00100793          	li	a5,1
    80002180:	00003517          	auipc	a0,0x3
    80002184:	fa050513          	addi	a0,a0,-96 # 80005120 <_ZZ12printIntegermE6digits+0x28>
    80002188:	00f4a023          	sw	a5,0(s1)
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	a4c080e7          	jalr	-1460(ra) # 80002bd8 <__printf>
    80002194:	0000006f          	j	80002194 <system_main+0xd4>

0000000080002198 <cpuid>:
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    800021a4:	00020513          	mv	a0,tp
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	0005051b          	sext.w	a0,a0
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <mycpu>:
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00813423          	sd	s0,8(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00020793          	mv	a5,tp
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	0007879b          	sext.w	a5,a5
    800021d0:	00779793          	slli	a5,a5,0x7
    800021d4:	00004517          	auipc	a0,0x4
    800021d8:	77c50513          	addi	a0,a0,1916 # 80006950 <cpus>
    800021dc:	00f50533          	add	a0,a0,a5
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <userinit>:
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
    800021f4:	00813403          	ld	s0,8(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	fffff317          	auipc	t1,0xfffff
    80002200:	49830067          	jr	1176(t1) # 80001694 <main>

0000000080002204 <either_copyout>:
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813023          	sd	s0,0(sp)
    8000220c:	00113423          	sd	ra,8(sp)
    80002210:	01010413          	addi	s0,sp,16
    80002214:	02051663          	bnez	a0,80002240 <either_copyout+0x3c>
    80002218:	00058513          	mv	a0,a1
    8000221c:	00060593          	mv	a1,a2
    80002220:	0006861b          	sext.w	a2,a3
    80002224:	00002097          	auipc	ra,0x2
    80002228:	c60080e7          	jalr	-928(ra) # 80003e84 <__memmove>
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	00000513          	li	a0,0
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret
    80002240:	00003517          	auipc	a0,0x3
    80002244:	f2050513          	addi	a0,a0,-224 # 80005160 <_ZZ12printIntegermE6digits+0x68>
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	934080e7          	jalr	-1740(ra) # 80002b7c <panic>

0000000080002250 <either_copyin>:
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	01010413          	addi	s0,sp,16
    80002260:	02059463          	bnez	a1,80002288 <either_copyin+0x38>
    80002264:	00060593          	mv	a1,a2
    80002268:	0006861b          	sext.w	a2,a3
    8000226c:	00002097          	auipc	ra,0x2
    80002270:	c18080e7          	jalr	-1000(ra) # 80003e84 <__memmove>
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	00000513          	li	a0,0
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret
    80002288:	00003517          	auipc	a0,0x3
    8000228c:	f0050513          	addi	a0,a0,-256 # 80005188 <_ZZ12printIntegermE6digits+0x90>
    80002290:	00001097          	auipc	ra,0x1
    80002294:	8ec080e7          	jalr	-1812(ra) # 80002b7c <panic>

0000000080002298 <trapinit>:
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00813423          	sd	s0,8(sp)
    800022a0:	01010413          	addi	s0,sp,16
    800022a4:	00813403          	ld	s0,8(sp)
    800022a8:	00003597          	auipc	a1,0x3
    800022ac:	f0858593          	addi	a1,a1,-248 # 800051b0 <_ZZ12printIntegermE6digits+0xb8>
    800022b0:	00004517          	auipc	a0,0x4
    800022b4:	72050513          	addi	a0,a0,1824 # 800069d0 <tickslock>
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00001317          	auipc	t1,0x1
    800022c0:	5cc30067          	jr	1484(t1) # 80003888 <initlock>

00000000800022c4 <trapinithart>:
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    800022d0:	00000797          	auipc	a5,0x0
    800022d4:	30078793          	addi	a5,a5,768 # 800025d0 <kernelvec>
    800022d8:	10579073          	csrw	stvec,a5
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <usertrap>:
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    800022f4:	00813403          	ld	s0,8(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <usertrapret>:
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00813423          	sd	s0,8(sp)
    80002308:	01010413          	addi	s0,sp,16
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <kerneltrap>:
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00813823          	sd	s0,16(sp)
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00913423          	sd	s1,8(sp)
    80002328:	02010413          	addi	s0,sp,32
    8000232c:	142025f3          	csrr	a1,scause
    80002330:	100027f3          	csrr	a5,sstatus
    80002334:	0027f793          	andi	a5,a5,2
    80002338:	10079c63          	bnez	a5,80002450 <kerneltrap+0x138>
    8000233c:	142027f3          	csrr	a5,scause
    80002340:	0207ce63          	bltz	a5,8000237c <kerneltrap+0x64>
    80002344:	00003517          	auipc	a0,0x3
    80002348:	eb450513          	addi	a0,a0,-332 # 800051f8 <_ZZ12printIntegermE6digits+0x100>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	88c080e7          	jalr	-1908(ra) # 80002bd8 <__printf>
    80002354:	141025f3          	csrr	a1,sepc
    80002358:	14302673          	csrr	a2,stval
    8000235c:	00003517          	auipc	a0,0x3
    80002360:	eac50513          	addi	a0,a0,-340 # 80005208 <_ZZ12printIntegermE6digits+0x110>
    80002364:	00001097          	auipc	ra,0x1
    80002368:	874080e7          	jalr	-1932(ra) # 80002bd8 <__printf>
    8000236c:	00003517          	auipc	a0,0x3
    80002370:	eb450513          	addi	a0,a0,-332 # 80005220 <_ZZ12printIntegermE6digits+0x128>
    80002374:	00001097          	auipc	ra,0x1
    80002378:	808080e7          	jalr	-2040(ra) # 80002b7c <panic>
    8000237c:	0ff7f713          	andi	a4,a5,255
    80002380:	00900693          	li	a3,9
    80002384:	04d70063          	beq	a4,a3,800023c4 <kerneltrap+0xac>
    80002388:	fff00713          	li	a4,-1
    8000238c:	03f71713          	slli	a4,a4,0x3f
    80002390:	00170713          	addi	a4,a4,1
    80002394:	fae798e3          	bne	a5,a4,80002344 <kerneltrap+0x2c>
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	e00080e7          	jalr	-512(ra) # 80002198 <cpuid>
    800023a0:	06050663          	beqz	a0,8000240c <kerneltrap+0xf4>
    800023a4:	144027f3          	csrr	a5,sip
    800023a8:	ffd7f793          	andi	a5,a5,-3
    800023ac:	14479073          	csrw	sip,a5
    800023b0:	01813083          	ld	ra,24(sp)
    800023b4:	01013403          	ld	s0,16(sp)
    800023b8:	00813483          	ld	s1,8(sp)
    800023bc:	02010113          	addi	sp,sp,32
    800023c0:	00008067          	ret
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	3d0080e7          	jalr	976(ra) # 80002794 <plic_claim>
    800023cc:	00a00793          	li	a5,10
    800023d0:	00050493          	mv	s1,a0
    800023d4:	06f50863          	beq	a0,a5,80002444 <kerneltrap+0x12c>
    800023d8:	fc050ce3          	beqz	a0,800023b0 <kerneltrap+0x98>
    800023dc:	00050593          	mv	a1,a0
    800023e0:	00003517          	auipc	a0,0x3
    800023e4:	df850513          	addi	a0,a0,-520 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	7f0080e7          	jalr	2032(ra) # 80002bd8 <__printf>
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	01813083          	ld	ra,24(sp)
    800023f8:	00048513          	mv	a0,s1
    800023fc:	00813483          	ld	s1,8(sp)
    80002400:	02010113          	addi	sp,sp,32
    80002404:	00000317          	auipc	t1,0x0
    80002408:	3c830067          	jr	968(t1) # 800027cc <plic_complete>
    8000240c:	00004517          	auipc	a0,0x4
    80002410:	5c450513          	addi	a0,a0,1476 # 800069d0 <tickslock>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	498080e7          	jalr	1176(ra) # 800038ac <acquire>
    8000241c:	00003717          	auipc	a4,0x3
    80002420:	49870713          	addi	a4,a4,1176 # 800058b4 <ticks>
    80002424:	00072783          	lw	a5,0(a4)
    80002428:	00004517          	auipc	a0,0x4
    8000242c:	5a850513          	addi	a0,a0,1448 # 800069d0 <tickslock>
    80002430:	0017879b          	addiw	a5,a5,1
    80002434:	00f72023          	sw	a5,0(a4)
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	540080e7          	jalr	1344(ra) # 80003978 <release>
    80002440:	f65ff06f          	j	800023a4 <kerneltrap+0x8c>
    80002444:	00001097          	auipc	ra,0x1
    80002448:	09c080e7          	jalr	156(ra) # 800034e0 <uartintr>
    8000244c:	fa5ff06f          	j	800023f0 <kerneltrap+0xd8>
    80002450:	00003517          	auipc	a0,0x3
    80002454:	d6850513          	addi	a0,a0,-664 # 800051b8 <_ZZ12printIntegermE6digits+0xc0>
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	724080e7          	jalr	1828(ra) # 80002b7c <panic>

0000000080002460 <clockintr>:
    80002460:	fe010113          	addi	sp,sp,-32
    80002464:	00813823          	sd	s0,16(sp)
    80002468:	00913423          	sd	s1,8(sp)
    8000246c:	00113c23          	sd	ra,24(sp)
    80002470:	02010413          	addi	s0,sp,32
    80002474:	00004497          	auipc	s1,0x4
    80002478:	55c48493          	addi	s1,s1,1372 # 800069d0 <tickslock>
    8000247c:	00048513          	mv	a0,s1
    80002480:	00001097          	auipc	ra,0x1
    80002484:	42c080e7          	jalr	1068(ra) # 800038ac <acquire>
    80002488:	00003717          	auipc	a4,0x3
    8000248c:	42c70713          	addi	a4,a4,1068 # 800058b4 <ticks>
    80002490:	00072783          	lw	a5,0(a4)
    80002494:	01013403          	ld	s0,16(sp)
    80002498:	01813083          	ld	ra,24(sp)
    8000249c:	00048513          	mv	a0,s1
    800024a0:	0017879b          	addiw	a5,a5,1
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	00f72023          	sw	a5,0(a4)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00001317          	auipc	t1,0x1
    800024b4:	4c830067          	jr	1224(t1) # 80003978 <release>

00000000800024b8 <devintr>:
    800024b8:	142027f3          	csrr	a5,scause
    800024bc:	00000513          	li	a0,0
    800024c0:	0007c463          	bltz	a5,800024c8 <devintr+0x10>
    800024c4:	00008067          	ret
    800024c8:	fe010113          	addi	sp,sp,-32
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00113c23          	sd	ra,24(sp)
    800024d4:	00913423          	sd	s1,8(sp)
    800024d8:	02010413          	addi	s0,sp,32
    800024dc:	0ff7f713          	andi	a4,a5,255
    800024e0:	00900693          	li	a3,9
    800024e4:	04d70c63          	beq	a4,a3,8000253c <devintr+0x84>
    800024e8:	fff00713          	li	a4,-1
    800024ec:	03f71713          	slli	a4,a4,0x3f
    800024f0:	00170713          	addi	a4,a4,1
    800024f4:	00e78c63          	beq	a5,a4,8000250c <devintr+0x54>
    800024f8:	01813083          	ld	ra,24(sp)
    800024fc:	01013403          	ld	s0,16(sp)
    80002500:	00813483          	ld	s1,8(sp)
    80002504:	02010113          	addi	sp,sp,32
    80002508:	00008067          	ret
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	c8c080e7          	jalr	-884(ra) # 80002198 <cpuid>
    80002514:	06050663          	beqz	a0,80002580 <devintr+0xc8>
    80002518:	144027f3          	csrr	a5,sip
    8000251c:	ffd7f793          	andi	a5,a5,-3
    80002520:	14479073          	csrw	sip,a5
    80002524:	01813083          	ld	ra,24(sp)
    80002528:	01013403          	ld	s0,16(sp)
    8000252c:	00813483          	ld	s1,8(sp)
    80002530:	00200513          	li	a0,2
    80002534:	02010113          	addi	sp,sp,32
    80002538:	00008067          	ret
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	258080e7          	jalr	600(ra) # 80002794 <plic_claim>
    80002544:	00a00793          	li	a5,10
    80002548:	00050493          	mv	s1,a0
    8000254c:	06f50663          	beq	a0,a5,800025b8 <devintr+0x100>
    80002550:	00100513          	li	a0,1
    80002554:	fa0482e3          	beqz	s1,800024f8 <devintr+0x40>
    80002558:	00048593          	mv	a1,s1
    8000255c:	00003517          	auipc	a0,0x3
    80002560:	c7c50513          	addi	a0,a0,-900 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	674080e7          	jalr	1652(ra) # 80002bd8 <__printf>
    8000256c:	00048513          	mv	a0,s1
    80002570:	00000097          	auipc	ra,0x0
    80002574:	25c080e7          	jalr	604(ra) # 800027cc <plic_complete>
    80002578:	00100513          	li	a0,1
    8000257c:	f7dff06f          	j	800024f8 <devintr+0x40>
    80002580:	00004517          	auipc	a0,0x4
    80002584:	45050513          	addi	a0,a0,1104 # 800069d0 <tickslock>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	324080e7          	jalr	804(ra) # 800038ac <acquire>
    80002590:	00003717          	auipc	a4,0x3
    80002594:	32470713          	addi	a4,a4,804 # 800058b4 <ticks>
    80002598:	00072783          	lw	a5,0(a4)
    8000259c:	00004517          	auipc	a0,0x4
    800025a0:	43450513          	addi	a0,a0,1076 # 800069d0 <tickslock>
    800025a4:	0017879b          	addiw	a5,a5,1
    800025a8:	00f72023          	sw	a5,0(a4)
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	3cc080e7          	jalr	972(ra) # 80003978 <release>
    800025b4:	f65ff06f          	j	80002518 <devintr+0x60>
    800025b8:	00001097          	auipc	ra,0x1
    800025bc:	f28080e7          	jalr	-216(ra) # 800034e0 <uartintr>
    800025c0:	fadff06f          	j	8000256c <devintr+0xb4>
	...

00000000800025d0 <kernelvec>:
    800025d0:	f0010113          	addi	sp,sp,-256
    800025d4:	00113023          	sd	ra,0(sp)
    800025d8:	00213423          	sd	sp,8(sp)
    800025dc:	00313823          	sd	gp,16(sp)
    800025e0:	00413c23          	sd	tp,24(sp)
    800025e4:	02513023          	sd	t0,32(sp)
    800025e8:	02613423          	sd	t1,40(sp)
    800025ec:	02713823          	sd	t2,48(sp)
    800025f0:	02813c23          	sd	s0,56(sp)
    800025f4:	04913023          	sd	s1,64(sp)
    800025f8:	04a13423          	sd	a0,72(sp)
    800025fc:	04b13823          	sd	a1,80(sp)
    80002600:	04c13c23          	sd	a2,88(sp)
    80002604:	06d13023          	sd	a3,96(sp)
    80002608:	06e13423          	sd	a4,104(sp)
    8000260c:	06f13823          	sd	a5,112(sp)
    80002610:	07013c23          	sd	a6,120(sp)
    80002614:	09113023          	sd	a7,128(sp)
    80002618:	09213423          	sd	s2,136(sp)
    8000261c:	09313823          	sd	s3,144(sp)
    80002620:	09413c23          	sd	s4,152(sp)
    80002624:	0b513023          	sd	s5,160(sp)
    80002628:	0b613423          	sd	s6,168(sp)
    8000262c:	0b713823          	sd	s7,176(sp)
    80002630:	0b813c23          	sd	s8,184(sp)
    80002634:	0d913023          	sd	s9,192(sp)
    80002638:	0da13423          	sd	s10,200(sp)
    8000263c:	0db13823          	sd	s11,208(sp)
    80002640:	0dc13c23          	sd	t3,216(sp)
    80002644:	0fd13023          	sd	t4,224(sp)
    80002648:	0fe13423          	sd	t5,232(sp)
    8000264c:	0ff13823          	sd	t6,240(sp)
    80002650:	cc9ff0ef          	jal	ra,80002318 <kerneltrap>
    80002654:	00013083          	ld	ra,0(sp)
    80002658:	00813103          	ld	sp,8(sp)
    8000265c:	01013183          	ld	gp,16(sp)
    80002660:	02013283          	ld	t0,32(sp)
    80002664:	02813303          	ld	t1,40(sp)
    80002668:	03013383          	ld	t2,48(sp)
    8000266c:	03813403          	ld	s0,56(sp)
    80002670:	04013483          	ld	s1,64(sp)
    80002674:	04813503          	ld	a0,72(sp)
    80002678:	05013583          	ld	a1,80(sp)
    8000267c:	05813603          	ld	a2,88(sp)
    80002680:	06013683          	ld	a3,96(sp)
    80002684:	06813703          	ld	a4,104(sp)
    80002688:	07013783          	ld	a5,112(sp)
    8000268c:	07813803          	ld	a6,120(sp)
    80002690:	08013883          	ld	a7,128(sp)
    80002694:	08813903          	ld	s2,136(sp)
    80002698:	09013983          	ld	s3,144(sp)
    8000269c:	09813a03          	ld	s4,152(sp)
    800026a0:	0a013a83          	ld	s5,160(sp)
    800026a4:	0a813b03          	ld	s6,168(sp)
    800026a8:	0b013b83          	ld	s7,176(sp)
    800026ac:	0b813c03          	ld	s8,184(sp)
    800026b0:	0c013c83          	ld	s9,192(sp)
    800026b4:	0c813d03          	ld	s10,200(sp)
    800026b8:	0d013d83          	ld	s11,208(sp)
    800026bc:	0d813e03          	ld	t3,216(sp)
    800026c0:	0e013e83          	ld	t4,224(sp)
    800026c4:	0e813f03          	ld	t5,232(sp)
    800026c8:	0f013f83          	ld	t6,240(sp)
    800026cc:	10010113          	addi	sp,sp,256
    800026d0:	10200073          	sret
    800026d4:	00000013          	nop
    800026d8:	00000013          	nop
    800026dc:	00000013          	nop

00000000800026e0 <timervec>:
    800026e0:	34051573          	csrrw	a0,mscratch,a0
    800026e4:	00b53023          	sd	a1,0(a0)
    800026e8:	00c53423          	sd	a2,8(a0)
    800026ec:	00d53823          	sd	a3,16(a0)
    800026f0:	01853583          	ld	a1,24(a0)
    800026f4:	02053603          	ld	a2,32(a0)
    800026f8:	0005b683          	ld	a3,0(a1)
    800026fc:	00c686b3          	add	a3,a3,a2
    80002700:	00d5b023          	sd	a3,0(a1)
    80002704:	00200593          	li	a1,2
    80002708:	14459073          	csrw	sip,a1
    8000270c:	01053683          	ld	a3,16(a0)
    80002710:	00853603          	ld	a2,8(a0)
    80002714:	00053583          	ld	a1,0(a0)
    80002718:	34051573          	csrrw	a0,mscratch,a0
    8000271c:	30200073          	mret

0000000080002720 <plicinit>:
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00813423          	sd	s0,8(sp)
    80002728:	01010413          	addi	s0,sp,16
    8000272c:	00813403          	ld	s0,8(sp)
    80002730:	0c0007b7          	lui	a5,0xc000
    80002734:	00100713          	li	a4,1
    80002738:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000273c:	00e7a223          	sw	a4,4(a5)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret

0000000080002748 <plicinithart>:
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813023          	sd	s0,0(sp)
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	a40080e7          	jalr	-1472(ra) # 80002198 <cpuid>
    80002760:	0085171b          	slliw	a4,a0,0x8
    80002764:	0c0027b7          	lui	a5,0xc002
    80002768:	00e787b3          	add	a5,a5,a4
    8000276c:	40200713          	li	a4,1026
    80002770:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	00d5151b          	slliw	a0,a0,0xd
    80002780:	0c2017b7          	lui	a5,0xc201
    80002784:	00a78533          	add	a0,a5,a0
    80002788:	00052023          	sw	zero,0(a0)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <plic_claim>:
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	01010413          	addi	s0,sp,16
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	9f4080e7          	jalr	-1548(ra) # 80002198 <cpuid>
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	00d5151b          	slliw	a0,a0,0xd
    800027b8:	0c2017b7          	lui	a5,0xc201
    800027bc:	00a78533          	add	a0,a5,a0
    800027c0:	00452503          	lw	a0,4(a0)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <plic_complete>:
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00813823          	sd	s0,16(sp)
    800027d4:	00913423          	sd	s1,8(sp)
    800027d8:	00113c23          	sd	ra,24(sp)
    800027dc:	02010413          	addi	s0,sp,32
    800027e0:	00050493          	mv	s1,a0
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	9b4080e7          	jalr	-1612(ra) # 80002198 <cpuid>
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00d5179b          	slliw	a5,a0,0xd
    800027f8:	0c201737          	lui	a4,0xc201
    800027fc:	00f707b3          	add	a5,a4,a5
    80002800:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret

0000000080002810 <consolewrite>:
    80002810:	fb010113          	addi	sp,sp,-80
    80002814:	04813023          	sd	s0,64(sp)
    80002818:	04113423          	sd	ra,72(sp)
    8000281c:	02913c23          	sd	s1,56(sp)
    80002820:	03213823          	sd	s2,48(sp)
    80002824:	03313423          	sd	s3,40(sp)
    80002828:	03413023          	sd	s4,32(sp)
    8000282c:	01513c23          	sd	s5,24(sp)
    80002830:	05010413          	addi	s0,sp,80
    80002834:	06c05c63          	blez	a2,800028ac <consolewrite+0x9c>
    80002838:	00060993          	mv	s3,a2
    8000283c:	00050a13          	mv	s4,a0
    80002840:	00058493          	mv	s1,a1
    80002844:	00000913          	li	s2,0
    80002848:	fff00a93          	li	s5,-1
    8000284c:	01c0006f          	j	80002868 <consolewrite+0x58>
    80002850:	fbf44503          	lbu	a0,-65(s0)
    80002854:	0019091b          	addiw	s2,s2,1
    80002858:	00148493          	addi	s1,s1,1
    8000285c:	00001097          	auipc	ra,0x1
    80002860:	a9c080e7          	jalr	-1380(ra) # 800032f8 <uartputc>
    80002864:	03298063          	beq	s3,s2,80002884 <consolewrite+0x74>
    80002868:	00048613          	mv	a2,s1
    8000286c:	00100693          	li	a3,1
    80002870:	000a0593          	mv	a1,s4
    80002874:	fbf40513          	addi	a0,s0,-65
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	9d8080e7          	jalr	-1576(ra) # 80002250 <either_copyin>
    80002880:	fd5518e3          	bne	a0,s5,80002850 <consolewrite+0x40>
    80002884:	04813083          	ld	ra,72(sp)
    80002888:	04013403          	ld	s0,64(sp)
    8000288c:	03813483          	ld	s1,56(sp)
    80002890:	02813983          	ld	s3,40(sp)
    80002894:	02013a03          	ld	s4,32(sp)
    80002898:	01813a83          	ld	s5,24(sp)
    8000289c:	00090513          	mv	a0,s2
    800028a0:	03013903          	ld	s2,48(sp)
    800028a4:	05010113          	addi	sp,sp,80
    800028a8:	00008067          	ret
    800028ac:	00000913          	li	s2,0
    800028b0:	fd5ff06f          	j	80002884 <consolewrite+0x74>

00000000800028b4 <consoleread>:
    800028b4:	f9010113          	addi	sp,sp,-112
    800028b8:	06813023          	sd	s0,96(sp)
    800028bc:	04913c23          	sd	s1,88(sp)
    800028c0:	05213823          	sd	s2,80(sp)
    800028c4:	05313423          	sd	s3,72(sp)
    800028c8:	05413023          	sd	s4,64(sp)
    800028cc:	03513c23          	sd	s5,56(sp)
    800028d0:	03613823          	sd	s6,48(sp)
    800028d4:	03713423          	sd	s7,40(sp)
    800028d8:	03813023          	sd	s8,32(sp)
    800028dc:	06113423          	sd	ra,104(sp)
    800028e0:	01913c23          	sd	s9,24(sp)
    800028e4:	07010413          	addi	s0,sp,112
    800028e8:	00060b93          	mv	s7,a2
    800028ec:	00050913          	mv	s2,a0
    800028f0:	00058c13          	mv	s8,a1
    800028f4:	00060b1b          	sext.w	s6,a2
    800028f8:	00004497          	auipc	s1,0x4
    800028fc:	10048493          	addi	s1,s1,256 # 800069f8 <cons>
    80002900:	00400993          	li	s3,4
    80002904:	fff00a13          	li	s4,-1
    80002908:	00a00a93          	li	s5,10
    8000290c:	05705e63          	blez	s7,80002968 <consoleread+0xb4>
    80002910:	09c4a703          	lw	a4,156(s1)
    80002914:	0984a783          	lw	a5,152(s1)
    80002918:	0007071b          	sext.w	a4,a4
    8000291c:	08e78463          	beq	a5,a4,800029a4 <consoleread+0xf0>
    80002920:	07f7f713          	andi	a4,a5,127
    80002924:	00e48733          	add	a4,s1,a4
    80002928:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000292c:	0017869b          	addiw	a3,a5,1
    80002930:	08d4ac23          	sw	a3,152(s1)
    80002934:	00070c9b          	sext.w	s9,a4
    80002938:	0b370663          	beq	a4,s3,800029e4 <consoleread+0x130>
    8000293c:	00100693          	li	a3,1
    80002940:	f9f40613          	addi	a2,s0,-97
    80002944:	000c0593          	mv	a1,s8
    80002948:	00090513          	mv	a0,s2
    8000294c:	f8e40fa3          	sb	a4,-97(s0)
    80002950:	00000097          	auipc	ra,0x0
    80002954:	8b4080e7          	jalr	-1868(ra) # 80002204 <either_copyout>
    80002958:	01450863          	beq	a0,s4,80002968 <consoleread+0xb4>
    8000295c:	001c0c13          	addi	s8,s8,1
    80002960:	fffb8b9b          	addiw	s7,s7,-1
    80002964:	fb5c94e3          	bne	s9,s5,8000290c <consoleread+0x58>
    80002968:	000b851b          	sext.w	a0,s7
    8000296c:	06813083          	ld	ra,104(sp)
    80002970:	06013403          	ld	s0,96(sp)
    80002974:	05813483          	ld	s1,88(sp)
    80002978:	05013903          	ld	s2,80(sp)
    8000297c:	04813983          	ld	s3,72(sp)
    80002980:	04013a03          	ld	s4,64(sp)
    80002984:	03813a83          	ld	s5,56(sp)
    80002988:	02813b83          	ld	s7,40(sp)
    8000298c:	02013c03          	ld	s8,32(sp)
    80002990:	01813c83          	ld	s9,24(sp)
    80002994:	40ab053b          	subw	a0,s6,a0
    80002998:	03013b03          	ld	s6,48(sp)
    8000299c:	07010113          	addi	sp,sp,112
    800029a0:	00008067          	ret
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	1d8080e7          	jalr	472(ra) # 80003b7c <push_on>
    800029ac:	0984a703          	lw	a4,152(s1)
    800029b0:	09c4a783          	lw	a5,156(s1)
    800029b4:	0007879b          	sext.w	a5,a5
    800029b8:	fef70ce3          	beq	a4,a5,800029b0 <consoleread+0xfc>
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	234080e7          	jalr	564(ra) # 80003bf0 <pop_on>
    800029c4:	0984a783          	lw	a5,152(s1)
    800029c8:	07f7f713          	andi	a4,a5,127
    800029cc:	00e48733          	add	a4,s1,a4
    800029d0:	01874703          	lbu	a4,24(a4)
    800029d4:	0017869b          	addiw	a3,a5,1
    800029d8:	08d4ac23          	sw	a3,152(s1)
    800029dc:	00070c9b          	sext.w	s9,a4
    800029e0:	f5371ee3          	bne	a4,s3,8000293c <consoleread+0x88>
    800029e4:	000b851b          	sext.w	a0,s7
    800029e8:	f96bf2e3          	bgeu	s7,s6,8000296c <consoleread+0xb8>
    800029ec:	08f4ac23          	sw	a5,152(s1)
    800029f0:	f7dff06f          	j	8000296c <consoleread+0xb8>

00000000800029f4 <consputc>:
    800029f4:	10000793          	li	a5,256
    800029f8:	00f50663          	beq	a0,a5,80002a04 <consputc+0x10>
    800029fc:	00001317          	auipc	t1,0x1
    80002a00:	9f430067          	jr	-1548(t1) # 800033f0 <uartputc_sync>
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00113423          	sd	ra,8(sp)
    80002a0c:	00813023          	sd	s0,0(sp)
    80002a10:	01010413          	addi	s0,sp,16
    80002a14:	00800513          	li	a0,8
    80002a18:	00001097          	auipc	ra,0x1
    80002a1c:	9d8080e7          	jalr	-1576(ra) # 800033f0 <uartputc_sync>
    80002a20:	02000513          	li	a0,32
    80002a24:	00001097          	auipc	ra,0x1
    80002a28:	9cc080e7          	jalr	-1588(ra) # 800033f0 <uartputc_sync>
    80002a2c:	00013403          	ld	s0,0(sp)
    80002a30:	00813083          	ld	ra,8(sp)
    80002a34:	00800513          	li	a0,8
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00001317          	auipc	t1,0x1
    80002a40:	9b430067          	jr	-1612(t1) # 800033f0 <uartputc_sync>

0000000080002a44 <consoleintr>:
    80002a44:	fe010113          	addi	sp,sp,-32
    80002a48:	00813823          	sd	s0,16(sp)
    80002a4c:	00913423          	sd	s1,8(sp)
    80002a50:	01213023          	sd	s2,0(sp)
    80002a54:	00113c23          	sd	ra,24(sp)
    80002a58:	02010413          	addi	s0,sp,32
    80002a5c:	00004917          	auipc	s2,0x4
    80002a60:	f9c90913          	addi	s2,s2,-100 # 800069f8 <cons>
    80002a64:	00050493          	mv	s1,a0
    80002a68:	00090513          	mv	a0,s2
    80002a6c:	00001097          	auipc	ra,0x1
    80002a70:	e40080e7          	jalr	-448(ra) # 800038ac <acquire>
    80002a74:	02048c63          	beqz	s1,80002aac <consoleintr+0x68>
    80002a78:	0a092783          	lw	a5,160(s2)
    80002a7c:	09892703          	lw	a4,152(s2)
    80002a80:	07f00693          	li	a3,127
    80002a84:	40e7873b          	subw	a4,a5,a4
    80002a88:	02e6e263          	bltu	a3,a4,80002aac <consoleintr+0x68>
    80002a8c:	00d00713          	li	a4,13
    80002a90:	04e48063          	beq	s1,a4,80002ad0 <consoleintr+0x8c>
    80002a94:	07f7f713          	andi	a4,a5,127
    80002a98:	00e90733          	add	a4,s2,a4
    80002a9c:	0017879b          	addiw	a5,a5,1
    80002aa0:	0af92023          	sw	a5,160(s2)
    80002aa4:	00970c23          	sb	s1,24(a4)
    80002aa8:	08f92e23          	sw	a5,156(s2)
    80002aac:	01013403          	ld	s0,16(sp)
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	00004517          	auipc	a0,0x4
    80002ac0:	f3c50513          	addi	a0,a0,-196 # 800069f8 <cons>
    80002ac4:	02010113          	addi	sp,sp,32
    80002ac8:	00001317          	auipc	t1,0x1
    80002acc:	eb030067          	jr	-336(t1) # 80003978 <release>
    80002ad0:	00a00493          	li	s1,10
    80002ad4:	fc1ff06f          	j	80002a94 <consoleintr+0x50>

0000000080002ad8 <consoleinit>:
    80002ad8:	fe010113          	addi	sp,sp,-32
    80002adc:	00113c23          	sd	ra,24(sp)
    80002ae0:	00813823          	sd	s0,16(sp)
    80002ae4:	00913423          	sd	s1,8(sp)
    80002ae8:	02010413          	addi	s0,sp,32
    80002aec:	00004497          	auipc	s1,0x4
    80002af0:	f0c48493          	addi	s1,s1,-244 # 800069f8 <cons>
    80002af4:	00048513          	mv	a0,s1
    80002af8:	00002597          	auipc	a1,0x2
    80002afc:	73858593          	addi	a1,a1,1848 # 80005230 <_ZZ12printIntegermE6digits+0x138>
    80002b00:	00001097          	auipc	ra,0x1
    80002b04:	d88080e7          	jalr	-632(ra) # 80003888 <initlock>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	7ac080e7          	jalr	1964(ra) # 800032b4 <uartinit>
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00000797          	auipc	a5,0x0
    80002b1c:	d9c78793          	addi	a5,a5,-612 # 800028b4 <consoleread>
    80002b20:	0af4bc23          	sd	a5,184(s1)
    80002b24:	00000797          	auipc	a5,0x0
    80002b28:	cec78793          	addi	a5,a5,-788 # 80002810 <consolewrite>
    80002b2c:	0cf4b023          	sd	a5,192(s1)
    80002b30:	00813483          	ld	s1,8(sp)
    80002b34:	02010113          	addi	sp,sp,32
    80002b38:	00008067          	ret

0000000080002b3c <console_read>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16
    80002b48:	00813403          	ld	s0,8(sp)
    80002b4c:	00004317          	auipc	t1,0x4
    80002b50:	f6433303          	ld	t1,-156(t1) # 80006ab0 <devsw+0x10>
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00030067          	jr	t1

0000000080002b5c <console_write>:
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00813423          	sd	s0,8(sp)
    80002b64:	01010413          	addi	s0,sp,16
    80002b68:	00813403          	ld	s0,8(sp)
    80002b6c:	00004317          	auipc	t1,0x4
    80002b70:	f4c33303          	ld	t1,-180(t1) # 80006ab8 <devsw+0x18>
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00030067          	jr	t1

0000000080002b7c <panic>:
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00813823          	sd	s0,16(sp)
    80002b88:	00913423          	sd	s1,8(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    80002b90:	00050493          	mv	s1,a0
    80002b94:	00002517          	auipc	a0,0x2
    80002b98:	6a450513          	addi	a0,a0,1700 # 80005238 <_ZZ12printIntegermE6digits+0x140>
    80002b9c:	00004797          	auipc	a5,0x4
    80002ba0:	fa07ae23          	sw	zero,-68(a5) # 80006b58 <pr+0x18>
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	034080e7          	jalr	52(ra) # 80002bd8 <__printf>
    80002bac:	00048513          	mv	a0,s1
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	028080e7          	jalr	40(ra) # 80002bd8 <__printf>
    80002bb8:	00002517          	auipc	a0,0x2
    80002bbc:	53850513          	addi	a0,a0,1336 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	018080e7          	jalr	24(ra) # 80002bd8 <__printf>
    80002bc8:	00100793          	li	a5,1
    80002bcc:	00003717          	auipc	a4,0x3
    80002bd0:	cef72623          	sw	a5,-788(a4) # 800058b8 <panicked>
    80002bd4:	0000006f          	j	80002bd4 <panic+0x58>

0000000080002bd8 <__printf>:
    80002bd8:	f3010113          	addi	sp,sp,-208
    80002bdc:	08813023          	sd	s0,128(sp)
    80002be0:	07313423          	sd	s3,104(sp)
    80002be4:	09010413          	addi	s0,sp,144
    80002be8:	05813023          	sd	s8,64(sp)
    80002bec:	08113423          	sd	ra,136(sp)
    80002bf0:	06913c23          	sd	s1,120(sp)
    80002bf4:	07213823          	sd	s2,112(sp)
    80002bf8:	07413023          	sd	s4,96(sp)
    80002bfc:	05513c23          	sd	s5,88(sp)
    80002c00:	05613823          	sd	s6,80(sp)
    80002c04:	05713423          	sd	s7,72(sp)
    80002c08:	03913c23          	sd	s9,56(sp)
    80002c0c:	03a13823          	sd	s10,48(sp)
    80002c10:	03b13423          	sd	s11,40(sp)
    80002c14:	00004317          	auipc	t1,0x4
    80002c18:	f2c30313          	addi	t1,t1,-212 # 80006b40 <pr>
    80002c1c:	01832c03          	lw	s8,24(t1)
    80002c20:	00b43423          	sd	a1,8(s0)
    80002c24:	00c43823          	sd	a2,16(s0)
    80002c28:	00d43c23          	sd	a3,24(s0)
    80002c2c:	02e43023          	sd	a4,32(s0)
    80002c30:	02f43423          	sd	a5,40(s0)
    80002c34:	03043823          	sd	a6,48(s0)
    80002c38:	03143c23          	sd	a7,56(s0)
    80002c3c:	00050993          	mv	s3,a0
    80002c40:	4a0c1663          	bnez	s8,800030ec <__printf+0x514>
    80002c44:	60098c63          	beqz	s3,8000325c <__printf+0x684>
    80002c48:	0009c503          	lbu	a0,0(s3)
    80002c4c:	00840793          	addi	a5,s0,8
    80002c50:	f6f43c23          	sd	a5,-136(s0)
    80002c54:	00000493          	li	s1,0
    80002c58:	22050063          	beqz	a0,80002e78 <__printf+0x2a0>
    80002c5c:	00002a37          	lui	s4,0x2
    80002c60:	00018ab7          	lui	s5,0x18
    80002c64:	000f4b37          	lui	s6,0xf4
    80002c68:	00989bb7          	lui	s7,0x989
    80002c6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002c70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002c74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002c78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002c7c:	00148c9b          	addiw	s9,s1,1
    80002c80:	02500793          	li	a5,37
    80002c84:	01998933          	add	s2,s3,s9
    80002c88:	38f51263          	bne	a0,a5,8000300c <__printf+0x434>
    80002c8c:	00094783          	lbu	a5,0(s2)
    80002c90:	00078c9b          	sext.w	s9,a5
    80002c94:	1e078263          	beqz	a5,80002e78 <__printf+0x2a0>
    80002c98:	0024849b          	addiw	s1,s1,2
    80002c9c:	07000713          	li	a4,112
    80002ca0:	00998933          	add	s2,s3,s1
    80002ca4:	38e78a63          	beq	a5,a4,80003038 <__printf+0x460>
    80002ca8:	20f76863          	bltu	a4,a5,80002eb8 <__printf+0x2e0>
    80002cac:	42a78863          	beq	a5,a0,800030dc <__printf+0x504>
    80002cb0:	06400713          	li	a4,100
    80002cb4:	40e79663          	bne	a5,a4,800030c0 <__printf+0x4e8>
    80002cb8:	f7843783          	ld	a5,-136(s0)
    80002cbc:	0007a603          	lw	a2,0(a5)
    80002cc0:	00878793          	addi	a5,a5,8
    80002cc4:	f6f43c23          	sd	a5,-136(s0)
    80002cc8:	42064a63          	bltz	a2,800030fc <__printf+0x524>
    80002ccc:	00a00713          	li	a4,10
    80002cd0:	02e677bb          	remuw	a5,a2,a4
    80002cd4:	00002d97          	auipc	s11,0x2
    80002cd8:	58cd8d93          	addi	s11,s11,1420 # 80005260 <digits>
    80002cdc:	00900593          	li	a1,9
    80002ce0:	0006051b          	sext.w	a0,a2
    80002ce4:	00000c93          	li	s9,0
    80002ce8:	02079793          	slli	a5,a5,0x20
    80002cec:	0207d793          	srli	a5,a5,0x20
    80002cf0:	00fd87b3          	add	a5,s11,a5
    80002cf4:	0007c783          	lbu	a5,0(a5)
    80002cf8:	02e656bb          	divuw	a3,a2,a4
    80002cfc:	f8f40023          	sb	a5,-128(s0)
    80002d00:	14c5d863          	bge	a1,a2,80002e50 <__printf+0x278>
    80002d04:	06300593          	li	a1,99
    80002d08:	00100c93          	li	s9,1
    80002d0c:	02e6f7bb          	remuw	a5,a3,a4
    80002d10:	02079793          	slli	a5,a5,0x20
    80002d14:	0207d793          	srli	a5,a5,0x20
    80002d18:	00fd87b3          	add	a5,s11,a5
    80002d1c:	0007c783          	lbu	a5,0(a5)
    80002d20:	02e6d73b          	divuw	a4,a3,a4
    80002d24:	f8f400a3          	sb	a5,-127(s0)
    80002d28:	12a5f463          	bgeu	a1,a0,80002e50 <__printf+0x278>
    80002d2c:	00a00693          	li	a3,10
    80002d30:	00900593          	li	a1,9
    80002d34:	02d777bb          	remuw	a5,a4,a3
    80002d38:	02079793          	slli	a5,a5,0x20
    80002d3c:	0207d793          	srli	a5,a5,0x20
    80002d40:	00fd87b3          	add	a5,s11,a5
    80002d44:	0007c503          	lbu	a0,0(a5)
    80002d48:	02d757bb          	divuw	a5,a4,a3
    80002d4c:	f8a40123          	sb	a0,-126(s0)
    80002d50:	48e5f263          	bgeu	a1,a4,800031d4 <__printf+0x5fc>
    80002d54:	06300513          	li	a0,99
    80002d58:	02d7f5bb          	remuw	a1,a5,a3
    80002d5c:	02059593          	slli	a1,a1,0x20
    80002d60:	0205d593          	srli	a1,a1,0x20
    80002d64:	00bd85b3          	add	a1,s11,a1
    80002d68:	0005c583          	lbu	a1,0(a1)
    80002d6c:	02d7d7bb          	divuw	a5,a5,a3
    80002d70:	f8b401a3          	sb	a1,-125(s0)
    80002d74:	48e57263          	bgeu	a0,a4,800031f8 <__printf+0x620>
    80002d78:	3e700513          	li	a0,999
    80002d7c:	02d7f5bb          	remuw	a1,a5,a3
    80002d80:	02059593          	slli	a1,a1,0x20
    80002d84:	0205d593          	srli	a1,a1,0x20
    80002d88:	00bd85b3          	add	a1,s11,a1
    80002d8c:	0005c583          	lbu	a1,0(a1)
    80002d90:	02d7d7bb          	divuw	a5,a5,a3
    80002d94:	f8b40223          	sb	a1,-124(s0)
    80002d98:	46e57663          	bgeu	a0,a4,80003204 <__printf+0x62c>
    80002d9c:	02d7f5bb          	remuw	a1,a5,a3
    80002da0:	02059593          	slli	a1,a1,0x20
    80002da4:	0205d593          	srli	a1,a1,0x20
    80002da8:	00bd85b3          	add	a1,s11,a1
    80002dac:	0005c583          	lbu	a1,0(a1)
    80002db0:	02d7d7bb          	divuw	a5,a5,a3
    80002db4:	f8b402a3          	sb	a1,-123(s0)
    80002db8:	46ea7863          	bgeu	s4,a4,80003228 <__printf+0x650>
    80002dbc:	02d7f5bb          	remuw	a1,a5,a3
    80002dc0:	02059593          	slli	a1,a1,0x20
    80002dc4:	0205d593          	srli	a1,a1,0x20
    80002dc8:	00bd85b3          	add	a1,s11,a1
    80002dcc:	0005c583          	lbu	a1,0(a1)
    80002dd0:	02d7d7bb          	divuw	a5,a5,a3
    80002dd4:	f8b40323          	sb	a1,-122(s0)
    80002dd8:	3eeaf863          	bgeu	s5,a4,800031c8 <__printf+0x5f0>
    80002ddc:	02d7f5bb          	remuw	a1,a5,a3
    80002de0:	02059593          	slli	a1,a1,0x20
    80002de4:	0205d593          	srli	a1,a1,0x20
    80002de8:	00bd85b3          	add	a1,s11,a1
    80002dec:	0005c583          	lbu	a1,0(a1)
    80002df0:	02d7d7bb          	divuw	a5,a5,a3
    80002df4:	f8b403a3          	sb	a1,-121(s0)
    80002df8:	42eb7e63          	bgeu	s6,a4,80003234 <__printf+0x65c>
    80002dfc:	02d7f5bb          	remuw	a1,a5,a3
    80002e00:	02059593          	slli	a1,a1,0x20
    80002e04:	0205d593          	srli	a1,a1,0x20
    80002e08:	00bd85b3          	add	a1,s11,a1
    80002e0c:	0005c583          	lbu	a1,0(a1)
    80002e10:	02d7d7bb          	divuw	a5,a5,a3
    80002e14:	f8b40423          	sb	a1,-120(s0)
    80002e18:	42ebfc63          	bgeu	s7,a4,80003250 <__printf+0x678>
    80002e1c:	02079793          	slli	a5,a5,0x20
    80002e20:	0207d793          	srli	a5,a5,0x20
    80002e24:	00fd8db3          	add	s11,s11,a5
    80002e28:	000dc703          	lbu	a4,0(s11)
    80002e2c:	00a00793          	li	a5,10
    80002e30:	00900c93          	li	s9,9
    80002e34:	f8e404a3          	sb	a4,-119(s0)
    80002e38:	00065c63          	bgez	a2,80002e50 <__printf+0x278>
    80002e3c:	f9040713          	addi	a4,s0,-112
    80002e40:	00f70733          	add	a4,a4,a5
    80002e44:	02d00693          	li	a3,45
    80002e48:	fed70823          	sb	a3,-16(a4)
    80002e4c:	00078c93          	mv	s9,a5
    80002e50:	f8040793          	addi	a5,s0,-128
    80002e54:	01978cb3          	add	s9,a5,s9
    80002e58:	f7f40d13          	addi	s10,s0,-129
    80002e5c:	000cc503          	lbu	a0,0(s9)
    80002e60:	fffc8c93          	addi	s9,s9,-1
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	b90080e7          	jalr	-1136(ra) # 800029f4 <consputc>
    80002e6c:	ffac98e3          	bne	s9,s10,80002e5c <__printf+0x284>
    80002e70:	00094503          	lbu	a0,0(s2)
    80002e74:	e00514e3          	bnez	a0,80002c7c <__printf+0xa4>
    80002e78:	1a0c1663          	bnez	s8,80003024 <__printf+0x44c>
    80002e7c:	08813083          	ld	ra,136(sp)
    80002e80:	08013403          	ld	s0,128(sp)
    80002e84:	07813483          	ld	s1,120(sp)
    80002e88:	07013903          	ld	s2,112(sp)
    80002e8c:	06813983          	ld	s3,104(sp)
    80002e90:	06013a03          	ld	s4,96(sp)
    80002e94:	05813a83          	ld	s5,88(sp)
    80002e98:	05013b03          	ld	s6,80(sp)
    80002e9c:	04813b83          	ld	s7,72(sp)
    80002ea0:	04013c03          	ld	s8,64(sp)
    80002ea4:	03813c83          	ld	s9,56(sp)
    80002ea8:	03013d03          	ld	s10,48(sp)
    80002eac:	02813d83          	ld	s11,40(sp)
    80002eb0:	0d010113          	addi	sp,sp,208
    80002eb4:	00008067          	ret
    80002eb8:	07300713          	li	a4,115
    80002ebc:	1ce78a63          	beq	a5,a4,80003090 <__printf+0x4b8>
    80002ec0:	07800713          	li	a4,120
    80002ec4:	1ee79e63          	bne	a5,a4,800030c0 <__printf+0x4e8>
    80002ec8:	f7843783          	ld	a5,-136(s0)
    80002ecc:	0007a703          	lw	a4,0(a5)
    80002ed0:	00878793          	addi	a5,a5,8
    80002ed4:	f6f43c23          	sd	a5,-136(s0)
    80002ed8:	28074263          	bltz	a4,8000315c <__printf+0x584>
    80002edc:	00002d97          	auipc	s11,0x2
    80002ee0:	384d8d93          	addi	s11,s11,900 # 80005260 <digits>
    80002ee4:	00f77793          	andi	a5,a4,15
    80002ee8:	00fd87b3          	add	a5,s11,a5
    80002eec:	0007c683          	lbu	a3,0(a5)
    80002ef0:	00f00613          	li	a2,15
    80002ef4:	0007079b          	sext.w	a5,a4
    80002ef8:	f8d40023          	sb	a3,-128(s0)
    80002efc:	0047559b          	srliw	a1,a4,0x4
    80002f00:	0047569b          	srliw	a3,a4,0x4
    80002f04:	00000c93          	li	s9,0
    80002f08:	0ee65063          	bge	a2,a4,80002fe8 <__printf+0x410>
    80002f0c:	00f6f693          	andi	a3,a3,15
    80002f10:	00dd86b3          	add	a3,s11,a3
    80002f14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002f18:	0087d79b          	srliw	a5,a5,0x8
    80002f1c:	00100c93          	li	s9,1
    80002f20:	f8d400a3          	sb	a3,-127(s0)
    80002f24:	0cb67263          	bgeu	a2,a1,80002fe8 <__printf+0x410>
    80002f28:	00f7f693          	andi	a3,a5,15
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c583          	lbu	a1,0(a3)
    80002f34:	00f00613          	li	a2,15
    80002f38:	0047d69b          	srliw	a3,a5,0x4
    80002f3c:	f8b40123          	sb	a1,-126(s0)
    80002f40:	0047d593          	srli	a1,a5,0x4
    80002f44:	28f67e63          	bgeu	a2,a5,800031e0 <__printf+0x608>
    80002f48:	00f6f693          	andi	a3,a3,15
    80002f4c:	00dd86b3          	add	a3,s11,a3
    80002f50:	0006c503          	lbu	a0,0(a3)
    80002f54:	0087d813          	srli	a6,a5,0x8
    80002f58:	0087d69b          	srliw	a3,a5,0x8
    80002f5c:	f8a401a3          	sb	a0,-125(s0)
    80002f60:	28b67663          	bgeu	a2,a1,800031ec <__printf+0x614>
    80002f64:	00f6f693          	andi	a3,a3,15
    80002f68:	00dd86b3          	add	a3,s11,a3
    80002f6c:	0006c583          	lbu	a1,0(a3)
    80002f70:	00c7d513          	srli	a0,a5,0xc
    80002f74:	00c7d69b          	srliw	a3,a5,0xc
    80002f78:	f8b40223          	sb	a1,-124(s0)
    80002f7c:	29067a63          	bgeu	a2,a6,80003210 <__printf+0x638>
    80002f80:	00f6f693          	andi	a3,a3,15
    80002f84:	00dd86b3          	add	a3,s11,a3
    80002f88:	0006c583          	lbu	a1,0(a3)
    80002f8c:	0107d813          	srli	a6,a5,0x10
    80002f90:	0107d69b          	srliw	a3,a5,0x10
    80002f94:	f8b402a3          	sb	a1,-123(s0)
    80002f98:	28a67263          	bgeu	a2,a0,8000321c <__printf+0x644>
    80002f9c:	00f6f693          	andi	a3,a3,15
    80002fa0:	00dd86b3          	add	a3,s11,a3
    80002fa4:	0006c683          	lbu	a3,0(a3)
    80002fa8:	0147d79b          	srliw	a5,a5,0x14
    80002fac:	f8d40323          	sb	a3,-122(s0)
    80002fb0:	21067663          	bgeu	a2,a6,800031bc <__printf+0x5e4>
    80002fb4:	02079793          	slli	a5,a5,0x20
    80002fb8:	0207d793          	srli	a5,a5,0x20
    80002fbc:	00fd8db3          	add	s11,s11,a5
    80002fc0:	000dc683          	lbu	a3,0(s11)
    80002fc4:	00800793          	li	a5,8
    80002fc8:	00700c93          	li	s9,7
    80002fcc:	f8d403a3          	sb	a3,-121(s0)
    80002fd0:	00075c63          	bgez	a4,80002fe8 <__printf+0x410>
    80002fd4:	f9040713          	addi	a4,s0,-112
    80002fd8:	00f70733          	add	a4,a4,a5
    80002fdc:	02d00693          	li	a3,45
    80002fe0:	fed70823          	sb	a3,-16(a4)
    80002fe4:	00078c93          	mv	s9,a5
    80002fe8:	f8040793          	addi	a5,s0,-128
    80002fec:	01978cb3          	add	s9,a5,s9
    80002ff0:	f7f40d13          	addi	s10,s0,-129
    80002ff4:	000cc503          	lbu	a0,0(s9)
    80002ff8:	fffc8c93          	addi	s9,s9,-1
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	9f8080e7          	jalr	-1544(ra) # 800029f4 <consputc>
    80003004:	ff9d18e3          	bne	s10,s9,80002ff4 <__printf+0x41c>
    80003008:	0100006f          	j	80003018 <__printf+0x440>
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	9e8080e7          	jalr	-1560(ra) # 800029f4 <consputc>
    80003014:	000c8493          	mv	s1,s9
    80003018:	00094503          	lbu	a0,0(s2)
    8000301c:	c60510e3          	bnez	a0,80002c7c <__printf+0xa4>
    80003020:	e40c0ee3          	beqz	s8,80002e7c <__printf+0x2a4>
    80003024:	00004517          	auipc	a0,0x4
    80003028:	b1c50513          	addi	a0,a0,-1252 # 80006b40 <pr>
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	94c080e7          	jalr	-1716(ra) # 80003978 <release>
    80003034:	e49ff06f          	j	80002e7c <__printf+0x2a4>
    80003038:	f7843783          	ld	a5,-136(s0)
    8000303c:	03000513          	li	a0,48
    80003040:	01000d13          	li	s10,16
    80003044:	00878713          	addi	a4,a5,8
    80003048:	0007bc83          	ld	s9,0(a5)
    8000304c:	f6e43c23          	sd	a4,-136(s0)
    80003050:	00000097          	auipc	ra,0x0
    80003054:	9a4080e7          	jalr	-1628(ra) # 800029f4 <consputc>
    80003058:	07800513          	li	a0,120
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	998080e7          	jalr	-1640(ra) # 800029f4 <consputc>
    80003064:	00002d97          	auipc	s11,0x2
    80003068:	1fcd8d93          	addi	s11,s11,508 # 80005260 <digits>
    8000306c:	03ccd793          	srli	a5,s9,0x3c
    80003070:	00fd87b3          	add	a5,s11,a5
    80003074:	0007c503          	lbu	a0,0(a5)
    80003078:	fffd0d1b          	addiw	s10,s10,-1
    8000307c:	004c9c93          	slli	s9,s9,0x4
    80003080:	00000097          	auipc	ra,0x0
    80003084:	974080e7          	jalr	-1676(ra) # 800029f4 <consputc>
    80003088:	fe0d12e3          	bnez	s10,8000306c <__printf+0x494>
    8000308c:	f8dff06f          	j	80003018 <__printf+0x440>
    80003090:	f7843783          	ld	a5,-136(s0)
    80003094:	0007bc83          	ld	s9,0(a5)
    80003098:	00878793          	addi	a5,a5,8
    8000309c:	f6f43c23          	sd	a5,-136(s0)
    800030a0:	000c9a63          	bnez	s9,800030b4 <__printf+0x4dc>
    800030a4:	1080006f          	j	800031ac <__printf+0x5d4>
    800030a8:	001c8c93          	addi	s9,s9,1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	948080e7          	jalr	-1720(ra) # 800029f4 <consputc>
    800030b4:	000cc503          	lbu	a0,0(s9)
    800030b8:	fe0518e3          	bnez	a0,800030a8 <__printf+0x4d0>
    800030bc:	f5dff06f          	j	80003018 <__printf+0x440>
    800030c0:	02500513          	li	a0,37
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	930080e7          	jalr	-1744(ra) # 800029f4 <consputc>
    800030cc:	000c8513          	mv	a0,s9
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	924080e7          	jalr	-1756(ra) # 800029f4 <consputc>
    800030d8:	f41ff06f          	j	80003018 <__printf+0x440>
    800030dc:	02500513          	li	a0,37
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	914080e7          	jalr	-1772(ra) # 800029f4 <consputc>
    800030e8:	f31ff06f          	j	80003018 <__printf+0x440>
    800030ec:	00030513          	mv	a0,t1
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	7bc080e7          	jalr	1980(ra) # 800038ac <acquire>
    800030f8:	b4dff06f          	j	80002c44 <__printf+0x6c>
    800030fc:	40c0053b          	negw	a0,a2
    80003100:	00a00713          	li	a4,10
    80003104:	02e576bb          	remuw	a3,a0,a4
    80003108:	00002d97          	auipc	s11,0x2
    8000310c:	158d8d93          	addi	s11,s11,344 # 80005260 <digits>
    80003110:	ff700593          	li	a1,-9
    80003114:	02069693          	slli	a3,a3,0x20
    80003118:	0206d693          	srli	a3,a3,0x20
    8000311c:	00dd86b3          	add	a3,s11,a3
    80003120:	0006c683          	lbu	a3,0(a3)
    80003124:	02e557bb          	divuw	a5,a0,a4
    80003128:	f8d40023          	sb	a3,-128(s0)
    8000312c:	10b65e63          	bge	a2,a1,80003248 <__printf+0x670>
    80003130:	06300593          	li	a1,99
    80003134:	02e7f6bb          	remuw	a3,a5,a4
    80003138:	02069693          	slli	a3,a3,0x20
    8000313c:	0206d693          	srli	a3,a3,0x20
    80003140:	00dd86b3          	add	a3,s11,a3
    80003144:	0006c683          	lbu	a3,0(a3)
    80003148:	02e7d73b          	divuw	a4,a5,a4
    8000314c:	00200793          	li	a5,2
    80003150:	f8d400a3          	sb	a3,-127(s0)
    80003154:	bca5ece3          	bltu	a1,a0,80002d2c <__printf+0x154>
    80003158:	ce5ff06f          	j	80002e3c <__printf+0x264>
    8000315c:	40e007bb          	negw	a5,a4
    80003160:	00002d97          	auipc	s11,0x2
    80003164:	100d8d93          	addi	s11,s11,256 # 80005260 <digits>
    80003168:	00f7f693          	andi	a3,a5,15
    8000316c:	00dd86b3          	add	a3,s11,a3
    80003170:	0006c583          	lbu	a1,0(a3)
    80003174:	ff100613          	li	a2,-15
    80003178:	0047d69b          	srliw	a3,a5,0x4
    8000317c:	f8b40023          	sb	a1,-128(s0)
    80003180:	0047d59b          	srliw	a1,a5,0x4
    80003184:	0ac75e63          	bge	a4,a2,80003240 <__printf+0x668>
    80003188:	00f6f693          	andi	a3,a3,15
    8000318c:	00dd86b3          	add	a3,s11,a3
    80003190:	0006c603          	lbu	a2,0(a3)
    80003194:	00f00693          	li	a3,15
    80003198:	0087d79b          	srliw	a5,a5,0x8
    8000319c:	f8c400a3          	sb	a2,-127(s0)
    800031a0:	d8b6e4e3          	bltu	a3,a1,80002f28 <__printf+0x350>
    800031a4:	00200793          	li	a5,2
    800031a8:	e2dff06f          	j	80002fd4 <__printf+0x3fc>
    800031ac:	00002c97          	auipc	s9,0x2
    800031b0:	094c8c93          	addi	s9,s9,148 # 80005240 <_ZZ12printIntegermE6digits+0x148>
    800031b4:	02800513          	li	a0,40
    800031b8:	ef1ff06f          	j	800030a8 <__printf+0x4d0>
    800031bc:	00700793          	li	a5,7
    800031c0:	00600c93          	li	s9,6
    800031c4:	e0dff06f          	j	80002fd0 <__printf+0x3f8>
    800031c8:	00700793          	li	a5,7
    800031cc:	00600c93          	li	s9,6
    800031d0:	c69ff06f          	j	80002e38 <__printf+0x260>
    800031d4:	00300793          	li	a5,3
    800031d8:	00200c93          	li	s9,2
    800031dc:	c5dff06f          	j	80002e38 <__printf+0x260>
    800031e0:	00300793          	li	a5,3
    800031e4:	00200c93          	li	s9,2
    800031e8:	de9ff06f          	j	80002fd0 <__printf+0x3f8>
    800031ec:	00400793          	li	a5,4
    800031f0:	00300c93          	li	s9,3
    800031f4:	dddff06f          	j	80002fd0 <__printf+0x3f8>
    800031f8:	00400793          	li	a5,4
    800031fc:	00300c93          	li	s9,3
    80003200:	c39ff06f          	j	80002e38 <__printf+0x260>
    80003204:	00500793          	li	a5,5
    80003208:	00400c93          	li	s9,4
    8000320c:	c2dff06f          	j	80002e38 <__printf+0x260>
    80003210:	00500793          	li	a5,5
    80003214:	00400c93          	li	s9,4
    80003218:	db9ff06f          	j	80002fd0 <__printf+0x3f8>
    8000321c:	00600793          	li	a5,6
    80003220:	00500c93          	li	s9,5
    80003224:	dadff06f          	j	80002fd0 <__printf+0x3f8>
    80003228:	00600793          	li	a5,6
    8000322c:	00500c93          	li	s9,5
    80003230:	c09ff06f          	j	80002e38 <__printf+0x260>
    80003234:	00800793          	li	a5,8
    80003238:	00700c93          	li	s9,7
    8000323c:	bfdff06f          	j	80002e38 <__printf+0x260>
    80003240:	00100793          	li	a5,1
    80003244:	d91ff06f          	j	80002fd4 <__printf+0x3fc>
    80003248:	00100793          	li	a5,1
    8000324c:	bf1ff06f          	j	80002e3c <__printf+0x264>
    80003250:	00900793          	li	a5,9
    80003254:	00800c93          	li	s9,8
    80003258:	be1ff06f          	j	80002e38 <__printf+0x260>
    8000325c:	00002517          	auipc	a0,0x2
    80003260:	fec50513          	addi	a0,a0,-20 # 80005248 <_ZZ12printIntegermE6digits+0x150>
    80003264:	00000097          	auipc	ra,0x0
    80003268:	918080e7          	jalr	-1768(ra) # 80002b7c <panic>

000000008000326c <printfinit>:
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00813823          	sd	s0,16(sp)
    80003274:	00913423          	sd	s1,8(sp)
    80003278:	00113c23          	sd	ra,24(sp)
    8000327c:	02010413          	addi	s0,sp,32
    80003280:	00004497          	auipc	s1,0x4
    80003284:	8c048493          	addi	s1,s1,-1856 # 80006b40 <pr>
    80003288:	00048513          	mv	a0,s1
    8000328c:	00002597          	auipc	a1,0x2
    80003290:	fcc58593          	addi	a1,a1,-52 # 80005258 <_ZZ12printIntegermE6digits+0x160>
    80003294:	00000097          	auipc	ra,0x0
    80003298:	5f4080e7          	jalr	1524(ra) # 80003888 <initlock>
    8000329c:	01813083          	ld	ra,24(sp)
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	0004ac23          	sw	zero,24(s1)
    800032a8:	00813483          	ld	s1,8(sp)
    800032ac:	02010113          	addi	sp,sp,32
    800032b0:	00008067          	ret

00000000800032b4 <uartinit>:
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00813423          	sd	s0,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    800032c0:	100007b7          	lui	a5,0x10000
    800032c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800032c8:	f8000713          	li	a4,-128
    800032cc:	00e781a3          	sb	a4,3(a5)
    800032d0:	00300713          	li	a4,3
    800032d4:	00e78023          	sb	a4,0(a5)
    800032d8:	000780a3          	sb	zero,1(a5)
    800032dc:	00e781a3          	sb	a4,3(a5)
    800032e0:	00700693          	li	a3,7
    800032e4:	00d78123          	sb	a3,2(a5)
    800032e8:	00e780a3          	sb	a4,1(a5)
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <uartputc>:
    800032f8:	00002797          	auipc	a5,0x2
    800032fc:	5c07a783          	lw	a5,1472(a5) # 800058b8 <panicked>
    80003300:	00078463          	beqz	a5,80003308 <uartputc+0x10>
    80003304:	0000006f          	j	80003304 <uartputc+0xc>
    80003308:	fd010113          	addi	sp,sp,-48
    8000330c:	02813023          	sd	s0,32(sp)
    80003310:	00913c23          	sd	s1,24(sp)
    80003314:	01213823          	sd	s2,16(sp)
    80003318:	01313423          	sd	s3,8(sp)
    8000331c:	02113423          	sd	ra,40(sp)
    80003320:	03010413          	addi	s0,sp,48
    80003324:	00002917          	auipc	s2,0x2
    80003328:	59c90913          	addi	s2,s2,1436 # 800058c0 <uart_tx_r>
    8000332c:	00093783          	ld	a5,0(s2)
    80003330:	00002497          	auipc	s1,0x2
    80003334:	59848493          	addi	s1,s1,1432 # 800058c8 <uart_tx_w>
    80003338:	0004b703          	ld	a4,0(s1)
    8000333c:	02078693          	addi	a3,a5,32
    80003340:	00050993          	mv	s3,a0
    80003344:	02e69c63          	bne	a3,a4,8000337c <uartputc+0x84>
    80003348:	00001097          	auipc	ra,0x1
    8000334c:	834080e7          	jalr	-1996(ra) # 80003b7c <push_on>
    80003350:	00093783          	ld	a5,0(s2)
    80003354:	0004b703          	ld	a4,0(s1)
    80003358:	02078793          	addi	a5,a5,32
    8000335c:	00e79463          	bne	a5,a4,80003364 <uartputc+0x6c>
    80003360:	0000006f          	j	80003360 <uartputc+0x68>
    80003364:	00001097          	auipc	ra,0x1
    80003368:	88c080e7          	jalr	-1908(ra) # 80003bf0 <pop_on>
    8000336c:	00093783          	ld	a5,0(s2)
    80003370:	0004b703          	ld	a4,0(s1)
    80003374:	02078693          	addi	a3,a5,32
    80003378:	fce688e3          	beq	a3,a4,80003348 <uartputc+0x50>
    8000337c:	01f77693          	andi	a3,a4,31
    80003380:	00003597          	auipc	a1,0x3
    80003384:	7e058593          	addi	a1,a1,2016 # 80006b60 <uart_tx_buf>
    80003388:	00d586b3          	add	a3,a1,a3
    8000338c:	00170713          	addi	a4,a4,1
    80003390:	01368023          	sb	s3,0(a3)
    80003394:	00e4b023          	sd	a4,0(s1)
    80003398:	10000637          	lui	a2,0x10000
    8000339c:	02f71063          	bne	a4,a5,800033bc <uartputc+0xc4>
    800033a0:	0340006f          	j	800033d4 <uartputc+0xdc>
    800033a4:	00074703          	lbu	a4,0(a4)
    800033a8:	00f93023          	sd	a5,0(s2)
    800033ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800033b0:	00093783          	ld	a5,0(s2)
    800033b4:	0004b703          	ld	a4,0(s1)
    800033b8:	00f70e63          	beq	a4,a5,800033d4 <uartputc+0xdc>
    800033bc:	00564683          	lbu	a3,5(a2)
    800033c0:	01f7f713          	andi	a4,a5,31
    800033c4:	00e58733          	add	a4,a1,a4
    800033c8:	0206f693          	andi	a3,a3,32
    800033cc:	00178793          	addi	a5,a5,1
    800033d0:	fc069ae3          	bnez	a3,800033a4 <uartputc+0xac>
    800033d4:	02813083          	ld	ra,40(sp)
    800033d8:	02013403          	ld	s0,32(sp)
    800033dc:	01813483          	ld	s1,24(sp)
    800033e0:	01013903          	ld	s2,16(sp)
    800033e4:	00813983          	ld	s3,8(sp)
    800033e8:	03010113          	addi	sp,sp,48
    800033ec:	00008067          	ret

00000000800033f0 <uartputc_sync>:
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00813423          	sd	s0,8(sp)
    800033f8:	01010413          	addi	s0,sp,16
    800033fc:	00002717          	auipc	a4,0x2
    80003400:	4bc72703          	lw	a4,1212(a4) # 800058b8 <panicked>
    80003404:	02071663          	bnez	a4,80003430 <uartputc_sync+0x40>
    80003408:	00050793          	mv	a5,a0
    8000340c:	100006b7          	lui	a3,0x10000
    80003410:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003414:	02077713          	andi	a4,a4,32
    80003418:	fe070ce3          	beqz	a4,80003410 <uartputc_sync+0x20>
    8000341c:	0ff7f793          	andi	a5,a5,255
    80003420:	00f68023          	sb	a5,0(a3)
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret
    80003430:	0000006f          	j	80003430 <uartputc_sync+0x40>

0000000080003434 <uartstart>:
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00813423          	sd	s0,8(sp)
    8000343c:	01010413          	addi	s0,sp,16
    80003440:	00002617          	auipc	a2,0x2
    80003444:	48060613          	addi	a2,a2,1152 # 800058c0 <uart_tx_r>
    80003448:	00002517          	auipc	a0,0x2
    8000344c:	48050513          	addi	a0,a0,1152 # 800058c8 <uart_tx_w>
    80003450:	00063783          	ld	a5,0(a2)
    80003454:	00053703          	ld	a4,0(a0)
    80003458:	04f70263          	beq	a4,a5,8000349c <uartstart+0x68>
    8000345c:	100005b7          	lui	a1,0x10000
    80003460:	00003817          	auipc	a6,0x3
    80003464:	70080813          	addi	a6,a6,1792 # 80006b60 <uart_tx_buf>
    80003468:	01c0006f          	j	80003484 <uartstart+0x50>
    8000346c:	0006c703          	lbu	a4,0(a3)
    80003470:	00f63023          	sd	a5,0(a2)
    80003474:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003478:	00063783          	ld	a5,0(a2)
    8000347c:	00053703          	ld	a4,0(a0)
    80003480:	00f70e63          	beq	a4,a5,8000349c <uartstart+0x68>
    80003484:	01f7f713          	andi	a4,a5,31
    80003488:	00e806b3          	add	a3,a6,a4
    8000348c:	0055c703          	lbu	a4,5(a1)
    80003490:	00178793          	addi	a5,a5,1
    80003494:	02077713          	andi	a4,a4,32
    80003498:	fc071ae3          	bnez	a4,8000346c <uartstart+0x38>
    8000349c:	00813403          	ld	s0,8(sp)
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret

00000000800034a8 <uartgetc>:
    800034a8:	ff010113          	addi	sp,sp,-16
    800034ac:	00813423          	sd	s0,8(sp)
    800034b0:	01010413          	addi	s0,sp,16
    800034b4:	10000737          	lui	a4,0x10000
    800034b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800034bc:	0017f793          	andi	a5,a5,1
    800034c0:	00078c63          	beqz	a5,800034d8 <uartgetc+0x30>
    800034c4:	00074503          	lbu	a0,0(a4)
    800034c8:	0ff57513          	andi	a0,a0,255
    800034cc:	00813403          	ld	s0,8(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret
    800034d8:	fff00513          	li	a0,-1
    800034dc:	ff1ff06f          	j	800034cc <uartgetc+0x24>

00000000800034e0 <uartintr>:
    800034e0:	100007b7          	lui	a5,0x10000
    800034e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800034e8:	0017f793          	andi	a5,a5,1
    800034ec:	0a078463          	beqz	a5,80003594 <uartintr+0xb4>
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00813823          	sd	s0,16(sp)
    800034f8:	00913423          	sd	s1,8(sp)
    800034fc:	00113c23          	sd	ra,24(sp)
    80003500:	02010413          	addi	s0,sp,32
    80003504:	100004b7          	lui	s1,0x10000
    80003508:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000350c:	0ff57513          	andi	a0,a0,255
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	534080e7          	jalr	1332(ra) # 80002a44 <consoleintr>
    80003518:	0054c783          	lbu	a5,5(s1)
    8000351c:	0017f793          	andi	a5,a5,1
    80003520:	fe0794e3          	bnez	a5,80003508 <uartintr+0x28>
    80003524:	00002617          	auipc	a2,0x2
    80003528:	39c60613          	addi	a2,a2,924 # 800058c0 <uart_tx_r>
    8000352c:	00002517          	auipc	a0,0x2
    80003530:	39c50513          	addi	a0,a0,924 # 800058c8 <uart_tx_w>
    80003534:	00063783          	ld	a5,0(a2)
    80003538:	00053703          	ld	a4,0(a0)
    8000353c:	04f70263          	beq	a4,a5,80003580 <uartintr+0xa0>
    80003540:	100005b7          	lui	a1,0x10000
    80003544:	00003817          	auipc	a6,0x3
    80003548:	61c80813          	addi	a6,a6,1564 # 80006b60 <uart_tx_buf>
    8000354c:	01c0006f          	j	80003568 <uartintr+0x88>
    80003550:	0006c703          	lbu	a4,0(a3)
    80003554:	00f63023          	sd	a5,0(a2)
    80003558:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000355c:	00063783          	ld	a5,0(a2)
    80003560:	00053703          	ld	a4,0(a0)
    80003564:	00f70e63          	beq	a4,a5,80003580 <uartintr+0xa0>
    80003568:	01f7f713          	andi	a4,a5,31
    8000356c:	00e806b3          	add	a3,a6,a4
    80003570:	0055c703          	lbu	a4,5(a1)
    80003574:	00178793          	addi	a5,a5,1
    80003578:	02077713          	andi	a4,a4,32
    8000357c:	fc071ae3          	bnez	a4,80003550 <uartintr+0x70>
    80003580:	01813083          	ld	ra,24(sp)
    80003584:	01013403          	ld	s0,16(sp)
    80003588:	00813483          	ld	s1,8(sp)
    8000358c:	02010113          	addi	sp,sp,32
    80003590:	00008067          	ret
    80003594:	00002617          	auipc	a2,0x2
    80003598:	32c60613          	addi	a2,a2,812 # 800058c0 <uart_tx_r>
    8000359c:	00002517          	auipc	a0,0x2
    800035a0:	32c50513          	addi	a0,a0,812 # 800058c8 <uart_tx_w>
    800035a4:	00063783          	ld	a5,0(a2)
    800035a8:	00053703          	ld	a4,0(a0)
    800035ac:	04f70263          	beq	a4,a5,800035f0 <uartintr+0x110>
    800035b0:	100005b7          	lui	a1,0x10000
    800035b4:	00003817          	auipc	a6,0x3
    800035b8:	5ac80813          	addi	a6,a6,1452 # 80006b60 <uart_tx_buf>
    800035bc:	01c0006f          	j	800035d8 <uartintr+0xf8>
    800035c0:	0006c703          	lbu	a4,0(a3)
    800035c4:	00f63023          	sd	a5,0(a2)
    800035c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035cc:	00063783          	ld	a5,0(a2)
    800035d0:	00053703          	ld	a4,0(a0)
    800035d4:	02f70063          	beq	a4,a5,800035f4 <uartintr+0x114>
    800035d8:	01f7f713          	andi	a4,a5,31
    800035dc:	00e806b3          	add	a3,a6,a4
    800035e0:	0055c703          	lbu	a4,5(a1)
    800035e4:	00178793          	addi	a5,a5,1
    800035e8:	02077713          	andi	a4,a4,32
    800035ec:	fc071ae3          	bnez	a4,800035c0 <uartintr+0xe0>
    800035f0:	00008067          	ret
    800035f4:	00008067          	ret

00000000800035f8 <kinit>:
    800035f8:	fc010113          	addi	sp,sp,-64
    800035fc:	02913423          	sd	s1,40(sp)
    80003600:	fffff7b7          	lui	a5,0xfffff
    80003604:	00004497          	auipc	s1,0x4
    80003608:	57b48493          	addi	s1,s1,1403 # 80007b7f <end+0xfff>
    8000360c:	02813823          	sd	s0,48(sp)
    80003610:	01313c23          	sd	s3,24(sp)
    80003614:	00f4f4b3          	and	s1,s1,a5
    80003618:	02113c23          	sd	ra,56(sp)
    8000361c:	03213023          	sd	s2,32(sp)
    80003620:	01413823          	sd	s4,16(sp)
    80003624:	01513423          	sd	s5,8(sp)
    80003628:	04010413          	addi	s0,sp,64
    8000362c:	000017b7          	lui	a5,0x1
    80003630:	01100993          	li	s3,17
    80003634:	00f487b3          	add	a5,s1,a5
    80003638:	01b99993          	slli	s3,s3,0x1b
    8000363c:	06f9e063          	bltu	s3,a5,8000369c <kinit+0xa4>
    80003640:	00003a97          	auipc	s5,0x3
    80003644:	540a8a93          	addi	s5,s5,1344 # 80006b80 <end>
    80003648:	0754ec63          	bltu	s1,s5,800036c0 <kinit+0xc8>
    8000364c:	0734fa63          	bgeu	s1,s3,800036c0 <kinit+0xc8>
    80003650:	00088a37          	lui	s4,0x88
    80003654:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003658:	00002917          	auipc	s2,0x2
    8000365c:	27890913          	addi	s2,s2,632 # 800058d0 <kmem>
    80003660:	00ca1a13          	slli	s4,s4,0xc
    80003664:	0140006f          	j	80003678 <kinit+0x80>
    80003668:	000017b7          	lui	a5,0x1
    8000366c:	00f484b3          	add	s1,s1,a5
    80003670:	0554e863          	bltu	s1,s5,800036c0 <kinit+0xc8>
    80003674:	0534f663          	bgeu	s1,s3,800036c0 <kinit+0xc8>
    80003678:	00001637          	lui	a2,0x1
    8000367c:	00100593          	li	a1,1
    80003680:	00048513          	mv	a0,s1
    80003684:	00000097          	auipc	ra,0x0
    80003688:	5e4080e7          	jalr	1508(ra) # 80003c68 <__memset>
    8000368c:	00093783          	ld	a5,0(s2)
    80003690:	00f4b023          	sd	a5,0(s1)
    80003694:	00993023          	sd	s1,0(s2)
    80003698:	fd4498e3          	bne	s1,s4,80003668 <kinit+0x70>
    8000369c:	03813083          	ld	ra,56(sp)
    800036a0:	03013403          	ld	s0,48(sp)
    800036a4:	02813483          	ld	s1,40(sp)
    800036a8:	02013903          	ld	s2,32(sp)
    800036ac:	01813983          	ld	s3,24(sp)
    800036b0:	01013a03          	ld	s4,16(sp)
    800036b4:	00813a83          	ld	s5,8(sp)
    800036b8:	04010113          	addi	sp,sp,64
    800036bc:	00008067          	ret
    800036c0:	00002517          	auipc	a0,0x2
    800036c4:	bb850513          	addi	a0,a0,-1096 # 80005278 <digits+0x18>
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	4b4080e7          	jalr	1204(ra) # 80002b7c <panic>

00000000800036d0 <freerange>:
    800036d0:	fc010113          	addi	sp,sp,-64
    800036d4:	000017b7          	lui	a5,0x1
    800036d8:	02913423          	sd	s1,40(sp)
    800036dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800036e0:	009504b3          	add	s1,a0,s1
    800036e4:	fffff537          	lui	a0,0xfffff
    800036e8:	02813823          	sd	s0,48(sp)
    800036ec:	02113c23          	sd	ra,56(sp)
    800036f0:	03213023          	sd	s2,32(sp)
    800036f4:	01313c23          	sd	s3,24(sp)
    800036f8:	01413823          	sd	s4,16(sp)
    800036fc:	01513423          	sd	s5,8(sp)
    80003700:	01613023          	sd	s6,0(sp)
    80003704:	04010413          	addi	s0,sp,64
    80003708:	00a4f4b3          	and	s1,s1,a0
    8000370c:	00f487b3          	add	a5,s1,a5
    80003710:	06f5e463          	bltu	a1,a5,80003778 <freerange+0xa8>
    80003714:	00003a97          	auipc	s5,0x3
    80003718:	46ca8a93          	addi	s5,s5,1132 # 80006b80 <end>
    8000371c:	0954e263          	bltu	s1,s5,800037a0 <freerange+0xd0>
    80003720:	01100993          	li	s3,17
    80003724:	01b99993          	slli	s3,s3,0x1b
    80003728:	0734fc63          	bgeu	s1,s3,800037a0 <freerange+0xd0>
    8000372c:	00058a13          	mv	s4,a1
    80003730:	00002917          	auipc	s2,0x2
    80003734:	1a090913          	addi	s2,s2,416 # 800058d0 <kmem>
    80003738:	00002b37          	lui	s6,0x2
    8000373c:	0140006f          	j	80003750 <freerange+0x80>
    80003740:	000017b7          	lui	a5,0x1
    80003744:	00f484b3          	add	s1,s1,a5
    80003748:	0554ec63          	bltu	s1,s5,800037a0 <freerange+0xd0>
    8000374c:	0534fa63          	bgeu	s1,s3,800037a0 <freerange+0xd0>
    80003750:	00001637          	lui	a2,0x1
    80003754:	00100593          	li	a1,1
    80003758:	00048513          	mv	a0,s1
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	50c080e7          	jalr	1292(ra) # 80003c68 <__memset>
    80003764:	00093703          	ld	a4,0(s2)
    80003768:	016487b3          	add	a5,s1,s6
    8000376c:	00e4b023          	sd	a4,0(s1)
    80003770:	00993023          	sd	s1,0(s2)
    80003774:	fcfa76e3          	bgeu	s4,a5,80003740 <freerange+0x70>
    80003778:	03813083          	ld	ra,56(sp)
    8000377c:	03013403          	ld	s0,48(sp)
    80003780:	02813483          	ld	s1,40(sp)
    80003784:	02013903          	ld	s2,32(sp)
    80003788:	01813983          	ld	s3,24(sp)
    8000378c:	01013a03          	ld	s4,16(sp)
    80003790:	00813a83          	ld	s5,8(sp)
    80003794:	00013b03          	ld	s6,0(sp)
    80003798:	04010113          	addi	sp,sp,64
    8000379c:	00008067          	ret
    800037a0:	00002517          	auipc	a0,0x2
    800037a4:	ad850513          	addi	a0,a0,-1320 # 80005278 <digits+0x18>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	3d4080e7          	jalr	980(ra) # 80002b7c <panic>

00000000800037b0 <kfree>:
    800037b0:	fe010113          	addi	sp,sp,-32
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	00913423          	sd	s1,8(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	03451793          	slli	a5,a0,0x34
    800037c8:	04079c63          	bnez	a5,80003820 <kfree+0x70>
    800037cc:	00003797          	auipc	a5,0x3
    800037d0:	3b478793          	addi	a5,a5,948 # 80006b80 <end>
    800037d4:	00050493          	mv	s1,a0
    800037d8:	04f56463          	bltu	a0,a5,80003820 <kfree+0x70>
    800037dc:	01100793          	li	a5,17
    800037e0:	01b79793          	slli	a5,a5,0x1b
    800037e4:	02f57e63          	bgeu	a0,a5,80003820 <kfree+0x70>
    800037e8:	00001637          	lui	a2,0x1
    800037ec:	00100593          	li	a1,1
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	478080e7          	jalr	1144(ra) # 80003c68 <__memset>
    800037f8:	00002797          	auipc	a5,0x2
    800037fc:	0d878793          	addi	a5,a5,216 # 800058d0 <kmem>
    80003800:	0007b703          	ld	a4,0(a5)
    80003804:	01813083          	ld	ra,24(sp)
    80003808:	01013403          	ld	s0,16(sp)
    8000380c:	00e4b023          	sd	a4,0(s1)
    80003810:	0097b023          	sd	s1,0(a5)
    80003814:	00813483          	ld	s1,8(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret
    80003820:	00002517          	auipc	a0,0x2
    80003824:	a5850513          	addi	a0,a0,-1448 # 80005278 <digits+0x18>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	354080e7          	jalr	852(ra) # 80002b7c <panic>

0000000080003830 <kalloc>:
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00913423          	sd	s1,8(sp)
    8000383c:	00113c23          	sd	ra,24(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	00002797          	auipc	a5,0x2
    80003848:	08c78793          	addi	a5,a5,140 # 800058d0 <kmem>
    8000384c:	0007b483          	ld	s1,0(a5)
    80003850:	02048063          	beqz	s1,80003870 <kalloc+0x40>
    80003854:	0004b703          	ld	a4,0(s1)
    80003858:	00001637          	lui	a2,0x1
    8000385c:	00500593          	li	a1,5
    80003860:	00048513          	mv	a0,s1
    80003864:	00e7b023          	sd	a4,0(a5)
    80003868:	00000097          	auipc	ra,0x0
    8000386c:	400080e7          	jalr	1024(ra) # 80003c68 <__memset>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00048513          	mv	a0,s1
    8000387c:	00813483          	ld	s1,8(sp)
    80003880:	02010113          	addi	sp,sp,32
    80003884:	00008067          	ret

0000000080003888 <initlock>:
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00813423          	sd	s0,8(sp)
    80003890:	01010413          	addi	s0,sp,16
    80003894:	00813403          	ld	s0,8(sp)
    80003898:	00b53423          	sd	a1,8(a0)
    8000389c:	00052023          	sw	zero,0(a0)
    800038a0:	00053823          	sd	zero,16(a0)
    800038a4:	01010113          	addi	sp,sp,16
    800038a8:	00008067          	ret

00000000800038ac <acquire>:
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00913423          	sd	s1,8(sp)
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	01213023          	sd	s2,0(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	00050493          	mv	s1,a0
    800038c8:	10002973          	csrr	s2,sstatus
    800038cc:	100027f3          	csrr	a5,sstatus
    800038d0:	ffd7f793          	andi	a5,a5,-3
    800038d4:	10079073          	csrw	sstatus,a5
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	8e0080e7          	jalr	-1824(ra) # 800021b8 <mycpu>
    800038e0:	07852783          	lw	a5,120(a0)
    800038e4:	06078e63          	beqz	a5,80003960 <acquire+0xb4>
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	8d0080e7          	jalr	-1840(ra) # 800021b8 <mycpu>
    800038f0:	07852783          	lw	a5,120(a0)
    800038f4:	0004a703          	lw	a4,0(s1)
    800038f8:	0017879b          	addiw	a5,a5,1
    800038fc:	06f52c23          	sw	a5,120(a0)
    80003900:	04071063          	bnez	a4,80003940 <acquire+0x94>
    80003904:	00100713          	li	a4,1
    80003908:	00070793          	mv	a5,a4
    8000390c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003910:	0007879b          	sext.w	a5,a5
    80003914:	fe079ae3          	bnez	a5,80003908 <acquire+0x5c>
    80003918:	0ff0000f          	fence
    8000391c:	fffff097          	auipc	ra,0xfffff
    80003920:	89c080e7          	jalr	-1892(ra) # 800021b8 <mycpu>
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00a4b823          	sd	a0,16(s1)
    80003930:	00013903          	ld	s2,0(sp)
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret
    80003940:	0104b903          	ld	s2,16(s1)
    80003944:	fffff097          	auipc	ra,0xfffff
    80003948:	874080e7          	jalr	-1932(ra) # 800021b8 <mycpu>
    8000394c:	faa91ce3          	bne	s2,a0,80003904 <acquire+0x58>
    80003950:	00002517          	auipc	a0,0x2
    80003954:	93050513          	addi	a0,a0,-1744 # 80005280 <digits+0x20>
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	224080e7          	jalr	548(ra) # 80002b7c <panic>
    80003960:	00195913          	srli	s2,s2,0x1
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	854080e7          	jalr	-1964(ra) # 800021b8 <mycpu>
    8000396c:	00197913          	andi	s2,s2,1
    80003970:	07252e23          	sw	s2,124(a0)
    80003974:	f75ff06f          	j	800038e8 <acquire+0x3c>

0000000080003978 <release>:
    80003978:	fe010113          	addi	sp,sp,-32
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	01213023          	sd	s2,0(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00052783          	lw	a5,0(a0)
    80003994:	00079a63          	bnez	a5,800039a8 <release+0x30>
    80003998:	00002517          	auipc	a0,0x2
    8000399c:	8f050513          	addi	a0,a0,-1808 # 80005288 <digits+0x28>
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	1dc080e7          	jalr	476(ra) # 80002b7c <panic>
    800039a8:	01053903          	ld	s2,16(a0)
    800039ac:	00050493          	mv	s1,a0
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	808080e7          	jalr	-2040(ra) # 800021b8 <mycpu>
    800039b8:	fea910e3          	bne	s2,a0,80003998 <release+0x20>
    800039bc:	0004b823          	sd	zero,16(s1)
    800039c0:	0ff0000f          	fence
    800039c4:	0f50000f          	fence	iorw,ow
    800039c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	7ec080e7          	jalr	2028(ra) # 800021b8 <mycpu>
    800039d4:	100027f3          	csrr	a5,sstatus
    800039d8:	0027f793          	andi	a5,a5,2
    800039dc:	04079a63          	bnez	a5,80003a30 <release+0xb8>
    800039e0:	07852783          	lw	a5,120(a0)
    800039e4:	02f05e63          	blez	a5,80003a20 <release+0xa8>
    800039e8:	fff7871b          	addiw	a4,a5,-1
    800039ec:	06e52c23          	sw	a4,120(a0)
    800039f0:	00071c63          	bnez	a4,80003a08 <release+0x90>
    800039f4:	07c52783          	lw	a5,124(a0)
    800039f8:	00078863          	beqz	a5,80003a08 <release+0x90>
    800039fc:	100027f3          	csrr	a5,sstatus
    80003a00:	0027e793          	ori	a5,a5,2
    80003a04:	10079073          	csrw	sstatus,a5
    80003a08:	01813083          	ld	ra,24(sp)
    80003a0c:	01013403          	ld	s0,16(sp)
    80003a10:	00813483          	ld	s1,8(sp)
    80003a14:	00013903          	ld	s2,0(sp)
    80003a18:	02010113          	addi	sp,sp,32
    80003a1c:	00008067          	ret
    80003a20:	00002517          	auipc	a0,0x2
    80003a24:	88850513          	addi	a0,a0,-1912 # 800052a8 <digits+0x48>
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	154080e7          	jalr	340(ra) # 80002b7c <panic>
    80003a30:	00002517          	auipc	a0,0x2
    80003a34:	86050513          	addi	a0,a0,-1952 # 80005290 <digits+0x30>
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	144080e7          	jalr	324(ra) # 80002b7c <panic>

0000000080003a40 <holding>:
    80003a40:	00052783          	lw	a5,0(a0)
    80003a44:	00079663          	bnez	a5,80003a50 <holding+0x10>
    80003a48:	00000513          	li	a0,0
    80003a4c:	00008067          	ret
    80003a50:	fe010113          	addi	sp,sp,-32
    80003a54:	00813823          	sd	s0,16(sp)
    80003a58:	00913423          	sd	s1,8(sp)
    80003a5c:	00113c23          	sd	ra,24(sp)
    80003a60:	02010413          	addi	s0,sp,32
    80003a64:	01053483          	ld	s1,16(a0)
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	750080e7          	jalr	1872(ra) # 800021b8 <mycpu>
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	40a48533          	sub	a0,s1,a0
    80003a7c:	00153513          	seqz	a0,a0
    80003a80:	00813483          	ld	s1,8(sp)
    80003a84:	02010113          	addi	sp,sp,32
    80003a88:	00008067          	ret

0000000080003a8c <push_off>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	100024f3          	csrr	s1,sstatus
    80003aa4:	100027f3          	csrr	a5,sstatus
    80003aa8:	ffd7f793          	andi	a5,a5,-3
    80003aac:	10079073          	csrw	sstatus,a5
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	708080e7          	jalr	1800(ra) # 800021b8 <mycpu>
    80003ab8:	07852783          	lw	a5,120(a0)
    80003abc:	02078663          	beqz	a5,80003ae8 <push_off+0x5c>
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	6f8080e7          	jalr	1784(ra) # 800021b8 <mycpu>
    80003ac8:	07852783          	lw	a5,120(a0)
    80003acc:	01813083          	ld	ra,24(sp)
    80003ad0:	01013403          	ld	s0,16(sp)
    80003ad4:	0017879b          	addiw	a5,a5,1
    80003ad8:	06f52c23          	sw	a5,120(a0)
    80003adc:	00813483          	ld	s1,8(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret
    80003ae8:	0014d493          	srli	s1,s1,0x1
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	6cc080e7          	jalr	1740(ra) # 800021b8 <mycpu>
    80003af4:	0014f493          	andi	s1,s1,1
    80003af8:	06952e23          	sw	s1,124(a0)
    80003afc:	fc5ff06f          	j	80003ac0 <push_off+0x34>

0000000080003b00 <pop_off>:
    80003b00:	ff010113          	addi	sp,sp,-16
    80003b04:	00813023          	sd	s0,0(sp)
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	6a8080e7          	jalr	1704(ra) # 800021b8 <mycpu>
    80003b18:	100027f3          	csrr	a5,sstatus
    80003b1c:	0027f793          	andi	a5,a5,2
    80003b20:	04079663          	bnez	a5,80003b6c <pop_off+0x6c>
    80003b24:	07852783          	lw	a5,120(a0)
    80003b28:	02f05a63          	blez	a5,80003b5c <pop_off+0x5c>
    80003b2c:	fff7871b          	addiw	a4,a5,-1
    80003b30:	06e52c23          	sw	a4,120(a0)
    80003b34:	00071c63          	bnez	a4,80003b4c <pop_off+0x4c>
    80003b38:	07c52783          	lw	a5,124(a0)
    80003b3c:	00078863          	beqz	a5,80003b4c <pop_off+0x4c>
    80003b40:	100027f3          	csrr	a5,sstatus
    80003b44:	0027e793          	ori	a5,a5,2
    80003b48:	10079073          	csrw	sstatus,a5
    80003b4c:	00813083          	ld	ra,8(sp)
    80003b50:	00013403          	ld	s0,0(sp)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret
    80003b5c:	00001517          	auipc	a0,0x1
    80003b60:	74c50513          	addi	a0,a0,1868 # 800052a8 <digits+0x48>
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	018080e7          	jalr	24(ra) # 80002b7c <panic>
    80003b6c:	00001517          	auipc	a0,0x1
    80003b70:	72450513          	addi	a0,a0,1828 # 80005290 <digits+0x30>
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	008080e7          	jalr	8(ra) # 80002b7c <panic>

0000000080003b7c <push_on>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	100024f3          	csrr	s1,sstatus
    80003b94:	100027f3          	csrr	a5,sstatus
    80003b98:	0027e793          	ori	a5,a5,2
    80003b9c:	10079073          	csrw	sstatus,a5
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	618080e7          	jalr	1560(ra) # 800021b8 <mycpu>
    80003ba8:	07852783          	lw	a5,120(a0)
    80003bac:	02078663          	beqz	a5,80003bd8 <push_on+0x5c>
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	608080e7          	jalr	1544(ra) # 800021b8 <mycpu>
    80003bb8:	07852783          	lw	a5,120(a0)
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	0017879b          	addiw	a5,a5,1
    80003bc8:	06f52c23          	sw	a5,120(a0)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret
    80003bd8:	0014d493          	srli	s1,s1,0x1
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	5dc080e7          	jalr	1500(ra) # 800021b8 <mycpu>
    80003be4:	0014f493          	andi	s1,s1,1
    80003be8:	06952e23          	sw	s1,124(a0)
    80003bec:	fc5ff06f          	j	80003bb0 <push_on+0x34>

0000000080003bf0 <pop_on>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813023          	sd	s0,0(sp)
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	5b8080e7          	jalr	1464(ra) # 800021b8 <mycpu>
    80003c08:	100027f3          	csrr	a5,sstatus
    80003c0c:	0027f793          	andi	a5,a5,2
    80003c10:	04078463          	beqz	a5,80003c58 <pop_on+0x68>
    80003c14:	07852783          	lw	a5,120(a0)
    80003c18:	02f05863          	blez	a5,80003c48 <pop_on+0x58>
    80003c1c:	fff7879b          	addiw	a5,a5,-1
    80003c20:	06f52c23          	sw	a5,120(a0)
    80003c24:	07853783          	ld	a5,120(a0)
    80003c28:	00079863          	bnez	a5,80003c38 <pop_on+0x48>
    80003c2c:	100027f3          	csrr	a5,sstatus
    80003c30:	ffd7f793          	andi	a5,a5,-3
    80003c34:	10079073          	csrw	sstatus,a5
    80003c38:	00813083          	ld	ra,8(sp)
    80003c3c:	00013403          	ld	s0,0(sp)
    80003c40:	01010113          	addi	sp,sp,16
    80003c44:	00008067          	ret
    80003c48:	00001517          	auipc	a0,0x1
    80003c4c:	68850513          	addi	a0,a0,1672 # 800052d0 <digits+0x70>
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	f2c080e7          	jalr	-212(ra) # 80002b7c <panic>
    80003c58:	00001517          	auipc	a0,0x1
    80003c5c:	65850513          	addi	a0,a0,1624 # 800052b0 <digits+0x50>
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	f1c080e7          	jalr	-228(ra) # 80002b7c <panic>

0000000080003c68 <__memset>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	1a060e63          	beqz	a2,80003e30 <__memset+0x1c8>
    80003c78:	40a007b3          	neg	a5,a0
    80003c7c:	0077f793          	andi	a5,a5,7
    80003c80:	00778693          	addi	a3,a5,7
    80003c84:	00b00813          	li	a6,11
    80003c88:	0ff5f593          	andi	a1,a1,255
    80003c8c:	fff6071b          	addiw	a4,a2,-1
    80003c90:	1b06e663          	bltu	a3,a6,80003e3c <__memset+0x1d4>
    80003c94:	1cd76463          	bltu	a4,a3,80003e5c <__memset+0x1f4>
    80003c98:	1a078e63          	beqz	a5,80003e54 <__memset+0x1ec>
    80003c9c:	00b50023          	sb	a1,0(a0)
    80003ca0:	00100713          	li	a4,1
    80003ca4:	1ae78463          	beq	a5,a4,80003e4c <__memset+0x1e4>
    80003ca8:	00b500a3          	sb	a1,1(a0)
    80003cac:	00200713          	li	a4,2
    80003cb0:	1ae78a63          	beq	a5,a4,80003e64 <__memset+0x1fc>
    80003cb4:	00b50123          	sb	a1,2(a0)
    80003cb8:	00300713          	li	a4,3
    80003cbc:	18e78463          	beq	a5,a4,80003e44 <__memset+0x1dc>
    80003cc0:	00b501a3          	sb	a1,3(a0)
    80003cc4:	00400713          	li	a4,4
    80003cc8:	1ae78263          	beq	a5,a4,80003e6c <__memset+0x204>
    80003ccc:	00b50223          	sb	a1,4(a0)
    80003cd0:	00500713          	li	a4,5
    80003cd4:	1ae78063          	beq	a5,a4,80003e74 <__memset+0x20c>
    80003cd8:	00b502a3          	sb	a1,5(a0)
    80003cdc:	00700713          	li	a4,7
    80003ce0:	18e79e63          	bne	a5,a4,80003e7c <__memset+0x214>
    80003ce4:	00b50323          	sb	a1,6(a0)
    80003ce8:	00700e93          	li	t4,7
    80003cec:	00859713          	slli	a4,a1,0x8
    80003cf0:	00e5e733          	or	a4,a1,a4
    80003cf4:	01059e13          	slli	t3,a1,0x10
    80003cf8:	01c76e33          	or	t3,a4,t3
    80003cfc:	01859313          	slli	t1,a1,0x18
    80003d00:	006e6333          	or	t1,t3,t1
    80003d04:	02059893          	slli	a7,a1,0x20
    80003d08:	40f60e3b          	subw	t3,a2,a5
    80003d0c:	011368b3          	or	a7,t1,a7
    80003d10:	02859813          	slli	a6,a1,0x28
    80003d14:	0108e833          	or	a6,a7,a6
    80003d18:	03059693          	slli	a3,a1,0x30
    80003d1c:	003e589b          	srliw	a7,t3,0x3
    80003d20:	00d866b3          	or	a3,a6,a3
    80003d24:	03859713          	slli	a4,a1,0x38
    80003d28:	00389813          	slli	a6,a7,0x3
    80003d2c:	00f507b3          	add	a5,a0,a5
    80003d30:	00e6e733          	or	a4,a3,a4
    80003d34:	000e089b          	sext.w	a7,t3
    80003d38:	00f806b3          	add	a3,a6,a5
    80003d3c:	00e7b023          	sd	a4,0(a5)
    80003d40:	00878793          	addi	a5,a5,8
    80003d44:	fed79ce3          	bne	a5,a3,80003d3c <__memset+0xd4>
    80003d48:	ff8e7793          	andi	a5,t3,-8
    80003d4c:	0007871b          	sext.w	a4,a5
    80003d50:	01d787bb          	addw	a5,a5,t4
    80003d54:	0ce88e63          	beq	a7,a4,80003e30 <__memset+0x1c8>
    80003d58:	00f50733          	add	a4,a0,a5
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0017871b          	addiw	a4,a5,1
    80003d64:	0cc77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	0027871b          	addiw	a4,a5,2
    80003d74:	0ac77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	0037871b          	addiw	a4,a5,3
    80003d84:	0ac77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	0047871b          	addiw	a4,a5,4
    80003d94:	08c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0057871b          	addiw	a4,a5,5
    80003da4:	08c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	0067871b          	addiw	a4,a5,6
    80003db4:	06c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	0077871b          	addiw	a4,a5,7
    80003dc4:	06c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	0087871b          	addiw	a4,a5,8
    80003dd4:	04c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	0097871b          	addiw	a4,a5,9
    80003de4:	04c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	00a7871b          	addiw	a4,a5,10
    80003df4:	02c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	00b7871b          	addiw	a4,a5,11
    80003e04:	02c77663          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00b70023          	sb	a1,0(a4)
    80003e10:	00c7871b          	addiw	a4,a5,12
    80003e14:	00c77e63          	bgeu	a4,a2,80003e30 <__memset+0x1c8>
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00b70023          	sb	a1,0(a4)
    80003e20:	00d7879b          	addiw	a5,a5,13
    80003e24:	00c7f663          	bgeu	a5,a2,80003e30 <__memset+0x1c8>
    80003e28:	00f507b3          	add	a5,a0,a5
    80003e2c:	00b78023          	sb	a1,0(a5)
    80003e30:	00813403          	ld	s0,8(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret
    80003e3c:	00b00693          	li	a3,11
    80003e40:	e55ff06f          	j	80003c94 <__memset+0x2c>
    80003e44:	00300e93          	li	t4,3
    80003e48:	ea5ff06f          	j	80003cec <__memset+0x84>
    80003e4c:	00100e93          	li	t4,1
    80003e50:	e9dff06f          	j	80003cec <__memset+0x84>
    80003e54:	00000e93          	li	t4,0
    80003e58:	e95ff06f          	j	80003cec <__memset+0x84>
    80003e5c:	00000793          	li	a5,0
    80003e60:	ef9ff06f          	j	80003d58 <__memset+0xf0>
    80003e64:	00200e93          	li	t4,2
    80003e68:	e85ff06f          	j	80003cec <__memset+0x84>
    80003e6c:	00400e93          	li	t4,4
    80003e70:	e7dff06f          	j	80003cec <__memset+0x84>
    80003e74:	00500e93          	li	t4,5
    80003e78:	e75ff06f          	j	80003cec <__memset+0x84>
    80003e7c:	00600e93          	li	t4,6
    80003e80:	e6dff06f          	j	80003cec <__memset+0x84>

0000000080003e84 <__memmove>:
    80003e84:	ff010113          	addi	sp,sp,-16
    80003e88:	00813423          	sd	s0,8(sp)
    80003e8c:	01010413          	addi	s0,sp,16
    80003e90:	0e060863          	beqz	a2,80003f80 <__memmove+0xfc>
    80003e94:	fff6069b          	addiw	a3,a2,-1
    80003e98:	0006881b          	sext.w	a6,a3
    80003e9c:	0ea5e863          	bltu	a1,a0,80003f8c <__memmove+0x108>
    80003ea0:	00758713          	addi	a4,a1,7
    80003ea4:	00a5e7b3          	or	a5,a1,a0
    80003ea8:	40a70733          	sub	a4,a4,a0
    80003eac:	0077f793          	andi	a5,a5,7
    80003eb0:	00f73713          	sltiu	a4,a4,15
    80003eb4:	00174713          	xori	a4,a4,1
    80003eb8:	0017b793          	seqz	a5,a5
    80003ebc:	00e7f7b3          	and	a5,a5,a4
    80003ec0:	10078863          	beqz	a5,80003fd0 <__memmove+0x14c>
    80003ec4:	00900793          	li	a5,9
    80003ec8:	1107f463          	bgeu	a5,a6,80003fd0 <__memmove+0x14c>
    80003ecc:	0036581b          	srliw	a6,a2,0x3
    80003ed0:	fff8081b          	addiw	a6,a6,-1
    80003ed4:	02081813          	slli	a6,a6,0x20
    80003ed8:	01d85893          	srli	a7,a6,0x1d
    80003edc:	00858813          	addi	a6,a1,8
    80003ee0:	00058793          	mv	a5,a1
    80003ee4:	00050713          	mv	a4,a0
    80003ee8:	01088833          	add	a6,a7,a6
    80003eec:	0007b883          	ld	a7,0(a5)
    80003ef0:	00878793          	addi	a5,a5,8
    80003ef4:	00870713          	addi	a4,a4,8
    80003ef8:	ff173c23          	sd	a7,-8(a4)
    80003efc:	ff0798e3          	bne	a5,a6,80003eec <__memmove+0x68>
    80003f00:	ff867713          	andi	a4,a2,-8
    80003f04:	02071793          	slli	a5,a4,0x20
    80003f08:	0207d793          	srli	a5,a5,0x20
    80003f0c:	00f585b3          	add	a1,a1,a5
    80003f10:	40e686bb          	subw	a3,a3,a4
    80003f14:	00f507b3          	add	a5,a0,a5
    80003f18:	06e60463          	beq	a2,a4,80003f80 <__memmove+0xfc>
    80003f1c:	0005c703          	lbu	a4,0(a1)
    80003f20:	00e78023          	sb	a4,0(a5)
    80003f24:	04068e63          	beqz	a3,80003f80 <__memmove+0xfc>
    80003f28:	0015c603          	lbu	a2,1(a1)
    80003f2c:	00100713          	li	a4,1
    80003f30:	00c780a3          	sb	a2,1(a5)
    80003f34:	04e68663          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f38:	0025c603          	lbu	a2,2(a1)
    80003f3c:	00200713          	li	a4,2
    80003f40:	00c78123          	sb	a2,2(a5)
    80003f44:	02e68e63          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f48:	0035c603          	lbu	a2,3(a1)
    80003f4c:	00300713          	li	a4,3
    80003f50:	00c781a3          	sb	a2,3(a5)
    80003f54:	02e68663          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f58:	0045c603          	lbu	a2,4(a1)
    80003f5c:	00400713          	li	a4,4
    80003f60:	00c78223          	sb	a2,4(a5)
    80003f64:	00e68e63          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f68:	0055c603          	lbu	a2,5(a1)
    80003f6c:	00500713          	li	a4,5
    80003f70:	00c782a3          	sb	a2,5(a5)
    80003f74:	00e68663          	beq	a3,a4,80003f80 <__memmove+0xfc>
    80003f78:	0065c703          	lbu	a4,6(a1)
    80003f7c:	00e78323          	sb	a4,6(a5)
    80003f80:	00813403          	ld	s0,8(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret
    80003f8c:	02061713          	slli	a4,a2,0x20
    80003f90:	02075713          	srli	a4,a4,0x20
    80003f94:	00e587b3          	add	a5,a1,a4
    80003f98:	f0f574e3          	bgeu	a0,a5,80003ea0 <__memmove+0x1c>
    80003f9c:	02069613          	slli	a2,a3,0x20
    80003fa0:	02065613          	srli	a2,a2,0x20
    80003fa4:	fff64613          	not	a2,a2
    80003fa8:	00e50733          	add	a4,a0,a4
    80003fac:	00c78633          	add	a2,a5,a2
    80003fb0:	fff7c683          	lbu	a3,-1(a5)
    80003fb4:	fff78793          	addi	a5,a5,-1
    80003fb8:	fff70713          	addi	a4,a4,-1
    80003fbc:	00d70023          	sb	a3,0(a4)
    80003fc0:	fec798e3          	bne	a5,a2,80003fb0 <__memmove+0x12c>
    80003fc4:	00813403          	ld	s0,8(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret
    80003fd0:	02069713          	slli	a4,a3,0x20
    80003fd4:	02075713          	srli	a4,a4,0x20
    80003fd8:	00170713          	addi	a4,a4,1
    80003fdc:	00e50733          	add	a4,a0,a4
    80003fe0:	00050793          	mv	a5,a0
    80003fe4:	0005c683          	lbu	a3,0(a1)
    80003fe8:	00178793          	addi	a5,a5,1
    80003fec:	00158593          	addi	a1,a1,1
    80003ff0:	fed78fa3          	sb	a3,-1(a5)
    80003ff4:	fee798e3          	bne	a5,a4,80003fe4 <__memmove+0x160>
    80003ff8:	f89ff06f          	j	80003f80 <__memmove+0xfc>

0000000080003ffc <__putc>:
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00113c23          	sd	ra,24(sp)
    80004008:	02010413          	addi	s0,sp,32
    8000400c:	00050793          	mv	a5,a0
    80004010:	fef40593          	addi	a1,s0,-17
    80004014:	00100613          	li	a2,1
    80004018:	00000513          	li	a0,0
    8000401c:	fef407a3          	sb	a5,-17(s0)
    80004020:	fffff097          	auipc	ra,0xfffff
    80004024:	b3c080e7          	jalr	-1220(ra) # 80002b5c <console_write>
    80004028:	01813083          	ld	ra,24(sp)
    8000402c:	01013403          	ld	s0,16(sp)
    80004030:	02010113          	addi	sp,sp,32
    80004034:	00008067          	ret

0000000080004038 <__getc>:
    80004038:	fe010113          	addi	sp,sp,-32
    8000403c:	00813823          	sd	s0,16(sp)
    80004040:	00113c23          	sd	ra,24(sp)
    80004044:	02010413          	addi	s0,sp,32
    80004048:	fe840593          	addi	a1,s0,-24
    8000404c:	00100613          	li	a2,1
    80004050:	00000513          	li	a0,0
    80004054:	fffff097          	auipc	ra,0xfffff
    80004058:	ae8080e7          	jalr	-1304(ra) # 80002b3c <console_read>
    8000405c:	fe844503          	lbu	a0,-24(s0)
    80004060:	01813083          	ld	ra,24(sp)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret

0000000080004070 <console_handler>:
    80004070:	fe010113          	addi	sp,sp,-32
    80004074:	00813823          	sd	s0,16(sp)
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	00913423          	sd	s1,8(sp)
    80004080:	02010413          	addi	s0,sp,32
    80004084:	14202773          	csrr	a4,scause
    80004088:	100027f3          	csrr	a5,sstatus
    8000408c:	0027f793          	andi	a5,a5,2
    80004090:	06079e63          	bnez	a5,8000410c <console_handler+0x9c>
    80004094:	00074c63          	bltz	a4,800040ac <console_handler+0x3c>
    80004098:	01813083          	ld	ra,24(sp)
    8000409c:	01013403          	ld	s0,16(sp)
    800040a0:	00813483          	ld	s1,8(sp)
    800040a4:	02010113          	addi	sp,sp,32
    800040a8:	00008067          	ret
    800040ac:	0ff77713          	andi	a4,a4,255
    800040b0:	00900793          	li	a5,9
    800040b4:	fef712e3          	bne	a4,a5,80004098 <console_handler+0x28>
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	6dc080e7          	jalr	1756(ra) # 80002794 <plic_claim>
    800040c0:	00a00793          	li	a5,10
    800040c4:	00050493          	mv	s1,a0
    800040c8:	02f50c63          	beq	a0,a5,80004100 <console_handler+0x90>
    800040cc:	fc0506e3          	beqz	a0,80004098 <console_handler+0x28>
    800040d0:	00050593          	mv	a1,a0
    800040d4:	00001517          	auipc	a0,0x1
    800040d8:	10450513          	addi	a0,a0,260 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800040dc:	fffff097          	auipc	ra,0xfffff
    800040e0:	afc080e7          	jalr	-1284(ra) # 80002bd8 <__printf>
    800040e4:	01013403          	ld	s0,16(sp)
    800040e8:	01813083          	ld	ra,24(sp)
    800040ec:	00048513          	mv	a0,s1
    800040f0:	00813483          	ld	s1,8(sp)
    800040f4:	02010113          	addi	sp,sp,32
    800040f8:	ffffe317          	auipc	t1,0xffffe
    800040fc:	6d430067          	jr	1748(t1) # 800027cc <plic_complete>
    80004100:	fffff097          	auipc	ra,0xfffff
    80004104:	3e0080e7          	jalr	992(ra) # 800034e0 <uartintr>
    80004108:	fddff06f          	j	800040e4 <console_handler+0x74>
    8000410c:	00001517          	auipc	a0,0x1
    80004110:	1cc50513          	addi	a0,a0,460 # 800052d8 <digits+0x78>
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	a68080e7          	jalr	-1432(ra) # 80002b7c <panic>
	...
