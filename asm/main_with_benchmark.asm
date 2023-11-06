	.text
	.intel_syntax noprefix
	.file	"main_with_benchmark.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	r14d, r14d
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	rbx, rax
	mov	rdi, qword ptr [rbp + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r15, rax
	mov	rdi, qword ptr [rbp + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r12, rax
	mov	rdi, qword ptr [rbp + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mfence
	mov	rdi, rax
	rdtscp
	mov	rsi, rdx
	shl	rsi, 32
	or	rsi, rax
	lfence
	bswap	ebx
	bswap	r15d
	bswap	r12d
	bswap	edi
	rorx	eax, ebx, 9
	rorx	ecx, edi, 9
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	xor	edi, -200715707
	add	eax, edi
	inc	eax
	mov	edx, eax
	xor	edx, -546766179
	rorx	edi, r15d, 27
	xor	eax, 2078592312
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -546766179
	rorx	ebp, r12d, 29
	xor	eax, -338608899
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -546766179
	xor	eax, -1356326361
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -814464733
	rorx	edx, edx, 27
	xor	eax, -1594379076
	add	eax, edx
	inc	eax
	mov	ebx, eax
	xor	ebx, -814464733
	rorx	edx, edi, 29
	xor	eax, -1298246935
	add	eax, edx
	inc	eax
	mov	edi, eax
	xor	edi, -814464733
	rorx	edx, ebp, 9
	xor	eax, -1781840417
	add	eax, edx
	inc	eax
	mov	ebp, eax
	xor	ebp, 884053734
	rorx	ecx, ecx, 27
	xor	eax, 1015440564
	add	eax, ecx
	inc	eax
	mov	edx, eax
	xor	edx, 884053734
	rorx	ecx, ebx, 29
	xor	eax, -1158540067
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 884053734
	rorx	edi, edi, 9
	xor	eax, -1189504979
	add	edi, eax
	inc	edi
	mov	eax, edi
	xor	eax, 100997698
	rorx	ebp, ebp, 27
	shld	eax, edi, 5
                                        # kill: def $edi killed $edi def $rdi
	xor	edi, -817493316
	add	ebp, edi
	inc	ebp
	mov	edi, ebp
	xor	edi, 100997698
	rorx	edx, edx, 29
	shld	edi, ebp, 3
                                        # kill: def $ebp killed $ebp def $rbp
	xor	ebp, 1337143449
	add	edx, ebp
	inc	edx
	mov	ebp, edx
	xor	ebp, 100997698
	rorx	ecx, ecx, 9
	xor	edx, 1653955617
	add	ecx, edx
	inc	ecx
	mov	edx, ecx
	xor	edx, 88614219
	shld	edx, ecx, 5
                                        # kill: def $ecx killed $ecx def $rcx
	xor	ecx, 2002660726
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 88614219
	shld	ecx, eax, 3
                                        # kill: def $eax killed $eax def $rax
	xor	eax, 1275268082
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 88614219
	rorx	ebp, ebp, 9
	xor	eax, 1021562721
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, 1373730486
	xor	eax, 1119224496
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, 1373730486
	xor	eax, 1134958471
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 1373730486
	rorx	edi, edi, 9
	xor	eax, 1595845160
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -437755965
	rorx	ebp, ebp, 27
	xor	eax, 85763124
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -437755965
	rorx	edx, edx, 29
	xor	eax, 1385814776
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -437755965
	rorx	ecx, ecx, 9
	xor	eax, 946612432
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -793511313
	rorx	edi, edi, 27
	xor	eax, -416936595
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -793511313
	rorx	ebp, ebp, 29
	xor	eax, -2027368903
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -793511313
	rorx	edx, edx, 9
	xor	eax, 137233687
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, 643757934
	rorx	ecx, ecx, 27
	xor	eax, -1777102603
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 643757934
	rorx	edi, edi, 29
	xor	eax, -531061
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 643757934
	rorx	ebp, ebp, 9
	xor	eax, 580635461
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -1814075890
	rorx	edx, edx, 27
	xor	eax, 1128612178
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -1814075890
	rorx	ecx, ecx, 29
	xor	eax, -1280147824
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -1814075890
	rorx	edi, edi, 9
	xor	eax, -1302701437
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -1808355376
	rorx	ebp, ebp, 27
	xor	eax, 2080001455
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -1808355376
	rorx	edx, edx, 29
	xor	eax, -1729122633
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -1808355376
	rorx	ecx, ecx, 9
	xor	eax, 1242843394
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 2009482466
	rorx	edi, edi, 27
	xor	eax, 1116082520
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 2009482466
	rorx	ebp, ebp, 29
	xor	eax, -534406304
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, 2009482466
	rorx	edx, edx, 9
	xor	eax, 443116357
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, 1371361311
	rorx	ecx, ecx, 27
	xor	eax, -1292459442
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 1371361311
	rorx	edi, edi, 29
	xor	eax, -1258451347
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 1371361311
	rorx	ebp, ebp, 9
	xor	eax, -505173114
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -148315530
	rorx	edx, edx, 27
	xor	eax, -628990830
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -148315530
	rorx	ecx, ecx, 29
	xor	eax, 1841243172
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -148315530
	rorx	edi, edi, 9
	xor	eax, -1794554427
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -889141121
	rorx	ebp, ebp, 27
	xor	eax, 1937742566
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -889141121
	rorx	edx, edx, 29
	xor	eax, -756782517
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -889141121
	rorx	ecx, ecx, 9
	xor	eax, -1092218850
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 1874071550
	rorx	edi, edi, 27
	xor	eax, 361627795
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 1874071550
	rorx	ebp, ebp, 29
	xor	eax, 42430244
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, 1874071550
	rorx	edx, edx, 9
	xor	eax, -982956019
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -299709832
	rorx	ecx, ecx, 27
	xor	eax, -1682793164
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -299709832
	rorx	edi, edi, 29
	xor	eax, 1958629107
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -299709832
	rorx	ebp, ebp, 9
	xor	eax, -1423585203
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, 1049849047
	rorx	edx, edx, 27
	xor	eax, -827623783
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, 1049849047
	rorx	ecx, ecx, 29
	xor	eax, 816081316
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 1049849047
	rorx	edi, edi, 9
	xor	eax, 632406895
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -158062498
	rorx	ebp, ebp, 27
	xor	eax, -391560516
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -158062498
	rorx	edx, edx, 29
	xor	eax, -2050034803
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -158062498
	rorx	ecx, ecx, 9
	xor	eax, 1867157626
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -969423750
	rorx	edi, edi, 27
	xor	eax, 2140779191
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -969423750
	rorx	ebp, ebp, 29
	xor	eax, 451848677
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, -969423750
	rorx	edx, edx, 9
	xor	eax, 1306148276
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -624313065
	rorx	ecx, ecx, 27
	xor	eax, -399995428
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -624313065
	rorx	edi, edi, 29
	xor	eax, 1899574297
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -624313065
	rorx	ebp, ebp, 9
	xor	eax, -700892835
	add	eax, ebp
	inc	eax
	mov	ebp, eax
	xor	ebp, 1835411675
	rorx	edx, edx, 27
	xor	eax, 634882697
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, 1835411675
	rorx	ecx, ecx, 29
	xor	eax, 885494260
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 1835411675
	rorx	edi, edi, 9
	xor	eax, -2090591083
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -1634148152
	rorx	ebp, ebp, 27
	xor	eax, 2043834360
	add	eax, ebp
	inc	eax
	mov	ebx, eax
	xor	ebx, -1634148152
	rorx	edx, edx, 29
	xor	eax, -56482482
	add	eax, edx
	inc	eax
	mov	r15d, eax
	xor	r15d, -1634148152
	rorx	ecx, ecx, 9
	xor	eax, 1633489123
	add	eax, ecx
	inc	eax
	mov	r12d, eax
	xor	r12d, 38367248
	rorx	ecx, edi, 27
	xor	eax, -453381538
	add	eax, ecx
	inc	eax
	mov	ebp, eax
	xor	ebp, 38367248
	rorx	ecx, ebx, 29
	xor	eax, -189036692
	lea	ebx, [rcx + rax]
	inc	ebx
	xor	ebx, 38367248
	bswap	r15d
	mfence
	bswap	r12d
	bswap	ebp
	rdtscp
	bswap	ebx
	shl	rdx, 32
	or	rdx, rax
	lfence
	sub	rdx, rsi
	lea	rdi, [rip + .L.str]
	mov	rsi, rdx
	mov	edx, r15d
	mov	ecx, r12d
	mov	r8d, ebp
	mov	r9d, ebx
	xor	eax, eax
	call	printf@PLT
	lea	rdi, [rip + .L.str.1]
	lea	rsi, [rip + .L.str.2]
	call	fopen@PLT
	test	rax, rax
	je	.LBB0_1
# %bb.2:
	mov	r13, rax
	lea	rsi, [rip + .L.str.4]
	mov	rdi, rax
	mov	edx, r15d
	mov	ecx, r12d
	mov	r8d, ebp
	mov	r9d, ebx
	xor	eax, eax
	call	fprintf@PLT
	mov	rdi, r13
	call	fclose@PLT
	jmp	.LBB0_3
.LBB0_1:
	lea	rdi, [rip + .Lstr]
	call	puts@PLT
	mov	r14d, 1
.LBB0_3:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lu %u %u %u %u\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"decrypted.texts"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"a"
	.size	.L.str.2, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u\n%u\n%u\n%u\n"
	.size	.L.str.4, 13

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Unable to open/create the file."
	.size	.Lstr, 32

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
