	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r12, rax
	mov	rdi, qword ptr [rbx + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r14, rax
	mov	rdi, qword ptr [rbx + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT
	mov	r15, rax
	mov	rdi, qword ptr [rbx + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul@PLT



	#start
	bswap	r12d
	bswap	r14d
	bswap	r15d
	bswap	eax
	rorx	ecx, r12d, 9
	rorx	edx, eax, 9
	xor	eax, -200715707
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -546766179
	rorx	esi, r14d, 27
	xor	eax, 2078592312
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -546766179
	rorx	edi, r15d, 29
	xor	eax, -338608899
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -546766179
	xor	eax, -1356326361
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, -814464733
	rorx	ecx, ecx, 27
	xor	eax, -1594379076
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, -814464733
	rorx	esi, esi, 29
	xor	eax, -1298246935
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -814464733
	rorx	edi, edi, 9
	xor	eax, -1781840417
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 884053734
	rorx	edx, edx, 27
	xor	eax, 1015440564
	add	eax, edx
	inc	eax
	mov	edx, eax
	xor	edx, 884053734
	rorx	ecx, ecx, 29
	xor	eax, -1158540067
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 884053734
	rorx	esi, esi, 9
	xor	eax, -1189504979
	add	esi, eax
	inc	esi
	mov	eax, esi
	xor	eax, 100997698
	rorx	edi, edi, 27
	shld	eax, esi, 5
	xor	esi, -817493316
	add	edi, esi
	inc	edi
	mov	esi, edi
	xor	esi, 100997698
	rorx	edx, edx, 29
	shld	esi, edi, 3
	xor	edi, 1337143449
	add	edx, edi
	inc	edx
	mov	edi, edx
	xor	edi, 100997698
	rorx	ecx, ecx, 9
	xor	edx, 1653955617
	add	ecx, edx
	inc	ecx
	mov	edx, ecx
	xor	edx, 88614219
	shld	edx, ecx, 5
	xor	ecx, 2002660726
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 88614219
	shld	ecx, eax, 3
	xor	eax, 1275268082
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, 88614219
	rorx	edi, edi, 9
	xor	eax, 1021562721
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 1373730486
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
	rorx	esi, esi, 9
	xor	eax, 1595845160
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -437755965
	rorx	edi, edi, 27
	xor	eax, 85763124
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -437755965
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
	rorx	esi, esi, 27
	xor	eax, -416936595
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -793511313
	rorx	edi, edi, 29
	xor	eax, -2027368903
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -793511313
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
	rorx	esi, esi, 29
	xor	eax, -531061
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, 643757934
	rorx	edi, edi, 9
	xor	eax, 580635461
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -1814075890
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
	rorx	esi, esi, 9
	xor	eax, -1302701437
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -1808355376
	rorx	edi, edi, 27
	xor	eax, 2080001455
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -1808355376
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
	rorx	esi, esi, 27
	xor	eax, 1116082520
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, 2009482466
	rorx	edi, edi, 29
	xor	eax, -534406304
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 2009482466
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
	rorx	esi, esi, 29
	xor	eax, -1258451347
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, 1371361311
	rorx	edi, edi, 9
	xor	eax, -505173114
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -148315530
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
	rorx	esi, esi, 9
	xor	eax, -1794554427
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -889141121
	rorx	edi, edi, 27
	xor	eax, 1937742566
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -889141121
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
	rorx	esi, esi, 27
	xor	eax, 361627795
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, 1874071550
	rorx	edi, edi, 29
	xor	eax, 42430244
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 1874071550
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
	rorx	esi, esi, 29
	xor	eax, 1958629107
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -299709832
	rorx	edi, edi, 9
	xor	eax, -1423585203
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 1049849047
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
	rorx	esi, esi, 9
	xor	eax, 632406895
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -158062498
	rorx	edi, edi, 27
	xor	eax, -391560516
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -158062498
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
	rorx	esi, esi, 27
	xor	eax, 2140779191
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -969423750
	rorx	edi, edi, 29
	xor	eax, 451848677
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, -969423750
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
	rorx	esi, esi, 29
	xor	eax, 1899574297
	add	eax, esi
	inc	eax
	mov	esi, eax
	xor	esi, -624313065
	rorx	edi, edi, 9
	xor	eax, -700892835
	add	eax, edi
	inc	eax
	mov	edi, eax
	xor	edi, 1835411675
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
	rorx	esi, esi, 9
	xor	eax, -2090591083
	add	eax, esi
	inc	eax
	mov	ebx, eax
	xor	ebx, -1634148152
	rorx	esi, edi, 27
	xor	eax, 2043834360
	add	eax, esi
	inc	eax
	mov	edi, eax
	xor	edi, -1634148152
	rorx	edx, edx, 29
	xor	eax, -56482482
	add	eax, edx
	inc	eax
	mov	esi, eax
	xor	esi, -1634148152
	rorx	ecx, ecx, 9
	xor	eax, 1633489123
	add	eax, ecx
	inc	eax
	mov	edx, eax
	xor	edx, 38367248
	rorx	ecx, ebx, 27
	xor	eax, -453381538
	add	eax, ecx
	inc	eax
	mov	ecx, eax
	xor	ecx, 38367248
	rorx	edi, edi, 29
	xor	eax, -189036692
	lea	r8d, [rdi + rax]
	inc	r8d
	xor	r8d, 38367248
	bswap	esi
	bswap	edx
	bswap	ecx
	bswap	r8d
	#end


	lea	rdi, [rip + .L.str]
	xor	eax, eax
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%u %u %u %u\n"
	.size	.L.str, 13

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
