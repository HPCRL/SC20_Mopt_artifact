#pragma once
inline void cnn_ukr_float_scatter_6x2v_bfxy_bcxy_cwhf(float *A, float *B, float *C, long long sf_tile, long long *Astride){
__asm__(
"mov %[A], %%rax;"
"mov %[B], %%rbx;"
"mov %[C], %%rcx;"
"mov %[sf_tile], %%rsi;"
"mov %[Astride], %%r8;"
"vxorps %%ymm4, %%ymm4, %%ymm4;"
"vxorps %%ymm5, %%ymm5, %%ymm5;"
"vxorps %%ymm6, %%ymm6, %%ymm6;"
"vxorps %%ymm7, %%ymm7, %%ymm7;"
"vxorps %%ymm8, %%ymm8, %%ymm8;"
"vxorps %%ymm9, %%ymm9, %%ymm9;"
"vxorps %%ymm10, %%ymm10, %%ymm10;"
"vxorps %%ymm11, %%ymm11, %%ymm11;"
"vxorps %%ymm12, %%ymm12, %%ymm12;"
"vxorps %%ymm13, %%ymm13, %%ymm13;"
"vxorps %%ymm14, %%ymm14, %%ymm14;"
"vxorps %%ymm15, %%ymm15, %%ymm15;"
"mov 8(%%r8), %%r9;"
"mov 16(%%r8), %%r10;"
"mov 24(%%r8), %%r11;"
"mov 32(%%r8), %%r12;"
"mov 40(%%r8), %%r13;"
"mov 0(%%r8), %%r8;"
"prefetcht0 0(%%rcx);"
"prefetcht0 18496(%%rcx);"
"prefetcht0 36992(%%rcx);"
"prefetcht0 55488(%%rcx);"
"prefetcht0 73984(%%rcx);"
"prefetcht0 92480(%%rcx);"
"prefetcht0 110976(%%rcx);"
"prefetcht0 129472(%%rcx);"
"prefetcht0 147968(%%rcx);"
"prefetcht0 166464(%%rcx);"
"prefetcht0 184960(%%rcx);"
"prefetcht0 203456(%%rcx);"
"prefetcht0 221952(%%rcx);"
"prefetcht0 240448(%%rcx);"
"prefetcht0 258944(%%rcx);"
"prefetcht0 277440(%%rcx);"
"test %%rsi, %%rsi;"
"jz .L1002;"
".L1001:"
"prefetcht0 18496(%%rax);"
"prefetcht0 18528(%%rax);"
"prefetcht0 64(%%rbx);"
"vmovaps 0(%%rbx), %%ymm2;"
"vmovaps 32(%%rbx), %%ymm3;"
"vbroadcastss 0(%%rax,%%r8,4), %%ymm0;"
"vbroadcastss 0(%%rax,%%r9,4), %%ymm1;"
"vfmadd231ps %%ymm0, %%ymm2, %%ymm4;"
"vfmadd231ps %%ymm0, %%ymm3, %%ymm5;"
"vfmadd231ps %%ymm1, %%ymm2, %%ymm6;"
"vfmadd231ps %%ymm1, %%ymm3, %%ymm7;"
"vbroadcastss 0(%%rax,%%r10,4), %%ymm0;"
"vbroadcastss 0(%%rax,%%r11,4), %%ymm1;"
"vfmadd231ps %%ymm0, %%ymm2, %%ymm8;"
"vfmadd231ps %%ymm0, %%ymm3, %%ymm9;"
"vfmadd231ps %%ymm1, %%ymm2, %%ymm10;"
"vfmadd231ps %%ymm1, %%ymm3, %%ymm11;"
"vbroadcastss 0(%%rax,%%r12,4), %%ymm0;"
"vbroadcastss 0(%%rax,%%r13,4), %%ymm1;"
"vfmadd231ps %%ymm0, %%ymm2, %%ymm12;"
"vfmadd231ps %%ymm0, %%ymm3, %%ymm13;"
"vfmadd231ps %%ymm1, %%ymm2, %%ymm14;"
"vfmadd231ps %%ymm1, %%ymm3, %%ymm15;"

"add $18496, %%rax;"
"add $64, %%rbx;"
"sub $1, %%rsi;"
"jnz .L1001;"
".L1002:"
"vunpcklps %%ymm6, %%ymm4, %%ymm0;"
"vunpckhps %%ymm6, %%ymm4, %%ymm1;"
"vunpcklps %%ymm10, %%ymm8, %%ymm2;"
"vunpckhps %%ymm10, %%ymm8, %%ymm3;"
"vshufps $68, %%ymm2, %%ymm0, %%ymm4;"
"vshufps $238, %%ymm2, %%ymm0, %%ymm6;"
"vshufps $68, %%ymm3, %%ymm1, %%ymm8;"
"vshufps $238, %%ymm3, %%ymm1, %%ymm10;"
"vunpcklps %%ymm7, %%ymm5, %%ymm0;"
"vunpckhps %%ymm7, %%ymm5, %%ymm1;"
"vunpcklps %%ymm11, %%ymm9, %%ymm2;"
"vunpckhps %%ymm11, %%ymm9, %%ymm3;"
"vshufps $68, %%ymm2, %%ymm0, %%ymm5;"
"vshufps $238, %%ymm2, %%ymm0, %%ymm7;"
"vshufps $68, %%ymm3, %%ymm1, %%ymm9;"
"vshufps $238, %%ymm3, %%ymm1, %%ymm11;"
"vunpcklps %%ymm14, %%ymm12, %%ymm0;"
"vunpckhps %%ymm14, %%ymm12, %%ymm1;"
"vunpcklps %%ymm15, %%ymm13, %%ymm2;"
"vunpckhps %%ymm15, %%ymm13, %%ymm3;"
"vxorps %%ymm12, %%ymm12, %%ymm12;"
"vxorps %%ymm13, %%ymm13, %%ymm13;"
"vxorps %%ymm14, %%ymm14, %%ymm14;"
"vxorps %%ymm15, %%ymm15, %%ymm15;"
"vmovups 0(%%rcx), %%xmm12;"
"vmovups 18496(%%rcx), %%xmm13;"
"vmovups 36992(%%rcx), %%xmm14;"
"vmovups 55488(%%rcx), %%xmm15;"
"vaddps %%ymm4, %%ymm12, %%ymm4;"
"vaddps %%ymm6, %%ymm13, %%ymm6;"
"vaddps %%ymm8, %%ymm14, %%ymm8;"
"vaddps %%ymm10, %%ymm15, %%ymm10;"
"vmovups %%xmm4, 0(%%rcx);"
"vmovups %%xmm6, 18496(%%rcx);"
"vmovups %%xmm8, 36992(%%rcx);"
"vmovups %%xmm10, 55488(%%rcx);"
"vextractf128 $1, %%ymm4, %%xmm4;"
"vextractf128 $1, %%ymm6, %%xmm6;"
"vextractf128 $1, %%ymm8, %%xmm8;"
"vextractf128 $1, %%ymm10, %%xmm10;"
"vmovups 73984(%%rcx), %%xmm12;"
"vmovups 92480(%%rcx), %%xmm13;"
"vmovups 110976(%%rcx), %%xmm14;"
"vmovups 129472(%%rcx), %%xmm15;"
"vaddps %%ymm4, %%ymm12, %%ymm4;"
"vaddps %%ymm6, %%ymm13, %%ymm6;"
"vaddps %%ymm8, %%ymm14, %%ymm8;"
"vaddps %%ymm10, %%ymm15, %%ymm10;"
"vmovups %%xmm4, 73984(%%rcx);"
"vmovups %%xmm6, 92480(%%rcx);"
"vmovups %%xmm8, 110976(%%rcx);"
"vmovups %%xmm10, 129472(%%rcx);"
"vxorps %%ymm12, %%ymm12, %%ymm12;"
"vxorps %%ymm13, %%ymm13, %%ymm13;"
"vxorps %%ymm14, %%ymm14, %%ymm14;"
"vxorps %%ymm15, %%ymm15, %%ymm15;"
"vmovups 147968(%%rcx), %%xmm12;"
"vmovups 166464(%%rcx), %%xmm13;"
"vmovups 184960(%%rcx), %%xmm14;"
"vmovups 203456(%%rcx), %%xmm15;"
"vaddps %%ymm5, %%ymm12, %%ymm5;"
"vaddps %%ymm7, %%ymm13, %%ymm7;"
"vaddps %%ymm9, %%ymm14, %%ymm9;"
"vaddps %%ymm11, %%ymm15, %%ymm11;"
"vmovups %%xmm5, 147968(%%rcx);"
"vmovups %%xmm7, 166464(%%rcx);"
"vmovups %%xmm9, 184960(%%rcx);"
"vmovups %%xmm11, 203456(%%rcx);"
"vextractf128 $1, %%ymm5, %%xmm5;"
"vextractf128 $1, %%ymm7, %%xmm7;"
"vextractf128 $1, %%ymm9, %%xmm9;"
"vextractf128 $1, %%ymm11, %%xmm11;"
"vmovups 221952(%%rcx), %%xmm12;"
"vmovups 240448(%%rcx), %%xmm13;"
"vmovups 258944(%%rcx), %%xmm14;"
"vmovups 277440(%%rcx), %%xmm15;"
"vaddps %%ymm5, %%ymm12, %%ymm5;"
"vaddps %%ymm7, %%ymm13, %%ymm7;"
"vaddps %%ymm9, %%ymm14, %%ymm9;"
"vaddps %%ymm11, %%ymm15, %%ymm11;"
"vmovups %%xmm5, 221952(%%rcx);"
"vmovups %%xmm7, 240448(%%rcx);"
"vmovups %%xmm9, 258944(%%rcx);"
"vmovups %%xmm11, 277440(%%rcx);"
"vxorps %%ymm4, %%ymm4, %%ymm4;"
"vxorps %%ymm5, %%ymm5, %%ymm5;"
"vxorps %%ymm6, %%ymm6, %%ymm6;"
"vxorps %%ymm7, %%ymm7, %%ymm7;"
"vmovlps 16(%%rcx), %%xmm4, %%xmm4;"
"vmovhps 18512(%%rcx), %%xmm4, %%xmm4;"
"vmovlps 37008(%%rcx), %%xmm5, %%xmm5;"
"vmovhps 55504(%%rcx), %%xmm5, %%xmm5;"
"vmovlps 147984(%%rcx), %%xmm6, %%xmm6;"
"vmovhps 166480(%%rcx), %%xmm6, %%xmm6;"
"vmovlps 184976(%%rcx), %%xmm7, %%xmm7;"
"vmovhps 203472(%%rcx), %%xmm7, %%xmm7;"
"vaddps %%ymm0, %%ymm4, %%ymm4;"
"vaddps %%ymm1, %%ymm5, %%ymm5;"
"vaddps %%ymm2, %%ymm6, %%ymm6;"
"vaddps %%ymm3, %%ymm7, %%ymm7;"
"vmovlps %%xmm4, 16(%%rcx);"
"vmovhps %%xmm4, 18512(%%rcx);"
"vmovlps %%xmm5, 37008(%%rcx);"
"vmovhps %%xmm5, 55504(%%rcx);"
"vmovlps %%xmm6, 147984(%%rcx);"
"vmovhps %%xmm6, 166480(%%rcx);"
"vmovlps %%xmm7, 184976(%%rcx);"
"vmovhps %%xmm7, 203472(%%rcx);"
"vxorps %%ymm4, %%ymm4, %%ymm4;"
"vxorps %%ymm5, %%ymm5, %%ymm5;"
"vxorps %%ymm6, %%ymm6, %%ymm6;"
"vxorps %%ymm7, %%ymm7, %%ymm7;"
"vmovlps 74000(%%rcx), %%xmm12, %%xmm12;"
"vmovhps 92496(%%rcx), %%xmm12, %%xmm12;"
"vmovlps 110992(%%rcx), %%xmm13, %%xmm13;"
"vmovhps 129488(%%rcx), %%xmm13, %%xmm13;"
"vmovlps 221968(%%rcx), %%xmm14, %%xmm14;"
"vmovhps 240464(%%rcx), %%xmm14, %%xmm14;"
"vmovlps 258960(%%rcx), %%xmm15, %%xmm15;"
"vmovhps 277456(%%rcx), %%xmm15, %%xmm15;"
"vextractf128 $1, %%ymm0, %%xmm8;"
"vextractf128 $1, %%ymm1, %%xmm9;"
"vextractf128 $1, %%ymm2, %%xmm10;"
"vextractf128 $1, %%ymm3, %%xmm11;"
"vaddps %%ymm8, %%ymm12, %%ymm12;"
"vaddps %%ymm9, %%ymm13, %%ymm13;"
"vaddps %%ymm10, %%ymm14, %%ymm14;"
"vaddps %%ymm11, %%ymm15, %%ymm15;"
"vmovlps %%xmm12, 74000(%%rcx);"
"vmovhps %%xmm12, 92496(%%rcx);"
"vmovlps %%xmm13, 110992(%%rcx);"
"vmovhps %%xmm13, 129488(%%rcx);"
"vmovlps %%xmm14, 221968(%%rcx);"
"vmovhps %%xmm14, 240464(%%rcx);"
"vmovlps %%xmm15, 258960(%%rcx);"
"vmovhps %%xmm15, 277456(%%rcx);"
:
: [A] "m" (A),
 [B] "m" (B),
 [C] "m" (C),
 [sf_tile] "m" (sf_tile),
 [Astride] "m" (Astride)
: "rax", "rbx", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", "ymm0", "ymm1", "ymm2", "ymm3", "ymm4", "ymm5", "ymm6", "ymm7", "ymm8", "ymm9", "ymm10", "ymm11", "ymm12", "ymm13", "ymm14", "ymm15");
}








inline void cnn_ukr_float_scatter_4x2v_bfxy_bcxy_cwhf(float *A, float *B, float *C, long long sf_tile, long long *Astride){
__asm__(
"mov %[A], %%rax;"
"mov %[B], %%rbx;"
"mov %[C], %%rcx;"
"mov %[sf_tile], %%rsi;"
"mov %[Astride], %%r8;"
"vxorps %%ymm4, %%ymm4, %%ymm4;"
"vxorps %%ymm5, %%ymm5, %%ymm5;"
"vxorps %%ymm6, %%ymm6, %%ymm6;"
"vxorps %%ymm7, %%ymm7, %%ymm7;"
"vxorps %%ymm8, %%ymm8, %%ymm8;"
"vxorps %%ymm9, %%ymm9, %%ymm9;"
"vxorps %%ymm10, %%ymm10, %%ymm10;"
"vxorps %%ymm11, %%ymm11, %%ymm11;"
"vxorps %%ymm12, %%ymm12, %%ymm12;"
"vxorps %%ymm13, %%ymm13, %%ymm13;"
"vxorps %%ymm14, %%ymm14, %%ymm14;"
"vxorps %%ymm15, %%ymm15, %%ymm15;"
"mov 8(%%r8), %%r9;"
"mov 16(%%r8), %%r10;"
"mov 24(%%r8), %%r11;"
"mov 32(%%r8), %%r12;"
"mov 40(%%r8), %%r13;"
"mov 0(%%r8), %%r8;"
"prefetcht0 0(%%rcx);"
"prefetcht0 18496(%%rcx);"
"prefetcht0 36992(%%rcx);"
"prefetcht0 55488(%%rcx);"
"prefetcht0 73984(%%rcx);"
"prefetcht0 92480(%%rcx);"
"prefetcht0 110976(%%rcx);"
"prefetcht0 129472(%%rcx);"
"prefetcht0 147968(%%rcx);"
"prefetcht0 166464(%%rcx);"
"prefetcht0 184960(%%rcx);"
"prefetcht0 203456(%%rcx);"
"prefetcht0 221952(%%rcx);"
"prefetcht0 240448(%%rcx);"
"prefetcht0 258944(%%rcx);"
"prefetcht0 277440(%%rcx);"
"test %%rsi, %%rsi;"
"jz .Lpart1002;"
".Lpart1001:"
"prefetcht0 18496(%%rax);"
"prefetcht0 18528(%%rax);"
"prefetcht0 64(%%rbx);"
"vmovaps 0(%%rbx), %%ymm2;"
"vmovaps 32(%%rbx), %%ymm3;"
"vbroadcastss 0(%%rax,%%r8,4), %%ymm0;"
"vbroadcastss 0(%%rax,%%r9,4), %%ymm1;"
"vfmadd231ps %%ymm0, %%ymm2, %%ymm4;"
"vfmadd231ps %%ymm0, %%ymm3, %%ymm5;"
"vfmadd231ps %%ymm1, %%ymm2, %%ymm6;"
"vfmadd231ps %%ymm1, %%ymm3, %%ymm7;"
"vbroadcastss 0(%%rax,%%r10,4), %%ymm0;"
"vbroadcastss 0(%%rax,%%r11,4), %%ymm1;"
"vfmadd231ps %%ymm0, %%ymm2, %%ymm8;"
"vfmadd231ps %%ymm0, %%ymm3, %%ymm9;"
"vfmadd231ps %%ymm1, %%ymm2, %%ymm10;"
"vfmadd231ps %%ymm1, %%ymm3, %%ymm11;"
/* "vbroadcastss 0(%%rax,%%r12,4), %%ymm0;" */
/* "vbroadcastss 0(%%rax,%%r13,4), %%ymm1;" */
/* "vfmadd231ps %%ymm0, %%ymm2, %%ymm12;" */
/* "vfmadd231ps %%ymm0, %%ymm3, %%ymm13;" */
/* "vfmadd231ps %%ymm1, %%ymm2, %%ymm14;" */
/* "vfmadd231ps %%ymm1, %%ymm3, %%ymm15;" */

"add $18496, %%rax;"
"add $64, %%rbx;"
"sub $1, %%rsi;"
"jnz .Lpart1001;"
".Lpart1002:"
"vunpcklps %%ymm6, %%ymm4, %%ymm0;"
"vunpckhps %%ymm6, %%ymm4, %%ymm1;"
"vunpcklps %%ymm10, %%ymm8, %%ymm2;"
"vunpckhps %%ymm10, %%ymm8, %%ymm3;"
"vshufps $68, %%ymm2, %%ymm0, %%ymm4;"
"vshufps $238, %%ymm2, %%ymm0, %%ymm6;"
"vshufps $68, %%ymm3, %%ymm1, %%ymm8;"
"vshufps $238, %%ymm3, %%ymm1, %%ymm10;"
"vunpcklps %%ymm7, %%ymm5, %%ymm0;"
"vunpckhps %%ymm7, %%ymm5, %%ymm1;"
"vunpcklps %%ymm11, %%ymm9, %%ymm2;"
"vunpckhps %%ymm11, %%ymm9, %%ymm3;"
"vshufps $68, %%ymm2, %%ymm0, %%ymm5;"
"vshufps $238, %%ymm2, %%ymm0, %%ymm7;"
"vshufps $68, %%ymm3, %%ymm1, %%ymm9;"
"vshufps $238, %%ymm3, %%ymm1, %%ymm11;"
"vunpcklps %%ymm14, %%ymm12, %%ymm0;"
"vunpckhps %%ymm14, %%ymm12, %%ymm1;"
"vunpcklps %%ymm15, %%ymm13, %%ymm2;"
"vunpckhps %%ymm15, %%ymm13, %%ymm3;"
"vxorps %%ymm12, %%ymm12, %%ymm12;"
"vxorps %%ymm13, %%ymm13, %%ymm13;"
"vxorps %%ymm14, %%ymm14, %%ymm14;"
"vxorps %%ymm15, %%ymm15, %%ymm15;"
"vmovups 0(%%rcx), %%xmm12;"
"vmovups 18496(%%rcx), %%xmm13;"
"vmovups 36992(%%rcx), %%xmm14;"
"vmovups 55488(%%rcx), %%xmm15;"
"vaddps %%ymm4, %%ymm12, %%ymm4;"
"vaddps %%ymm6, %%ymm13, %%ymm6;"
"vaddps %%ymm8, %%ymm14, %%ymm8;"
"vaddps %%ymm10, %%ymm15, %%ymm10;"
"vmovups %%xmm4, 0(%%rcx);"
"vmovups %%xmm6, 18496(%%rcx);"
"vmovups %%xmm8, 36992(%%rcx);"
"vmovups %%xmm10, 55488(%%rcx);"
"vextractf128 $1, %%ymm4, %%xmm4;"
"vextractf128 $1, %%ymm6, %%xmm6;"
"vextractf128 $1, %%ymm8, %%xmm8;"
"vextractf128 $1, %%ymm10, %%xmm10;"
"vmovups 73984(%%rcx), %%xmm12;"
"vmovups 92480(%%rcx), %%xmm13;"
"vmovups 110976(%%rcx), %%xmm14;"
"vmovups 129472(%%rcx), %%xmm15;"
"vaddps %%ymm4, %%ymm12, %%ymm4;"
"vaddps %%ymm6, %%ymm13, %%ymm6;"
"vaddps %%ymm8, %%ymm14, %%ymm8;"
"vaddps %%ymm10, %%ymm15, %%ymm10;"
"vmovups %%xmm4, 73984(%%rcx);"
"vmovups %%xmm6, 92480(%%rcx);"
"vmovups %%xmm8, 110976(%%rcx);"
"vmovups %%xmm10, 129472(%%rcx);"
"vxorps %%ymm12, %%ymm12, %%ymm12;"
"vxorps %%ymm13, %%ymm13, %%ymm13;"
"vxorps %%ymm14, %%ymm14, %%ymm14;"
"vxorps %%ymm15, %%ymm15, %%ymm15;"
"vmovups 147968(%%rcx), %%xmm12;"
"vmovups 166464(%%rcx), %%xmm13;"
"vmovups 184960(%%rcx), %%xmm14;"
"vmovups 203456(%%rcx), %%xmm15;"
"vaddps %%ymm5, %%ymm12, %%ymm5;"
"vaddps %%ymm7, %%ymm13, %%ymm7;"
"vaddps %%ymm9, %%ymm14, %%ymm9;"
"vaddps %%ymm11, %%ymm15, %%ymm11;"
"vmovups %%xmm5, 147968(%%rcx);"
"vmovups %%xmm7, 166464(%%rcx);"
"vmovups %%xmm9, 184960(%%rcx);"
"vmovups %%xmm11, 203456(%%rcx);"
"vextractf128 $1, %%ymm5, %%xmm5;"
"vextractf128 $1, %%ymm7, %%xmm7;"
"vextractf128 $1, %%ymm9, %%xmm9;"
"vextractf128 $1, %%ymm11, %%xmm11;"
"vmovups 221952(%%rcx), %%xmm12;"
"vmovups 240448(%%rcx), %%xmm13;"
"vmovups 258944(%%rcx), %%xmm14;"
"vmovups 277440(%%rcx), %%xmm15;"
"vaddps %%ymm5, %%ymm12, %%ymm5;"
"vaddps %%ymm7, %%ymm13, %%ymm7;"
"vaddps %%ymm9, %%ymm14, %%ymm9;"
"vaddps %%ymm11, %%ymm15, %%ymm11;"
"vmovups %%xmm5, 221952(%%rcx);"
"vmovups %%xmm7, 240448(%%rcx);"
"vmovups %%xmm9, 258944(%%rcx);"
"vmovups %%xmm11, 277440(%%rcx);"
/* "vxorps %%ymm4, %%ymm4, %%ymm4;" */
/* "vxorps %%ymm5, %%ymm5, %%ymm5;" */
/* "vxorps %%ymm6, %%ymm6, %%ymm6;" */
/* "vxorps %%ymm7, %%ymm7, %%ymm7;" */
/* "vmovlps 16(%%rcx), %%xmm4, %%xmm4;" */
/* "vmovhps 18512(%%rcx), %%xmm4, %%xmm4;" */
/* "vmovlps 37008(%%rcx), %%xmm5, %%xmm5;" */
/* "vmovhps 55504(%%rcx), %%xmm5, %%xmm5;" */
/* "vmovlps 147984(%%rcx), %%xmm6, %%xmm6;" */
/* "vmovhps 166480(%%rcx), %%xmm6, %%xmm6;" */
/* "vmovlps 184976(%%rcx), %%xmm7, %%xmm7;" */
/* "vmovhps 203472(%%rcx), %%xmm7, %%xmm7;" */
/* "vaddps %%ymm0, %%ymm4, %%ymm4;" */
/* "vaddps %%ymm1, %%ymm5, %%ymm5;" */
/* "vaddps %%ymm2, %%ymm6, %%ymm6;" */
/* "vaddps %%ymm3, %%ymm7, %%ymm7;" */
/* "vmovlps %%xmm4, 16(%%rcx);" */
/* "vmovhps %%xmm4, 18512(%%rcx);" */
/* "vmovlps %%xmm5, 37008(%%rcx);" */
/* "vmovhps %%xmm5, 55504(%%rcx);" */
/* "vmovlps %%xmm6, 147984(%%rcx);" */
/* "vmovhps %%xmm6, 166480(%%rcx);" */
/* "vmovlps %%xmm7, 184976(%%rcx);" */
/* "vmovhps %%xmm7, 203472(%%rcx);" */
/* "vxorps %%ymm4, %%ymm4, %%ymm4;" */
/* "vxorps %%ymm5, %%ymm5, %%ymm5;" */
/* "vxorps %%ymm6, %%ymm6, %%ymm6;" */
/* "vxorps %%ymm7, %%ymm7, %%ymm7;" */
/* "vmovlps 74000(%%rcx), %%xmm12, %%xmm12;" */
/* "vmovhps 92496(%%rcx), %%xmm12, %%xmm12;" */
/* "vmovlps 110992(%%rcx), %%xmm13, %%xmm13;" */
/* "vmovhps 129488(%%rcx), %%xmm13, %%xmm13;" */
/* "vmovlps 221968(%%rcx), %%xmm14, %%xmm14;" */
/* "vmovhps 240464(%%rcx), %%xmm14, %%xmm14;" */
/* "vmovlps 258960(%%rcx), %%xmm15, %%xmm15;" */
/* "vmovhps 277456(%%rcx), %%xmm15, %%xmm15;" */
/* "vextractf128 $1, %%ymm0, %%xmm8;" */
/* "vextractf128 $1, %%ymm1, %%xmm9;" */
/* "vextractf128 $1, %%ymm2, %%xmm10;" */
/* "vextractf128 $1, %%ymm3, %%xmm11;" */
/* "vaddps %%ymm8, %%ymm12, %%ymm12;" */
/* "vaddps %%ymm9, %%ymm13, %%ymm13;" */
/* "vaddps %%ymm10, %%ymm14, %%ymm14;" */
/* "vaddps %%ymm11, %%ymm15, %%ymm15;" */
/* "vmovlps %%xmm12, 74000(%%rcx);" */
/* "vmovhps %%xmm12, 92496(%%rcx);" */
/* "vmovlps %%xmm13, 110992(%%rcx);" */
/* "vmovhps %%xmm13, 129488(%%rcx);" */
/* "vmovlps %%xmm14, 221968(%%rcx);" */
/* "vmovhps %%xmm14, 240464(%%rcx);" */
/* "vmovlps %%xmm15, 258960(%%rcx);" */
/* "vmovhps %%xmm15, 277456(%%rcx);" */
:
: [A] "m" (A),
 [B] "m" (B),
 [C] "m" (C),
 [sf_tile] "m" (sf_tile),
 [Astride] "m" (Astride)
: "rax", "rbx", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", "ymm0", "ymm1", "ymm2", "ymm3", "ymm4", "ymm5", "ymm6", "ymm7", "ymm8", "ymm9", "ymm10", "ymm11", "ymm12", "ymm13", "ymm14", "ymm15");
}
