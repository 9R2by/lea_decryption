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
	mov	r13, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r12, rax
	mov	rdi, qword ptr [r13 + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r14, rax
	mov	rdi, qword ptr [r13 + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r15, rax
	mov	rdi, qword ptr [r13 + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mfence
	mov	rdi, rax
	rdtscp
	mov	rsi, rdx
	shl	rsi, 32
	or	rsi, rax
	lfence
	bswap	r12d
	bswap	r14d
	bswap	r15d
	bswap	edi
	rorx	eax, r12d, 9
	rorx	ecx, edi, 9
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	xor	edi, -200715707
	lea	eax, [rax + rdi + 1]
	mov	edx, eax
	xor	edx, -546766179
	rorx	edi, r14d, 27
	xor	eax, 2078592312
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -546766179
	rorx	r8d, r15d, 29
	xor	eax, -338608899
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -546766179
	xor	eax, -1356326361
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -814464733
	rorx	edx, edx, 27
	xor	eax, -1594379076
	lea	eax, [rdx + rax + 1]
	mov	r9d, eax
	xor	r9d, -814464733
	rorx	edx, edi, 29
	xor	eax, -1298246935
	lea	eax, [rdx + rax + 1]
	mov	edi, eax
	xor	edi, -814464733
	rorx	edx, r8d, 9
	xor	eax, -1781840417
	lea	eax, [rdx + rax + 1]
	mov	r8d, eax
	xor	r8d, 884053734
	rorx	ecx, ecx, 27
	xor	eax, 1015440564
	lea	eax, [rcx + rax + 1]
	mov	edx, eax
	xor	edx, 884053734
	rorx	ecx, r9d, 29
	xor	eax, -1158540067
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 884053734
	rorx	edi, edi, 9
	xor	eax, -1189504979
	lea	edi, [rdi + rax + 1]
	mov	eax, edi
	xor	eax, 100997698
	rorx	r8d, r8d, 27
	shld	eax, edi, 5
                                        # kill: def $edi killed $edi def $rdi
	xor	edi, -817493316
	lea	r8d, [r8 + rdi + 1]
	mov	edi, r8d
	xor	edi, 100997698
	rorx	edx, edx, 29
	shld	edi, r8d, 3
                                        # kill: def $r8d killed $r8d def $r8
	xor	r8d, 1337143449
	lea	edx, [rdx + r8 + 1]
	mov	r8d, edx
	xor	r8d, 100997698
	rorx	ecx, ecx, 9
	xor	edx, 1653955617
	lea	ecx, [rcx + rdx + 1]
	mov	edx, ecx
	xor	edx, 88614219
	shld	edx, ecx, 5
                                        # kill: def $ecx killed $ecx def $rcx
	xor	ecx, 2002660726
	lea	eax, [rax + rcx + 1]
	mov	ecx, eax
	xor	ecx, 88614219
	shld	ecx, eax, 3
                                        # kill: def $eax killed $eax def $rax
	xor	eax, 1275268082
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, 88614219
	rorx	r8d, r8d, 9
	xor	eax, 1021562721
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, 1373730486
	xor	eax, 1119224496
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, 1373730486
	xor	eax, 1134958471
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 1373730486
	rorx	edi, edi, 9
	xor	eax, 1595845160
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -437755965
	rorx	r8d, r8d, 27
	xor	eax, 85763124
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -437755965
	rorx	edx, edx, 29
	xor	eax, 1385814776
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -437755965
	rorx	ecx, ecx, 9
	xor	eax, 946612432
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -793511313
	rorx	edi, edi, 27
	xor	eax, -416936595
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -793511313
	rorx	r8d, r8d, 29
	xor	eax, -2027368903
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -793511313
	rorx	edx, edx, 9
	xor	eax, 137233687
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, 643757934
	rorx	ecx, ecx, 27
	xor	eax, -1777102603
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 643757934
	rorx	edi, edi, 29
	xor	eax, -531061
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, 643757934
	rorx	r8d, r8d, 9
	xor	eax, 580635461
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -1814075890
	rorx	edx, edx, 27
	xor	eax, 1128612178
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -1814075890
	rorx	ecx, ecx, 29
	xor	eax, -1280147824
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -1814075890
	rorx	edi, edi, 9
	xor	eax, -1302701437
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -1808355376
	rorx	r8d, r8d, 27
	xor	eax, 2080001455
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -1808355376
	rorx	edx, edx, 29
	xor	eax, -1729122633
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -1808355376
	rorx	ecx, ecx, 9
	xor	eax, 1242843394
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 2009482466
	rorx	edi, edi, 27
	xor	eax, 1116082520
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, 2009482466
	rorx	r8d, r8d, 29
	xor	eax, -534406304
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, 2009482466
	rorx	edx, edx, 9
	xor	eax, 443116357
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, 1371361311
	rorx	ecx, ecx, 27
	xor	eax, -1292459442
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 1371361311
	rorx	edi, edi, 29
	xor	eax, -1258451347
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, 1371361311
	rorx	r8d, r8d, 9
	xor	eax, -505173114
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -148315530
	rorx	edx, edx, 27
	xor	eax, -628990830
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -148315530
	rorx	ecx, ecx, 29
	xor	eax, 1841243172
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -148315530
	rorx	edi, edi, 9
	xor	eax, -1794554427
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -889141121
	rorx	r8d, r8d, 27
	xor	eax, 1937742566
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -889141121
	rorx	edx, edx, 29
	xor	eax, -756782517
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -889141121
	rorx	ecx, ecx, 9
	xor	eax, -1092218850
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 1874071550
	rorx	edi, edi, 27
	xor	eax, 361627795
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, 1874071550
	rorx	r8d, r8d, 29
	xor	eax, 42430244
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, 1874071550
	rorx	edx, edx, 9
	xor	eax, -982956019
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -299709832
	rorx	ecx, ecx, 27
	xor	eax, -1682793164
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -299709832
	rorx	edi, edi, 29
	xor	eax, 1958629107
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -299709832
	rorx	r8d, r8d, 9
	xor	eax, -1423585203
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, 1049849047
	rorx	edx, edx, 27
	xor	eax, -827623783
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, 1049849047
	rorx	ecx, ecx, 29
	xor	eax, 816081316
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 1049849047
	rorx	edi, edi, 9
	xor	eax, 632406895
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -158062498
	rorx	r8d, r8d, 27
	xor	eax, -391560516
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -158062498
	rorx	edx, edx, 29
	xor	eax, -2050034803
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -158062498
	rorx	ecx, ecx, 9
	xor	eax, 1867157626
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -969423750
	rorx	edi, edi, 27
	xor	eax, 2140779191
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -969423750
	rorx	r8d, r8d, 29
	xor	eax, 451848677
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -969423750
	rorx	edx, edx, 9
	xor	eax, 1306148276
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, -624313065
	rorx	ecx, ecx, 27
	xor	eax, -399995428
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, -624313065
	rorx	edi, edi, 29
	xor	eax, 1899574297
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -624313065
	rorx	r8d, r8d, 9
	xor	eax, -700892835
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, 1835411675
	rorx	edx, edx, 27
	xor	eax, 634882697
	lea	eax, [rdx + rax + 1]
	mov	edx, eax
	xor	edx, 1835411675
	rorx	ecx, ecx, 29
	xor	eax, 885494260
	lea	eax, [rcx + rax + 1]
	mov	ecx, eax
	xor	ecx, 1835411675
	rorx	edi, edi, 9
	xor	eax, -2090591083
	lea	eax, [rdi + rax + 1]
	mov	edi, eax
	xor	edi, -1634148152
	rorx	r8d, r8d, 27
	xor	eax, 2043834360
	lea	eax, [r8 + rax + 1]
	mov	r8d, eax
	xor	r8d, -1634148152
	rorx	edx, edx, 29
	xor	eax, -56482482
	lea	eax, [rdx + rax + 1]
	mov	ebp, eax
	xor	ebp, -1634148152
	rorx	ecx, ecx, 9
	xor	eax, 1633489123
	lea	eax, [rcx + rax + 1]
	mov	r14d, eax
	xor	r14d, 38367248
	rorx	ecx, edi, 27
	xor	eax, -453381538
	lea	eax, [rcx + rax + 1]
	mov	r15d, eax
	xor	r15d, 38367248
	rorx	ecx, r8d, 29
	xor	eax, -189036692
	lea	r12d, [rcx + rax + 1]
	xor	r12d, 38367248
	bswap	ebp
	mfence
	bswap	r14d
	bswap	r15d
	rdtscp
	bswap	r12d
	shl	rdx, 32
	or	rdx, rax
	lfence
	sub	rdx, rsi
	mov	edi, offset .L.str
	mov	rsi, rdx
	mov	edx, ebp
	mov	ecx, r14d
	mov	r8d, r15d
	mov	r9d, r12d
	xor	eax, eax
	call	printf
	mov	edi, offset .L.str.1
	mov	esi, offset .L.str.2
	call	fopen
	test	rax, rax
	je	.LBB0_1
# %bb.2:
	mov	r13, rax
	mov	esi, offset .L.str.4
	mov	rdi, rax
	mov	edx, ebp
	mov	ecx, r14d
	mov	r8d, r15d
	mov	r9d, r12d
	xor	eax, eax
	call	fprintf
	mov	rdi, r13
	call	fclose
	jmp	.LBB0_3
.LBB0_1:
	mov	edi, offset .Lstr
	call	puts@PLT
	mov	ebx, 1
.LBB0_3:
	mov	eax, ebx
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

	.ident	"clang version 16.0.6 (Fedora 16.0.6-3.fc38)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
