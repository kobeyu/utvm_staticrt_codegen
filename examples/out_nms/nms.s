	.text
	.file	"TVMMod"
	.globl	tvmgen_default_fused_vision_non_max_suppression # -- Begin function tvmgen_default_fused_vision_non_max_suppression
	.p2align	2
	.type	tvmgen_default_fused_vision_non_max_suppression,@function
tvmgen_default_fused_vision_non_max_suppression: # @tvmgen_default_fused_vision_non_max_suppression
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -336
	.cfi_def_cfa_offset 336
	sd	ra, 328(sp)             # 8-byte Folded Spill
	sd	s0, 320(sp)             # 8-byte Folded Spill
	sd	s1, 312(sp)             # 8-byte Folded Spill
	sd	s2, 304(sp)             # 8-byte Folded Spill
	sd	s3, 296(sp)             # 8-byte Folded Spill
	sd	s4, 288(sp)             # 8-byte Folded Spill
	sd	s5, 280(sp)             # 8-byte Folded Spill
	sd	s6, 272(sp)             # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	slli	a2, a2, 32
	srli	a2, a2, 32
	addi	a3, zero, 6
	bne	a2, a3, .LBB0_86
# %bb.1:                                # %assert_end
	lwu	a2, 0(a1)
	addi	a3, zero, 13
	bltu	a3, a2, .LBB0_77
# %bb.2:                                # %assert_end
	addi	a3, zero, 1
	sll	a2, a3, a2
	lui	a3, 2
	addiw	a3, a3, 152
	and	a2, a2, a3
	beqz	a2, .LBB0_77
# %bb.3:                                # %assert_end17
	lwu	a2, 4(a1)
	addi	a3, zero, 13
	bltu	a3, a2, .LBB0_78
# %bb.4:                                # %assert_end17
	addi	a3, zero, 1
	sll	a2, a3, a2
	lui	a3, 2
	addiw	a3, a3, 152
	and	a2, a2, a3
	beqz	a2, .LBB0_78
# %bb.5:                                # %assert_end19
	lwu	a2, 8(a1)
	addi	a3, zero, 13
	bltu	a3, a2, .LBB0_79
# %bb.6:                                # %assert_end19
	addi	a3, zero, 1
	sll	a2, a3, a2
	lui	a3, 2
	addiw	a3, a3, 152
	and	a2, a2, a3
	beqz	a2, .LBB0_79
# %bb.7:                                # %assert_end21
	lwu	a2, 12(a1)
	addi	a3, zero, 13
	bltu	a3, a2, .LBB0_80
# %bb.8:                                # %assert_end21
	addi	a3, zero, 1
	sll	a2, a3, a2
	lui	a3, 2
	addiw	a3, a3, 152
	and	a2, a2, a3
	beqz	a2, .LBB0_80
# %bb.9:                                # %assert_end23
	lwu	a2, 16(a1)
	addi	a3, zero, 13
	bltu	a3, a2, .LBB0_81
# %bb.10:                               # %assert_end23
	addi	a3, zero, 1
	sll	a2, a3, a2
	lui	a3, 2
	addiw	a3, a3, 152
	and	a2, a2, a3
	beqz	a2, .LBB0_81
# %bb.11:                               # %assert_end25
	lwu	a1, 20(a1)
	addi	a2, zero, 13
	bltu	a2, a1, .LBB0_82
# %bb.12:                               # %assert_end25
	addi	a2, zero, 1
	sll	a1, a2, a1
	lui	a2, 2
	addiw	a2, a2, 152
	and	a1, a1, a2
	beqz	a1, .LBB0_82
# %bb.13:                               # %assert_end27
	ld	a5, 0(a0)
	lw	a1, 16(a5)
	addi	a2, zero, 3
	bne	a1, a2, .LBB0_87
# %bb.14:                               # %assert_end31
	lhu	a1, 22(a5)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_88
# %bb.15:                               # %assert_end31
	lbu	a1, 21(a5)
	addi	a2, zero, 32
	bne	a1, a2, .LBB0_88
# %bb.16:                               # %assert_end31
	lbu	a1, 20(a5)
	addi	a2, zero, 2
	bne	a1, a2, .LBB0_88
# %bb.17:                               # %assert_end33
	ld	a1, 24(a5)
	lw	a2, 0(a1)
	addi	s0, zero, 1
	bne	a2, s0, .LBB0_89
# %bb.18:                               # %assert_end35
	lw	a2, 8(a1)
	addi	a3, zero, 5
	bne	a2, a3, .LBB0_90
# %bb.19:                               # %assert_end37
	lw	a1, 16(a1)
	addi	a2, zero, 6
	bne	a1, a2, .LBB0_91
# %bb.20:                               # %assert_end39
	ld	t4, 40(a0)
	ld	t2, 32(t4)
	ld	t1, 24(t4)
	ld	a6, 0(t4)
	ld	s4, 32(a0)
	ld	a7, 0(s4)
	ld	s5, 24(a0)
	ld	t0, 0(s5)
	ld	s6, 16(a0)
	ld	t5, 32(s6)
	ld	t6, 24(s6)
	ld	s0, 8(a0)
	ld	t3, 32(s0)
	ld	s2, 24(s0)
	ld	a4, 0(s0)
	lwu	a3, 12(a5)
	ld	s1, 32(a5)
	ld	a0, 0(a5)
	beqz	s1, .LBB0_24
# %bb.21:                               # %if_then
	lw	a1, 0(s1)
	addi	a2, zero, 30
	bne	a1, a2, .LBB0_92
# %bb.22:                               # %if_then
	ld	a1, 8(s1)
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	a2, zero, 6
	bne	a1, a2, .LBB0_92
# %bb.23:                               # %if_then
	ld	a1, 16(s1)
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	a2, zero, 1
	bne	a1, a2, .LBB0_92
.LBB0_24:                               # %if_end
	ld	a1, 40(a5)
	bnez	a1, .LBB0_93
# %bb.25:                               # %assert_end43
	lw	a1, 8(a5)
	addi	s1, zero, 1
	bne	a1, s1, .LBB0_94
# %bb.26:                               # %assert_end45
	lw	a1, 16(s0)
	bne	a1, s1, .LBB0_95
# %bb.27:                               # %assert_end49
	lhu	a1, 22(s0)
	addi	s3, zero, 1
	bne	a1, s3, .LBB0_96
# %bb.28:                               # %assert_end49
	lbu	a1, 21(s0)
	addi	a2, zero, 32
	bne	a1, a2, .LBB0_96
# %bb.29:                               # %assert_end49
	lbu	a1, 20(s0)
	bnez	a1, .LBB0_96
# %bb.30:                               # %assert_end51
	lw	a1, 0(s2)
	addi	s1, zero, 1
	bne	a1, s1, .LBB0_97
# %bb.31:                               # %assert_end53
	beqz	t3, .LBB0_33
# %bb.32:                               # %if_then54
	lw	a1, 0(t3)
	addi	s1, zero, 1
	bne	a1, s1, .LBB0_98
.LBB0_33:                               # %if_end55
	ld	a1, 40(s0)
	bnez	a1, .LBB0_99
# %bb.34:                               # %assert_end59
	lw	a1, 8(s0)
	addi	s1, zero, 1
	bne	a1, s1, .LBB0_100
# %bb.35:                               # %assert_end61
	lw	a1, 12(s0)
	slli	a2, a3, 32
	srai	t3, a2, 32
	bne	t3, a1, .LBB0_102
# %bb.36:                               # %assert_end63
	lw	a1, 16(s6)
	addi	a2, zero, 2
	bne	a1, a2, .LBB0_103
# %bb.37:                               # %assert_end67
	lhu	a1, 22(s6)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_104
# %bb.38:                               # %assert_end67
	lbu	a1, 21(s6)
	addi	a2, zero, 32
	bne	a1, a2, .LBB0_104
# %bb.39:                               # %assert_end67
	lbu	a1, 20(s6)
	bnez	a1, .LBB0_104
# %bb.40:                               # %assert_end69
	lw	a1, 0(t6)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_105
# %bb.41:                               # %assert_end71
	lw	a1, 8(t6)
	addi	a2, zero, 5
	bne	a1, a2, .LBB0_106
# %bb.42:                               # %assert_end73
	beqz	t5, .LBB0_45
# %bb.43:                               # %if_then74
	lw	a1, 0(t5)
	addi	a2, zero, 5
	bne	a1, a2, .LBB0_107
# %bb.44:                               # %if_then74
	ld	a1, 8(t5)
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	a2, zero, 1
	bne	a1, a2, .LBB0_107
.LBB0_45:                               # %if_end75
	ld	a1, 40(s6)
	bnez	a1, .LBB0_108
# %bb.46:                               # %assert_end79
	lw	a1, 8(s6)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_109
# %bb.47:                               # %assert_end81
	lw	a1, 12(s6)
	bne	t3, a1, .LBB0_110
# %bb.48:                               # %assert_end83
	lw	a1, 16(s5)
	bnez	a1, .LBB0_111
# %bb.49:                               # %assert_end87
	lhu	a1, 22(s5)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_112
# %bb.50:                               # %assert_end87
	lbu	a1, 21(s5)
	addi	a2, zero, 32
	bne	a1, a2, .LBB0_112
# %bb.51:                               # %assert_end87
	lbu	a1, 20(s5)
	bnez	a1, .LBB0_112
# %bb.52:                               # %assert_end89
	ld	a1, 40(s5)
	bnez	a1, .LBB0_113
# %bb.53:                               # %assert_end91
	lw	a1, 8(s5)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_114
# %bb.54:                               # %assert_end93
	lw	a1, 12(s5)
	bne	t3, a1, .LBB0_115
# %bb.55:                               # %assert_end95
	lw	a1, 16(s4)
	bnez	a1, .LBB0_116
# %bb.56:                               # %assert_end99
	lhu	a1, 22(s4)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_117
# %bb.57:                               # %assert_end99
	lbu	a1, 21(s4)
	addi	a2, zero, 32
	bne	a1, a2, .LBB0_117
# %bb.58:                               # %assert_end99
	lbu	a1, 20(s4)
	addi	a2, zero, 2
	bne	a1, a2, .LBB0_117
# %bb.59:                               # %assert_end101
	ld	a1, 40(s4)
	bnez	a1, .LBB0_118
# %bb.60:                               # %assert_end103
	lw	a1, 8(s4)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_119
# %bb.61:                               # %assert_end105
	lw	a1, 12(s4)
	bne	t3, a1, .LBB0_120
# %bb.62:                               # %assert_end107
	lw	a1, 16(t4)
	addi	a2, zero, 3
	bne	a1, a2, .LBB0_121
# %bb.63:                               # %assert_end111
	lhu	a1, 22(t4)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_122
# %bb.64:                               # %assert_end111
	lbu	a1, 21(t4)
	addi	a2, zero, 32
	bne	a1, a2, .LBB0_122
# %bb.65:                               # %assert_end111
	lbu	a1, 20(t4)
	addi	a2, zero, 2
	bne	a1, a2, .LBB0_122
# %bb.66:                               # %assert_end113
	lw	a1, 0(t1)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_123
# %bb.67:                               # %assert_end115
	lw	a1, 8(t1)
	addi	a2, zero, 5
	bne	a1, a2, .LBB0_124
# %bb.68:                               # %assert_end117
	lw	a1, 16(t1)
	addi	a2, zero, 6
	bne	a1, a2, .LBB0_125
# %bb.69:                               # %assert_end119
	beqz	t2, .LBB0_73
# %bb.70:                               # %if_then120
	lw	a1, 0(t2)
	addi	a2, zero, 30
	bne	a1, a2, .LBB0_126
# %bb.71:                               # %if_then120
	ld	a1, 8(t2)
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	a2, zero, 6
	bne	a1, a2, .LBB0_126
# %bb.72:                               # %if_then120
	ld	a1, 16(t2)
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	a2, zero, 1
	bne	a1, a2, .LBB0_126
.LBB0_73:                               # %if_end121
	ld	a1, 40(t4)
	bnez	a1, .LBB0_127
# %bb.74:                               # %assert_end125
	lw	a1, 8(t4)
	addi	s0, zero, 1
	bne	a1, s0, .LBB0_128
# %bb.75:                               # %assert_end127
	lw	a1, 12(t4)
	bne	t3, a1, .LBB0_130
# %bb.76:                               # %assert_end129
	sd	t0, 8(sp)
	sd	a6, 0(sp)
	addi	a1, sp, 232
	addi	a2, sp, 88
	addi	a5, sp, 40
	addi	a6, sp, 16
	call	tvmgen_default_fused_vision_non_max_suppression_compute_
	j	.LBB0_85
.LBB0_77:                               # %assert_fail16
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	j	.LBB0_83
.LBB0_78:                               # %assert_fail18
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	j	.LBB0_83
.LBB0_79:                               # %assert_fail20
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	j	.LBB0_83
.LBB0_80:                               # %assert_fail22
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	j	.LBB0_83
.LBB0_81:                               # %assert_fail24
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	j	.LBB0_83
.LBB0_82:                               # %assert_fail26
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
.LBB0_83:                               # %assert_fail
	jalr	a1
	addi	a0, zero, 1
	slli	a0, a0, 32
.LBB0_84:                               # %assert_fail32
	addi	a0, a0, -1
.LBB0_85:                               # %assert_fail32
	ld	s6, 272(sp)             # 8-byte Folded Reload
	ld	s5, 280(sp)             # 8-byte Folded Reload
	ld	s4, 288(sp)             # 8-byte Folded Reload
	ld	s3, 296(sp)             # 8-byte Folded Reload
	ld	s2, 304(sp)             # 8-byte Folded Reload
	ld	s1, 312(sp)             # 8-byte Folded Reload
	ld	s0, 320(sp)             # 8-byte Folded Reload
	ld	ra, 328(sp)             # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 336
	.cfi_def_cfa_offset 0
	ret
.LBB0_86:                               # %assert_fail
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	j	.LBB0_83
.LBB0_87:                               # %assert_fail28
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	j	.LBB0_83
.LBB0_88:                               # %assert_fail32
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	j	.LBB0_129
.LBB0_89:                               # %assert_fail34
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	j	.LBB0_129
.LBB0_90:                               # %assert_fail36
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	j	.LBB0_83
.LBB0_91:                               # %assert_fail38
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	j	.LBB0_83
.LBB0_92:                               # %assert_fail40
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	j	.LBB0_83
.LBB0_93:                               # %assert_fail42
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	j	.LBB0_83
.LBB0_94:                               # %assert_fail44
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	j	.LBB0_101
.LBB0_95:                               # %assert_fail46
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	j	.LBB0_83
.LBB0_96:                               # %assert_fail50
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	jalr	a1
	slli	a0, s3, 32
	j	.LBB0_84
.LBB0_97:                               # %assert_fail52
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	j	.LBB0_101
.LBB0_98:                               # %assert_fail56
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	j	.LBB0_101
.LBB0_99:                               # %assert_fail58
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	j	.LBB0_83
.LBB0_100:                              # %assert_fail60
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
.LBB0_101:                              # %assert_fail44
	jalr	a1
	slli	a0, s1, 32
	j	.LBB0_84
.LBB0_102:                              # %assert_fail62
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	j	.LBB0_83
.LBB0_103:                              # %assert_fail64
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	j	.LBB0_83
.LBB0_104:                              # %assert_fail68
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	j	.LBB0_129
.LBB0_105:                              # %assert_fail70
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	j	.LBB0_129
.LBB0_106:                              # %assert_fail72
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	j	.LBB0_83
.LBB0_107:                              # %assert_fail76
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	j	.LBB0_83
.LBB0_108:                              # %assert_fail78
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	j	.LBB0_83
.LBB0_109:                              # %assert_fail80
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	j	.LBB0_129
.LBB0_110:                              # %assert_fail82
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	j	.LBB0_83
.LBB0_111:                              # %assert_fail84
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	j	.LBB0_83
.LBB0_112:                              # %assert_fail88
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	j	.LBB0_129
.LBB0_113:                              # %assert_fail90
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	j	.LBB0_83
.LBB0_114:                              # %assert_fail92
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	j	.LBB0_129
.LBB0_115:                              # %assert_fail94
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	j	.LBB0_83
.LBB0_116:                              # %assert_fail96
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	j	.LBB0_83
.LBB0_117:                              # %assert_fail100
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	j	.LBB0_129
.LBB0_118:                              # %assert_fail102
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	j	.LBB0_83
.LBB0_119:                              # %assert_fail104
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	j	.LBB0_129
.LBB0_120:                              # %assert_fail106
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	j	.LBB0_83
.LBB0_121:                              # %assert_fail108
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	j	.LBB0_83
.LBB0_122:                              # %assert_fail112
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	j	.LBB0_129
.LBB0_123:                              # %assert_fail114
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.42)
	addi	a0, a0, %lo(.L.str.42)
	j	.LBB0_129
.LBB0_124:                              # %assert_fail116
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.43)
	addi	a0, a0, %lo(.L.str.43)
	j	.LBB0_83
.LBB0_125:                              # %assert_fail118
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	j	.LBB0_83
.LBB0_126:                              # %assert_fail122
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.45)
	addi	a0, a0, %lo(.L.str.45)
	j	.LBB0_83
.LBB0_127:                              # %assert_fail124
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.46)
	addi	a0, a0, %lo(.L.str.46)
	j	.LBB0_83
.LBB0_128:                              # %assert_fail126
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.47)
	addi	a0, a0, %lo(.L.str.47)
.LBB0_129:                              # %assert_fail32
	jalr	a1
	slli	a0, s0, 32
	j	.LBB0_84
.LBB0_130:                              # %assert_fail128
	lui	a0, %hi(__TVMAPISetLastError)
	ld	a1, %lo(__TVMAPISetLastError)(a0)
	lui	a0, %hi(.L.str.48)
	addi	a0, a0, %lo(.L.str.48)
	j	.LBB0_83
.Lfunc_end0:
	.size	tvmgen_default_fused_vision_non_max_suppression, .Lfunc_end0-tvmgen_default_fused_vision_non_max_suppression
	.cfi_endproc
                                        # -- End function
	.section	.sdata,"aw",@progbits
	.p2align	2               # -- Begin function tvmgen_default_fused_vision_non_max_suppression_compute_
.LCPI1_0:
	.word	0                       # float 0
	.text
	.p2align	2
	.type	tvmgen_default_fused_vision_non_max_suppression_compute_,@function
tvmgen_default_fused_vision_non_max_suppression_compute_: # @tvmgen_default_fused_vision_non_max_suppression_compute_
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)             # 8-byte Folded Spill
	sd	s0, 128(sp)             # 8-byte Folded Spill
	sd	s1, 120(sp)             # 8-byte Folded Spill
	sd	s2, 112(sp)             # 8-byte Folded Spill
	sd	s3, 104(sp)             # 8-byte Folded Spill
	sd	s4, 96(sp)              # 8-byte Folded Spill
	sd	s5, 88(sp)              # 8-byte Folded Spill
	sd	s6, 80(sp)              # 8-byte Folded Spill
	sd	s7, 72(sp)              # 8-byte Folded Spill
	sd	s8, 64(sp)              # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	addi	s0, sp, 144
	.cfi_def_cfa s0, 0
	mv	s3, a7
	mv	s5, a6
	mv	s6, a5
	mv	s2, a4
	mv	s4, a0
	flw	ft0, 4(a0)
	fsw	ft0, -132(s0)
	flw	ft0, 28(a0)
	fsw	ft0, -128(s0)
	flw	ft0, 52(a0)
	fsw	ft0, -124(s0)
	flw	ft0, 76(a0)
	fsw	ft0, -120(s0)
	flw	ft0, 100(a0)
	fsw	ft0, -116(s0)
	addi	a6, zero, 5
	sd	a6, 8(a1)
	addi	a4, zero, 1
	sd	a4, 0(a1)
	addi	s7, s0, -132
	sd	s7, 0(a2)
	sd	zero, 32(a2)
	sd	a1, 24(a2)
	sd	zero, 40(a2)
	sh	a4, 22(a2)
	addi	a5, zero, 32
	sb	a5, 21(a2)
	addi	s1, zero, 2
	sb	s1, 20(a2)
	sw	s1, 16(a2)
	sw	a3, 12(a2)
	sw	a4, 8(a2)
	sd	a4, 16(a1)
	addi	a0, a1, 16
	sd	a0, 72(a2)
	sd	s2, 48(a2)
	sd	zero, 80(a2)
	sd	zero, 88(a2)
	sh	a4, 70(a2)
	sb	a5, 69(a2)
	sb	zero, 68(a2)
	sw	a4, 64(a2)
	sw	a3, 60(a2)
	sw	a4, 56(a2)
	sd	a6, 32(a1)
	sd	a4, 24(a1)
	addi	a0, a1, 24
	sd	a0, 120(a2)
	addi	s8, s0, -112
	sd	s8, 96(a2)
	sb	a5, 117(a2)
	sw	s1, 112(a2)
	sw	a3, 108(a2)
	sd	zero, 128(a2)
	sd	zero, 136(a2)
	sh	a4, 118(a2)
	sb	zero, 116(a2)
	sw	a4, 104(a2)
	sd	a2, 0(s6)
	addi	a0, zero, 7
	sw	a0, 0(s5)
	addi	a1, a2, 48
	sd	a1, 8(s6)
	addi	a1, a2, 96
	sw	a0, 4(s5)
	sd	a1, 16(s6)
	sw	a0, 8(s5)
	sd	a4, 24(s6)
	sw	zero, 12(s5)
	sd	zero, 32(s6)
	sw	zero, 16(s5)
	lui	a0, %hi(.tvm_func.tvm.contrib.sort.argsort_nms)
	ld	a0, %lo(.tvm_func.tvm.contrib.sort.argsort_nms)(a0)
	beqz	a0, .LBB1_61
.LBB1_1:                                # %handle_init_end
	lui	a1, %hi(__TVMFuncCall)
	ld	s1, %lo(__TVMFuncCall)(a1)
	addi	a4, s6, 40
	addi	a5, s5, 20
	mv	a1, s6
	mv	a2, s5
	addi	a3, zero, 5
	jalr	s1
	slli	a1, a0, 32
	srli	a1, a1, 32
	bnez	a1, .LBB1_60
# %bb.2:                                # %for_begin3.preheader
	ld	s1, 0(s0)
	flw	ft1, 0(s3)
	lui	a0, %hi(.LCPI1_0)
	addi	a0, a0, %lo(.LCPI1_0)
	flw	ft0, 0(a0)
	flt.s	a0, ft0, ft1
	beqz	a0, .LBB1_58
# %bb.3:                                # %if_then
	lw	a0, 0(s2)
	blez	a0, .LBB1_59
# %bb.4:                                # %if_then6
	fsw	ft1, -136(s0)           # 4-byte Folded Spill
	addi	a1, zero, 1
	beq	a0, a1, .LBB1_6
# %bb.5:                                # %if_then6
	addi	a1, zero, 2
.LBB1_6:                                # %if_then6
	sw	a1, -92(s0)
	mv	a0, sp
	addi	a1, a0, -48
	mv	sp, a1
	sd	s7, -16(a0)
	sd	s8, -24(a0)
	sd	s4, -32(a0)
	sd	s1, -40(a0)
	addi	s3, s0, -92
	sd	s3, -48(a0)
	lui	a0, %hi(.L__tvm_parallel_lambda)
	addi	a0, a0, %lo(.L__tvm_parallel_lambda)
	lui	a2, %hi(__TVMBackendParallelLaunch)
	ld	a3, %lo(__TVMBackendParallelLaunch)(a2)
	mv	a2, zero
	jalr	a3
	slli	a1, a0, 32
	srli	a1, a1, 32
	bnez	a1, .LBB1_60
# %bb.7:                                # %call_end11
	lw	a0, 0(s2)
	addi	a1, zero, 3
	blt	a0, a1, .LBB1_10
# %bb.8:                                # %if_then12
	mv	a0, sp
	addi	a1, a0, -32
	mv	sp, a1
	sd	s7, -8(a0)
	sd	s1, -16(a0)
	sd	s3, -24(a0)
	sd	s2, -32(a0)
	lui	a0, %hi(__TVMBackendParallelLaunch)
	ld	a3, %lo(__TVMBackendParallelLaunch)(a0)
	lui	a0, %hi(.L__tvm_parallel_lambda.50)
	addi	a0, a0, %lo(.L__tvm_parallel_lambda.50)
	mv	a2, zero
	jalr	a3
	slli	a1, a0, 32
	srli	a1, a1, 32
	bnez	a1, .LBB1_60
# %bb.9:                                # %if_then12.if_end7_crit_edge
	lwu	a0, 0(s2)
.LBB1_10:                               # %if_end7
	slli	a1, a0, 32
	srai	a2, a1, 32
	addi	s3, zero, 1
	flw	fa5, -136(s0)           # 4-byte Folded Reload
	blt	a2, s3, .LBB1_59
# %bb.11:                               # %for_body17.lr.ph
	ld	a2, 8(s0)
	lwu	a6, 0(a2)
	srli	t1, a1, 32
	addi	a3, zero, 6
	slli	a1, a6, 32
	srai	t2, a1, 32
	slli	a1, s3, 34
	addi	a7, a1, -4
	addi	a1, zero, 383
	slli	t3, a1, 23
	addi	a1, zero, -129
	slli	a1, a1, 32
	addi	a1, a1, 383
	slli	t4, a1, 23
	slli	a1, s3, 32
	addi	t0, a1, -1
	lui	a1, %hi(.LCPI1_0)
	addi	a1, a1, %lo(.LCPI1_0)
	flw	ft0, 0(a1)
	mv	a2, zero
	mv	t5, zero
	j	.LBB1_14
.LBB1_12:                               # %for_body23.preheader
                                        #   in Loop: Header=BB1_14 Depth=1
	slli	a1, t6, 2
	and	a1, a1, a7
	ori	a4, a1, 4
	add	a4, s1, a4
	add	a1, s1, a1
	sw	t3, 0(a1)
	sw	t3, 0(a4)
	sd	t4, 16(a1)
	sd	t4, 8(a1)
	slli	a1, a2, 2
	add	a1, s7, a1
	sw	t0, 0(a1)
	mv	t5, a6
.LBB1_13:                               # %if_end20
                                        #   in Loop: Header=BB1_14 Depth=1
	addi	a2, a2, 1
	beq	a2, t1, .LBB1_59
.LBB1_14:                               # %for_body17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
	mul	t6, a2, a3
	slli	a1, t5, 32
	srai	a1, a1, 32
	beq	a1, t2, .LBB1_12
# %bb.15:                               # %if_else21
                                        #   in Loop: Header=BB1_14 Depth=1
	ori	a1, t6, 1
	slli	a1, a1, 32
	srli	a1, a1, 32
	slli	a1, a1, 2
	add	a1, s1, a1
	flw	ft1, 0(a1)
	flt.s	a1, ft0, ft1
	xori	a1, a1, 1
	bnez	a1, .LBB1_13
# %bb.16:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	addi	a1, t6, 3
	slli	a1, a1, 32
	srli	a1, a1, 32
	slli	a1, a1, 2
	add	a1, s1, a1
	flw	ft1, 0(a1)
	addi	a1, t6, 5
	slli	a1, a1, 32
	srli	a1, a1, 32
	slli	a1, a1, 2
	add	a1, s1, a1
	flw	ft3, 0(a1)
	flt.s	a1, ft3, ft1
	fmv.s	ft2, ft1
	bnez	a1, .LBB1_18
# %bb.17:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	fmv.s	ft2, ft3
.LBB1_18:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	flt.s	a1, ft1, ft3
	bnez	a1, .LBB1_20
# %bb.19:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	fmv.s	ft1, ft3
.LBB1_20:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	addi	a1, t6, 4
	slli	a1, a1, 32
	srli	a1, a1, 32
	slli	a1, a1, 2
	add	a1, s1, a1
	addi	a4, t6, 2
	slli	a4, a4, 32
	srli	a4, a4, 32
	slli	a4, a4, 2
	add	a4, s1, a4
	flw	ft3, 0(a4)
	flw	ft5, 0(a1)
	flt.s	a1, ft5, ft3
	fmv.s	ft4, ft3
	beqz	a1, .LBB1_23
# %bb.21:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	flt.s	a1, ft3, ft5
	beqz	a1, .LBB1_24
.LBB1_22:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	bnez	a2, .LBB1_25
	j	.LBB1_56
.LBB1_23:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	fmv.s	ft4, ft5
	flt.s	a1, ft3, ft5
	bnez	a1, .LBB1_22
.LBB1_24:                               # %if_then25
                                        #   in Loop: Header=BB1_14 Depth=1
	fmv.s	ft3, ft5
	beqz	a2, .LBB1_56
.LBB1_25:                               # %for_body28.lr.ph
                                        #   in Loop: Header=BB1_14 Depth=1
	fsub.s	ft5, ft2, ft1
	fsub.s	ft6, ft4, ft3
	fmul.s	ft5, ft6, ft5
	addi	a1, zero, 1
	mv	a5, zero
.LBB1_26:                               # %for_body28
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul	a4, a5, a3
	slli	a0, a4, 32
	srli	a0, a0, 32
	slli	a0, a0, 2
	add	a0, s1, a0
	flw	ft6, 0(a0)
	fle.s	a0, ft0, ft6
	xori	a0, a0, 1
	bnez	a0, .LBB1_52
# %bb.27:                               # %for_body28
                                        #   in Loop: Header=BB1_26 Depth=2
	slli	a0, a1, 32
	srli	a0, a0, 32
	bne	a0, s3, .LBB1_52
# %bb.28:                               # %for_body28
                                        #   in Loop: Header=BB1_26 Depth=2
	ori	a0, a4, 1
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	a0, a0, 2
	add	a0, s1, a0
	flw	ft6, 0(a0)
	flt.s	a0, ft0, ft6
	beqz	a0, .LBB1_52
# %bb.29:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	addi	a0, a4, 3
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	a0, a0, 2
	add	a0, s1, a0
	flw	ft6, 0(a0)
	addi	a0, a4, 5
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	a0, a0, 2
	add	a0, s1, a0
	flw	fa0, 0(a0)
	flt.s	a0, fa0, ft6
	fmv.s	ft7, ft6
	bnez	a0, .LBB1_31
# %bb.30:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	ft7, fa0
.LBB1_31:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	flt.s	a0, ft6, fa0
	bnez	a0, .LBB1_33
# %bb.32:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	ft6, fa0
.LBB1_33:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	addi	a0, a4, 4
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	a0, a0, 2
	add	a0, s1, a0
	addi	a1, a4, 2
	slli	a1, a1, 32
	srli	a1, a1, 32
	slli	a1, a1, 2
	add	a1, s1, a1
	flw	fa0, 0(a1)
	flw	fa2, 0(a0)
	flt.s	a0, fa2, fa0
	fmv.s	fa1, fa0
	bnez	a0, .LBB1_35
# %bb.34:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa1, fa2
.LBB1_35:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	flt.s	a0, fa0, fa2
	bnez	a0, .LBB1_37
# %bb.36:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa0, fa2
.LBB1_37:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	flt.s	a0, ft6, ft1
	fmv.s	fa2, ft1
	bnez	a0, .LBB1_39
# %bb.38:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa2, ft6
.LBB1_39:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	flt.s	a0, ft2, ft7
	fmv.s	fa3, ft2
	bnez	a0, .LBB1_41
# %bb.40:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa3, ft7
.LBB1_41:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fsub.s	fa3, fa3, fa2
	flt.s	a0, fa3, ft0
	fmv.s	fa2, ft0
	bnez	a0, .LBB1_43
# %bb.42:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa2, fa3
.LBB1_43:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	flt.s	a0, fa0, ft3
	fmv.s	fa3, ft3
	bnez	a0, .LBB1_45
# %bb.44:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa3, fa0
.LBB1_45:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	flt.s	a0, ft4, fa1
	fmv.s	fa4, ft4
	bnez	a0, .LBB1_47
# %bb.46:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa4, fa1
.LBB1_47:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fsub.s	fa3, fa4, fa3
	flt.s	a0, fa3, ft0
	fmv.s	fa4, ft0
	bnez	a0, .LBB1_49
# %bb.48:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	fa4, fa3
.LBB1_49:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmul.s	fa2, fa4, fa2
	fsub.s	ft6, ft7, ft6
	fsub.s	ft7, fa1, fa0
	fmul.s	ft6, ft7, ft6
	fadd.s	ft6, ft6, ft5
	fsub.s	ft6, ft6, fa2
	fle.s	a0, ft6, ft0
	xori	a0, a0, 1
	bnez	a0, .LBB1_53
# %bb.50:                               # %if_then32
                                        #   in Loop: Header=BB1_26 Depth=2
	fmv.s	ft6, ft0
	fle.s	a0, fa5, ft6
	beqz	a0, .LBB1_54
.LBB1_51:                               # %if_then37
                                        #   in Loop: Header=BB1_26 Depth=2
	mv	a1, zero
.LBB1_52:                               # %if_end33
                                        #   in Loop: Header=BB1_26 Depth=2
	addi	a5, a5, 1
	bne	a2, a5, .LBB1_26
	j	.LBB1_55
.LBB1_53:                               #   in Loop: Header=BB1_26 Depth=2
	fdiv.s	ft6, fa2, ft6
	fle.s	a0, fa5, ft6
	bnez	a0, .LBB1_51
.LBB1_54:                               #   in Loop: Header=BB1_26 Depth=2
	addi	a1, zero, 1
	j	.LBB1_52
.LBB1_55:                               # %for_end29
                                        #   in Loop: Header=BB1_14 Depth=1
	slli	a0, a1, 32
	srli	a0, a0, 32
	beqz	a0, .LBB1_57
.LBB1_56:                               # %if_else41
                                        #   in Loop: Header=BB1_14 Depth=1
	addi	t5, t5, 1
	j	.LBB1_13
.LBB1_57:                               # %for_body43.preheader
                                        #   in Loop: Header=BB1_14 Depth=1
	slli	a0, t6, 2
	and	a0, a0, a7
	ori	a1, a0, 4
	add	a1, s1, a1
	add	a0, s1, a0
	sw	t3, 0(a0)
	sw	t3, 0(a1)
	sd	t4, 16(a0)
	sd	t4, 8(a0)
	slli	a0, a2, 2
	add	a0, s7, a0
	sw	t0, 0(a0)
	j	.LBB1_13
.LBB1_58:                               # %if_else
	mv	a0, sp
	addi	a1, a0, -32
	mv	sp, a1
	sd	s7, -8(a0)
	sd	s4, -16(a0)
	sd	s1, -24(a0)
	sd	s2, -32(a0)
	lui	a0, %hi(__TVMBackendParallelLaunch)
	ld	a3, %lo(__TVMBackendParallelLaunch)(a0)
	lui	a0, %hi(.L__tvm_parallel_lambda.51)
	addi	a0, a0, %lo(.L__tvm_parallel_lambda.51)
	mv	a2, zero
	jalr	a3
	slli	a1, a0, 32
	srli	a1, a1, 32
	bnez	a1, .LBB1_60
.LBB1_59:                               # %if_end
	mv	a0, sp
	addi	a1, a0, -32
	mv	sp, a1
	sd	s7, -16(a0)
	sd	s1, -24(a0)
	sd	s2, -32(a0)
	lui	a0, %hi(__TVMBackendParallelLaunch)
	ld	a3, %lo(__TVMBackendParallelLaunch)(a0)
	lui	a0, %hi(.L__tvm_parallel_lambda.52)
	addi	a0, a0, %lo(.L__tvm_parallel_lambda.52)
	mv	a2, zero
	jalr	a3
.LBB1_60:                               # %call_fail
	addi	sp, s0, -144
	ld	s8, 64(sp)              # 8-byte Folded Reload
	ld	s7, 72(sp)              # 8-byte Folded Reload
	ld	s6, 80(sp)              # 8-byte Folded Reload
	ld	s5, 88(sp)              # 8-byte Folded Reload
	ld	s4, 96(sp)              # 8-byte Folded Reload
	ld	s3, 104(sp)             # 8-byte Folded Reload
	ld	s2, 112(sp)             # 8-byte Folded Reload
	ld	s1, 120(sp)             # 8-byte Folded Reload
	ld	s0, 128(sp)             # 8-byte Folded Reload
	.cfi_def_cfa sp, 144
	ld	ra, 136(sp)             # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 144
	.cfi_def_cfa_offset 0
	ret
.LBB1_61:                               # %handle_init
	lui	a0, %hi(__TVMBackendGetFuncFromEnv)
	ld	a3, %lo(__TVMBackendGetFuncFromEnv)(a0)
	lui	a0, %hi(__tvm_module_ctx)
	ld	a0, %lo(__tvm_module_ctx)(a0)
	lui	a1, %hi(.L.str.49)
	addi	a1, a1, %lo(.L.str.49)
	addi	a2, s0, -88
	jalr	a3
	slli	a1, a0, 32
	srli	a1, a1, 32
	bnez	a1, .LBB1_60
# %bb.62:                               # %call_end
	lui	a1, %hi(.tvm_func.tvm.contrib.sort.argsort_nms)
	ld	a0, -88(s0)
	sd	a0, %lo(.tvm_func.tvm.contrib.sort.argsort_nms)(a1)
	j	.LBB1_1
.Lfunc_end1:
	.size	tvmgen_default_fused_vision_non_max_suppression_compute_, .Lfunc_end1-tvmgen_default_fused_vision_non_max_suppression_compute_
	.cfi_endproc
                                        # -- End function
	.p2align	2               # -- Begin function __tvm_parallel_lambda
	.type	.L__tvm_parallel_lambda,@function
.L__tvm_parallel_lambda:                # @__tvm_parallel_lambda
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	lw	a3, 8(a1)
	ld	a1, 0(a2)
	lw	a1, 0(a1)
	add	a4, a3, a1
	addi	a4, a4, -1
	divw	a3, a4, a3
	mul	a4, a3, a0
	addi	a0, a0, 1
	mul	a3, a3, a0
	slli	a0, a3, 32
	srai	a0, a0, 32
	blt	a0, a1, .LBB2_2
# %bb.1:                                # %entry
	mv	a3, a1
.LBB2_2:                                # %entry
	slli	a0, a4, 32
	srai	a0, a0, 32
	blt	a0, a1, .LBB2_4
# %bb.3:                                # %entry
	mv	a4, a1
.LBB2_4:                                # %entry
	slli	a0, a4, 32
	srai	a0, a0, 32
	slli	a1, a3, 32
	srai	a6, a1, 32
	bge	a0, a6, .LBB2_7
# %bb.5:                                # %for_begin1.preheader.preheader
	ld	a7, 32(a2)
	ld	a4, 24(a2)
	ld	t0, 16(a2)
	ld	a5, 8(a2)
	slli	a1, a0, 2
	add	a2, a4, a1
	add	a4, a7, a1
	addi	a1, zero, 24
	mul	a1, a0, a1
	add	a1, a1, a5
	addi	a5, a1, 12
	addi	a1, zero, 3
	slli	a7, a1, 33
.LBB2_6:                                # %for_begin1.preheader
                                        # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a2)
	mul	a3, t1, a7
	srai	a3, a3, 32
	slli	a3, a3, 2
	add	a1, t0, a3
	flw	ft0, 0(a1)
	fsw	ft0, -12(a5)
	ori	a3, a3, 4
	add	a3, t0, a3
	flw	ft0, 0(a3)
	fsw	ft0, -8(a5)
	flw	ft0, 8(a1)
	fsw	ft0, -4(a5)
	flw	ft0, 12(a1)
	fsw	ft0, 0(a5)
	flw	ft0, 16(a1)
	fsw	ft0, 4(a5)
	flw	ft0, 20(a1)
	fsw	ft0, 8(a5)
	sw	t1, 0(a4)
	addi	a5, a5, 24
	addi	a2, a2, 4
	addi	a4, a4, 4
	addi	a0, a0, 1
	blt	a0, a6, .LBB2_6
.LBB2_7:                                # %for_end
	mv	a0, zero
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	.L__tvm_parallel_lambda, .Lfunc_end2-.L__tvm_parallel_lambda
	.cfi_endproc
                                        # -- End function
	.p2align	2               # -- Begin function __tvm_parallel_lambda.50
	.type	.L__tvm_parallel_lambda.50,@function
.L__tvm_parallel_lambda.50:             # @__tvm_parallel_lambda.50
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	ld	a3, 8(a2)
	lwu	a6, 0(a3)
	ld	a3, 0(a2)
	lw	a3, 0(a3)
	sub	a3, a3, a6
	lw	a1, 8(a1)
	add	a4, a1, a3
	addi	a4, a4, -1
	divw	a1, a4, a1
	mul	a4, a1, a0
	addi	a0, a0, 1
	mul	a1, a1, a0
	slli	a0, a3, 32
	srai	a0, a0, 32
	slli	a5, a1, 32
	srai	a5, a5, 32
	blt	a5, a0, .LBB3_2
# %bb.1:                                # %entry
	mv	a1, a3
.LBB3_2:                                # %entry
	slli	a5, a4, 32
	srai	a5, a5, 32
	blt	a5, a0, .LBB3_4
# %bb.3:                                # %entry
	mv	a4, a3
.LBB3_4:                                # %entry
	slli	a0, a4, 32
	srai	a0, a0, 32
	slli	a1, a1, 32
	srai	a7, a1, 32
	bge	a0, a7, .LBB3_7
# %bb.5:                                # %for_begin1.preheader.preheader
	ld	t0, 24(a2)
	ld	a2, 16(a2)
	addi	a1, zero, 3
	slli	t1, a1, 33
	addi	a1, zero, 383
	slli	a3, a1, 23
	addi	a1, zero, 1
	slli	a1, a1, 32
	addi	t2, a1, -1
.LBB3_6:                                # %for_begin1.preheader
                                        # =>This Inner Loop Header: Depth=1
	add	a4, a6, a0
	mul	a5, a4, t1
	srai	a5, a5, 32
	slli	a5, a5, 2
	ori	a1, a5, 4
	add	a1, a2, a1
	add	a5, a2, a5
	sw	a3, 0(a5)
	sw	a3, 0(a1)
	sw	a3, 20(a5)
	sw	a3, 16(a5)
	sw	a3, 12(a5)
	sw	a3, 8(a5)
	slli	a1, a4, 32
	srai	a1, a1, 32
	slli	a1, a1, 2
	add	a1, t0, a1
	sw	t2, 0(a1)
	addi	a0, a0, 1
	blt	a0, a7, .LBB3_6
.LBB3_7:                                # %for_end
	mv	a0, zero
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end3:
	.size	.L__tvm_parallel_lambda.50, .Lfunc_end3-.L__tvm_parallel_lambda.50
	.cfi_endproc
                                        # -- End function
	.p2align	2               # -- Begin function __tvm_parallel_lambda.51
	.type	.L__tvm_parallel_lambda.51,@function
.L__tvm_parallel_lambda.51:             # @__tvm_parallel_lambda.51
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	lw	a3, 8(a1)
	ld	a1, 0(a2)
	lw	a1, 0(a1)
	add	a4, a3, a1
	addi	a4, a4, -1
	divw	a3, a4, a3
	mul	a4, a3, a0
	addi	a0, a0, 1
	mul	a3, a3, a0
	slli	a0, a3, 32
	srai	a0, a0, 32
	blt	a0, a1, .LBB4_2
# %bb.1:                                # %entry
	mv	a3, a1
.LBB4_2:                                # %entry
	slli	a0, a4, 32
	srai	a0, a0, 32
	blt	a0, a1, .LBB4_4
# %bb.3:                                # %entry
	mv	a4, a1
.LBB4_4:                                # %entry
	slli	a0, a4, 32
	srai	a0, a0, 32
	slli	a1, a3, 32
	srai	a1, a1, 32
	bge	a0, a1, .LBB4_7
# %bb.5:                                # %for_begin1.preheader.preheader
	ld	a3, 24(a2)
	ld	a6, 16(a2)
	ld	a5, 8(a2)
	slli	a2, a0, 2
	add	a2, a3, a2
	addi	a3, zero, 24
	mul	a3, a0, a3
	addi	a4, a3, 12
	add	a3, a6, a4
	add	a4, a5, a4
.LBB4_6:                                # %for_begin1.preheader
                                        # =>This Inner Loop Header: Depth=1
	flw	ft0, -12(a3)
	fsw	ft0, -12(a4)
	flw	ft0, -8(a3)
	fsw	ft0, -8(a4)
	flw	ft0, -4(a3)
	fsw	ft0, -4(a4)
	flw	ft0, 0(a3)
	fsw	ft0, 0(a4)
	flw	ft0, 4(a3)
	fsw	ft0, 4(a4)
	flw	ft0, 8(a3)
	fsw	ft0, 8(a4)
	addi	a3, a3, 24
	addi	a4, a4, 24
	sw	a0, 0(a2)
	addi	a2, a2, 4
	addi	a0, a0, 1
	blt	a0, a1, .LBB4_6
.LBB4_7:                                # %for_end
	mv	a0, zero
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end4:
	.size	.L__tvm_parallel_lambda.51, .Lfunc_end4-.L__tvm_parallel_lambda.51
	.cfi_endproc
                                        # -- End function
	.p2align	2               # -- Begin function __tvm_parallel_lambda.52
	.type	.L__tvm_parallel_lambda.52,@function
.L__tvm_parallel_lambda.52:             # @__tvm_parallel_lambda.52
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	ld	a3, 0(a2)
	lwu	a6, 0(a3)
	addi	a3, zero, 5
	sub	a3, a3, a6
	lw	a1, 8(a1)
	add	a4, a1, a3
	addi	a4, a4, -1
	divw	a1, a4, a1
	mul	a4, a1, a0
	addi	a0, a0, 1
	mul	a1, a1, a0
	slli	a0, a3, 32
	srai	a0, a0, 32
	slli	a5, a1, 32
	srai	a5, a5, 32
	blt	a5, a0, .LBB5_2
# %bb.1:                                # %entry
	mv	a1, a3
.LBB5_2:                                # %entry
	slli	a5, a4, 32
	srai	a5, a5, 32
	blt	a5, a0, .LBB5_4
# %bb.3:                                # %entry
	mv	a4, a3
.LBB5_4:                                # %entry
	slli	a0, a4, 32
	srai	a0, a0, 32
	slli	a1, a1, 32
	srai	a7, a1, 32
	bge	a0, a7, .LBB5_7
# %bb.5:                                # %for_begin1.preheader.preheader
	ld	t0, 16(a2)
	ld	a2, 8(a2)
	addi	a1, zero, 3
	slli	t1, a1, 33
	addi	a1, zero, 383
	slli	a3, a1, 23
	addi	a1, zero, 1
	slli	a1, a1, 32
	addi	t2, a1, -1
.LBB5_6:                                # %for_begin1.preheader
                                        # =>This Inner Loop Header: Depth=1
	add	a4, a6, a0
	mul	a5, a4, t1
	srai	a5, a5, 32
	slli	a5, a5, 2
	ori	a1, a5, 4
	add	a1, a2, a1
	add	a5, a2, a5
	sw	a3, 0(a5)
	sw	a3, 0(a1)
	sw	a3, 20(a5)
	sw	a3, 16(a5)
	sw	a3, 12(a5)
	sw	a3, 8(a5)
	slli	a1, a4, 32
	srai	a1, a1, 32
	slli	a1, a1, 2
	add	a1, t0, a1
	sw	t2, 0(a1)
	addi	a0, a0, 1
	blt	a0, a7, .LBB5_6
.LBB5_7:                                # %for_end
	mv	a0, zero
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end5:
	.size	.L__tvm_parallel_lambda.52, .Lfunc_end5-.L__tvm_parallel_lambda.52
	.cfi_endproc
                                        # -- End function
	.type	__tvm_module_ctx,@object # @__tvm_module_ctx
	.section	.sbss,"aw",@nobits
	.weak	__tvm_module_ctx
	.p2align	3
__tvm_module_ctx:
	.quad	0
	.size	__tvm_module_ctx, 8

	.type	__TVMFuncCall,@object   # @__TVMFuncCall
	.weak	__TVMFuncCall
	.p2align	3
__TVMFuncCall:
	.quad	0
	.size	__TVMFuncCall, 8

	.type	__TVMBackendGetFuncFromEnv,@object # @__TVMBackendGetFuncFromEnv
	.weak	__TVMBackendGetFuncFromEnv
	.p2align	3
__TVMBackendGetFuncFromEnv:
	.quad	0
	.size	__TVMBackendGetFuncFromEnv, 8

	.type	__TVMAPISetLastError,@object # @__TVMAPISetLastError
	.weak	__TVMAPISetLastError
	.p2align	3
__TVMAPISetLastError:
	.quad	0
	.size	__TVMAPISetLastError, 8

	.type	__TVMBackendParallelLaunch,@object # @__TVMBackendParallelLaunch
	.weak	__TVMBackendParallelLaunch
	.p2align	3
__TVMBackendParallelLaunch:
	.quad	0
	.size	__TVMBackendParallelLaunch, 8

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	"Assert fail: (num_args == 6), tvmgen_default_fused_vision_non_max_suppression: num_args should be 6"
	.size	.L.str, 100

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[0] to be pointer"
	.size	.L.str.1, 175

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[1] to be pointer"
	.size	.L.str.2, 175

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[2] to be pointer"
	.size	.L.str.3, 175

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[3] to be pointer"
	.size	.L.str.4, 175

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Assert fail: ((((arg4.code == 3) || (arg4.code == 13)) || (arg4.code == 7)) || (arg4.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[4] to be pointer"
	.size	.L.str.5, 175

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Assert fail: ((((arg5.code == 3) || (arg5.code == 13)) || (arg5.code == 7)) || (arg5.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[5] to be pointer"
	.size	.L.str.6, 175

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Assert fail: (3 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 3"
	.size	.L.str.7, 85

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32"
	.size	.L.str.8, 198

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))"
	.size	.L.str.9, 124

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Assert fail: (5 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (5 == int32(arg0.shape[1]))"
	.size	.L.str.10, 124

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Assert fail: (6 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (6 == int32(arg0.shape[2]))"
	.size	.L.str.11, 124

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Assert fail: (((1 == int32(arg0.strides[2])) && (6 == int32(arg0.strides[1]))) && (30 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.12, 158

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))"
	.size	.L.str.13, 163

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))"
	.size	.L.str.14, 149

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1"
	.size	.L.str.15, 85

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)0) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be int32"
	.size	.L.str.16, 196

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))"
	.size	.L.str.17, 124

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array"
	.size	.L.str.18, 87

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))"
	.size	.L.str.19, 163

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))"
	.size	.L.str.20, 149

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))"
	.size	.L.str.21, 155

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Assert fail: (2 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2"
	.size	.L.str.22, 85

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)0) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be int32"
	.size	.L.str.23, 196

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))"
	.size	.L.str.24, 124

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Assert fail: (5 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (5 == int32(arg2.shape[1]))"
	.size	.L.str.25, 124

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Assert fail: ((1 == int32(arg2.strides[1])) && (5 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array"
	.size	.L.str.26, 122

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))"
	.size	.L.str.27, 163

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))"
	.size	.L.str.28, 149

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))"
	.size	.L.str.29, 155

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Assert fail: (0 == tir.tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 0"
	.size	.L.str.30, 85

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg3, 0, 5) == (uint8)0) && (tir.tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be int32"
	.size	.L.str.31, 196

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8))"
	.size	.L.str.32, 163

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg3, 0, 10))"
	.size	.L.str.33, 149

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg3, 0, 9))"
	.size	.L.str.34, 155

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Assert fail: (0 == tir.tvm_struct_get(arg4, 0, 4)), arg4.ndim is expected to equal 0"
	.size	.L.str.35, 85

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg4, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg4, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg4, 0, 7) == (uint16)1)), arg4.dtype is expected to be float32"
	.size	.L.str.36, 198

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg4, 0, 8)), Argument arg4.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg4, 0, 8))"
	.size	.L.str.37, 163

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg4, 0, 10)), Argument arg4.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg4, 0, 10))"
	.size	.L.str.38, 149

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg4, 0, 9)), Argument arg4.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg4, 0, 9))"
	.size	.L.str.39, 155

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Assert fail: (3 == tir.tvm_struct_get(arg5, 0, 4)), arg5.ndim is expected to equal 3"
	.size	.L.str.40, 85

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg5, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg5, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg5, 0, 7) == (uint16)1)), arg5.dtype is expected to be float32"
	.size	.L.str.41, 198

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Assert fail: (1 == int32(arg5.shape[0])), Argument arg5.shape[0] has an unsatisfied constraint: (1 == int32(arg5.shape[0]))"
	.size	.L.str.42, 124

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Assert fail: (5 == int32(arg5.shape[1])), Argument arg5.shape[1] has an unsatisfied constraint: (5 == int32(arg5.shape[1]))"
	.size	.L.str.43, 124

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Assert fail: (6 == int32(arg5.shape[2])), Argument arg5.shape[2] has an unsatisfied constraint: (6 == int32(arg5.shape[2]))"
	.size	.L.str.44, 124

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Assert fail: (((1 == int32(arg5.strides[2])) && (6 == int32(arg5.strides[1]))) && (30 == int32(arg5.strides[0]))), arg5.strides: expected to be compact array"
	.size	.L.str.45, 158

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg5, 0, 8)), Argument arg5.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg5, 0, 8))"
	.size	.L.str.46, 163

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg5, 0, 10)), Argument arg5.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg5, 0, 10))"
	.size	.L.str.47, 149

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg5, 0, 9)), Argument arg5.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg5, 0, 9))"
	.size	.L.str.48, 155

	.type	.tvm_func.tvm.contrib.sort.argsort_nms,@object # @.tvm_func.tvm.contrib.sort.argsort_nms
	.section	.sbss,"aw",@nobits
	.p2align	3
.tvm_func.tvm.contrib.sort.argsort_nms:
	.quad	0
	.size	.tvm_func.tvm.contrib.sort.argsort_nms, 8

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata,"a",@progbits
.L.str.49:
	.asciz	"tvm.contrib.sort.argsort_nms"
	.size	.L.str.49, 29

	.type	__tvm_main__,@object    # @__tvm_main__
	.weak	__tvm_main__
__tvm_main__:
	.asciz	"tvmgen_default_fused_vision_non_max_suppression"
	.size	__tvm_main__, 48

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"TVM"                   # string offset=0
.Linfo_string1:
	.asciz	"model.tvm"             # string offset=4
.Linfo_string2:
	.asciz	"/tmp/"                 # string offset=14
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	0                       # DW_CHILDREN_no
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\264B"                 # DW_AT_GNU_pubnames
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\261B"                 # DW_AT_GNU_dwo_id
	.byte	7                       # DW_FORM_data8
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.half	4                       # DWARF version number
	.word	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1b DW_TAG_compile_unit
	.word	.Linfo_string0          # DW_AT_producer
	.half	2                       # DW_AT_language
	.word	.Linfo_string1          # DW_AT_name
	.word	.Lline_table_start0     # DW_AT_stmt_list
	.word	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	1                       # DW_AT_GNU_dwo_id
.Ldebug_info_end0:
	.section	.debug_macinfo,"",@progbits
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.half	2                       # DWARF Version
	.word	.Lcu_begin0             # Offset of Compilation Unit Info
	.word	38                      # Compilation Unit Length
	.word	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.half	2                       # DWARF Version
	.word	.Lcu_begin0             # Offset of Compilation Unit Info
	.word	38                      # Compilation Unit Length
	.word	0                       # End Mark
.LpubTypes_end0:

	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
