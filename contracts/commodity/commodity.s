	.text
	.file	"commodity.bc"
	.hidden	_ZeqRK11checksum256S1_
	.globl	_ZeqRK11checksum256S1_
	.type	_ZeqRK11checksum256S1_,@function
_ZeqRK11checksum256S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end0:
	.size	_ZeqRK11checksum256S1_, .Lfunc_end0-_ZeqRK11checksum256S1_

	.hidden	_ZeqRK11checksum160S1_
	.globl	_ZeqRK11checksum160S1_
	.type	_ZeqRK11checksum160S1_,@function
_ZeqRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end1:
	.size	_ZeqRK11checksum160S1_, .Lfunc_end1-_ZeqRK11checksum160S1_

	.hidden	_ZneRK11checksum160S1_
	.globl	_ZneRK11checksum160S1_
	.type	_ZneRK11checksum160S1_,@function
_ZneRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop1, $pop2
	.endfunc
.Lfunc_end2:
	.size	_ZneRK11checksum160S1_, .Lfunc_end2-_ZneRK11checksum160S1_

	.hidden	now
	.globl	now
	.type	now,@function
now:
	.result 	i32
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i32.wrap/i64	$push3=, $pop2
	.endfunc
.Lfunc_end3:
	.size	now, .Lfunc_end3-now

	.hidden	_ZN5kcwio12require_authERKNS_16permission_levelE
	.globl	_ZN5kcwio12require_authERKNS_16permission_levelE
	.type	_ZN5kcwio12require_authERKNS_16permission_levelE,@function
_ZN5kcwio12require_authERKNS_16permission_levelE:
	.param  	i32
	i64.load	$push1=, 0($0)
	i64.load	$push0=, 8($0)
	call    	require_auth2@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end4:
	.size	_ZN5kcwio12require_authERKNS_16permission_levelE, .Lfunc_end4-_ZN5kcwio12require_authERKNS_16permission_levelE

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push77=, 0
	i32.const	$push74=, 0
	i32.load	$push75=, __stack_pointer($pop74)
	i32.const	$push76=, 96
	i32.sub 	$push102=, $pop75, $pop76
	tee_local	$push101=, $9=, $pop102
	i32.store	__stack_pointer($pop77), $pop101
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str
	i64.const	$7=, 0
.LBB5_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push103=, 6
	i64.gt_u	$push0=, $6, $pop103
	br_if   	0, $pop0
	i32.load8_s	$push108=, 0($4)
	tee_local	$push107=, $3=, $pop108
	i32.const	$push106=, -97
	i32.add 	$push2=, $pop107, $pop106
	i32.const	$push105=, 255
	i32.and 	$push3=, $pop2, $pop105
	i32.const	$push104=, 25
	i32.gt_u	$push4=, $pop3, $pop104
	br_if   	1, $pop4
	i32.const	$push109=, 165
	i32.add 	$3=, $3, $pop109
	br      	2
.LBB5_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push110=, 11
	i64.le_u	$push1=, $6, $pop110
	br_if   	2, $pop1
	br      	3
.LBB5_5:
	end_block
	i32.const	$push115=, 208
	i32.add 	$push5=, $3, $pop115
	i32.const	$push114=, 0
	i32.const	$push113=, -49
	i32.add 	$push6=, $3, $pop113
	i32.const	$push112=, 255
	i32.and 	$push7=, $pop6, $pop112
	i32.const	$push111=, 5
	i32.lt_u	$push8=, $pop7, $pop111
	i32.select	$3=, $pop5, $pop114, $pop8
.LBB5_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push117=, 56
	i64.shl 	$push10=, $pop9, $pop117
	i64.const	$push116=, 56
	i64.shr_s	$8=, $pop10, $pop116
.LBB5_7:
	end_block
	i64.const	$push119=, 31
	i64.and 	$push12=, $8, $pop119
	i64.const	$push118=, 4294967295
	i64.and 	$push11=, $5, $pop118
	i64.shl 	$8=, $pop12, $pop11
.LBB5_8:
	end_block
	i32.const	$push125=, 1
	i32.add 	$4=, $4, $pop125
	i64.const	$push124=, 1
	i64.add 	$6=, $6, $pop124
	i64.or  	$7=, $8, $7
	i64.const	$push123=, -5
	i64.add 	$push122=, $5, $pop123
	tee_local	$push121=, $5=, $pop122
	i64.const	$push120=, -6
	i64.ne  	$push13=, $pop121, $pop120
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.1
	i64.const	$7=, 0
.LBB5_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push126=, 4
	i64.gt_u	$push15=, $6, $pop126
	br_if   	0, $pop15
	i32.load8_s	$push131=, 0($4)
	tee_local	$push130=, $3=, $pop131
	i32.const	$push129=, -97
	i32.add 	$push17=, $pop130, $pop129
	i32.const	$push128=, 255
	i32.and 	$push18=, $pop17, $pop128
	i32.const	$push127=, 25
	i32.gt_u	$push19=, $pop18, $pop127
	br_if   	1, $pop19
	i32.const	$push132=, 165
	i32.add 	$3=, $3, $pop132
	br      	2
.LBB5_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push133=, 11
	i64.le_u	$push16=, $6, $pop133
	br_if   	2, $pop16
	br      	3
.LBB5_15:
	end_block
	i32.const	$push138=, 208
	i32.add 	$push20=, $3, $pop138
	i32.const	$push137=, 0
	i32.const	$push136=, -49
	i32.add 	$push21=, $3, $pop136
	i32.const	$push135=, 255
	i32.and 	$push22=, $pop21, $pop135
	i32.const	$push134=, 5
	i32.lt_u	$push23=, $pop22, $pop134
	i32.select	$3=, $pop20, $pop137, $pop23
.LBB5_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push140=, 56
	i64.shl 	$push25=, $pop24, $pop140
	i64.const	$push139=, 56
	i64.shr_s	$8=, $pop25, $pop139
.LBB5_17:
	end_block
	i64.const	$push142=, 31
	i64.and 	$push27=, $8, $pop142
	i64.const	$push141=, 4294967295
	i64.and 	$push26=, $5, $pop141
	i64.shl 	$8=, $pop27, $pop26
.LBB5_18:
	end_block
	i32.const	$push148=, 1
	i32.add 	$4=, $4, $pop148
	i64.const	$push147=, 1
	i64.add 	$6=, $6, $pop147
	i64.or  	$7=, $8, $7
	i64.const	$push146=, -5
	i64.add 	$push145=, $5, $pop146
	tee_local	$push144=, $5=, $pop145
	i64.const	$push143=, -6
	i64.ne  	$push28=, $pop144, $pop143
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $7, $1
	i32.const	$push30=, .L.str.2
	call    	kcwio_assert@FUNCTION, $pop29, $pop30
.LBB5_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str
	i64.const	$7=, 0
.LBB5_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push149=, 6
	i64.gt_u	$push32=, $6, $pop149
	br_if   	0, $pop32
	i32.load8_s	$push154=, 0($4)
	tee_local	$push153=, $3=, $pop154
	i32.const	$push152=, -97
	i32.add 	$push34=, $pop153, $pop152
	i32.const	$push151=, 255
	i32.and 	$push35=, $pop34, $pop151
	i32.const	$push150=, 25
	i32.gt_u	$push36=, $pop35, $pop150
	br_if   	1, $pop36
	i32.const	$push155=, 165
	i32.add 	$3=, $3, $pop155
	br      	2
.LBB5_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push156=, 11
	i64.le_u	$push33=, $6, $pop156
	br_if   	2, $pop33
	br      	3
.LBB5_26:
	end_block
	i32.const	$push161=, 208
	i32.add 	$push37=, $3, $pop161
	i32.const	$push160=, 0
	i32.const	$push159=, -49
	i32.add 	$push38=, $3, $pop159
	i32.const	$push158=, 255
	i32.and 	$push39=, $pop38, $pop158
	i32.const	$push157=, 5
	i32.lt_u	$push40=, $pop39, $pop157
	i32.select	$3=, $pop37, $pop160, $pop40
.LBB5_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push163=, 56
	i64.shl 	$push42=, $pop41, $pop163
	i64.const	$push162=, 56
	i64.shr_s	$8=, $pop42, $pop162
.LBB5_28:
	end_block
	i64.const	$push165=, 31
	i64.and 	$push44=, $8, $pop165
	i64.const	$push164=, 4294967295
	i64.and 	$push43=, $5, $pop164
	i64.shl 	$8=, $pop44, $pop43
.LBB5_29:
	end_block
	i32.const	$push171=, 1
	i32.add 	$4=, $4, $pop171
	i64.const	$push170=, 1
	i64.add 	$6=, $6, $pop170
	i64.or  	$7=, $8, $7
	i64.const	$push169=, -5
	i64.add 	$push168=, $5, $pop169
	tee_local	$push167=, $5=, $pop168
	i64.const	$push166=, -6
	i64.ne  	$push45=, $pop167, $pop166
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB5_31:
	end_block
	i64.store	88($9), $0
	block   	
	block   	
	block   	
	block   	
	i64.const	$push47=, -4417041491747143681
	i64.le_s	$push48=, $2, $pop47
	br_if   	0, $pop48
	i64.const	$push49=, -4417041491747143680
	i64.eq  	$push50=, $2, $pop49
	br_if   	1, $pop50
	i64.const	$push51=, -4417031972023435264
	i64.eq  	$push52=, $2, $pop51
	br_if   	2, $pop52
	i64.const	$push53=, -4417017025457143808
	i64.ne  	$push54=, $2, $pop53
	br_if   	4, $pop54
	i32.const	$push62=, 0
	i32.store	60($9), $pop62
	i32.const	$push63=, _ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_@FUNCTION
	i32.store	56($9), $pop63
	i64.load	$push64=, 56($9)
	i64.store	32($9):p2align=2, $pop64
	i32.const	$push97=, 88
	i32.add 	$push98=, $9, $pop97
	i32.const	$push99=, 32
	i32.add 	$push100=, $9, $pop99
	i32.call	$drop=, _ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop98, $pop100
	br      	4
.LBB5_36:
	end_block
	i64.const	$push55=, -4417245834301145088
	i64.eq  	$push56=, $2, $pop55
	br_if   	2, $pop56
	i64.const	$push57=, -4417183366120472576
	i64.ne  	$push58=, $2, $pop57
	br_if   	3, $pop58
	i32.const	$push59=, 0
	i32.store	52($9), $pop59
	i32.const	$push60=, _ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_@FUNCTION
	i32.store	48($9), $pop60
	i64.load	$push61=, 48($9)
	i64.store	40($9):p2align=2, $pop61
	i32.const	$push85=, 88
	i32.add 	$push86=, $9, $pop85
	i32.const	$push87=, 40
	i32.add 	$push88=, $9, $pop87
	i32.call	$drop=, _ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop86, $pop88
	br      	3
.LBB5_39:
	end_block
	i32.const	$push65=, 0
	i32.store	68($9), $pop65
	i32.const	$push66=, _ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_@FUNCTION
	i32.store	64($9), $pop66
	i64.load	$push67=, 64($9)
	i64.store	24($9):p2align=2, $pop67
	i32.const	$push89=, 88
	i32.add 	$push90=, $9, $pop89
	i32.const	$push91=, 24
	i32.add 	$push92=, $9, $pop91
	i32.call	$drop=, _ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop90, $pop92
	br      	2
.LBB5_40:
	end_block
	i32.const	$push68=, 0
	i32.store	76($9), $pop68
	i32.const	$push69=, _ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_@FUNCTION
	i32.store	72($9), $pop69
	i64.load	$push70=, 72($9)
	i64.store	16($9):p2align=2, $pop70
	i32.const	$push93=, 88
	i32.add 	$push94=, $9, $pop93
	i32.const	$push95=, 16
	i32.add 	$push96=, $9, $pop95
	i32.call	$drop=, _ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop94, $pop96
	br      	1
.LBB5_41:
	end_block
	i32.const	$push71=, 0
	i32.store	84($9), $pop71
	i32.const	$push72=, _ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_@FUNCTION
	i32.store	80($9), $pop72
	i64.load	$push73=, 80($9)
	i64.store	8($9):p2align=2, $pop73
	i32.const	$push81=, 88
	i32.add 	$push82=, $9, $pop81
	i32.const	$push83=, 8
	i32.add 	$push84=, $9, $pop83
	i32.call	$drop=, _ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop82, $pop84
.LBB5_42:
	end_block
	i32.const	$push80=, 0
	i32.const	$push78=, 96
	i32.add 	$push79=, $9, $pop78
	i32.store	__stack_pointer($pop80), $pop79
	.endfunc
.Lfunc_end5:
	.size	apply, .Lfunc_end5-apply

	.section	.text._ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_,"axG",@progbits,_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_,comdat
	.hidden	_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_
	.weak	_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_
	.type	_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_,@function
_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_:
	.param  	i32, i64, i32, i32, i32, i64, i32, i32
	.local  	i32, i32
	i32.const	$push18=, 0
	i32.const	$push15=, 0
	i32.load	$push16=, __stack_pointer($pop15)
	i32.const	$push17=, 96
	i32.sub 	$push34=, $pop16, $pop17
	tee_local	$push33=, $9=, $pop34
	i32.store	__stack_pointer($pop18), $pop33
	i64.store	88($9), $1
	i64.store	80($9), $5
	i32.const	$push0=, .L.str.3
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $1
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	block   	
	block   	
	i32.load8_u	$push2=, 0($2)
	i32.const	$push32=, 1
	i32.and 	$push3=, $pop2, $pop32
	br_if   	0, $pop3
	i32.const	$push35=, 1
	i32.add 	$8=, $2, $pop35
	br      	1
.LBB6_2:
	end_block
	i32.load	$8=, 8($2)
.LBB6_3:
	end_block
	i32.const	$push4=, .L.str.5
	call    	prints@FUNCTION, $pop4
	call    	prints@FUNCTION, $8
	i64.call	$5=, current_receiver@FUNCTION
	i32.const	$push5=, 72
	i32.add 	$push6=, $9, $pop5
	i32.const	$push7=, 0
	i32.store	0($pop6), $pop7
	i64.store	48($9), $1
	i64.store	40($9), $5
	i64.const	$push8=, -1
	i64.store	56($9), $pop8
	i64.const	$push9=, 0
	i64.store	64($9), $pop9
	i32.store	16($9), $4
	i32.store	24($9), $3
	i32.store	28($9), $6
	i32.store	32($9), $7
	i32.const	$push22=, 88
	i32.add 	$push23=, $9, $pop22
	i32.store	12($9), $pop23
	i32.const	$push24=, 40
	i32.add 	$push25=, $9, $pop24
	i32.store	8($9), $pop25
	i32.const	$push26=, 80
	i32.add 	$push27=, $9, $pop26
	i32.store	20($9), $pop27
	i32.store	36($9), $2
	i32.const	$push28=, 40
	i32.add 	$push29=, $9, $pop28
	i32.const	$push30=, 8
	i32.add 	$push31=, $9, $pop30
	call    	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_@FUNCTION, $9, $pop29, $1, $pop31
	block   	
	i32.load	$push37=, 64($9)
	tee_local	$push36=, $4=, $pop37
	i32.eqz 	$push46=, $pop36
	br_if   	0, $pop46
	block   	
	block   	
	i32.const	$push10=, 68
	i32.add 	$push41=, $9, $pop10
	tee_local	$push40=, $6=, $pop41
	i32.load	$push39=, 0($pop40)
	tee_local	$push38=, $2=, $pop39
	i32.eq  	$push11=, $pop38, $4
	br_if   	0, $pop11
.LBB6_6:
	loop    	
	i32.const	$push45=, -24
	i32.add 	$push44=, $2, $pop45
	tee_local	$push43=, $2=, $pop44
	i32.load	$3=, 0($pop43)
	i32.const	$push42=, 0
	i32.store	0($2), $pop42
	block   	
	i32.eqz 	$push47=, $3
	br_if   	0, $pop47
	i32.call	$drop=, _ZN9commodity11goodsx_infoD2Ev@FUNCTION, $3
	call    	_ZdlPv@FUNCTION, $3
.LBB6_8:
	end_block
	i32.ne  	$push12=, $4, $2
	br_if   	0, $pop12
	end_loop
	i32.const	$push13=, 64
	i32.add 	$push14=, $9, $pop13
	i32.load	$2=, 0($pop14)
	br      	1
.LBB6_10:
	end_block
	copy_local	$2=, $4
.LBB6_11:
	end_block
	i32.store	0($6), $4
	call    	_ZdlPv@FUNCTION, $2
.LBB6_12:
	end_block
	i32.const	$push21=, 0
	i32.const	$push19=, 96
	i32.add 	$push20=, $9, $pop19
	i32.store	__stack_pointer($pop21), $pop20
	.endfunc
.Lfunc_end6:
	.size	_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_, .Lfunc_end6-_ZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_

	.section	.text._ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E,@function
_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push55=, 0
	i32.const	$push52=, 0
	i32.load	$push53=, __stack_pointer($pop52)
	i32.const	$push54=, 128
	i32.sub 	$push77=, $pop53, $pop54
	tee_local	$push76=, $3=, $pop77
	i32.store	__stack_pointer($pop55), $pop76
	copy_local	$push75=, $3
	tee_local	$push74=, $2=, $pop75
	i32.store	92($pop74), $0
	i32.load	$push0=, 0($1)
	i32.store	80($2), $pop0
	i32.load	$push1=, 4($1)
	i32.store	84($2), $pop1
	i32.const	$1=, 0
	block   	
	i32.call	$push73=, action_data_size@FUNCTION
	tee_local	$push72=, $0=, $pop73
	i32.eqz 	$push98=, $pop72
	br_if   	0, $pop98
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $0, $pop2
	br_if   	0, $pop3
	i32.call	$1=, malloc@FUNCTION, $0
	br      	1
.LBB7_3:
	end_block
	i32.const	$push51=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $0, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push79=, $3, $pop7
	tee_local	$push78=, $1=, $pop79
	copy_local	$push71=, $pop78
	i32.store	__stack_pointer($pop51), $pop71
.LBB7_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $0
.LBB7_5:
	end_block
	i32.const	$push8=, 16
	i32.add 	$push9=, $2, $pop8
	i64.const	$push10=, 0
	i64.store	0($pop9), $pop10
	i32.const	$push11=, 24
	i32.add 	$push12=, $2, $pop11
	i64.const	$push91=, 0
	i64.store	0($pop12), $pop91
	i32.const	$push13=, 40
	i32.add 	$push14=, $2, $pop13
	i32.const	$push90=, 0
	i32.store	0($pop14), $pop90
	i64.const	$push89=, 0
	i64.store	0($2), $pop89
	i64.const	$push88=, 0
	i64.store	8($2), $pop88
	i64.const	$push87=, 0
	i64.store	32($2), $pop87
	i64.const	$push86=, 0
	i64.store	48($2), $pop86
	i32.const	$push85=, 0
	i32.store	56($2), $pop85
	i32.const	$push15=, 60
	i32.add 	$push16=, $2, $pop15
	i32.const	$push84=, 0
	i32.store	0($pop16), $pop84
	i32.const	$push17=, 64
	i32.add 	$push18=, $2, $pop17
	i32.const	$push83=, 0
	i32.store	0($pop18), $pop83
	i32.const	$push82=, 0
	i32.store	68($2), $pop82
	i32.const	$push19=, 72
	i32.add 	$push20=, $2, $pop19
	i32.const	$push81=, 0
	i32.store	0($pop20), $pop81
	i32.const	$push21=, 76
	i32.add 	$push22=, $2, $pop21
	i32.const	$push80=, 0
	i32.store	0($pop22), $pop80
	i32.store	100($2), $1
	i32.store	96($2), $1
	i32.add 	$push23=, $1, $0
	i32.store	104($2), $pop23
	i32.const	$push59=, 96
	i32.add 	$push60=, $2, $pop59
	i32.store	112($2), $pop60
	i32.store	120($2), $2
	i32.const	$push61=, 120
	i32.add 	$push62=, $2, $pop61
	i32.const	$push63=, 112
	i32.add 	$push64=, $2, $pop63
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_@FUNCTION, $pop62, $pop64
	block   	
	i32.const	$push24=, 513
	i32.lt_u	$push25=, $0, $pop24
	br_if   	0, $pop25
	call    	free@FUNCTION, $1
.LBB7_7:
	end_block
	i32.const	$push65=, 80
	i32.add 	$push66=, $2, $pop65
	i32.store	100($2), $pop66
	i32.const	$push67=, 92
	i32.add 	$push68=, $2, $pop67
	i32.store	96($2), $pop68
	i32.const	$push69=, 96
	i32.add 	$push70=, $2, $pop69
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop70, $2
	block   	
	i32.load8_u	$push26=, 68($2)
	i32.const	$push92=, 1
	i32.and 	$push27=, $pop26, $pop92
	i32.eqz 	$push99=, $pop27
	br_if   	0, $pop99
	i32.const	$push28=, 76
	i32.add 	$push29=, $2, $pop28
	i32.load	$push30=, 0($pop29)
	call    	_ZdlPv@FUNCTION, $pop30
.LBB7_9:
	end_block
	block   	
	i32.load8_u	$push31=, 56($2)
	i32.const	$push93=, 1
	i32.and 	$push32=, $pop31, $pop93
	i32.eqz 	$push100=, $pop32
	br_if   	0, $pop100
	i32.const	$push33=, 64
	i32.add 	$push34=, $2, $pop33
	i32.load	$push35=, 0($pop34)
	call    	_ZdlPv@FUNCTION, $pop35
.LBB7_11:
	end_block
	block   	
	i32.load8_u	$push36=, 32($2)
	i32.const	$push94=, 1
	i32.and 	$push37=, $pop36, $pop94
	i32.eqz 	$push101=, $pop37
	br_if   	0, $pop101
	i32.const	$push38=, 40
	i32.add 	$push39=, $2, $pop38
	i32.load	$push40=, 0($pop39)
	call    	_ZdlPv@FUNCTION, $pop40
.LBB7_13:
	end_block
	block   	
	i32.load8_u	$push41=, 20($2)
	i32.const	$push95=, 1
	i32.and 	$push42=, $pop41, $pop95
	i32.eqz 	$push102=, $pop42
	br_if   	0, $pop102
	i32.const	$push43=, 28
	i32.add 	$push44=, $2, $pop43
	i32.load	$push45=, 0($pop44)
	call    	_ZdlPv@FUNCTION, $pop45
.LBB7_15:
	end_block
	block   	
	i32.load8_u	$push46=, 8($2)
	i32.const	$push96=, 1
	i32.and 	$push47=, $pop46, $pop96
	i32.eqz 	$push103=, $pop47
	br_if   	0, $pop103
	i32.const	$push48=, 16
	i32.add 	$push49=, $2, $pop48
	i32.load	$push50=, 0($pop49)
	call    	_ZdlPv@FUNCTION, $pop50
.LBB7_17:
	end_block
	i32.const	$push58=, 0
	i32.const	$push56=, 128
	i32.add 	$push57=, $2, $pop56
	i32.store	__stack_pointer($pop58), $pop57
	i32.const	$push97=, 1
	.endfunc
.Lfunc_end7:
	.size	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E, .Lfunc_end7-_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,"axG",@progbits,_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,comdat
	.hidden	_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.weak	_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.type	_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,@function
_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_:
	.param  	i32, i64, i32, i32, i32, i32, i32
	.local  	i64, i32, i32
	i32.const	$push15=, 0
	i32.const	$push12=, 0
	i32.load	$push13=, __stack_pointer($pop12)
	i32.const	$push14=, 96
	i32.sub 	$push31=, $pop13, $pop14
	tee_local	$push30=, $9=, $pop31
	i32.store	__stack_pointer($pop15), $pop30
	i64.store	88($9), $1
	i32.const	$push0=, .L.str.16
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $1
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	block   	
	block   	
	i32.load8_u	$push2=, 0($6)
	i32.const	$push29=, 1
	i32.and 	$push3=, $pop2, $pop29
	br_if   	0, $pop3
	i32.const	$push32=, 1
	i32.add 	$8=, $6, $pop32
	br      	1
.LBB8_2:
	end_block
	i32.load	$8=, 8($6)
.LBB8_3:
	end_block
	i32.const	$push4=, .L.str.17
	call    	prints@FUNCTION, $pop4
	call    	prints@FUNCTION, $8
	i64.call	$7=, current_receiver@FUNCTION
	i32.const	$push5=, 80
	i32.add 	$push6=, $9, $pop5
	i32.const	$push7=, 0
	i32.store	0($pop6), $pop7
	i64.store	56($9), $1
	i64.store	48($9), $7
	i64.const	$push8=, -1
	i64.store	64($9), $pop8
	i64.const	$push9=, 0
	i64.store	72($9), $pop9
	i32.store	24($9), $2
	i32.store	28($9), $3
	i32.store	32($9), $4
	i32.store	36($9), $5
	i32.store	40($9), $6
	i32.const	$push19=, 88
	i32.add 	$push20=, $9, $pop19
	i32.store	20($9), $pop20
	i32.const	$push21=, 48
	i32.add 	$push22=, $9, $pop21
	i32.store	16($9), $pop22
	i32.const	$push23=, 8
	i32.add 	$push24=, $9, $pop23
	i32.const	$push25=, 48
	i32.add 	$push26=, $9, $pop25
	i32.const	$push27=, 16
	i32.add 	$push28=, $9, $pop27
	call    	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_@FUNCTION, $pop24, $pop26, $1, $pop28
	i32.const	$push10=, 72
	i32.add 	$push11=, $9, $pop10
	i32.call	$drop=, _ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev@FUNCTION, $pop11
	i32.const	$push18=, 0
	i32.const	$push16=, 96
	i32.add 	$push17=, $9, $pop16
	i32.store	__stack_pointer($pop18), $pop17
	.endfunc
.Lfunc_end8:
	.size	_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_, .Lfunc_end8-_ZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_

	.section	.text._ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E,@function
_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push69=, 0
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 112
	i32.sub 	$push101=, $pop67, $pop68
	tee_local	$push100=, $3=, $pop101
	i32.store	__stack_pointer($pop69), $pop100
	copy_local	$push99=, $3
	tee_local	$push98=, $2=, $pop99
	i32.store	92($pop98), $0
	i32.load	$push0=, 0($1)
	i32.store	80($2), $pop0
	i32.load	$push1=, 4($1)
	i32.store	84($2), $pop1
	i32.const	$1=, 0
	block   	
	i32.call	$push97=, action_data_size@FUNCTION
	tee_local	$push96=, $0=, $pop97
	i32.eqz 	$push123=, $pop96
	br_if   	0, $pop123
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $0, $pop2
	br_if   	0, $pop3
	i32.call	$1=, malloc@FUNCTION, $0
	br      	1
.LBB9_3:
	end_block
	i32.const	$push65=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $0, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push103=, $3, $pop7
	tee_local	$push102=, $1=, $pop103
	copy_local	$push95=, $pop102
	i32.store	__stack_pointer($pop65), $pop95
.LBB9_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $0
.LBB9_5:
	end_block
	i32.const	$push8=, 24
	i32.add 	$push9=, $2, $pop8
	i64.const	$push10=, 0
	i64.store	0($pop9), $pop10
	i32.const	$push11=, 32
	i32.add 	$push12=, $2, $pop11
	i64.const	$push116=, 0
	i64.store	0($pop12), $pop116
	i32.const	$push13=, 48
	i32.add 	$push14=, $2, $pop13
	i32.const	$push115=, 0
	i32.store	0($pop14), $pop115
	i64.const	$push114=, 0
	i64.store	8($2), $pop114
	i64.const	$push113=, 0
	i64.store	16($2), $pop113
	i64.const	$push112=, 0
	i64.store	40($2), $pop112
	i32.const	$push111=, 0
	i32.store	52($2), $pop111
	i32.const	$push15=, 56
	i32.add 	$push16=, $2, $pop15
	i32.const	$push110=, 0
	i32.store	0($pop16), $pop110
	i32.const	$push17=, 60
	i32.add 	$push18=, $2, $pop17
	i32.const	$push109=, 0
	i32.store	0($pop18), $pop109
	i32.const	$push108=, 0
	i32.store	64($2), $pop108
	i32.const	$push19=, 68
	i32.add 	$push20=, $2, $pop19
	i32.const	$push107=, 0
	i32.store	0($pop20), $pop107
	i32.const	$push21=, 72
	i32.add 	$push22=, $2, $pop21
	i32.const	$push106=, 0
	i32.store	0($pop22), $pop106
	i32.add 	$push23=, $1, $0
	i32.store	104($2), $pop23
	i32.store	96($2), $1
	i32.const	$push24=, 7
	i32.gt_u	$push25=, $0, $pop24
	i32.const	$push26=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop25, $pop26
	i32.const	$push73=, 8
	i32.add 	$push74=, $2, $pop73
	i32.const	$push27=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop74, $1, $pop27
	i32.const	$push105=, 8
	i32.add 	$push28=, $1, $pop105
	i32.store	100($2), $pop28
	i32.const	$push77=, 96
	i32.add 	$push78=, $2, $pop77
	i32.const	$push75=, 8
	i32.add 	$push76=, $2, $pop75
	i32.const	$push104=, 8
	i32.add 	$push29=, $pop76, $pop104
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop78, $pop29
	i32.const	$push79=, 96
	i32.add 	$push80=, $2, $pop79
	i32.const	$push30=, 28
	i32.add 	$push31=, $2, $pop30
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop80, $pop31
	i32.const	$push81=, 96
	i32.add 	$push82=, $2, $pop81
	i32.const	$push32=, 40
	i32.add 	$push33=, $2, $pop32
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop82, $pop33
	i32.const	$push83=, 96
	i32.add 	$push84=, $2, $pop83
	i32.const	$push34=, 52
	i32.add 	$push35=, $2, $pop34
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop84, $pop35
	i32.const	$push85=, 96
	i32.add 	$push86=, $2, $pop85
	i32.const	$push36=, 64
	i32.add 	$push37=, $2, $pop36
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop86, $pop37
	block   	
	i32.const	$push38=, 513
	i32.lt_u	$push39=, $0, $pop38
	br_if   	0, $pop39
	call    	free@FUNCTION, $1
.LBB9_7:
	end_block
	i32.const	$push87=, 80
	i32.add 	$push88=, $2, $pop87
	i32.store	100($2), $pop88
	i32.const	$push89=, 92
	i32.add 	$push90=, $2, $pop89
	i32.store	96($2), $pop90
	i32.const	$push91=, 96
	i32.add 	$push92=, $2, $pop91
	i32.const	$push93=, 8
	i32.add 	$push94=, $2, $pop93
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop92, $pop94
	block   	
	i32.load8_u	$push40=, 64($2)
	i32.const	$push117=, 1
	i32.and 	$push41=, $pop40, $pop117
	i32.eqz 	$push124=, $pop41
	br_if   	0, $pop124
	i32.const	$push42=, 72
	i32.add 	$push43=, $2, $pop42
	i32.load	$push44=, 0($pop43)
	call    	_ZdlPv@FUNCTION, $pop44
.LBB9_9:
	end_block
	block   	
	i32.load8_u	$push45=, 52($2)
	i32.const	$push118=, 1
	i32.and 	$push46=, $pop45, $pop118
	i32.eqz 	$push125=, $pop46
	br_if   	0, $pop125
	i32.const	$push47=, 60
	i32.add 	$push48=, $2, $pop47
	i32.load	$push49=, 0($pop48)
	call    	_ZdlPv@FUNCTION, $pop49
.LBB9_11:
	end_block
	block   	
	i32.load8_u	$push50=, 40($2)
	i32.const	$push119=, 1
	i32.and 	$push51=, $pop50, $pop119
	i32.eqz 	$push126=, $pop51
	br_if   	0, $pop126
	i32.const	$push52=, 48
	i32.add 	$push53=, $2, $pop52
	i32.load	$push54=, 0($pop53)
	call    	_ZdlPv@FUNCTION, $pop54
.LBB9_13:
	end_block
	block   	
	i32.load8_u	$push55=, 28($2)
	i32.const	$push120=, 1
	i32.and 	$push56=, $pop55, $pop120
	i32.eqz 	$push127=, $pop56
	br_if   	0, $pop127
	i32.const	$push57=, 36
	i32.add 	$push58=, $2, $pop57
	i32.load	$push59=, 0($pop58)
	call    	_ZdlPv@FUNCTION, $pop59
.LBB9_15:
	end_block
	block   	
	i32.load8_u	$push60=, 16($2)
	i32.const	$push121=, 1
	i32.and 	$push61=, $pop60, $pop121
	i32.eqz 	$push128=, $pop61
	br_if   	0, $pop128
	i32.const	$push62=, 24
	i32.add 	$push63=, $2, $pop62
	i32.load	$push64=, 0($pop63)
	call    	_ZdlPv@FUNCTION, $pop64
.LBB9_17:
	end_block
	i32.const	$push72=, 0
	i32.const	$push70=, 112
	i32.add 	$push71=, $2, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	i32.const	$push122=, 1
	.endfunc
.Lfunc_end9:
	.size	_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E, .Lfunc_end9-_ZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,"axG",@progbits,_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,comdat
	.hidden	_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.weak	_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.type	_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,@function
_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_:
	.param  	i32, i64, i32, i32, i32, i32, i32
	.local  	i64, i32, i32
	i32.const	$push15=, 0
	i32.const	$push12=, 0
	i32.load	$push13=, __stack_pointer($pop12)
	i32.const	$push14=, 96
	i32.sub 	$push31=, $pop13, $pop14
	tee_local	$push30=, $9=, $pop31
	i32.store	__stack_pointer($pop15), $pop30
	i64.store	88($9), $1
	i32.const	$push0=, .L.str.18
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $1
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	block   	
	block   	
	i32.load8_u	$push2=, 0($6)
	i32.const	$push29=, 1
	i32.and 	$push3=, $pop2, $pop29
	br_if   	0, $pop3
	i32.const	$push32=, 1
	i32.add 	$8=, $6, $pop32
	br      	1
.LBB10_2:
	end_block
	i32.load	$8=, 8($6)
.LBB10_3:
	end_block
	i32.const	$push4=, .L.str.19
	call    	prints@FUNCTION, $pop4
	call    	prints@FUNCTION, $8
	i64.call	$7=, current_receiver@FUNCTION
	i32.const	$push5=, 80
	i32.add 	$push6=, $9, $pop5
	i32.const	$push7=, 0
	i32.store	0($pop6), $pop7
	i64.store	56($9), $1
	i64.store	48($9), $7
	i64.const	$push8=, -1
	i64.store	64($9), $pop8
	i64.const	$push9=, 0
	i64.store	72($9), $pop9
	i32.store	24($9), $2
	i32.store	28($9), $3
	i32.store	32($9), $4
	i32.store	36($9), $5
	i32.store	40($9), $6
	i32.const	$push19=, 88
	i32.add 	$push20=, $9, $pop19
	i32.store	20($9), $pop20
	i32.const	$push21=, 48
	i32.add 	$push22=, $9, $pop21
	i32.store	16($9), $pop22
	i32.const	$push23=, 8
	i32.add 	$push24=, $9, $pop23
	i32.const	$push25=, 48
	i32.add 	$push26=, $9, $pop25
	i32.const	$push27=, 16
	i32.add 	$push28=, $9, $pop27
	call    	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_@FUNCTION, $pop24, $pop26, $1, $pop28
	i32.const	$push10=, 72
	i32.add 	$push11=, $9, $pop10
	i32.call	$drop=, _ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev@FUNCTION, $pop11
	i32.const	$push18=, 0
	i32.const	$push16=, 96
	i32.add 	$push17=, $9, $pop16
	i32.store	__stack_pointer($pop18), $pop17
	.endfunc
.Lfunc_end10:
	.size	_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_, .Lfunc_end10-_ZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_

	.section	.text._ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,"axG",@progbits,_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,comdat
	.hidden	_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.weak	_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.type	_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,@function
_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_:
	.param  	i32, i64, i32, i32, i32, i32, i32
	.local  	i64, i32, i32
	i32.const	$push15=, 0
	i32.const	$push12=, 0
	i32.load	$push13=, __stack_pointer($pop12)
	i32.const	$push14=, 96
	i32.sub 	$push31=, $pop13, $pop14
	tee_local	$push30=, $9=, $pop31
	i32.store	__stack_pointer($pop15), $pop30
	i64.store	88($9), $1
	i32.const	$push0=, .L.str.20
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $1
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	block   	
	block   	
	i32.load8_u	$push2=, 0($6)
	i32.const	$push29=, 1
	i32.and 	$push3=, $pop2, $pop29
	br_if   	0, $pop3
	i32.const	$push32=, 1
	i32.add 	$8=, $6, $pop32
	br      	1
.LBB11_2:
	end_block
	i32.load	$8=, 8($6)
.LBB11_3:
	end_block
	i32.const	$push4=, .L.str.21
	call    	prints@FUNCTION, $pop4
	call    	prints@FUNCTION, $8
	i64.call	$7=, current_receiver@FUNCTION
	i32.const	$push5=, 80
	i32.add 	$push6=, $9, $pop5
	i32.const	$push7=, 0
	i32.store	0($pop6), $pop7
	i64.store	56($9), $1
	i64.store	48($9), $7
	i64.const	$push8=, -1
	i64.store	64($9), $pop8
	i64.const	$push9=, 0
	i64.store	72($9), $pop9
	i32.store	24($9), $2
	i32.store	28($9), $3
	i32.store	32($9), $4
	i32.store	36($9), $5
	i32.store	40($9), $6
	i32.const	$push19=, 88
	i32.add 	$push20=, $9, $pop19
	i32.store	20($9), $pop20
	i32.const	$push21=, 48
	i32.add 	$push22=, $9, $pop21
	i32.store	16($9), $pop22
	i32.const	$push23=, 8
	i32.add 	$push24=, $9, $pop23
	i32.const	$push25=, 48
	i32.add 	$push26=, $9, $pop25
	i32.const	$push27=, 16
	i32.add 	$push28=, $9, $pop27
	call    	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_@FUNCTION, $pop24, $pop26, $1, $pop28
	i32.const	$push10=, 72
	i32.add 	$push11=, $9, $pop10
	i32.call	$drop=, _ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev@FUNCTION, $pop11
	i32.const	$push18=, 0
	i32.const	$push16=, 96
	i32.add 	$push17=, $9, $pop16
	i32.store	__stack_pointer($pop18), $pop17
	.endfunc
.Lfunc_end11:
	.size	_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_, .Lfunc_end11-_ZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_

	.section	.text._ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,"axG",@progbits,_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,comdat
	.hidden	_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.weak	_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_
	.type	_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_,@function
_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_:
	.param  	i32, i64, i32, i32, i32, i32, i32
	.local  	i64, i32, i32
	i32.const	$push15=, 0
	i32.const	$push12=, 0
	i32.load	$push13=, __stack_pointer($pop12)
	i32.const	$push14=, 96
	i32.sub 	$push31=, $pop13, $pop14
	tee_local	$push30=, $9=, $pop31
	i32.store	__stack_pointer($pop15), $pop30
	i64.store	88($9), $1
	i32.const	$push0=, .L.str.22
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $1
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	block   	
	block   	
	i32.load8_u	$push2=, 0($6)
	i32.const	$push29=, 1
	i32.and 	$push3=, $pop2, $pop29
	br_if   	0, $pop3
	i32.const	$push32=, 1
	i32.add 	$8=, $6, $pop32
	br      	1
.LBB12_2:
	end_block
	i32.load	$8=, 8($6)
.LBB12_3:
	end_block
	i32.const	$push4=, .L.str.23
	call    	prints@FUNCTION, $pop4
	call    	prints@FUNCTION, $8
	i64.call	$7=, current_receiver@FUNCTION
	i32.const	$push5=, 80
	i32.add 	$push6=, $9, $pop5
	i32.const	$push7=, 0
	i32.store	0($pop6), $pop7
	i64.store	56($9), $1
	i64.store	48($9), $7
	i64.const	$push8=, -1
	i64.store	64($9), $pop8
	i64.const	$push9=, 0
	i64.store	72($9), $pop9
	i32.store	24($9), $2
	i32.store	28($9), $3
	i32.store	32($9), $4
	i32.store	36($9), $5
	i32.store	40($9), $6
	i32.const	$push19=, 88
	i32.add 	$push20=, $9, $pop19
	i32.store	20($9), $pop20
	i32.const	$push21=, 48
	i32.add 	$push22=, $9, $pop21
	i32.store	16($9), $pop22
	i32.const	$push23=, 8
	i32.add 	$push24=, $9, $pop23
	i32.const	$push25=, 48
	i32.add 	$push26=, $9, $pop25
	i32.const	$push27=, 16
	i32.add 	$push28=, $9, $pop27
	call    	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_@FUNCTION, $pop24, $pop26, $1, $pop28
	i32.const	$push10=, 72
	i32.add 	$push11=, $9, $pop10
	i32.call	$drop=, _ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev@FUNCTION, $pop11
	i32.const	$push18=, 0
	i32.const	$push16=, 96
	i32.add 	$push17=, $9, $pop16
	i32.store	__stack_pointer($pop18), $pop17
	.endfunc
.Lfunc_end12:
	.size	_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_, .Lfunc_end12-_ZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_

	.section	.text._ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.weak	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.type	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,@function
_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push45=, 0
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push82=, $pop43, $pop44
	tee_local	$push81=, $7=, $pop82
	i32.store	__stack_pointer($pop45), $pop81
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.6
	call    	kcwio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push49=, 40
	i32.add 	$push50=, $7, $pop49
	i32.store	24($7), $pop50
	i32.const	$push4=, 104
	i32.call	$push80=, _Znwj@FUNCTION, $pop4
	tee_local	$push79=, $3=, $pop80
	i64.const	$push5=, 0
	i64.store	8($pop79), $pop5
	i64.const	$push78=, 0
	i64.store	16($3):p2align=2, $pop78
	i64.const	$push77=, 0
	i64.store	24($3):p2align=2, $pop77
	i64.const	$push76=, 0
	i64.store	32($3):p2align=2, $pop76
	i64.const	$push75=, 0
	i64.store	40($3):p2align=2, $pop75
	i32.const	$push74=, 0
	i32.store	48($3), $pop74
	i32.const	$push73=, 0
	i32.store	52($3), $pop73
	i32.const	$push72=, 0
	i32.store	56($3), $pop72
	i32.const	$push71=, 0
	i32.store	60($3), $pop71
	i32.const	$push70=, 0
	i32.store	64($3), $pop70
	i32.const	$push69=, 0
	i32.store	68($3), $pop69
	i32.const	$push68=, 0
	i32.store	72($3), $pop68
	i64.const	$push67=, 0
	i64.store	80($3), $pop67
	i32.store	88($3), $1
	i32.const	$push51=, 16
	i32.add 	$push52=, $7, $pop51
	call    	_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_@FUNCTION, $pop52, $3
	i32.store	32($7), $3
	i64.load	$push66=, 8($3)
	tee_local	$push65=, $2=, $pop66
	i64.store	16($7), $pop65
	i32.load	$push64=, 92($3)
	tee_local	$push63=, $4=, $pop64
	i32.store	12($7), $pop63
	block   	
	block   	
	i32.const	$push9=, 28
	i32.add 	$push62=, $1, $pop9
	tee_local	$push61=, $6=, $pop62
	i32.load	$push60=, 0($pop61)
	tee_local	$push59=, $5=, $pop60
	i32.const	$push6=, 32
	i32.add 	$push7=, $1, $pop6
	i32.load	$push8=, 0($pop7)
	i32.ge_u	$push10=, $pop59, $pop8
	br_if   	0, $pop10
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push83=, 0
	i32.store	32($7), $pop83
	i32.store	0($5), $3
	i32.const	$push13=, 24
	i32.add 	$push14=, $5, $pop13
	i32.store	0($6), $pop14
	br      	1
.LBB13_2:
	end_block
	i32.const	$push11=, 24
	i32.add 	$push12=, $1, $pop11
	i32.const	$push53=, 32
	i32.add 	$push54=, $7, $pop53
	i32.const	$push55=, 16
	i32.add 	$push56=, $7, $pop55
	i32.const	$push57=, 12
	i32.add 	$push58=, $7, $pop57
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop12, $pop54, $pop56, $pop58
.LBB13_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push15=, 0
	i32.store	32($7), $pop15
	block   	
	i32.eqz 	$push88=, $3
	br_if   	0, $pop88
	block   	
	i32.load8_u	$push16=, 64($3)
	i32.const	$push84=, 1
	i32.and 	$push17=, $pop16, $pop84
	i32.eqz 	$push89=, $pop17
	br_if   	0, $pop89
	i32.const	$push18=, 72
	i32.add 	$push19=, $3, $pop18
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB13_6:
	end_block
	block   	
	i32.load8_u	$push21=, 52($3)
	i32.const	$push85=, 1
	i32.and 	$push22=, $pop21, $pop85
	i32.eqz 	$push90=, $pop22
	br_if   	0, $pop90
	i32.const	$push23=, 60
	i32.add 	$push24=, $3, $pop23
	i32.load	$push25=, 0($pop24)
	call    	_ZdlPv@FUNCTION, $pop25
.LBB13_8:
	end_block
	block   	
	i32.load8_u	$push26=, 40($3)
	i32.const	$push86=, 1
	i32.and 	$push27=, $pop26, $pop86
	i32.eqz 	$push91=, $pop27
	br_if   	0, $pop91
	i32.const	$push28=, 48
	i32.add 	$push29=, $3, $pop28
	i32.load	$push30=, 0($pop29)
	call    	_ZdlPv@FUNCTION, $pop30
.LBB13_10:
	end_block
	block   	
	i32.load8_u	$push31=, 28($3)
	i32.const	$push87=, 1
	i32.and 	$push32=, $pop31, $pop87
	i32.eqz 	$push92=, $pop32
	br_if   	0, $pop92
	i32.const	$push33=, 36
	i32.add 	$push34=, $3, $pop33
	i32.load	$push35=, 0($pop34)
	call    	_ZdlPv@FUNCTION, $pop35
.LBB13_12:
	end_block
	block   	
	i32.load8_u	$push36=, 16($3)
	i32.const	$push37=, 1
	i32.and 	$push38=, $pop36, $pop37
	i32.eqz 	$push93=, $pop38
	br_if   	0, $pop93
	i32.const	$push39=, 24
	i32.add 	$push40=, $3, $pop39
	i32.load	$push41=, 0($pop40)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB13_14:
	end_block
	call    	_ZdlPv@FUNCTION, $3
.LBB13_15:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $7, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	.endfunc
.Lfunc_end13:
	.size	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_, .Lfunc_end13-_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_

	.section	.text._ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $1=, $pop25
	i32.eqz 	$push42=, $pop24
	br_if   	0, $pop42
	block   	
	block   	
	i32.load	$push27=, 4($0)
	tee_local	$push26=, $3=, $pop27
	i32.eq  	$push0=, $pop26, $1
	br_if   	0, $pop0
.LBB14_3:
	loop    	
	i32.const	$push31=, -24
	i32.add 	$push30=, $3, $pop31
	tee_local	$push29=, $3=, $pop30
	i32.load	$2=, 0($pop29)
	i32.const	$push28=, 0
	i32.store	0($3), $pop28
	block   	
	i32.eqz 	$push43=, $2
	br_if   	0, $pop43
	block   	
	i32.load8_u	$push1=, 64($2)
	i32.const	$push32=, 1
	i32.and 	$push2=, $pop1, $pop32
	i32.eqz 	$push44=, $pop2
	br_if   	0, $pop44
	i32.const	$push33=, 72
	i32.add 	$push3=, $2, $pop33
	i32.load	$push4=, 0($pop3)
	call    	_ZdlPv@FUNCTION, $pop4
.LBB14_6:
	end_block
	block   	
	i32.load8_u	$push5=, 52($2)
	i32.const	$push34=, 1
	i32.and 	$push6=, $pop5, $pop34
	i32.eqz 	$push45=, $pop6
	br_if   	0, $pop45
	i32.const	$push35=, 60
	i32.add 	$push7=, $2, $pop35
	i32.load	$push8=, 0($pop7)
	call    	_ZdlPv@FUNCTION, $pop8
.LBB14_8:
	end_block
	block   	
	i32.load8_u	$push9=, 40($2)
	i32.const	$push36=, 1
	i32.and 	$push10=, $pop9, $pop36
	i32.eqz 	$push46=, $pop10
	br_if   	0, $pop46
	i32.const	$push37=, 48
	i32.add 	$push11=, $2, $pop37
	i32.load	$push12=, 0($pop11)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB14_10:
	end_block
	block   	
	i32.load8_u	$push13=, 28($2)
	i32.const	$push38=, 1
	i32.and 	$push14=, $pop13, $pop38
	i32.eqz 	$push47=, $pop14
	br_if   	0, $pop47
	i32.const	$push39=, 36
	i32.add 	$push15=, $2, $pop39
	i32.load	$push16=, 0($pop15)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB14_12:
	end_block
	block   	
	i32.load8_u	$push17=, 16($2)
	i32.const	$push40=, 1
	i32.and 	$push18=, $pop17, $pop40
	i32.eqz 	$push48=, $pop18
	br_if   	0, $pop48
	i32.const	$push41=, 24
	i32.add 	$push19=, $2, $pop41
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB14_14:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB14_15:
	end_block
	i32.ne  	$push21=, $1, $3
	br_if   	0, $pop21
	end_loop
	i32.load	$2=, 0($0)
	br      	1
.LBB14_17:
	end_block
	copy_local	$2=, $1
.LBB14_18:
	end_block
	i32.const	$push22=, 4
	i32.add 	$push23=, $0, $pop22
	i32.store	0($pop23), $1
	call    	_ZdlPv@FUNCTION, $2
.LBB14_19:
	end_block
	copy_local	$push49=, $0
	.endfunc
.Lfunc_end14:
	.size	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev, .Lfunc_end14-_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,"axG",@progbits,_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,comdat
	.hidden	_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.weak	_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.type	_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,@function
_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push40=, $pop28, $pop29
	tee_local	$push39=, $5=, $pop40
	i32.store	__stack_pointer($pop30), $pop39
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	call    	_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_@FUNCTION, $pop0, $1
	copy_local	$push38=, $5
	tee_local	$push37=, $6=, $pop38
	i32.const	$push1=, 0
	i32.store	0($pop37), $pop1
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE@FUNCTION, $6, $1
	block   	
	block   	
	i32.load	$push36=, 0($6)
	tee_local	$push35=, $3=, $pop36
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $pop35, $pop2
	br_if   	0, $pop3
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB15_2:
	end_block
	i32.const	$push26=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $3, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push42=, $5, $pop7
	tee_local	$push41=, $5=, $pop42
	copy_local	$push34=, $pop41
	i32.store	__stack_pointer($pop26), $pop34
.LBB15_3:
	end_block
	i32.store	4($6), $5
	i32.store	0($6), $5
	i32.add 	$push8=, $5, $3
	i32.store	8($6), $pop8
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE@FUNCTION, $6, $1
	i64.load	$push9=, 8($2)
	i64.const	$push12=, -9110538710503391232
	i32.load	$push10=, 8($0)
	i64.load	$push11=, 0($pop10)
	i64.load	$push44=, 8($1)
	tee_local	$push43=, $4=, $pop44
	i32.call	$push13=, db_store_i64@FUNCTION, $pop9, $pop12, $pop11, $pop43, $5, $3
	i32.store	92($1), $pop13
	block   	
	i32.const	$push14=, 513
	i32.lt_u	$push15=, $3, $pop14
	br_if   	0, $pop15
	call    	free@FUNCTION, $5
.LBB15_5:
	end_block
	block   	
	i64.load	$push16=, 16($2)
	i64.lt_u	$push17=, $4, $pop16
	br_if   	0, $pop17
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i64.const	$push22=, -2
	i64.const	$push20=, 1
	i64.add 	$push21=, $4, $pop20
	i64.const	$push18=, -3
	i64.gt_u	$push19=, $4, $pop18
	i64.select	$push23=, $pop22, $pop21, $pop19
	i64.store	0($pop25), $pop23
.LBB15_7:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $6, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end15:
	.size	_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_, .Lfunc_end15-_ZZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE7emplaceIZNS1_9setkachuoEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_

	.section	.text._ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32
	i32.const	$push50=, 0
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 32
	i32.sub 	$push66=, $pop48, $pop49
	tee_local	$push65=, $10=, $pop66
	i32.store	__stack_pointer($pop50), $pop65
	block   	
	block   	
	i32.load	$push1=, 4($0)
	i32.load	$push64=, 0($0)
	tee_local	$push63=, $9=, $pop64
	i32.sub 	$push2=, $pop1, $pop63
	i32.const	$push62=, 24
	i32.div_s	$push61=, $pop2, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.const	$push3=, 1
	i32.add 	$push59=, $pop60, $pop3
	tee_local	$push58=, $8=, $pop59
	i32.const	$push4=, 178956971
	i32.ge_u	$push5=, $pop58, $pop4
	br_if   	0, $pop5
	i32.const	$push0=, 8
	i32.add 	$5=, $0, $pop0
	block   	
	block   	
	block   	
	i32.load	$push6=, 8($0)
	i32.sub 	$push7=, $pop6, $9
	i32.const	$push69=, 24
	i32.div_s	$push68=, $pop7, $pop69
	tee_local	$push67=, $9=, $pop68
	i32.const	$push8=, 89478485
	i32.ge_u	$push9=, $pop67, $pop8
	br_if   	0, $pop9
	i32.const	$push14=, 24
	i32.add 	$push15=, $10, $pop14
	i32.store	0($pop15), $5
	i32.const	$5=, 0
	i32.const	$push74=, 0
	i32.store	20($10), $pop74
	i32.const	$push18=, 20
	i32.add 	$7=, $10, $pop18
	i32.const	$push16=, 1
	i32.shl 	$push73=, $9, $pop16
	tee_local	$push72=, $9=, $pop73
	i32.lt_u	$push17=, $9, $8
	i32.select	$push71=, $8, $pop72, $pop17
	tee_local	$push70=, $9=, $pop71
	i32.eqz 	$push105=, $pop70
	br_if   	2, $pop105
	copy_local	$5=, $9
	br      	1
.LBB16_4:
	end_block
	i32.const	$push10=, 24
	i32.add 	$push11=, $10, $pop10
	i32.store	0($pop11), $5
	i32.const	$push12=, 0
	i32.store	20($10), $pop12
	i32.const	$push13=, 20
	i32.add 	$7=, $10, $pop13
	i32.const	$5=, 178956970
.LBB16_5:
	end_block
	i32.const	$push19=, 24
	i32.mul 	$push20=, $5, $pop19
	i32.call	$8=, _Znwj@FUNCTION, $pop20
	br      	2
.LBB16_6:
	end_block
	i32.const	$8=, 0
	br      	1
.LBB16_7:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB16_8:
	end_block
	i32.store	8($10), $8
	i32.const	$push21=, 24
	i32.mul 	$push22=, $4, $pop21
	i32.add 	$push87=, $8, $pop22
	tee_local	$push86=, $9=, $pop87
	i32.store	12($10), $pop86
	i32.const	$push85=, 24
	i32.mul 	$push23=, $5, $pop85
	i32.add 	$push84=, $8, $pop23
	tee_local	$push83=, $5=, $pop84
	i32.store	0($7), $pop83
	i32.load	$8=, 0($1)
	i32.const	$push82=, 0
	i32.store	0($1), $pop82
	i32.load	$1=, 0($3)
	i64.load	$6=, 0($2)
	i32.store	0($9), $8
	i64.store	8($9), $6
	i32.store	16($9), $1
	i32.const	$push81=, 24
	i32.add 	$push80=, $9, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.store	16($10), $pop79
	block   	
	i32.const	$push24=, 4
	i32.add 	$push25=, $0, $pop24
	i32.load	$push78=, 0($pop25)
	tee_local	$push77=, $8=, $pop78
	i32.load	$push76=, 0($0)
	tee_local	$push75=, $2=, $pop76
	i32.eq  	$push26=, $pop77, $pop75
	br_if   	0, $pop26
.LBB16_10:
	loop    	
	i32.const	$push101=, -24
	i32.add 	$push100=, $8, $pop101
	tee_local	$push99=, $5=, $pop100
	i32.load	$1=, 0($pop99)
	i32.const	$push98=, 0
	i32.store	0($5), $pop98
	i32.const	$push97=, -24
	i32.add 	$push27=, $9, $pop97
	i32.store	0($pop27), $1
	i32.const	$push96=, -8
	i32.add 	$push28=, $9, $pop96
	i32.const	$push95=, -8
	i32.add 	$push29=, $8, $pop95
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push94=, -12
	i32.add 	$push31=, $9, $pop94
	i32.const	$push93=, -12
	i32.add 	$push32=, $8, $pop93
	i32.load	$push33=, 0($pop32)
	i32.store	0($pop31), $pop33
	i32.const	$push92=, -16
	i32.add 	$push34=, $9, $pop92
	i32.const	$push91=, -16
	i32.add 	$push35=, $8, $pop91
	i32.load	$push36=, 0($pop35)
	i32.store	0($pop34), $pop36
	i32.load	$push37=, 12($10)
	i32.const	$push90=, -24
	i32.add 	$push89=, $pop37, $pop90
	tee_local	$push88=, $9=, $pop89
	i32.store	12($10), $pop88
	copy_local	$8=, $5
	i32.ne  	$push38=, $2, $5
	br_if   	0, $pop38
	end_loop
	i32.const	$push39=, 4
	i32.add 	$push40=, $0, $pop39
	i32.load	$8=, 0($pop40)
	i32.load	$5=, 0($7)
	i32.load	$2=, 0($0)
	i32.const	$push41=, 16
	i32.add 	$push42=, $10, $pop41
	i32.load	$1=, 0($pop42)
.LBB16_12:
	end_block
	i32.store	0($0), $9
	i32.const	$push43=, 4
	i32.add 	$push44=, $0, $pop43
	i32.store	0($pop44), $1
	i32.const	$push54=, 8
	i32.add 	$push55=, $10, $pop54
	i32.const	$push45=, 8
	i32.add 	$push46=, $pop55, $pop45
	i32.store	0($pop46), $8
	i32.const	$push104=, 8
	i32.add 	$push103=, $0, $pop104
	tee_local	$push102=, $9=, $pop103
	i32.load	$8=, 0($pop102)
	i32.store	0($9), $5
	i32.store	12($10), $2
	i32.store	0($7), $8
	i32.store	8($10), $2
	i32.const	$push56=, 8
	i32.add 	$push57=, $10, $pop56
	i32.call	$drop=, _ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev@FUNCTION, $pop57
	i32.const	$push53=, 0
	i32.const	$push51=, 32
	i32.add 	$push52=, $10, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	.endfunc
.Lfunc_end16:
	.size	_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end16-_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	i32.load	$push26=, 8($0)
	tee_local	$push25=, $2=, $pop26
	i32.load	$push24=, 4($0)
	tee_local	$push23=, $1=, $pop24
	i32.eq  	$push0=, $pop25, $pop23
	br_if   	0, $pop0
	i32.const	$push1=, 8
	i32.add 	$4=, $0, $pop1
.LBB17_2:
	loop    	
	i32.const	$push30=, -24
	i32.add 	$push29=, $2, $pop30
	tee_local	$push28=, $3=, $pop29
	i32.store	0($4), $pop28
	i32.load	$2=, 0($3)
	i32.const	$push27=, 0
	i32.store	0($3), $pop27
	block   	
	i32.eqz 	$push45=, $2
	br_if   	0, $pop45
	block   	
	i32.load8_u	$push2=, 64($2)
	i32.const	$push31=, 1
	i32.and 	$push3=, $pop2, $pop31
	i32.eqz 	$push46=, $pop3
	br_if   	0, $pop46
	i32.const	$push32=, 72
	i32.add 	$push4=, $2, $pop32
	i32.load	$push5=, 0($pop4)
	call    	_ZdlPv@FUNCTION, $pop5
.LBB17_5:
	end_block
	block   	
	i32.load8_u	$push6=, 52($2)
	i32.const	$push33=, 1
	i32.and 	$push7=, $pop6, $pop33
	i32.eqz 	$push47=, $pop7
	br_if   	0, $pop47
	i32.const	$push34=, 60
	i32.add 	$push8=, $2, $pop34
	i32.load	$push9=, 0($pop8)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB17_7:
	end_block
	block   	
	i32.load8_u	$push10=, 40($2)
	i32.const	$push35=, 1
	i32.and 	$push11=, $pop10, $pop35
	i32.eqz 	$push48=, $pop11
	br_if   	0, $pop48
	i32.const	$push36=, 48
	i32.add 	$push12=, $2, $pop36
	i32.load	$push13=, 0($pop12)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB17_9:
	end_block
	block   	
	i32.load8_u	$push14=, 28($2)
	i32.const	$push37=, 1
	i32.and 	$push15=, $pop14, $pop37
	i32.eqz 	$push49=, $pop15
	br_if   	0, $pop49
	i32.const	$push38=, 36
	i32.add 	$push16=, $2, $pop38
	i32.load	$push17=, 0($pop16)
	call    	_ZdlPv@FUNCTION, $pop17
.LBB17_11:
	end_block
	block   	
	i32.load8_u	$push18=, 16($2)
	i32.const	$push39=, 1
	i32.and 	$push19=, $pop18, $pop39
	i32.eqz 	$push50=, $pop19
	br_if   	0, $pop50
	i32.const	$push40=, 24
	i32.add 	$push20=, $2, $pop40
	i32.load	$push21=, 0($pop20)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB17_13:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB17_14:
	end_block
	i32.load	$push42=, 0($4)
	tee_local	$push41=, $2=, $pop42
	i32.ne  	$push22=, $pop41, $1
	br_if   	0, $pop22
.LBB17_15:
	end_loop
	end_block
	block   	
	i32.load	$push44=, 0($0)
	tee_local	$push43=, $2=, $pop44
	i32.eqz 	$push51=, $pop43
	br_if   	0, $pop51
	call    	_ZdlPv@FUNCTION, $2
.LBB17_17:
	end_block
	copy_local	$push52=, $0
	.endfunc
.Lfunc_end17:
	.size	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev, .Lfunc_end17-_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_,"axG",@progbits,_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_,comdat
	.hidden	_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_
	.weak	_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_
	.type	_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_,@function
_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32
	i32.const	$push41=, 0
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 16
	i32.sub 	$push52=, $pop39, $pop40
	tee_local	$push51=, $5=, $pop52
	i32.store	__stack_pointer($pop41), $pop51
	block   	
	i32.load	$push50=, 0($0)
	tee_local	$push49=, $2=, $pop50
	i64.load	$push48=, 16($pop49)
	tee_local	$push47=, $4=, $pop48
	i64.const	$push0=, -1
	i64.ne  	$push1=, $pop47, $pop0
	br_if   	0, $pop1
	i64.const	$4=, 0
	block   	
	i64.load	$push3=, 0($2)
	i64.load	$push2=, 8($2)
	i64.const	$push4=, -9110538710503391232
	i64.const	$push56=, 0
	i32.call	$push55=, db_lowerbound_i64@FUNCTION, $pop3, $pop2, $pop4, $pop56
	tee_local	$push54=, $3=, $pop55
	i32.const	$push53=, 0
	i32.lt_s	$push5=, $pop54, $pop53
	br_if   	0, $pop5
	i32.call	$drop=, _ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $3
	i32.const	$push59=, 0
	i32.store	12($5), $pop59
	i32.store	8($5), $2
	i64.const	$push12=, -2
	i32.const	$push45=, 8
	i32.add 	$push46=, $5, $pop45
	i32.call	$push6=, _ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv@FUNCTION, $pop46
	i32.load	$push7=, 4($pop6)
	i64.load	$push58=, 8($pop7)
	tee_local	$push57=, $4=, $pop58
	i64.const	$push10=, 1
	i64.add 	$push11=, $pop57, $pop10
	i64.const	$push8=, -3
	i64.gt_u	$push9=, $4, $pop8
	i64.select	$4=, $pop12, $pop11, $pop9
.LBB18_3:
	end_block
	i32.const	$push13=, 16
	i32.add 	$push14=, $2, $pop13
	i64.store	0($pop14), $4
.LBB18_4:
	end_block
	i64.const	$push15=, -2
	i64.lt_u	$push16=, $4, $pop15
	i32.const	$push17=, .L.str.7
	call    	kcwio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push18=, 16
	i32.add 	$push19=, $2, $pop18
	i64.load	$push20=, 0($pop19)
	i64.store	8($1), $pop20
	i32.load	$push21=, 4($0)
	i64.load	$push22=, 0($pop21)
	i64.store	0($1), $pop22
	i32.const	$push60=, 16
	i32.add 	$push23=, $1, $pop60
	i32.load	$push24=, 8($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop23, $pop24
	i32.const	$push25=, 28
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 12($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop26, $pop27
	i32.const	$push28=, 40
	i32.add 	$push29=, $1, $pop28
	i32.load	$push30=, 16($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop29, $pop30
	i32.const	$push31=, 52
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 20($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop32, $pop33
	i32.const	$push34=, 64
	i32.add 	$push35=, $1, $pop34
	i32.load	$push36=, 24($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop35, $pop36
	i64.call	$push37=, current_time@FUNCTION
	i64.store	80($1), $pop37
	i32.const	$push44=, 0
	i32.const	$push42=, 16
	i32.add 	$push43=, $5, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	.endfunc
.Lfunc_end18:
	.size	_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_, .Lfunc_end18-_ZZN9commodity9setkachuoEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11kachuo_infoEE_clES8_

	.section	.text._ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE
	.weak	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE
	.type	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE,@function
_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32
	i32.load	$push0=, 0($0)
	i32.const	$push1=, 16
	i32.add 	$push80=, $pop0, $pop1
	tee_local	$push79=, $4=, $pop80
	i32.store	0($0), $pop79
	i32.const	$push4=, 20
	i32.add 	$push5=, $1, $pop4
	i32.load	$push6=, 0($pop5)
	i32.load8_u	$push78=, 16($1)
	tee_local	$push77=, $2=, $pop78
	i32.const	$push76=, 1
	i32.shr_u	$push3=, $pop77, $pop76
	i32.const	$push75=, 1
	i32.and 	$push2=, $2, $pop75
	i32.select	$push7=, $pop6, $pop3, $pop2
	i64.extend_u/i32	$3=, $pop7
.LBB19_1:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$4=, $4, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $3, $pop84
	tee_local	$push82=, $3=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push8=, $pop82, $pop81
	br_if   	0, $pop8
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push13=, 20
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.const	$push9=, 16
	i32.add 	$push10=, $1, $pop9
	i32.load8_u	$push91=, 0($pop10)
	tee_local	$push90=, $2=, $pop91
	i32.const	$push89=, 1
	i32.shr_u	$push12=, $pop90, $pop89
	i32.const	$push88=, 1
	i32.and 	$push11=, $2, $pop88
	i32.select	$push87=, $pop15, $pop12, $pop11
	tee_local	$push86=, $2=, $pop87
	i32.eqz 	$push161=, $pop86
	br_if   	0, $pop161
	i32.add 	$push93=, $2, $4
	tee_local	$push92=, $4=, $pop93
	i32.store	0($0), $pop92
.LBB19_4:
	end_block
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.load8_u	$push97=, 28($1)
	tee_local	$push96=, $2=, $pop97
	i32.const	$push95=, 1
	i32.shr_u	$push17=, $pop96, $pop95
	i32.const	$push94=, 1
	i32.and 	$push16=, $2, $pop94
	i32.select	$push21=, $pop20, $pop17, $pop16
	i64.extend_u/i32	$3=, $pop21
.LBB19_5:
	loop    	
	i32.const	$push102=, 1
	i32.add 	$4=, $4, $pop102
	i64.const	$push101=, 7
	i64.shr_u	$push100=, $3, $pop101
	tee_local	$push99=, $3=, $pop100
	i64.const	$push98=, 0
	i64.ne  	$push22=, $pop99, $pop98
	br_if   	0, $pop22
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push27=, 32
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 0($pop28)
	i32.const	$push23=, 28
	i32.add 	$push24=, $1, $pop23
	i32.load8_u	$push108=, 0($pop24)
	tee_local	$push107=, $2=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push26=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push25=, $2, $pop105
	i32.select	$push104=, $pop29, $pop26, $pop25
	tee_local	$push103=, $2=, $pop104
	i32.eqz 	$push162=, $pop103
	br_if   	0, $pop162
	i32.add 	$push110=, $2, $4
	tee_local	$push109=, $4=, $pop110
	i32.store	0($0), $pop109
.LBB19_8:
	end_block
	i32.const	$push32=, 44
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 0($pop33)
	i32.load8_u	$push114=, 40($1)
	tee_local	$push113=, $2=, $pop114
	i32.const	$push112=, 1
	i32.shr_u	$push31=, $pop113, $pop112
	i32.const	$push111=, 1
	i32.and 	$push30=, $2, $pop111
	i32.select	$push35=, $pop34, $pop31, $pop30
	i64.extend_u/i32	$3=, $pop35
.LBB19_9:
	loop    	
	i32.const	$push119=, 1
	i32.add 	$4=, $4, $pop119
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $3, $pop118
	tee_local	$push116=, $3=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push36=, $pop116, $pop115
	br_if   	0, $pop36
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push41=, 44
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 0($pop42)
	i32.const	$push37=, 40
	i32.add 	$push38=, $1, $pop37
	i32.load8_u	$push125=, 0($pop38)
	tee_local	$push124=, $2=, $pop125
	i32.const	$push123=, 1
	i32.shr_u	$push40=, $pop124, $pop123
	i32.const	$push122=, 1
	i32.and 	$push39=, $2, $pop122
	i32.select	$push121=, $pop43, $pop40, $pop39
	tee_local	$push120=, $2=, $pop121
	i32.eqz 	$push163=, $pop120
	br_if   	0, $pop163
	i32.add 	$push127=, $2, $4
	tee_local	$push126=, $4=, $pop127
	i32.store	0($0), $pop126
.LBB19_12:
	end_block
	i32.const	$push46=, 56
	i32.add 	$push47=, $1, $pop46
	i32.load	$push48=, 0($pop47)
	i32.load8_u	$push131=, 52($1)
	tee_local	$push130=, $2=, $pop131
	i32.const	$push129=, 1
	i32.shr_u	$push45=, $pop130, $pop129
	i32.const	$push128=, 1
	i32.and 	$push44=, $2, $pop128
	i32.select	$push49=, $pop48, $pop45, $pop44
	i64.extend_u/i32	$3=, $pop49
.LBB19_13:
	loop    	
	i32.const	$push136=, 1
	i32.add 	$4=, $4, $pop136
	i64.const	$push135=, 7
	i64.shr_u	$push134=, $3, $pop135
	tee_local	$push133=, $3=, $pop134
	i64.const	$push132=, 0
	i64.ne  	$push50=, $pop133, $pop132
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 0($pop56)
	i32.const	$push51=, 52
	i32.add 	$push52=, $1, $pop51
	i32.load8_u	$push142=, 0($pop52)
	tee_local	$push141=, $2=, $pop142
	i32.const	$push140=, 1
	i32.shr_u	$push54=, $pop141, $pop140
	i32.const	$push139=, 1
	i32.and 	$push53=, $2, $pop139
	i32.select	$push138=, $pop57, $pop54, $pop53
	tee_local	$push137=, $2=, $pop138
	i32.eqz 	$push164=, $pop137
	br_if   	0, $pop164
	i32.add 	$push144=, $2, $4
	tee_local	$push143=, $4=, $pop144
	i32.store	0($0), $pop143
.LBB19_16:
	end_block
	i32.const	$push60=, 68
	i32.add 	$push61=, $1, $pop60
	i32.load	$push62=, 0($pop61)
	i32.load8_u	$push148=, 64($1)
	tee_local	$push147=, $2=, $pop148
	i32.const	$push146=, 1
	i32.shr_u	$push59=, $pop147, $pop146
	i32.const	$push145=, 1
	i32.and 	$push58=, $2, $pop145
	i32.select	$push63=, $pop62, $pop59, $pop58
	i64.extend_u/i32	$3=, $pop63
.LBB19_17:
	loop    	
	i32.const	$push153=, 1
	i32.add 	$4=, $4, $pop153
	i64.const	$push152=, 7
	i64.shr_u	$push151=, $3, $pop152
	tee_local	$push150=, $3=, $pop151
	i64.const	$push149=, 0
	i64.ne  	$push64=, $pop150, $pop149
	br_if   	0, $pop64
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push70=, 68
	i32.add 	$push71=, $1, $pop70
	i32.load	$push72=, 0($pop71)
	i32.const	$push65=, 64
	i32.add 	$push66=, $1, $pop65
	i32.load8_u	$push158=, 0($pop66)
	tee_local	$push157=, $1=, $pop158
	i32.const	$push67=, 1
	i32.shr_u	$push69=, $pop157, $pop67
	i32.const	$push156=, 1
	i32.and 	$push68=, $1, $pop156
	i32.select	$push155=, $pop72, $pop69, $pop68
	tee_local	$push154=, $1=, $pop155
	i32.eqz 	$push165=, $pop154
	br_if   	0, $pop165
	i32.add 	$push160=, $1, $4
	tee_local	$push159=, $4=, $pop160
	i32.store	0($0), $pop159
.LBB19_20:
	end_block
	i32.const	$push73=, 8
	i32.add 	$push74=, $4, $pop73
	i32.store	0($0), $pop74
	copy_local	$push166=, $0
	.endfunc
.Lfunc_end19:
	.size	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE, .Lfunc_end19-_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11kachuo_infoE

	.section	.text._ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE
	.weak	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE
	.type	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE,@function
_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 4($0)
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_s	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.load	$push34=, 4($0)
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop36, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end20:
	.size	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE, .Lfunc_end20-_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11kachuo_infoE

	.section	.text._ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,"axG",@progbits,_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.weak	_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.type	_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,@function
_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 16
	i32.sub 	$push42=, $pop29, $pop30
	tee_local	$push41=, $8=, $pop42
	i32.store	__stack_pointer($pop31), $pop41
	i32.load	$push2=, 4($1)
	i32.load8_u	$push40=, 0($1)
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 1
	i32.shr_u	$push1=, $pop39, $pop38
	i32.const	$push37=, 1
	i32.and 	$push0=, $5, $pop37
	i32.select	$push3=, $pop2, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$4=, $0, $pop7
	i32.const	$push11=, 4
	i32.add 	$5=, $0, $pop11
.LBB21_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $7, $pop56
	tee_local	$push54=, $7=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 7
	i32.shl 	$push5=, $pop51, $pop50
	i32.const	$push49=, 127
	i32.and 	$push4=, $2, $pop49
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($8), $pop6
	i32.load	$push8=, 0($4)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push48=, 0
	i32.gt_s	$push10=, $pop9, $pop48
	i32.const	$push47=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop10, $pop47
	i32.load	$push12=, 0($5)
	i32.const	$push35=, 15
	i32.add 	$push36=, $8, $pop35
	i32.const	$push46=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop36, $pop46
	i32.load	$push13=, 0($5)
	i32.const	$push45=, 1
	i32.add 	$push44=, $pop13, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.store	0($5), $pop43
	br_if   	0, $3
	end_loop
	block   	
	i32.const	$push65=, 4
	i32.add 	$push15=, $1, $pop65
	i32.load	$push16=, 0($pop15)
	i32.load8_u	$push64=, 0($1)
	tee_local	$push63=, $5=, $pop64
	i32.const	$push62=, 1
	i32.shr_u	$push14=, $pop63, $pop62
	i32.const	$push61=, 1
	i32.and 	$push60=, $5, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.select	$push58=, $pop16, $pop14, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.eqz 	$push70=, $pop57
	br_if   	0, $pop70
	i32.load	$3=, 8($1)
	i32.const	$push17=, 8
	i32.add 	$push18=, $0, $pop17
	i32.load	$push19=, 0($pop18)
	i32.sub 	$push20=, $pop19, $6
	i32.ge_s	$push21=, $pop20, $5
	i32.const	$push22=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push69=, 4
	i32.add 	$push68=, $0, $pop69
	tee_local	$push67=, $6=, $pop68
	i32.load	$push25=, 0($pop67)
	i32.const	$push66=, 1
	i32.add 	$push23=, $1, $pop66
	i32.select	$push24=, $3, $pop23, $2
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop24, $5
	i32.load	$push26=, 0($6)
	i32.add 	$push27=, $pop26, $5
	i32.store	0($6), $pop27
.LBB21_4:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 16
	i32.add 	$push33=, $8, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	copy_local	$push71=, $0
	.endfunc
.Lfunc_end21:
	.size	_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end21-_ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.section	.text._ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 48
	i32.sub 	$push87=, $pop67, $pop68
	tee_local	$push86=, $9=, $pop87
	copy_local	$8=, $pop86
	i32.const	$push69=, 0
	i32.store	__stack_pointer($pop69), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push85=, 0($pop3)
	tee_local	$push84=, $7=, $pop85
	i32.load	$push83=, 24($0)
	tee_local	$push82=, $2=, $pop83
	i32.eq  	$push4=, $pop84, $pop82
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push88=, -24
	i32.add 	$6=, $7, $pop88
.LBB22_2:
	loop    	
	i32.const	$push89=, 16
	i32.add 	$push6=, $6, $pop89
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push93=, -24
	i32.add 	$push92=, $6, $pop93
	tee_local	$push91=, $4=, $pop92
	copy_local	$6=, $pop91
	i32.add 	$push9=, $4, $3
	i32.const	$push90=, -24
	i32.ne  	$push10=, $pop9, $pop90
	br_if   	0, $pop10
.LBB22_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB22_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push96=, 0
	i32.call	$push95=, db_get_i64@FUNCTION, $1, $pop14, $pop96
	tee_local	$push94=, $6=, $pop95
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop94, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.8
	call    	kcwio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB22_8:
	end_block
	i32.const	$push65=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push98=, $9, $pop25
	tee_local	$push97=, $4=, $pop98
	copy_local	$push81=, $pop97
	i32.store	__stack_pointer($pop65), $pop81
.LBB22_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB22_11:
	end_block
	i32.const	$push29=, 104
	i32.call	$push120=, _Znwj@FUNCTION, $pop29
	tee_local	$push119=, $6=, $pop120
	i64.const	$push30=, 0
	i64.store	8($pop119), $pop30
	i64.const	$push118=, 0
	i64.store	16($6):p2align=2, $pop118
	i64.const	$push117=, 0
	i64.store	24($6):p2align=2, $pop117
	i64.const	$push116=, 0
	i64.store	32($6):p2align=2, $pop116
	i64.const	$push115=, 0
	i64.store	40($6):p2align=2, $pop115
	i32.const	$push114=, 0
	i32.store	48($6), $pop114
	i32.const	$push113=, 0
	i32.store	52($6), $pop113
	i32.const	$push112=, 0
	i32.store	56($6), $pop112
	i32.const	$push111=, 0
	i32.store	60($6), $pop111
	i32.const	$push110=, 0
	i32.store	64($6), $pop110
	i32.const	$push109=, 0
	i32.store	68($6), $pop109
	i32.const	$push108=, 0
	i32.store	72($6), $pop108
	i64.const	$push107=, 0
	i64.store	80($6), $pop107
	i32.store	88($6), $0
	i32.const	$push73=, 32
	i32.add 	$push74=, $8, $pop73
	i32.call	$drop=, _ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE@FUNCTION, $pop74, $6
	i32.store	92($6), $1
	i32.store	24($8), $6
	i64.load	$push106=, 8($6)
	tee_local	$push105=, $5=, $pop106
	i64.store	16($8), $pop105
	i32.load	$push104=, 92($6)
	tee_local	$push103=, $7=, $pop104
	i32.store	12($8), $pop103
	block   	
	block   	
	i32.const	$push34=, 28
	i32.add 	$push102=, $0, $pop34
	tee_local	$push101=, $1=, $pop102
	i32.load	$push100=, 0($pop101)
	tee_local	$push99=, $4=, $pop100
	i32.const	$push31=, 32
	i32.add 	$push32=, $0, $pop31
	i32.load	$push33=, 0($pop32)
	i32.ge_u	$push35=, $pop99, $pop33
	br_if   	0, $pop35
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push121=, 0
	i32.store	24($8), $pop121
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB22_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push75=, 24
	i32.add 	$push76=, $8, $pop75
	i32.const	$push77=, 16
	i32.add 	$push78=, $8, $pop77
	i32.const	$push79=, 12
	i32.add 	$push80=, $8, $pop79
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop76, $pop78, $pop80
.LBB22_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push126=, $4
	br_if   	0, $pop126
	block   	
	i32.load8_u	$push39=, 64($4)
	i32.const	$push122=, 1
	i32.and 	$push40=, $pop39, $pop122
	i32.eqz 	$push127=, $pop40
	br_if   	0, $pop127
	i32.const	$push41=, 72
	i32.add 	$push42=, $4, $pop41
	i32.load	$push43=, 0($pop42)
	call    	_ZdlPv@FUNCTION, $pop43
.LBB22_17:
	end_block
	block   	
	i32.load8_u	$push44=, 52($4)
	i32.const	$push123=, 1
	i32.and 	$push45=, $pop44, $pop123
	i32.eqz 	$push128=, $pop45
	br_if   	0, $pop128
	i32.const	$push46=, 60
	i32.add 	$push47=, $4, $pop46
	i32.load	$push48=, 0($pop47)
	call    	_ZdlPv@FUNCTION, $pop48
.LBB22_19:
	end_block
	block   	
	i32.load8_u	$push49=, 40($4)
	i32.const	$push124=, 1
	i32.and 	$push50=, $pop49, $pop124
	i32.eqz 	$push129=, $pop50
	br_if   	0, $pop129
	i32.const	$push51=, 48
	i32.add 	$push52=, $4, $pop51
	i32.load	$push53=, 0($pop52)
	call    	_ZdlPv@FUNCTION, $pop53
.LBB22_21:
	end_block
	block   	
	i32.load8_u	$push54=, 28($4)
	i32.const	$push125=, 1
	i32.and 	$push55=, $pop54, $pop125
	i32.eqz 	$push130=, $pop55
	br_if   	0, $pop130
	i32.const	$push56=, 36
	i32.add 	$push57=, $4, $pop56
	i32.load	$push58=, 0($pop57)
	call    	_ZdlPv@FUNCTION, $pop58
.LBB22_23:
	end_block
	block   	
	i32.load8_u	$push59=, 16($4)
	i32.const	$push60=, 1
	i32.and 	$push61=, $pop59, $pop60
	i32.eqz 	$push131=, $pop61
	br_if   	0, $pop131
	i32.const	$push62=, 24
	i32.add 	$push63=, $4, $pop62
	i32.load	$push64=, 0($pop63)
	call    	_ZdlPv@FUNCTION, $pop64
.LBB22_25:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB22_26:
	end_block
	i32.const	$push72=, 0
	i32.const	$push70=, 48
	i32.add 	$push71=, $8, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	copy_local	$push132=, $6
	.endfunc
.Lfunc_end22:
	.size	_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl, .Lfunc_end22-_ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv,"axG",@progbits,_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv,comdat
	.hidden	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv
	.weak	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv
	.type	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv,@function
_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push34=, $pop21, $pop22
	tee_local	$push33=, $2=, $pop34
	i32.store	__stack_pointer($pop23), $pop33
	block   	
	block   	
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push44=, $pop31
	br_if   	0, $pop44
	i32.load	$push0=, 92($1)
	i32.const	$push29=, 8
	i32.add 	$push30=, $2, $pop29
	i32.call	$push36=, db_previous_i64@FUNCTION, $pop0, $pop30
	tee_local	$push35=, $1=, $pop36
	i32.const	$push1=, 31
	i32.shr_u	$push2=, $pop35, $pop1
	i32.const	$push3=, 1
	i32.xor 	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.13
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	br      	1
.LBB23_2:
	end_block
	i32.load	$push43=, 0($0)
	tee_local	$push42=, $1=, $pop43
	i64.load	$push7=, 0($pop42)
	i64.load	$push6=, 8($1)
	i64.const	$push8=, -9110538710503391232
	i32.call	$push41=, db_end_i64@FUNCTION, $pop7, $pop6, $pop8
	tee_local	$push40=, $1=, $pop41
	i32.const	$push9=, -1
	i32.ne  	$push10=, $pop40, $pop9
	i32.const	$push11=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push27=, 8
	i32.add 	$push28=, $2, $pop27
	i32.call	$push39=, db_previous_i64@FUNCTION, $1, $pop28
	tee_local	$push38=, $1=, $pop39
	i32.const	$push12=, 31
	i32.shr_u	$push13=, $pop38, $pop12
	i32.const	$push14=, 1
	i32.xor 	$push15=, $pop13, $pop14
	i32.const	$push37=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop15, $pop37
.LBB23_3:
	end_block
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($0)
	i32.call	$push19=, _ZNK5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop18, $1
	i32.store	0($pop17), $pop19
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	copy_local	$push45=, $0
	.endfunc
.Lfunc_end23:
	.size	_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv, .Lfunc_end23-_ZN5kcwio11multi_indexILy9336205363206160384EN9commodity11kachuo_infoEJEE14const_iteratormmEv

	.section	.text._ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE,"axG",@progbits,_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE,comdat
	.hidden	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE
	.weak	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE
	.type	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE,@function
_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_u	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.load	$push13=, 4($0)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_u	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.load	$push34=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end24:
	.size	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE, .Lfunc_end24-_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11kachuo_infoE

	.section	.text._ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,"axG",@progbits,_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.weak	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.type	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,@function
_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 32
	i32.sub 	$push51=, $pop36, $pop37
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop38), $pop50
	i32.const	$push49=, 0
	i32.store	24($7), $pop49
	i64.const	$push48=, 0
	i64.store	16($7), $pop48
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop43
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push47=, 20($7)
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 16($7)
	tee_local	$push44=, $4=, $pop45
	i32.ne  	$push0=, $pop46, $pop44
	br_if   	0, $pop0
	i32.load8_u	$push25=, 0($1)
	i32.const	$push26=, 1
	i32.and 	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i32.const	$push31=, 0
	i32.store16	0($1), $pop31
	i32.const	$push32=, 8
	i32.add 	$4=, $1, $pop32
	br      	2
.LBB25_3:
	end_block
	i32.const	$push1=, 8
	i32.add 	$push2=, $7, $pop1
	i32.const	$push55=, 0
	i32.store	0($pop2), $pop55
	i64.const	$push54=, 0
	i64.store	0($7), $pop54
	i32.sub 	$push53=, $5, $4
	tee_local	$push52=, $2=, $pop53
	i32.const	$push3=, -16
	i32.ge_u	$push4=, $pop52, $pop3
	br_if   	7, $pop4
	i32.const	$push5=, 11
	i32.ge_u	$push6=, $2, $pop5
	br_if   	2, $pop6
	i32.const	$push12=, 1
	i32.shl 	$push13=, $2, $pop12
	i32.store8	0($7), $pop13
	i32.const	$push56=, 1
	i32.or  	$6=, $7, $pop56
	br_if   	3, $2
	br      	4
.LBB25_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB25_7:
	end_block
	i32.const	$push33=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop33
	i32.const	$push60=, 0
	i32.store	0($4), $pop60
	i64.const	$push34=, 0
	i64.store	0($1):p2align=2, $pop34
	i32.load	$push59=, 16($7)
	tee_local	$push58=, $4=, $pop59
	br_if   	3, $pop58
	br      	4
.LBB25_8:
	end_block
	i32.const	$push7=, 16
	i32.add 	$push8=, $2, $pop7
	i32.const	$push9=, -16
	i32.and 	$push62=, $pop8, $pop9
	tee_local	$push61=, $5=, $pop62
	i32.call	$6=, _Znwj@FUNCTION, $pop61
	i32.const	$push10=, 1
	i32.or  	$push11=, $5, $pop10
	i32.store	0($7), $pop11
	i32.store	8($7), $6
	i32.store	4($7), $2
.LBB25_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB25_10:
	loop    	
	i32.load8_u	$push14=, 0($4)
	i32.store8	0($5), $pop14
	i32.const	$push67=, 1
	i32.add 	$5=, $5, $pop67
	i32.const	$push66=, 1
	i32.add 	$4=, $4, $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $3, $pop65
	tee_local	$push63=, $3=, $pop64
	br_if   	0, $pop63
	end_loop
	i32.add 	$6=, $6, $2
.LBB25_12:
	end_block
	i32.const	$push68=, 0
	i32.store8	0($6), $pop68
	block   	
	block   	
	i32.load8_u	$push15=, 0($1)
	i32.const	$push16=, 1
	i32.and 	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.const	$push69=, 0
	i32.store16	0($1), $pop69
	br      	1
.LBB25_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB25_15:
	end_block
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $1, $pop20
	i32.const	$push74=, 8
	i32.add 	$push22=, $7, $pop74
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i64.load	$push24=, 0($7)
	i64.store	0($1):p2align=2, $pop24
	i32.load	$push73=, 16($7)
	tee_local	$push72=, $4=, $pop73
	i32.eqz 	$push75=, $pop72
	br_if   	1, $pop75
.LBB25_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB25_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB25_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end25:
	.size	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE, .Lfunc_end25-_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE

	.section	.text._ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,"axG",@progbits,_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.weak	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.type	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,@function
_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB26_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.10
	call    	kcwio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB26_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB26_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end26:
	.size	_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end26-_ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push19=, 8($0)
	tee_local	$push18=, $2=, $pop19
	i32.load	$push17=, 4($0)
	tee_local	$push16=, $6=, $pop17
	i32.sub 	$push0=, $pop18, $pop16
	i32.ge_u	$push1=, $pop0, $1
	br_if   	0, $pop1
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $5=, $pop25
	i32.sub 	$push23=, $6, $pop24
	tee_local	$push22=, $3=, $pop23
	i32.add 	$push21=, $pop22, $1
	tee_local	$push20=, $4=, $pop21
	i32.const	$push4=, -1
	i32.le_s	$push5=, $pop20, $pop4
	br_if   	2, $pop5
	i32.const	$6=, 2147483647
	block   	
	i32.sub 	$push27=, $2, $5
	tee_local	$push26=, $2=, $pop27
	i32.const	$push6=, 1073741822
	i32.gt_u	$push7=, $pop26, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 1
	i32.shl 	$push31=, $2, $pop8
	tee_local	$push30=, $6=, $pop31
	i32.lt_u	$push9=, $6, $4
	i32.select	$push29=, $4, $pop30, $pop9
	tee_local	$push28=, $6=, $pop29
	i32.eqz 	$push52=, $pop28
	br_if   	2, $pop52
.LBB27_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB27_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB27_6:
	loop    	
	i32.const	$push51=, 0
	i32.store8	0($6), $pop51
	i32.load	$push3=, 0($0)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.store	0($0), $pop48
	i32.const	$push47=, -1
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	br_if   	0, $pop45
	br      	4
.LBB27_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB27_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB27_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB27_10:
	loop    	
	i32.const	$push38=, 0
	i32.store8	0($6), $pop38
	i32.const	$push37=, 1
	i32.add 	$6=, $6, $pop37
	i32.const	$push36=, -1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	br_if   	0, $pop34
	end_loop
	i32.const	$push10=, 4
	i32.add 	$push44=, $0, $pop10
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.load	$push42=, 0($0)
	tee_local	$push41=, $1=, $pop42
	i32.sub 	$push40=, $pop11, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.sub 	$5=, $5, $pop39
	block   	
	i32.const	$push12=, 1
	i32.lt_s	$push13=, $2, $pop12
	br_if   	0, $pop13
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB27_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.store	0($pop15), $4
	i32.eqz 	$push53=, $1
	br_if   	0, $pop53
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB27_15:
	end_block
	.endfunc
.Lfunc_end27:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end27-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.weak	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.type	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,@function
_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push45=, 0
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push82=, $pop43, $pop44
	tee_local	$push81=, $7=, $pop82
	i32.store	__stack_pointer($pop45), $pop81
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.6
	call    	kcwio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push49=, 40
	i32.add 	$push50=, $7, $pop49
	i32.store	24($7), $pop50
	i32.const	$push4=, 104
	i32.call	$push80=, _Znwj@FUNCTION, $pop4
	tee_local	$push79=, $3=, $pop80
	i64.const	$push5=, 0
	i64.store	8($pop79), $pop5
	i64.const	$push78=, 0
	i64.store	16($3):p2align=2, $pop78
	i64.const	$push77=, 0
	i64.store	24($3):p2align=2, $pop77
	i64.const	$push76=, 0
	i64.store	32($3):p2align=2, $pop76
	i64.const	$push75=, 0
	i64.store	40($3):p2align=2, $pop75
	i32.const	$push74=, 0
	i32.store	48($3), $pop74
	i32.const	$push73=, 0
	i32.store	52($3), $pop73
	i32.const	$push72=, 0
	i32.store	56($3), $pop72
	i32.const	$push71=, 0
	i32.store	60($3), $pop71
	i32.const	$push70=, 0
	i32.store	64($3), $pop70
	i32.const	$push69=, 0
	i32.store	68($3), $pop69
	i32.const	$push68=, 0
	i32.store	72($3), $pop68
	i64.const	$push67=, 0
	i64.store	80($3), $pop67
	i32.store	88($3), $1
	i32.const	$push51=, 16
	i32.add 	$push52=, $7, $pop51
	call    	_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_@FUNCTION, $pop52, $3
	i32.store	32($7), $3
	i64.load	$push66=, 8($3)
	tee_local	$push65=, $2=, $pop66
	i64.store	16($7), $pop65
	i32.load	$push64=, 92($3)
	tee_local	$push63=, $4=, $pop64
	i32.store	12($7), $pop63
	block   	
	block   	
	i32.const	$push9=, 28
	i32.add 	$push62=, $1, $pop9
	tee_local	$push61=, $6=, $pop62
	i32.load	$push60=, 0($pop61)
	tee_local	$push59=, $5=, $pop60
	i32.const	$push6=, 32
	i32.add 	$push7=, $1, $pop6
	i32.load	$push8=, 0($pop7)
	i32.ge_u	$push10=, $pop59, $pop8
	br_if   	0, $pop10
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push83=, 0
	i32.store	32($7), $pop83
	i32.store	0($5), $3
	i32.const	$push13=, 24
	i32.add 	$push14=, $5, $pop13
	i32.store	0($6), $pop14
	br      	1
.LBB28_2:
	end_block
	i32.const	$push11=, 24
	i32.add 	$push12=, $1, $pop11
	i32.const	$push53=, 32
	i32.add 	$push54=, $7, $pop53
	i32.const	$push55=, 16
	i32.add 	$push56=, $7, $pop55
	i32.const	$push57=, 12
	i32.add 	$push58=, $7, $pop57
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop12, $pop54, $pop56, $pop58
.LBB28_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push15=, 0
	i32.store	32($7), $pop15
	block   	
	i32.eqz 	$push88=, $3
	br_if   	0, $pop88
	block   	
	i32.load8_u	$push16=, 64($3)
	i32.const	$push84=, 1
	i32.and 	$push17=, $pop16, $pop84
	i32.eqz 	$push89=, $pop17
	br_if   	0, $pop89
	i32.const	$push18=, 72
	i32.add 	$push19=, $3, $pop18
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB28_6:
	end_block
	block   	
	i32.load8_u	$push21=, 52($3)
	i32.const	$push85=, 1
	i32.and 	$push22=, $pop21, $pop85
	i32.eqz 	$push90=, $pop22
	br_if   	0, $pop90
	i32.const	$push23=, 60
	i32.add 	$push24=, $3, $pop23
	i32.load	$push25=, 0($pop24)
	call    	_ZdlPv@FUNCTION, $pop25
.LBB28_8:
	end_block
	block   	
	i32.load8_u	$push26=, 40($3)
	i32.const	$push86=, 1
	i32.and 	$push27=, $pop26, $pop86
	i32.eqz 	$push91=, $pop27
	br_if   	0, $pop91
	i32.const	$push28=, 48
	i32.add 	$push29=, $3, $pop28
	i32.load	$push30=, 0($pop29)
	call    	_ZdlPv@FUNCTION, $pop30
.LBB28_10:
	end_block
	block   	
	i32.load8_u	$push31=, 28($3)
	i32.const	$push87=, 1
	i32.and 	$push32=, $pop31, $pop87
	i32.eqz 	$push92=, $pop32
	br_if   	0, $pop92
	i32.const	$push33=, 36
	i32.add 	$push34=, $3, $pop33
	i32.load	$push35=, 0($pop34)
	call    	_ZdlPv@FUNCTION, $pop35
.LBB28_12:
	end_block
	block   	
	i32.load8_u	$push36=, 16($3)
	i32.const	$push37=, 1
	i32.and 	$push38=, $pop36, $pop37
	i32.eqz 	$push93=, $pop38
	br_if   	0, $pop93
	i32.const	$push39=, 24
	i32.add 	$push40=, $3, $pop39
	i32.load	$push41=, 0($pop40)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB28_14:
	end_block
	call    	_ZdlPv@FUNCTION, $3
.LBB28_15:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $7, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	.endfunc
.Lfunc_end28:
	.size	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_, .Lfunc_end28-_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_

	.section	.text._ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $1=, $pop25
	i32.eqz 	$push42=, $pop24
	br_if   	0, $pop42
	block   	
	block   	
	i32.load	$push27=, 4($0)
	tee_local	$push26=, $3=, $pop27
	i32.eq  	$push0=, $pop26, $1
	br_if   	0, $pop0
.LBB29_3:
	loop    	
	i32.const	$push31=, -24
	i32.add 	$push30=, $3, $pop31
	tee_local	$push29=, $3=, $pop30
	i32.load	$2=, 0($pop29)
	i32.const	$push28=, 0
	i32.store	0($3), $pop28
	block   	
	i32.eqz 	$push43=, $2
	br_if   	0, $pop43
	block   	
	i32.load8_u	$push1=, 64($2)
	i32.const	$push32=, 1
	i32.and 	$push2=, $pop1, $pop32
	i32.eqz 	$push44=, $pop2
	br_if   	0, $pop44
	i32.const	$push33=, 72
	i32.add 	$push3=, $2, $pop33
	i32.load	$push4=, 0($pop3)
	call    	_ZdlPv@FUNCTION, $pop4
.LBB29_6:
	end_block
	block   	
	i32.load8_u	$push5=, 52($2)
	i32.const	$push34=, 1
	i32.and 	$push6=, $pop5, $pop34
	i32.eqz 	$push45=, $pop6
	br_if   	0, $pop45
	i32.const	$push35=, 60
	i32.add 	$push7=, $2, $pop35
	i32.load	$push8=, 0($pop7)
	call    	_ZdlPv@FUNCTION, $pop8
.LBB29_8:
	end_block
	block   	
	i32.load8_u	$push9=, 40($2)
	i32.const	$push36=, 1
	i32.and 	$push10=, $pop9, $pop36
	i32.eqz 	$push46=, $pop10
	br_if   	0, $pop46
	i32.const	$push37=, 48
	i32.add 	$push11=, $2, $pop37
	i32.load	$push12=, 0($pop11)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB29_10:
	end_block
	block   	
	i32.load8_u	$push13=, 28($2)
	i32.const	$push38=, 1
	i32.and 	$push14=, $pop13, $pop38
	i32.eqz 	$push47=, $pop14
	br_if   	0, $pop47
	i32.const	$push39=, 36
	i32.add 	$push15=, $2, $pop39
	i32.load	$push16=, 0($pop15)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB29_12:
	end_block
	block   	
	i32.load8_u	$push17=, 16($2)
	i32.const	$push40=, 1
	i32.and 	$push18=, $pop17, $pop40
	i32.eqz 	$push48=, $pop18
	br_if   	0, $pop48
	i32.const	$push41=, 24
	i32.add 	$push19=, $2, $pop41
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB29_14:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB29_15:
	end_block
	i32.ne  	$push21=, $1, $3
	br_if   	0, $pop21
	end_loop
	i32.load	$2=, 0($0)
	br      	1
.LBB29_17:
	end_block
	copy_local	$2=, $1
.LBB29_18:
	end_block
	i32.const	$push22=, 4
	i32.add 	$push23=, $0, $pop22
	i32.store	0($pop23), $1
	call    	_ZdlPv@FUNCTION, $2
.LBB29_19:
	end_block
	copy_local	$push49=, $0
	.endfunc
.Lfunc_end29:
	.size	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev, .Lfunc_end29-_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,"axG",@progbits,_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,comdat
	.hidden	_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.weak	_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.type	_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,@function
_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push40=, $pop28, $pop29
	tee_local	$push39=, $5=, $pop40
	i32.store	__stack_pointer($pop30), $pop39
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	call    	_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_@FUNCTION, $pop0, $1
	copy_local	$push38=, $5
	tee_local	$push37=, $6=, $pop38
	i32.const	$push1=, 0
	i32.store	0($pop37), $pop1
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE@FUNCTION, $6, $1
	block   	
	block   	
	i32.load	$push36=, 0($6)
	tee_local	$push35=, $3=, $pop36
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $pop35, $pop2
	br_if   	0, $pop3
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB30_2:
	end_block
	i32.const	$push26=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $3, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push42=, $5, $pop7
	tee_local	$push41=, $5=, $pop42
	copy_local	$push34=, $pop41
	i32.store	__stack_pointer($pop26), $pop34
.LBB30_3:
	end_block
	i32.store	4($6), $5
	i32.store	0($6), $5
	i32.add 	$push8=, $5, $3
	i32.store	8($6), $pop8
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE@FUNCTION, $6, $1
	i64.load	$push9=, 8($2)
	i64.const	$push12=, -3659887854546321408
	i32.load	$push10=, 8($0)
	i64.load	$push11=, 0($pop10)
	i64.load	$push44=, 8($1)
	tee_local	$push43=, $4=, $pop44
	i32.call	$push13=, db_store_i64@FUNCTION, $pop9, $pop12, $pop11, $pop43, $5, $3
	i32.store	92($1), $pop13
	block   	
	i32.const	$push14=, 513
	i32.lt_u	$push15=, $3, $pop14
	br_if   	0, $pop15
	call    	free@FUNCTION, $5
.LBB30_5:
	end_block
	block   	
	i64.load	$push16=, 16($2)
	i64.lt_u	$push17=, $4, $pop16
	br_if   	0, $pop17
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i64.const	$push22=, -2
	i64.const	$push20=, 1
	i64.add 	$push21=, $4, $pop20
	i64.const	$push18=, -3
	i64.gt_u	$push19=, $4, $pop18
	i64.select	$push23=, $pop22, $pop21, $pop19
	i64.store	0($pop25), $pop23
.LBB30_7:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $6, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end30:
	.size	_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_, .Lfunc_end30-_ZZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE7emplaceIZNS1_10settouristEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_

	.section	.text._ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32
	i32.const	$push50=, 0
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 32
	i32.sub 	$push66=, $pop48, $pop49
	tee_local	$push65=, $10=, $pop66
	i32.store	__stack_pointer($pop50), $pop65
	block   	
	block   	
	i32.load	$push1=, 4($0)
	i32.load	$push64=, 0($0)
	tee_local	$push63=, $9=, $pop64
	i32.sub 	$push2=, $pop1, $pop63
	i32.const	$push62=, 24
	i32.div_s	$push61=, $pop2, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.const	$push3=, 1
	i32.add 	$push59=, $pop60, $pop3
	tee_local	$push58=, $8=, $pop59
	i32.const	$push4=, 178956971
	i32.ge_u	$push5=, $pop58, $pop4
	br_if   	0, $pop5
	i32.const	$push0=, 8
	i32.add 	$5=, $0, $pop0
	block   	
	block   	
	block   	
	i32.load	$push6=, 8($0)
	i32.sub 	$push7=, $pop6, $9
	i32.const	$push69=, 24
	i32.div_s	$push68=, $pop7, $pop69
	tee_local	$push67=, $9=, $pop68
	i32.const	$push8=, 89478485
	i32.ge_u	$push9=, $pop67, $pop8
	br_if   	0, $pop9
	i32.const	$push14=, 24
	i32.add 	$push15=, $10, $pop14
	i32.store	0($pop15), $5
	i32.const	$5=, 0
	i32.const	$push74=, 0
	i32.store	20($10), $pop74
	i32.const	$push18=, 20
	i32.add 	$7=, $10, $pop18
	i32.const	$push16=, 1
	i32.shl 	$push73=, $9, $pop16
	tee_local	$push72=, $9=, $pop73
	i32.lt_u	$push17=, $9, $8
	i32.select	$push71=, $8, $pop72, $pop17
	tee_local	$push70=, $9=, $pop71
	i32.eqz 	$push105=, $pop70
	br_if   	2, $pop105
	copy_local	$5=, $9
	br      	1
.LBB31_4:
	end_block
	i32.const	$push10=, 24
	i32.add 	$push11=, $10, $pop10
	i32.store	0($pop11), $5
	i32.const	$push12=, 0
	i32.store	20($10), $pop12
	i32.const	$push13=, 20
	i32.add 	$7=, $10, $pop13
	i32.const	$5=, 178956970
.LBB31_5:
	end_block
	i32.const	$push19=, 24
	i32.mul 	$push20=, $5, $pop19
	i32.call	$8=, _Znwj@FUNCTION, $pop20
	br      	2
.LBB31_6:
	end_block
	i32.const	$8=, 0
	br      	1
.LBB31_7:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB31_8:
	end_block
	i32.store	8($10), $8
	i32.const	$push21=, 24
	i32.mul 	$push22=, $4, $pop21
	i32.add 	$push87=, $8, $pop22
	tee_local	$push86=, $9=, $pop87
	i32.store	12($10), $pop86
	i32.const	$push85=, 24
	i32.mul 	$push23=, $5, $pop85
	i32.add 	$push84=, $8, $pop23
	tee_local	$push83=, $5=, $pop84
	i32.store	0($7), $pop83
	i32.load	$8=, 0($1)
	i32.const	$push82=, 0
	i32.store	0($1), $pop82
	i32.load	$1=, 0($3)
	i64.load	$6=, 0($2)
	i32.store	0($9), $8
	i64.store	8($9), $6
	i32.store	16($9), $1
	i32.const	$push81=, 24
	i32.add 	$push80=, $9, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.store	16($10), $pop79
	block   	
	i32.const	$push24=, 4
	i32.add 	$push25=, $0, $pop24
	i32.load	$push78=, 0($pop25)
	tee_local	$push77=, $8=, $pop78
	i32.load	$push76=, 0($0)
	tee_local	$push75=, $2=, $pop76
	i32.eq  	$push26=, $pop77, $pop75
	br_if   	0, $pop26
.LBB31_10:
	loop    	
	i32.const	$push101=, -24
	i32.add 	$push100=, $8, $pop101
	tee_local	$push99=, $5=, $pop100
	i32.load	$1=, 0($pop99)
	i32.const	$push98=, 0
	i32.store	0($5), $pop98
	i32.const	$push97=, -24
	i32.add 	$push27=, $9, $pop97
	i32.store	0($pop27), $1
	i32.const	$push96=, -8
	i32.add 	$push28=, $9, $pop96
	i32.const	$push95=, -8
	i32.add 	$push29=, $8, $pop95
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push94=, -12
	i32.add 	$push31=, $9, $pop94
	i32.const	$push93=, -12
	i32.add 	$push32=, $8, $pop93
	i32.load	$push33=, 0($pop32)
	i32.store	0($pop31), $pop33
	i32.const	$push92=, -16
	i32.add 	$push34=, $9, $pop92
	i32.const	$push91=, -16
	i32.add 	$push35=, $8, $pop91
	i32.load	$push36=, 0($pop35)
	i32.store	0($pop34), $pop36
	i32.load	$push37=, 12($10)
	i32.const	$push90=, -24
	i32.add 	$push89=, $pop37, $pop90
	tee_local	$push88=, $9=, $pop89
	i32.store	12($10), $pop88
	copy_local	$8=, $5
	i32.ne  	$push38=, $2, $5
	br_if   	0, $pop38
	end_loop
	i32.const	$push39=, 4
	i32.add 	$push40=, $0, $pop39
	i32.load	$8=, 0($pop40)
	i32.load	$5=, 0($7)
	i32.load	$2=, 0($0)
	i32.const	$push41=, 16
	i32.add 	$push42=, $10, $pop41
	i32.load	$1=, 0($pop42)
.LBB31_12:
	end_block
	i32.store	0($0), $9
	i32.const	$push43=, 4
	i32.add 	$push44=, $0, $pop43
	i32.store	0($pop44), $1
	i32.const	$push54=, 8
	i32.add 	$push55=, $10, $pop54
	i32.const	$push45=, 8
	i32.add 	$push46=, $pop55, $pop45
	i32.store	0($pop46), $8
	i32.const	$push104=, 8
	i32.add 	$push103=, $0, $pop104
	tee_local	$push102=, $9=, $pop103
	i32.load	$8=, 0($pop102)
	i32.store	0($9), $5
	i32.store	12($10), $2
	i32.store	0($7), $8
	i32.store	8($10), $2
	i32.const	$push56=, 8
	i32.add 	$push57=, $10, $pop56
	i32.call	$drop=, _ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev@FUNCTION, $pop57
	i32.const	$push53=, 0
	i32.const	$push51=, 32
	i32.add 	$push52=, $10, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	.endfunc
.Lfunc_end31:
	.size	_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end31-_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	i32.load	$push26=, 8($0)
	tee_local	$push25=, $2=, $pop26
	i32.load	$push24=, 4($0)
	tee_local	$push23=, $1=, $pop24
	i32.eq  	$push0=, $pop25, $pop23
	br_if   	0, $pop0
	i32.const	$push1=, 8
	i32.add 	$4=, $0, $pop1
.LBB32_2:
	loop    	
	i32.const	$push30=, -24
	i32.add 	$push29=, $2, $pop30
	tee_local	$push28=, $3=, $pop29
	i32.store	0($4), $pop28
	i32.load	$2=, 0($3)
	i32.const	$push27=, 0
	i32.store	0($3), $pop27
	block   	
	i32.eqz 	$push45=, $2
	br_if   	0, $pop45
	block   	
	i32.load8_u	$push2=, 64($2)
	i32.const	$push31=, 1
	i32.and 	$push3=, $pop2, $pop31
	i32.eqz 	$push46=, $pop3
	br_if   	0, $pop46
	i32.const	$push32=, 72
	i32.add 	$push4=, $2, $pop32
	i32.load	$push5=, 0($pop4)
	call    	_ZdlPv@FUNCTION, $pop5
.LBB32_5:
	end_block
	block   	
	i32.load8_u	$push6=, 52($2)
	i32.const	$push33=, 1
	i32.and 	$push7=, $pop6, $pop33
	i32.eqz 	$push47=, $pop7
	br_if   	0, $pop47
	i32.const	$push34=, 60
	i32.add 	$push8=, $2, $pop34
	i32.load	$push9=, 0($pop8)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB32_7:
	end_block
	block   	
	i32.load8_u	$push10=, 40($2)
	i32.const	$push35=, 1
	i32.and 	$push11=, $pop10, $pop35
	i32.eqz 	$push48=, $pop11
	br_if   	0, $pop48
	i32.const	$push36=, 48
	i32.add 	$push12=, $2, $pop36
	i32.load	$push13=, 0($pop12)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB32_9:
	end_block
	block   	
	i32.load8_u	$push14=, 28($2)
	i32.const	$push37=, 1
	i32.and 	$push15=, $pop14, $pop37
	i32.eqz 	$push49=, $pop15
	br_if   	0, $pop49
	i32.const	$push38=, 36
	i32.add 	$push16=, $2, $pop38
	i32.load	$push17=, 0($pop16)
	call    	_ZdlPv@FUNCTION, $pop17
.LBB32_11:
	end_block
	block   	
	i32.load8_u	$push18=, 16($2)
	i32.const	$push39=, 1
	i32.and 	$push19=, $pop18, $pop39
	i32.eqz 	$push50=, $pop19
	br_if   	0, $pop50
	i32.const	$push40=, 24
	i32.add 	$push20=, $2, $pop40
	i32.load	$push21=, 0($pop20)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB32_13:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB32_14:
	end_block
	i32.load	$push42=, 0($4)
	tee_local	$push41=, $2=, $pop42
	i32.ne  	$push22=, $pop41, $1
	br_if   	0, $pop22
.LBB32_15:
	end_loop
	end_block
	block   	
	i32.load	$push44=, 0($0)
	tee_local	$push43=, $2=, $pop44
	i32.eqz 	$push51=, $pop43
	br_if   	0, $pop51
	call    	_ZdlPv@FUNCTION, $2
.LBB32_17:
	end_block
	copy_local	$push52=, $0
	.endfunc
.Lfunc_end32:
	.size	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev, .Lfunc_end32-_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_,"axG",@progbits,_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_,comdat
	.hidden	_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_
	.weak	_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_
	.type	_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_,@function
_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32
	i32.const	$push41=, 0
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 16
	i32.sub 	$push52=, $pop39, $pop40
	tee_local	$push51=, $5=, $pop52
	i32.store	__stack_pointer($pop41), $pop51
	block   	
	i32.load	$push50=, 0($0)
	tee_local	$push49=, $2=, $pop50
	i64.load	$push48=, 16($pop49)
	tee_local	$push47=, $4=, $pop48
	i64.const	$push0=, -1
	i64.ne  	$push1=, $pop47, $pop0
	br_if   	0, $pop1
	i64.const	$4=, 0
	block   	
	i64.load	$push3=, 0($2)
	i64.load	$push2=, 8($2)
	i64.const	$push4=, -3659887854546321408
	i64.const	$push56=, 0
	i32.call	$push55=, db_lowerbound_i64@FUNCTION, $pop3, $pop2, $pop4, $pop56
	tee_local	$push54=, $3=, $pop55
	i32.const	$push53=, 0
	i32.lt_s	$push5=, $pop54, $pop53
	br_if   	0, $pop5
	i32.call	$drop=, _ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $3
	i32.const	$push59=, 0
	i32.store	12($5), $pop59
	i32.store	8($5), $2
	i64.const	$push12=, -2
	i32.const	$push45=, 8
	i32.add 	$push46=, $5, $pop45
	i32.call	$push6=, _ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv@FUNCTION, $pop46
	i32.load	$push7=, 4($pop6)
	i64.load	$push58=, 8($pop7)
	tee_local	$push57=, $4=, $pop58
	i64.const	$push10=, 1
	i64.add 	$push11=, $pop57, $pop10
	i64.const	$push8=, -3
	i64.gt_u	$push9=, $4, $pop8
	i64.select	$4=, $pop12, $pop11, $pop9
.LBB33_3:
	end_block
	i32.const	$push13=, 16
	i32.add 	$push14=, $2, $pop13
	i64.store	0($pop14), $4
.LBB33_4:
	end_block
	i64.const	$push15=, -2
	i64.lt_u	$push16=, $4, $pop15
	i32.const	$push17=, .L.str.7
	call    	kcwio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push18=, 16
	i32.add 	$push19=, $2, $pop18
	i64.load	$push20=, 0($pop19)
	i64.store	8($1), $pop20
	i32.load	$push21=, 4($0)
	i64.load	$push22=, 0($pop21)
	i64.store	0($1), $pop22
	i32.const	$push60=, 16
	i32.add 	$push23=, $1, $pop60
	i32.load	$push24=, 8($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop23, $pop24
	i32.const	$push25=, 28
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 12($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop26, $pop27
	i32.const	$push28=, 40
	i32.add 	$push29=, $1, $pop28
	i32.load	$push30=, 16($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop29, $pop30
	i32.const	$push31=, 52
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 20($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop32, $pop33
	i32.const	$push34=, 64
	i32.add 	$push35=, $1, $pop34
	i32.load	$push36=, 24($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop35, $pop36
	i64.call	$push37=, current_time@FUNCTION
	i64.store	80($1), $pop37
	i32.const	$push44=, 0
	i32.const	$push42=, 16
	i32.add 	$push43=, $5, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	.endfunc
.Lfunc_end33:
	.size	_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_, .Lfunc_end33-_ZZN9commodity10settouristEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_12tourist_infoEE_clES8_

	.section	.text._ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE
	.weak	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE
	.type	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE,@function
_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32
	i32.load	$push0=, 0($0)
	i32.const	$push1=, 16
	i32.add 	$push80=, $pop0, $pop1
	tee_local	$push79=, $4=, $pop80
	i32.store	0($0), $pop79
	i32.const	$push4=, 20
	i32.add 	$push5=, $1, $pop4
	i32.load	$push6=, 0($pop5)
	i32.load8_u	$push78=, 16($1)
	tee_local	$push77=, $2=, $pop78
	i32.const	$push76=, 1
	i32.shr_u	$push3=, $pop77, $pop76
	i32.const	$push75=, 1
	i32.and 	$push2=, $2, $pop75
	i32.select	$push7=, $pop6, $pop3, $pop2
	i64.extend_u/i32	$3=, $pop7
.LBB34_1:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$4=, $4, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $3, $pop84
	tee_local	$push82=, $3=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push8=, $pop82, $pop81
	br_if   	0, $pop8
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push13=, 20
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.const	$push9=, 16
	i32.add 	$push10=, $1, $pop9
	i32.load8_u	$push91=, 0($pop10)
	tee_local	$push90=, $2=, $pop91
	i32.const	$push89=, 1
	i32.shr_u	$push12=, $pop90, $pop89
	i32.const	$push88=, 1
	i32.and 	$push11=, $2, $pop88
	i32.select	$push87=, $pop15, $pop12, $pop11
	tee_local	$push86=, $2=, $pop87
	i32.eqz 	$push161=, $pop86
	br_if   	0, $pop161
	i32.add 	$push93=, $2, $4
	tee_local	$push92=, $4=, $pop93
	i32.store	0($0), $pop92
.LBB34_4:
	end_block
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.load8_u	$push97=, 28($1)
	tee_local	$push96=, $2=, $pop97
	i32.const	$push95=, 1
	i32.shr_u	$push17=, $pop96, $pop95
	i32.const	$push94=, 1
	i32.and 	$push16=, $2, $pop94
	i32.select	$push21=, $pop20, $pop17, $pop16
	i64.extend_u/i32	$3=, $pop21
.LBB34_5:
	loop    	
	i32.const	$push102=, 1
	i32.add 	$4=, $4, $pop102
	i64.const	$push101=, 7
	i64.shr_u	$push100=, $3, $pop101
	tee_local	$push99=, $3=, $pop100
	i64.const	$push98=, 0
	i64.ne  	$push22=, $pop99, $pop98
	br_if   	0, $pop22
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push27=, 32
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 0($pop28)
	i32.const	$push23=, 28
	i32.add 	$push24=, $1, $pop23
	i32.load8_u	$push108=, 0($pop24)
	tee_local	$push107=, $2=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push26=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push25=, $2, $pop105
	i32.select	$push104=, $pop29, $pop26, $pop25
	tee_local	$push103=, $2=, $pop104
	i32.eqz 	$push162=, $pop103
	br_if   	0, $pop162
	i32.add 	$push110=, $2, $4
	tee_local	$push109=, $4=, $pop110
	i32.store	0($0), $pop109
.LBB34_8:
	end_block
	i32.const	$push32=, 44
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 0($pop33)
	i32.load8_u	$push114=, 40($1)
	tee_local	$push113=, $2=, $pop114
	i32.const	$push112=, 1
	i32.shr_u	$push31=, $pop113, $pop112
	i32.const	$push111=, 1
	i32.and 	$push30=, $2, $pop111
	i32.select	$push35=, $pop34, $pop31, $pop30
	i64.extend_u/i32	$3=, $pop35
.LBB34_9:
	loop    	
	i32.const	$push119=, 1
	i32.add 	$4=, $4, $pop119
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $3, $pop118
	tee_local	$push116=, $3=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push36=, $pop116, $pop115
	br_if   	0, $pop36
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push41=, 44
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 0($pop42)
	i32.const	$push37=, 40
	i32.add 	$push38=, $1, $pop37
	i32.load8_u	$push125=, 0($pop38)
	tee_local	$push124=, $2=, $pop125
	i32.const	$push123=, 1
	i32.shr_u	$push40=, $pop124, $pop123
	i32.const	$push122=, 1
	i32.and 	$push39=, $2, $pop122
	i32.select	$push121=, $pop43, $pop40, $pop39
	tee_local	$push120=, $2=, $pop121
	i32.eqz 	$push163=, $pop120
	br_if   	0, $pop163
	i32.add 	$push127=, $2, $4
	tee_local	$push126=, $4=, $pop127
	i32.store	0($0), $pop126
.LBB34_12:
	end_block
	i32.const	$push46=, 56
	i32.add 	$push47=, $1, $pop46
	i32.load	$push48=, 0($pop47)
	i32.load8_u	$push131=, 52($1)
	tee_local	$push130=, $2=, $pop131
	i32.const	$push129=, 1
	i32.shr_u	$push45=, $pop130, $pop129
	i32.const	$push128=, 1
	i32.and 	$push44=, $2, $pop128
	i32.select	$push49=, $pop48, $pop45, $pop44
	i64.extend_u/i32	$3=, $pop49
.LBB34_13:
	loop    	
	i32.const	$push136=, 1
	i32.add 	$4=, $4, $pop136
	i64.const	$push135=, 7
	i64.shr_u	$push134=, $3, $pop135
	tee_local	$push133=, $3=, $pop134
	i64.const	$push132=, 0
	i64.ne  	$push50=, $pop133, $pop132
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 0($pop56)
	i32.const	$push51=, 52
	i32.add 	$push52=, $1, $pop51
	i32.load8_u	$push142=, 0($pop52)
	tee_local	$push141=, $2=, $pop142
	i32.const	$push140=, 1
	i32.shr_u	$push54=, $pop141, $pop140
	i32.const	$push139=, 1
	i32.and 	$push53=, $2, $pop139
	i32.select	$push138=, $pop57, $pop54, $pop53
	tee_local	$push137=, $2=, $pop138
	i32.eqz 	$push164=, $pop137
	br_if   	0, $pop164
	i32.add 	$push144=, $2, $4
	tee_local	$push143=, $4=, $pop144
	i32.store	0($0), $pop143
.LBB34_16:
	end_block
	i32.const	$push60=, 68
	i32.add 	$push61=, $1, $pop60
	i32.load	$push62=, 0($pop61)
	i32.load8_u	$push148=, 64($1)
	tee_local	$push147=, $2=, $pop148
	i32.const	$push146=, 1
	i32.shr_u	$push59=, $pop147, $pop146
	i32.const	$push145=, 1
	i32.and 	$push58=, $2, $pop145
	i32.select	$push63=, $pop62, $pop59, $pop58
	i64.extend_u/i32	$3=, $pop63
.LBB34_17:
	loop    	
	i32.const	$push153=, 1
	i32.add 	$4=, $4, $pop153
	i64.const	$push152=, 7
	i64.shr_u	$push151=, $3, $pop152
	tee_local	$push150=, $3=, $pop151
	i64.const	$push149=, 0
	i64.ne  	$push64=, $pop150, $pop149
	br_if   	0, $pop64
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push70=, 68
	i32.add 	$push71=, $1, $pop70
	i32.load	$push72=, 0($pop71)
	i32.const	$push65=, 64
	i32.add 	$push66=, $1, $pop65
	i32.load8_u	$push158=, 0($pop66)
	tee_local	$push157=, $1=, $pop158
	i32.const	$push67=, 1
	i32.shr_u	$push69=, $pop157, $pop67
	i32.const	$push156=, 1
	i32.and 	$push68=, $1, $pop156
	i32.select	$push155=, $pop72, $pop69, $pop68
	tee_local	$push154=, $1=, $pop155
	i32.eqz 	$push165=, $pop154
	br_if   	0, $pop165
	i32.add 	$push160=, $1, $4
	tee_local	$push159=, $4=, $pop160
	i32.store	0($0), $pop159
.LBB34_20:
	end_block
	i32.const	$push73=, 8
	i32.add 	$push74=, $4, $pop73
	i32.store	0($0), $pop74
	copy_local	$push166=, $0
	.endfunc
.Lfunc_end34:
	.size	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE, .Lfunc_end34-_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity12tourist_infoE

	.section	.text._ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE
	.weak	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE
	.type	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE,@function
_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 4($0)
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_s	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.load	$push34=, 4($0)
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop36, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end35:
	.size	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE, .Lfunc_end35-_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity12tourist_infoE

	.section	.text._ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 48
	i32.sub 	$push87=, $pop67, $pop68
	tee_local	$push86=, $9=, $pop87
	copy_local	$8=, $pop86
	i32.const	$push69=, 0
	i32.store	__stack_pointer($pop69), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push85=, 0($pop3)
	tee_local	$push84=, $7=, $pop85
	i32.load	$push83=, 24($0)
	tee_local	$push82=, $2=, $pop83
	i32.eq  	$push4=, $pop84, $pop82
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push88=, -24
	i32.add 	$6=, $7, $pop88
.LBB36_2:
	loop    	
	i32.const	$push89=, 16
	i32.add 	$push6=, $6, $pop89
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push93=, -24
	i32.add 	$push92=, $6, $pop93
	tee_local	$push91=, $4=, $pop92
	copy_local	$6=, $pop91
	i32.add 	$push9=, $4, $3
	i32.const	$push90=, -24
	i32.ne  	$push10=, $pop9, $pop90
	br_if   	0, $pop10
.LBB36_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB36_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push96=, 0
	i32.call	$push95=, db_get_i64@FUNCTION, $1, $pop14, $pop96
	tee_local	$push94=, $6=, $pop95
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop94, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.8
	call    	kcwio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB36_8:
	end_block
	i32.const	$push65=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push98=, $9, $pop25
	tee_local	$push97=, $4=, $pop98
	copy_local	$push81=, $pop97
	i32.store	__stack_pointer($pop65), $pop81
.LBB36_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB36_11:
	end_block
	i32.const	$push29=, 104
	i32.call	$push120=, _Znwj@FUNCTION, $pop29
	tee_local	$push119=, $6=, $pop120
	i64.const	$push30=, 0
	i64.store	8($pop119), $pop30
	i64.const	$push118=, 0
	i64.store	16($6):p2align=2, $pop118
	i64.const	$push117=, 0
	i64.store	24($6):p2align=2, $pop117
	i64.const	$push116=, 0
	i64.store	32($6):p2align=2, $pop116
	i64.const	$push115=, 0
	i64.store	40($6):p2align=2, $pop115
	i32.const	$push114=, 0
	i32.store	48($6), $pop114
	i32.const	$push113=, 0
	i32.store	52($6), $pop113
	i32.const	$push112=, 0
	i32.store	56($6), $pop112
	i32.const	$push111=, 0
	i32.store	60($6), $pop111
	i32.const	$push110=, 0
	i32.store	64($6), $pop110
	i32.const	$push109=, 0
	i32.store	68($6), $pop109
	i32.const	$push108=, 0
	i32.store	72($6), $pop108
	i64.const	$push107=, 0
	i64.store	80($6), $pop107
	i32.store	88($6), $0
	i32.const	$push73=, 32
	i32.add 	$push74=, $8, $pop73
	i32.call	$drop=, _ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE@FUNCTION, $pop74, $6
	i32.store	92($6), $1
	i32.store	24($8), $6
	i64.load	$push106=, 8($6)
	tee_local	$push105=, $5=, $pop106
	i64.store	16($8), $pop105
	i32.load	$push104=, 92($6)
	tee_local	$push103=, $7=, $pop104
	i32.store	12($8), $pop103
	block   	
	block   	
	i32.const	$push34=, 28
	i32.add 	$push102=, $0, $pop34
	tee_local	$push101=, $1=, $pop102
	i32.load	$push100=, 0($pop101)
	tee_local	$push99=, $4=, $pop100
	i32.const	$push31=, 32
	i32.add 	$push32=, $0, $pop31
	i32.load	$push33=, 0($pop32)
	i32.ge_u	$push35=, $pop99, $pop33
	br_if   	0, $pop35
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push121=, 0
	i32.store	24($8), $pop121
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB36_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push75=, 24
	i32.add 	$push76=, $8, $pop75
	i32.const	$push77=, 16
	i32.add 	$push78=, $8, $pop77
	i32.const	$push79=, 12
	i32.add 	$push80=, $8, $pop79
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop76, $pop78, $pop80
.LBB36_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push126=, $4
	br_if   	0, $pop126
	block   	
	i32.load8_u	$push39=, 64($4)
	i32.const	$push122=, 1
	i32.and 	$push40=, $pop39, $pop122
	i32.eqz 	$push127=, $pop40
	br_if   	0, $pop127
	i32.const	$push41=, 72
	i32.add 	$push42=, $4, $pop41
	i32.load	$push43=, 0($pop42)
	call    	_ZdlPv@FUNCTION, $pop43
.LBB36_17:
	end_block
	block   	
	i32.load8_u	$push44=, 52($4)
	i32.const	$push123=, 1
	i32.and 	$push45=, $pop44, $pop123
	i32.eqz 	$push128=, $pop45
	br_if   	0, $pop128
	i32.const	$push46=, 60
	i32.add 	$push47=, $4, $pop46
	i32.load	$push48=, 0($pop47)
	call    	_ZdlPv@FUNCTION, $pop48
.LBB36_19:
	end_block
	block   	
	i32.load8_u	$push49=, 40($4)
	i32.const	$push124=, 1
	i32.and 	$push50=, $pop49, $pop124
	i32.eqz 	$push129=, $pop50
	br_if   	0, $pop129
	i32.const	$push51=, 48
	i32.add 	$push52=, $4, $pop51
	i32.load	$push53=, 0($pop52)
	call    	_ZdlPv@FUNCTION, $pop53
.LBB36_21:
	end_block
	block   	
	i32.load8_u	$push54=, 28($4)
	i32.const	$push125=, 1
	i32.and 	$push55=, $pop54, $pop125
	i32.eqz 	$push130=, $pop55
	br_if   	0, $pop130
	i32.const	$push56=, 36
	i32.add 	$push57=, $4, $pop56
	i32.load	$push58=, 0($pop57)
	call    	_ZdlPv@FUNCTION, $pop58
.LBB36_23:
	end_block
	block   	
	i32.load8_u	$push59=, 16($4)
	i32.const	$push60=, 1
	i32.and 	$push61=, $pop59, $pop60
	i32.eqz 	$push131=, $pop61
	br_if   	0, $pop131
	i32.const	$push62=, 24
	i32.add 	$push63=, $4, $pop62
	i32.load	$push64=, 0($pop63)
	call    	_ZdlPv@FUNCTION, $pop64
.LBB36_25:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB36_26:
	end_block
	i32.const	$push72=, 0
	i32.const	$push70=, 48
	i32.add 	$push71=, $8, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	copy_local	$push132=, $6
	.endfunc
.Lfunc_end36:
	.size	_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl, .Lfunc_end36-_ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv,"axG",@progbits,_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv,comdat
	.hidden	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv
	.weak	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv
	.type	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv,@function
_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push34=, $pop21, $pop22
	tee_local	$push33=, $2=, $pop34
	i32.store	__stack_pointer($pop23), $pop33
	block   	
	block   	
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push44=, $pop31
	br_if   	0, $pop44
	i32.load	$push0=, 92($1)
	i32.const	$push29=, 8
	i32.add 	$push30=, $2, $pop29
	i32.call	$push36=, db_previous_i64@FUNCTION, $pop0, $pop30
	tee_local	$push35=, $1=, $pop36
	i32.const	$push1=, 31
	i32.shr_u	$push2=, $pop35, $pop1
	i32.const	$push3=, 1
	i32.xor 	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.13
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	br      	1
.LBB37_2:
	end_block
	i32.load	$push43=, 0($0)
	tee_local	$push42=, $1=, $pop43
	i64.load	$push7=, 0($pop42)
	i64.load	$push6=, 8($1)
	i64.const	$push8=, -3659887854546321408
	i32.call	$push41=, db_end_i64@FUNCTION, $pop7, $pop6, $pop8
	tee_local	$push40=, $1=, $pop41
	i32.const	$push9=, -1
	i32.ne  	$push10=, $pop40, $pop9
	i32.const	$push11=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push27=, 8
	i32.add 	$push28=, $2, $pop27
	i32.call	$push39=, db_previous_i64@FUNCTION, $1, $pop28
	tee_local	$push38=, $1=, $pop39
	i32.const	$push12=, 31
	i32.shr_u	$push13=, $pop38, $pop12
	i32.const	$push14=, 1
	i32.xor 	$push15=, $pop13, $pop14
	i32.const	$push37=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop15, $pop37
.LBB37_3:
	end_block
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($0)
	i32.call	$push19=, _ZNK5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop18, $1
	i32.store	0($pop17), $pop19
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	copy_local	$push45=, $0
	.endfunc
.Lfunc_end37:
	.size	_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv, .Lfunc_end37-_ZN5kcwio11multi_indexILy14786856219163230208EN9commodity12tourist_infoEJEE14const_iteratormmEv

	.section	.text._ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE,"axG",@progbits,_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE,comdat
	.hidden	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE
	.weak	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE
	.type	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE,@function
_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_u	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.load	$push13=, 4($0)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_u	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.load	$push34=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end38:
	.size	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE, .Lfunc_end38-_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity12tourist_infoE

	.section	.text._ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.weak	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.type	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,@function
_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push45=, 0
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push82=, $pop43, $pop44
	tee_local	$push81=, $7=, $pop82
	i32.store	__stack_pointer($pop45), $pop81
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.6
	call    	kcwio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push49=, 40
	i32.add 	$push50=, $7, $pop49
	i32.store	24($7), $pop50
	i32.const	$push4=, 104
	i32.call	$push80=, _Znwj@FUNCTION, $pop4
	tee_local	$push79=, $3=, $pop80
	i64.const	$push5=, 0
	i64.store	8($pop79), $pop5
	i64.const	$push78=, 0
	i64.store	16($3):p2align=2, $pop78
	i64.const	$push77=, 0
	i64.store	24($3):p2align=2, $pop77
	i64.const	$push76=, 0
	i64.store	32($3):p2align=2, $pop76
	i64.const	$push75=, 0
	i64.store	40($3):p2align=2, $pop75
	i32.const	$push74=, 0
	i32.store	48($3), $pop74
	i32.const	$push73=, 0
	i32.store	52($3), $pop73
	i32.const	$push72=, 0
	i32.store	56($3), $pop72
	i32.const	$push71=, 0
	i32.store	60($3), $pop71
	i32.const	$push70=, 0
	i32.store	64($3), $pop70
	i32.const	$push69=, 0
	i32.store	68($3), $pop69
	i32.const	$push68=, 0
	i32.store	72($3), $pop68
	i64.const	$push67=, 0
	i64.store	80($3), $pop67
	i32.store	88($3), $1
	i32.const	$push51=, 16
	i32.add 	$push52=, $7, $pop51
	call    	_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_@FUNCTION, $pop52, $3
	i32.store	32($7), $3
	i64.load	$push66=, 8($3)
	tee_local	$push65=, $2=, $pop66
	i64.store	16($7), $pop65
	i32.load	$push64=, 92($3)
	tee_local	$push63=, $4=, $pop64
	i32.store	12($7), $pop63
	block   	
	block   	
	i32.const	$push9=, 28
	i32.add 	$push62=, $1, $pop9
	tee_local	$push61=, $6=, $pop62
	i32.load	$push60=, 0($pop61)
	tee_local	$push59=, $5=, $pop60
	i32.const	$push6=, 32
	i32.add 	$push7=, $1, $pop6
	i32.load	$push8=, 0($pop7)
	i32.ge_u	$push10=, $pop59, $pop8
	br_if   	0, $pop10
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push83=, 0
	i32.store	32($7), $pop83
	i32.store	0($5), $3
	i32.const	$push13=, 24
	i32.add 	$push14=, $5, $pop13
	i32.store	0($6), $pop14
	br      	1
.LBB39_2:
	end_block
	i32.const	$push11=, 24
	i32.add 	$push12=, $1, $pop11
	i32.const	$push53=, 32
	i32.add 	$push54=, $7, $pop53
	i32.const	$push55=, 16
	i32.add 	$push56=, $7, $pop55
	i32.const	$push57=, 12
	i32.add 	$push58=, $7, $pop57
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop12, $pop54, $pop56, $pop58
.LBB39_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push15=, 0
	i32.store	32($7), $pop15
	block   	
	i32.eqz 	$push88=, $3
	br_if   	0, $pop88
	block   	
	i32.load8_u	$push16=, 64($3)
	i32.const	$push84=, 1
	i32.and 	$push17=, $pop16, $pop84
	i32.eqz 	$push89=, $pop17
	br_if   	0, $pop89
	i32.const	$push18=, 72
	i32.add 	$push19=, $3, $pop18
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB39_6:
	end_block
	block   	
	i32.load8_u	$push21=, 52($3)
	i32.const	$push85=, 1
	i32.and 	$push22=, $pop21, $pop85
	i32.eqz 	$push90=, $pop22
	br_if   	0, $pop90
	i32.const	$push23=, 60
	i32.add 	$push24=, $3, $pop23
	i32.load	$push25=, 0($pop24)
	call    	_ZdlPv@FUNCTION, $pop25
.LBB39_8:
	end_block
	block   	
	i32.load8_u	$push26=, 40($3)
	i32.const	$push86=, 1
	i32.and 	$push27=, $pop26, $pop86
	i32.eqz 	$push91=, $pop27
	br_if   	0, $pop91
	i32.const	$push28=, 48
	i32.add 	$push29=, $3, $pop28
	i32.load	$push30=, 0($pop29)
	call    	_ZdlPv@FUNCTION, $pop30
.LBB39_10:
	end_block
	block   	
	i32.load8_u	$push31=, 28($3)
	i32.const	$push87=, 1
	i32.and 	$push32=, $pop31, $pop87
	i32.eqz 	$push92=, $pop32
	br_if   	0, $pop92
	i32.const	$push33=, 36
	i32.add 	$push34=, $3, $pop33
	i32.load	$push35=, 0($pop34)
	call    	_ZdlPv@FUNCTION, $pop35
.LBB39_12:
	end_block
	block   	
	i32.load8_u	$push36=, 16($3)
	i32.const	$push37=, 1
	i32.and 	$push38=, $pop36, $pop37
	i32.eqz 	$push93=, $pop38
	br_if   	0, $pop93
	i32.const	$push39=, 24
	i32.add 	$push40=, $3, $pop39
	i32.load	$push41=, 0($pop40)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB39_14:
	end_block
	call    	_ZdlPv@FUNCTION, $3
.LBB39_15:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $7, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	.endfunc
.Lfunc_end39:
	.size	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_, .Lfunc_end39-_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_

	.section	.text._ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $1=, $pop25
	i32.eqz 	$push42=, $pop24
	br_if   	0, $pop42
	block   	
	block   	
	i32.load	$push27=, 4($0)
	tee_local	$push26=, $3=, $pop27
	i32.eq  	$push0=, $pop26, $1
	br_if   	0, $pop0
.LBB40_3:
	loop    	
	i32.const	$push31=, -24
	i32.add 	$push30=, $3, $pop31
	tee_local	$push29=, $3=, $pop30
	i32.load	$2=, 0($pop29)
	i32.const	$push28=, 0
	i32.store	0($3), $pop28
	block   	
	i32.eqz 	$push43=, $2
	br_if   	0, $pop43
	block   	
	i32.load8_u	$push1=, 64($2)
	i32.const	$push32=, 1
	i32.and 	$push2=, $pop1, $pop32
	i32.eqz 	$push44=, $pop2
	br_if   	0, $pop44
	i32.const	$push33=, 72
	i32.add 	$push3=, $2, $pop33
	i32.load	$push4=, 0($pop3)
	call    	_ZdlPv@FUNCTION, $pop4
.LBB40_6:
	end_block
	block   	
	i32.load8_u	$push5=, 52($2)
	i32.const	$push34=, 1
	i32.and 	$push6=, $pop5, $pop34
	i32.eqz 	$push45=, $pop6
	br_if   	0, $pop45
	i32.const	$push35=, 60
	i32.add 	$push7=, $2, $pop35
	i32.load	$push8=, 0($pop7)
	call    	_ZdlPv@FUNCTION, $pop8
.LBB40_8:
	end_block
	block   	
	i32.load8_u	$push9=, 40($2)
	i32.const	$push36=, 1
	i32.and 	$push10=, $pop9, $pop36
	i32.eqz 	$push46=, $pop10
	br_if   	0, $pop46
	i32.const	$push37=, 48
	i32.add 	$push11=, $2, $pop37
	i32.load	$push12=, 0($pop11)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB40_10:
	end_block
	block   	
	i32.load8_u	$push13=, 28($2)
	i32.const	$push38=, 1
	i32.and 	$push14=, $pop13, $pop38
	i32.eqz 	$push47=, $pop14
	br_if   	0, $pop47
	i32.const	$push39=, 36
	i32.add 	$push15=, $2, $pop39
	i32.load	$push16=, 0($pop15)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB40_12:
	end_block
	block   	
	i32.load8_u	$push17=, 16($2)
	i32.const	$push40=, 1
	i32.and 	$push18=, $pop17, $pop40
	i32.eqz 	$push48=, $pop18
	br_if   	0, $pop48
	i32.const	$push41=, 24
	i32.add 	$push19=, $2, $pop41
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB40_14:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB40_15:
	end_block
	i32.ne  	$push21=, $1, $3
	br_if   	0, $pop21
	end_loop
	i32.load	$2=, 0($0)
	br      	1
.LBB40_17:
	end_block
	copy_local	$2=, $1
.LBB40_18:
	end_block
	i32.const	$push22=, 4
	i32.add 	$push23=, $0, $pop22
	i32.store	0($pop23), $1
	call    	_ZdlPv@FUNCTION, $2
.LBB40_19:
	end_block
	copy_local	$push49=, $0
	.endfunc
.Lfunc_end40:
	.size	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev, .Lfunc_end40-_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,"axG",@progbits,_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,comdat
	.hidden	_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.weak	_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.type	_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,@function
_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push40=, $pop28, $pop29
	tee_local	$push39=, $5=, $pop40
	i32.store	__stack_pointer($pop30), $pop39
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	call    	_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_@FUNCTION, $pop0, $1
	copy_local	$push38=, $5
	tee_local	$push37=, $6=, $pop38
	i32.const	$push1=, 0
	i32.store	0($pop37), $pop1
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE@FUNCTION, $6, $1
	block   	
	block   	
	i32.load	$push36=, 0($6)
	tee_local	$push35=, $3=, $pop36
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $pop35, $pop2
	br_if   	0, $pop3
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB41_2:
	end_block
	i32.const	$push26=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $3, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push42=, $5, $pop7
	tee_local	$push41=, $5=, $pop42
	copy_local	$push34=, $pop41
	i32.store	__stack_pointer($pop26), $pop34
.LBB41_3:
	end_block
	i32.store	4($6), $5
	i32.store	0($6), $5
	i32.add 	$push8=, $5, $3
	i32.store	8($6), $pop8
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE@FUNCTION, $6, $1
	i64.load	$push9=, 8($2)
	i64.const	$push12=, -4461599245262127104
	i32.load	$push10=, 8($0)
	i64.load	$push11=, 0($pop10)
	i64.load	$push44=, 8($1)
	tee_local	$push43=, $4=, $pop44
	i32.call	$push13=, db_store_i64@FUNCTION, $pop9, $pop12, $pop11, $pop43, $5, $3
	i32.store	92($1), $pop13
	block   	
	i32.const	$push14=, 513
	i32.lt_u	$push15=, $3, $pop14
	br_if   	0, $pop15
	call    	free@FUNCTION, $5
.LBB41_5:
	end_block
	block   	
	i64.load	$push16=, 16($2)
	i64.lt_u	$push17=, $4, $pop16
	br_if   	0, $pop17
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i64.const	$push22=, -2
	i64.const	$push20=, 1
	i64.add 	$push21=, $4, $pop20
	i64.const	$push18=, -3
	i64.gt_u	$push19=, $4, $pop18
	i64.select	$push23=, $pop22, $pop21, $pop19
	i64.store	0($pop25), $pop23
.LBB41_7:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $6, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end41:
	.size	_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_, .Lfunc_end41-_ZZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE7emplaceIZNS1_9setscenicEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_

	.section	.text._ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32
	i32.const	$push50=, 0
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 32
	i32.sub 	$push66=, $pop48, $pop49
	tee_local	$push65=, $10=, $pop66
	i32.store	__stack_pointer($pop50), $pop65
	block   	
	block   	
	i32.load	$push1=, 4($0)
	i32.load	$push64=, 0($0)
	tee_local	$push63=, $9=, $pop64
	i32.sub 	$push2=, $pop1, $pop63
	i32.const	$push62=, 24
	i32.div_s	$push61=, $pop2, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.const	$push3=, 1
	i32.add 	$push59=, $pop60, $pop3
	tee_local	$push58=, $8=, $pop59
	i32.const	$push4=, 178956971
	i32.ge_u	$push5=, $pop58, $pop4
	br_if   	0, $pop5
	i32.const	$push0=, 8
	i32.add 	$5=, $0, $pop0
	block   	
	block   	
	block   	
	i32.load	$push6=, 8($0)
	i32.sub 	$push7=, $pop6, $9
	i32.const	$push69=, 24
	i32.div_s	$push68=, $pop7, $pop69
	tee_local	$push67=, $9=, $pop68
	i32.const	$push8=, 89478485
	i32.ge_u	$push9=, $pop67, $pop8
	br_if   	0, $pop9
	i32.const	$push14=, 24
	i32.add 	$push15=, $10, $pop14
	i32.store	0($pop15), $5
	i32.const	$5=, 0
	i32.const	$push74=, 0
	i32.store	20($10), $pop74
	i32.const	$push18=, 20
	i32.add 	$7=, $10, $pop18
	i32.const	$push16=, 1
	i32.shl 	$push73=, $9, $pop16
	tee_local	$push72=, $9=, $pop73
	i32.lt_u	$push17=, $9, $8
	i32.select	$push71=, $8, $pop72, $pop17
	tee_local	$push70=, $9=, $pop71
	i32.eqz 	$push105=, $pop70
	br_if   	2, $pop105
	copy_local	$5=, $9
	br      	1
.LBB42_4:
	end_block
	i32.const	$push10=, 24
	i32.add 	$push11=, $10, $pop10
	i32.store	0($pop11), $5
	i32.const	$push12=, 0
	i32.store	20($10), $pop12
	i32.const	$push13=, 20
	i32.add 	$7=, $10, $pop13
	i32.const	$5=, 178956970
.LBB42_5:
	end_block
	i32.const	$push19=, 24
	i32.mul 	$push20=, $5, $pop19
	i32.call	$8=, _Znwj@FUNCTION, $pop20
	br      	2
.LBB42_6:
	end_block
	i32.const	$8=, 0
	br      	1
.LBB42_7:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB42_8:
	end_block
	i32.store	8($10), $8
	i32.const	$push21=, 24
	i32.mul 	$push22=, $4, $pop21
	i32.add 	$push87=, $8, $pop22
	tee_local	$push86=, $9=, $pop87
	i32.store	12($10), $pop86
	i32.const	$push85=, 24
	i32.mul 	$push23=, $5, $pop85
	i32.add 	$push84=, $8, $pop23
	tee_local	$push83=, $5=, $pop84
	i32.store	0($7), $pop83
	i32.load	$8=, 0($1)
	i32.const	$push82=, 0
	i32.store	0($1), $pop82
	i32.load	$1=, 0($3)
	i64.load	$6=, 0($2)
	i32.store	0($9), $8
	i64.store	8($9), $6
	i32.store	16($9), $1
	i32.const	$push81=, 24
	i32.add 	$push80=, $9, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.store	16($10), $pop79
	block   	
	i32.const	$push24=, 4
	i32.add 	$push25=, $0, $pop24
	i32.load	$push78=, 0($pop25)
	tee_local	$push77=, $8=, $pop78
	i32.load	$push76=, 0($0)
	tee_local	$push75=, $2=, $pop76
	i32.eq  	$push26=, $pop77, $pop75
	br_if   	0, $pop26
.LBB42_10:
	loop    	
	i32.const	$push101=, -24
	i32.add 	$push100=, $8, $pop101
	tee_local	$push99=, $5=, $pop100
	i32.load	$1=, 0($pop99)
	i32.const	$push98=, 0
	i32.store	0($5), $pop98
	i32.const	$push97=, -24
	i32.add 	$push27=, $9, $pop97
	i32.store	0($pop27), $1
	i32.const	$push96=, -8
	i32.add 	$push28=, $9, $pop96
	i32.const	$push95=, -8
	i32.add 	$push29=, $8, $pop95
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push94=, -12
	i32.add 	$push31=, $9, $pop94
	i32.const	$push93=, -12
	i32.add 	$push32=, $8, $pop93
	i32.load	$push33=, 0($pop32)
	i32.store	0($pop31), $pop33
	i32.const	$push92=, -16
	i32.add 	$push34=, $9, $pop92
	i32.const	$push91=, -16
	i32.add 	$push35=, $8, $pop91
	i32.load	$push36=, 0($pop35)
	i32.store	0($pop34), $pop36
	i32.load	$push37=, 12($10)
	i32.const	$push90=, -24
	i32.add 	$push89=, $pop37, $pop90
	tee_local	$push88=, $9=, $pop89
	i32.store	12($10), $pop88
	copy_local	$8=, $5
	i32.ne  	$push38=, $2, $5
	br_if   	0, $pop38
	end_loop
	i32.const	$push39=, 4
	i32.add 	$push40=, $0, $pop39
	i32.load	$8=, 0($pop40)
	i32.load	$5=, 0($7)
	i32.load	$2=, 0($0)
	i32.const	$push41=, 16
	i32.add 	$push42=, $10, $pop41
	i32.load	$1=, 0($pop42)
.LBB42_12:
	end_block
	i32.store	0($0), $9
	i32.const	$push43=, 4
	i32.add 	$push44=, $0, $pop43
	i32.store	0($pop44), $1
	i32.const	$push54=, 8
	i32.add 	$push55=, $10, $pop54
	i32.const	$push45=, 8
	i32.add 	$push46=, $pop55, $pop45
	i32.store	0($pop46), $8
	i32.const	$push104=, 8
	i32.add 	$push103=, $0, $pop104
	tee_local	$push102=, $9=, $pop103
	i32.load	$8=, 0($pop102)
	i32.store	0($9), $5
	i32.store	12($10), $2
	i32.store	0($7), $8
	i32.store	8($10), $2
	i32.const	$push56=, 8
	i32.add 	$push57=, $10, $pop56
	i32.call	$drop=, _ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev@FUNCTION, $pop57
	i32.const	$push53=, 0
	i32.const	$push51=, 32
	i32.add 	$push52=, $10, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	.endfunc
.Lfunc_end42:
	.size	_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end42-_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	i32.load	$push26=, 8($0)
	tee_local	$push25=, $2=, $pop26
	i32.load	$push24=, 4($0)
	tee_local	$push23=, $1=, $pop24
	i32.eq  	$push0=, $pop25, $pop23
	br_if   	0, $pop0
	i32.const	$push1=, 8
	i32.add 	$4=, $0, $pop1
.LBB43_2:
	loop    	
	i32.const	$push30=, -24
	i32.add 	$push29=, $2, $pop30
	tee_local	$push28=, $3=, $pop29
	i32.store	0($4), $pop28
	i32.load	$2=, 0($3)
	i32.const	$push27=, 0
	i32.store	0($3), $pop27
	block   	
	i32.eqz 	$push45=, $2
	br_if   	0, $pop45
	block   	
	i32.load8_u	$push2=, 64($2)
	i32.const	$push31=, 1
	i32.and 	$push3=, $pop2, $pop31
	i32.eqz 	$push46=, $pop3
	br_if   	0, $pop46
	i32.const	$push32=, 72
	i32.add 	$push4=, $2, $pop32
	i32.load	$push5=, 0($pop4)
	call    	_ZdlPv@FUNCTION, $pop5
.LBB43_5:
	end_block
	block   	
	i32.load8_u	$push6=, 52($2)
	i32.const	$push33=, 1
	i32.and 	$push7=, $pop6, $pop33
	i32.eqz 	$push47=, $pop7
	br_if   	0, $pop47
	i32.const	$push34=, 60
	i32.add 	$push8=, $2, $pop34
	i32.load	$push9=, 0($pop8)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB43_7:
	end_block
	block   	
	i32.load8_u	$push10=, 40($2)
	i32.const	$push35=, 1
	i32.and 	$push11=, $pop10, $pop35
	i32.eqz 	$push48=, $pop11
	br_if   	0, $pop48
	i32.const	$push36=, 48
	i32.add 	$push12=, $2, $pop36
	i32.load	$push13=, 0($pop12)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB43_9:
	end_block
	block   	
	i32.load8_u	$push14=, 28($2)
	i32.const	$push37=, 1
	i32.and 	$push15=, $pop14, $pop37
	i32.eqz 	$push49=, $pop15
	br_if   	0, $pop49
	i32.const	$push38=, 36
	i32.add 	$push16=, $2, $pop38
	i32.load	$push17=, 0($pop16)
	call    	_ZdlPv@FUNCTION, $pop17
.LBB43_11:
	end_block
	block   	
	i32.load8_u	$push18=, 16($2)
	i32.const	$push39=, 1
	i32.and 	$push19=, $pop18, $pop39
	i32.eqz 	$push50=, $pop19
	br_if   	0, $pop50
	i32.const	$push40=, 24
	i32.add 	$push20=, $2, $pop40
	i32.load	$push21=, 0($pop20)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB43_13:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB43_14:
	end_block
	i32.load	$push42=, 0($4)
	tee_local	$push41=, $2=, $pop42
	i32.ne  	$push22=, $pop41, $1
	br_if   	0, $pop22
.LBB43_15:
	end_loop
	end_block
	block   	
	i32.load	$push44=, 0($0)
	tee_local	$push43=, $2=, $pop44
	i32.eqz 	$push51=, $pop43
	br_if   	0, $pop51
	call    	_ZdlPv@FUNCTION, $2
.LBB43_17:
	end_block
	copy_local	$push52=, $0
	.endfunc
.Lfunc_end43:
	.size	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev, .Lfunc_end43-_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_,"axG",@progbits,_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_,comdat
	.hidden	_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_
	.weak	_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_
	.type	_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_,@function
_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32
	i32.const	$push41=, 0
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 16
	i32.sub 	$push52=, $pop39, $pop40
	tee_local	$push51=, $5=, $pop52
	i32.store	__stack_pointer($pop41), $pop51
	block   	
	i32.load	$push50=, 0($0)
	tee_local	$push49=, $2=, $pop50
	i64.load	$push48=, 16($pop49)
	tee_local	$push47=, $4=, $pop48
	i64.const	$push0=, -1
	i64.ne  	$push1=, $pop47, $pop0
	br_if   	0, $pop1
	i64.const	$4=, 0
	block   	
	i64.load	$push3=, 0($2)
	i64.load	$push2=, 8($2)
	i64.const	$push4=, -4461599245262127104
	i64.const	$push56=, 0
	i32.call	$push55=, db_lowerbound_i64@FUNCTION, $pop3, $pop2, $pop4, $pop56
	tee_local	$push54=, $3=, $pop55
	i32.const	$push53=, 0
	i32.lt_s	$push5=, $pop54, $pop53
	br_if   	0, $pop5
	i32.call	$drop=, _ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $3
	i32.const	$push59=, 0
	i32.store	12($5), $pop59
	i32.store	8($5), $2
	i64.const	$push12=, -2
	i32.const	$push45=, 8
	i32.add 	$push46=, $5, $pop45
	i32.call	$push6=, _ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv@FUNCTION, $pop46
	i32.load	$push7=, 4($pop6)
	i64.load	$push58=, 8($pop7)
	tee_local	$push57=, $4=, $pop58
	i64.const	$push10=, 1
	i64.add 	$push11=, $pop57, $pop10
	i64.const	$push8=, -3
	i64.gt_u	$push9=, $4, $pop8
	i64.select	$4=, $pop12, $pop11, $pop9
.LBB44_3:
	end_block
	i32.const	$push13=, 16
	i32.add 	$push14=, $2, $pop13
	i64.store	0($pop14), $4
.LBB44_4:
	end_block
	i64.const	$push15=, -2
	i64.lt_u	$push16=, $4, $pop15
	i32.const	$push17=, .L.str.7
	call    	kcwio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push18=, 16
	i32.add 	$push19=, $2, $pop18
	i64.load	$push20=, 0($pop19)
	i64.store	8($1), $pop20
	i32.load	$push21=, 4($0)
	i64.load	$push22=, 0($pop21)
	i64.store	0($1), $pop22
	i32.const	$push60=, 16
	i32.add 	$push23=, $1, $pop60
	i32.load	$push24=, 8($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop23, $pop24
	i32.const	$push25=, 28
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 12($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop26, $pop27
	i32.const	$push28=, 40
	i32.add 	$push29=, $1, $pop28
	i32.load	$push30=, 16($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop29, $pop30
	i32.const	$push31=, 52
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 20($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop32, $pop33
	i32.const	$push34=, 64
	i32.add 	$push35=, $1, $pop34
	i32.load	$push36=, 24($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop35, $pop36
	i64.call	$push37=, current_time@FUNCTION
	i64.store	80($1), $pop37
	i32.const	$push44=, 0
	i32.const	$push42=, 16
	i32.add 	$push43=, $5, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	.endfunc
.Lfunc_end44:
	.size	_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_, .Lfunc_end44-_ZZN9commodity9setscenicEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_11scenic_infoEE_clES8_

	.section	.text._ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE
	.weak	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE
	.type	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE,@function
_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32
	i32.load	$push0=, 0($0)
	i32.const	$push1=, 16
	i32.add 	$push80=, $pop0, $pop1
	tee_local	$push79=, $4=, $pop80
	i32.store	0($0), $pop79
	i32.const	$push4=, 20
	i32.add 	$push5=, $1, $pop4
	i32.load	$push6=, 0($pop5)
	i32.load8_u	$push78=, 16($1)
	tee_local	$push77=, $2=, $pop78
	i32.const	$push76=, 1
	i32.shr_u	$push3=, $pop77, $pop76
	i32.const	$push75=, 1
	i32.and 	$push2=, $2, $pop75
	i32.select	$push7=, $pop6, $pop3, $pop2
	i64.extend_u/i32	$3=, $pop7
.LBB45_1:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$4=, $4, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $3, $pop84
	tee_local	$push82=, $3=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push8=, $pop82, $pop81
	br_if   	0, $pop8
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push13=, 20
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.const	$push9=, 16
	i32.add 	$push10=, $1, $pop9
	i32.load8_u	$push91=, 0($pop10)
	tee_local	$push90=, $2=, $pop91
	i32.const	$push89=, 1
	i32.shr_u	$push12=, $pop90, $pop89
	i32.const	$push88=, 1
	i32.and 	$push11=, $2, $pop88
	i32.select	$push87=, $pop15, $pop12, $pop11
	tee_local	$push86=, $2=, $pop87
	i32.eqz 	$push161=, $pop86
	br_if   	0, $pop161
	i32.add 	$push93=, $2, $4
	tee_local	$push92=, $4=, $pop93
	i32.store	0($0), $pop92
.LBB45_4:
	end_block
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.load8_u	$push97=, 28($1)
	tee_local	$push96=, $2=, $pop97
	i32.const	$push95=, 1
	i32.shr_u	$push17=, $pop96, $pop95
	i32.const	$push94=, 1
	i32.and 	$push16=, $2, $pop94
	i32.select	$push21=, $pop20, $pop17, $pop16
	i64.extend_u/i32	$3=, $pop21
.LBB45_5:
	loop    	
	i32.const	$push102=, 1
	i32.add 	$4=, $4, $pop102
	i64.const	$push101=, 7
	i64.shr_u	$push100=, $3, $pop101
	tee_local	$push99=, $3=, $pop100
	i64.const	$push98=, 0
	i64.ne  	$push22=, $pop99, $pop98
	br_if   	0, $pop22
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push27=, 32
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 0($pop28)
	i32.const	$push23=, 28
	i32.add 	$push24=, $1, $pop23
	i32.load8_u	$push108=, 0($pop24)
	tee_local	$push107=, $2=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push26=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push25=, $2, $pop105
	i32.select	$push104=, $pop29, $pop26, $pop25
	tee_local	$push103=, $2=, $pop104
	i32.eqz 	$push162=, $pop103
	br_if   	0, $pop162
	i32.add 	$push110=, $2, $4
	tee_local	$push109=, $4=, $pop110
	i32.store	0($0), $pop109
.LBB45_8:
	end_block
	i32.const	$push32=, 44
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 0($pop33)
	i32.load8_u	$push114=, 40($1)
	tee_local	$push113=, $2=, $pop114
	i32.const	$push112=, 1
	i32.shr_u	$push31=, $pop113, $pop112
	i32.const	$push111=, 1
	i32.and 	$push30=, $2, $pop111
	i32.select	$push35=, $pop34, $pop31, $pop30
	i64.extend_u/i32	$3=, $pop35
.LBB45_9:
	loop    	
	i32.const	$push119=, 1
	i32.add 	$4=, $4, $pop119
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $3, $pop118
	tee_local	$push116=, $3=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push36=, $pop116, $pop115
	br_if   	0, $pop36
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push41=, 44
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 0($pop42)
	i32.const	$push37=, 40
	i32.add 	$push38=, $1, $pop37
	i32.load8_u	$push125=, 0($pop38)
	tee_local	$push124=, $2=, $pop125
	i32.const	$push123=, 1
	i32.shr_u	$push40=, $pop124, $pop123
	i32.const	$push122=, 1
	i32.and 	$push39=, $2, $pop122
	i32.select	$push121=, $pop43, $pop40, $pop39
	tee_local	$push120=, $2=, $pop121
	i32.eqz 	$push163=, $pop120
	br_if   	0, $pop163
	i32.add 	$push127=, $2, $4
	tee_local	$push126=, $4=, $pop127
	i32.store	0($0), $pop126
.LBB45_12:
	end_block
	i32.const	$push46=, 56
	i32.add 	$push47=, $1, $pop46
	i32.load	$push48=, 0($pop47)
	i32.load8_u	$push131=, 52($1)
	tee_local	$push130=, $2=, $pop131
	i32.const	$push129=, 1
	i32.shr_u	$push45=, $pop130, $pop129
	i32.const	$push128=, 1
	i32.and 	$push44=, $2, $pop128
	i32.select	$push49=, $pop48, $pop45, $pop44
	i64.extend_u/i32	$3=, $pop49
.LBB45_13:
	loop    	
	i32.const	$push136=, 1
	i32.add 	$4=, $4, $pop136
	i64.const	$push135=, 7
	i64.shr_u	$push134=, $3, $pop135
	tee_local	$push133=, $3=, $pop134
	i64.const	$push132=, 0
	i64.ne  	$push50=, $pop133, $pop132
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 0($pop56)
	i32.const	$push51=, 52
	i32.add 	$push52=, $1, $pop51
	i32.load8_u	$push142=, 0($pop52)
	tee_local	$push141=, $2=, $pop142
	i32.const	$push140=, 1
	i32.shr_u	$push54=, $pop141, $pop140
	i32.const	$push139=, 1
	i32.and 	$push53=, $2, $pop139
	i32.select	$push138=, $pop57, $pop54, $pop53
	tee_local	$push137=, $2=, $pop138
	i32.eqz 	$push164=, $pop137
	br_if   	0, $pop164
	i32.add 	$push144=, $2, $4
	tee_local	$push143=, $4=, $pop144
	i32.store	0($0), $pop143
.LBB45_16:
	end_block
	i32.const	$push60=, 68
	i32.add 	$push61=, $1, $pop60
	i32.load	$push62=, 0($pop61)
	i32.load8_u	$push148=, 64($1)
	tee_local	$push147=, $2=, $pop148
	i32.const	$push146=, 1
	i32.shr_u	$push59=, $pop147, $pop146
	i32.const	$push145=, 1
	i32.and 	$push58=, $2, $pop145
	i32.select	$push63=, $pop62, $pop59, $pop58
	i64.extend_u/i32	$3=, $pop63
.LBB45_17:
	loop    	
	i32.const	$push153=, 1
	i32.add 	$4=, $4, $pop153
	i64.const	$push152=, 7
	i64.shr_u	$push151=, $3, $pop152
	tee_local	$push150=, $3=, $pop151
	i64.const	$push149=, 0
	i64.ne  	$push64=, $pop150, $pop149
	br_if   	0, $pop64
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push70=, 68
	i32.add 	$push71=, $1, $pop70
	i32.load	$push72=, 0($pop71)
	i32.const	$push65=, 64
	i32.add 	$push66=, $1, $pop65
	i32.load8_u	$push158=, 0($pop66)
	tee_local	$push157=, $1=, $pop158
	i32.const	$push67=, 1
	i32.shr_u	$push69=, $pop157, $pop67
	i32.const	$push156=, 1
	i32.and 	$push68=, $1, $pop156
	i32.select	$push155=, $pop72, $pop69, $pop68
	tee_local	$push154=, $1=, $pop155
	i32.eqz 	$push165=, $pop154
	br_if   	0, $pop165
	i32.add 	$push160=, $1, $4
	tee_local	$push159=, $4=, $pop160
	i32.store	0($0), $pop159
.LBB45_20:
	end_block
	i32.const	$push73=, 8
	i32.add 	$push74=, $4, $pop73
	i32.store	0($0), $pop74
	copy_local	$push166=, $0
	.endfunc
.Lfunc_end45:
	.size	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE, .Lfunc_end45-_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11scenic_infoE

	.section	.text._ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE
	.weak	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE
	.type	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE,@function
_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 4($0)
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_s	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.load	$push34=, 4($0)
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop36, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end46:
	.size	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE, .Lfunc_end46-_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11scenic_infoE

	.section	.text._ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 48
	i32.sub 	$push87=, $pop67, $pop68
	tee_local	$push86=, $9=, $pop87
	copy_local	$8=, $pop86
	i32.const	$push69=, 0
	i32.store	__stack_pointer($pop69), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push85=, 0($pop3)
	tee_local	$push84=, $7=, $pop85
	i32.load	$push83=, 24($0)
	tee_local	$push82=, $2=, $pop83
	i32.eq  	$push4=, $pop84, $pop82
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push88=, -24
	i32.add 	$6=, $7, $pop88
.LBB47_2:
	loop    	
	i32.const	$push89=, 16
	i32.add 	$push6=, $6, $pop89
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push93=, -24
	i32.add 	$push92=, $6, $pop93
	tee_local	$push91=, $4=, $pop92
	copy_local	$6=, $pop91
	i32.add 	$push9=, $4, $3
	i32.const	$push90=, -24
	i32.ne  	$push10=, $pop9, $pop90
	br_if   	0, $pop10
.LBB47_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB47_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push96=, 0
	i32.call	$push95=, db_get_i64@FUNCTION, $1, $pop14, $pop96
	tee_local	$push94=, $6=, $pop95
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop94, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.8
	call    	kcwio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB47_8:
	end_block
	i32.const	$push65=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push98=, $9, $pop25
	tee_local	$push97=, $4=, $pop98
	copy_local	$push81=, $pop97
	i32.store	__stack_pointer($pop65), $pop81
.LBB47_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB47_11:
	end_block
	i32.const	$push29=, 104
	i32.call	$push120=, _Znwj@FUNCTION, $pop29
	tee_local	$push119=, $6=, $pop120
	i64.const	$push30=, 0
	i64.store	8($pop119), $pop30
	i64.const	$push118=, 0
	i64.store	16($6):p2align=2, $pop118
	i64.const	$push117=, 0
	i64.store	24($6):p2align=2, $pop117
	i64.const	$push116=, 0
	i64.store	32($6):p2align=2, $pop116
	i64.const	$push115=, 0
	i64.store	40($6):p2align=2, $pop115
	i32.const	$push114=, 0
	i32.store	48($6), $pop114
	i32.const	$push113=, 0
	i32.store	52($6), $pop113
	i32.const	$push112=, 0
	i32.store	56($6), $pop112
	i32.const	$push111=, 0
	i32.store	60($6), $pop111
	i32.const	$push110=, 0
	i32.store	64($6), $pop110
	i32.const	$push109=, 0
	i32.store	68($6), $pop109
	i32.const	$push108=, 0
	i32.store	72($6), $pop108
	i64.const	$push107=, 0
	i64.store	80($6), $pop107
	i32.store	88($6), $0
	i32.const	$push73=, 32
	i32.add 	$push74=, $8, $pop73
	i32.call	$drop=, _ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE@FUNCTION, $pop74, $6
	i32.store	92($6), $1
	i32.store	24($8), $6
	i64.load	$push106=, 8($6)
	tee_local	$push105=, $5=, $pop106
	i64.store	16($8), $pop105
	i32.load	$push104=, 92($6)
	tee_local	$push103=, $7=, $pop104
	i32.store	12($8), $pop103
	block   	
	block   	
	i32.const	$push34=, 28
	i32.add 	$push102=, $0, $pop34
	tee_local	$push101=, $1=, $pop102
	i32.load	$push100=, 0($pop101)
	tee_local	$push99=, $4=, $pop100
	i32.const	$push31=, 32
	i32.add 	$push32=, $0, $pop31
	i32.load	$push33=, 0($pop32)
	i32.ge_u	$push35=, $pop99, $pop33
	br_if   	0, $pop35
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push121=, 0
	i32.store	24($8), $pop121
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB47_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push75=, 24
	i32.add 	$push76=, $8, $pop75
	i32.const	$push77=, 16
	i32.add 	$push78=, $8, $pop77
	i32.const	$push79=, 12
	i32.add 	$push80=, $8, $pop79
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop76, $pop78, $pop80
.LBB47_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push126=, $4
	br_if   	0, $pop126
	block   	
	i32.load8_u	$push39=, 64($4)
	i32.const	$push122=, 1
	i32.and 	$push40=, $pop39, $pop122
	i32.eqz 	$push127=, $pop40
	br_if   	0, $pop127
	i32.const	$push41=, 72
	i32.add 	$push42=, $4, $pop41
	i32.load	$push43=, 0($pop42)
	call    	_ZdlPv@FUNCTION, $pop43
.LBB47_17:
	end_block
	block   	
	i32.load8_u	$push44=, 52($4)
	i32.const	$push123=, 1
	i32.and 	$push45=, $pop44, $pop123
	i32.eqz 	$push128=, $pop45
	br_if   	0, $pop128
	i32.const	$push46=, 60
	i32.add 	$push47=, $4, $pop46
	i32.load	$push48=, 0($pop47)
	call    	_ZdlPv@FUNCTION, $pop48
.LBB47_19:
	end_block
	block   	
	i32.load8_u	$push49=, 40($4)
	i32.const	$push124=, 1
	i32.and 	$push50=, $pop49, $pop124
	i32.eqz 	$push129=, $pop50
	br_if   	0, $pop129
	i32.const	$push51=, 48
	i32.add 	$push52=, $4, $pop51
	i32.load	$push53=, 0($pop52)
	call    	_ZdlPv@FUNCTION, $pop53
.LBB47_21:
	end_block
	block   	
	i32.load8_u	$push54=, 28($4)
	i32.const	$push125=, 1
	i32.and 	$push55=, $pop54, $pop125
	i32.eqz 	$push130=, $pop55
	br_if   	0, $pop130
	i32.const	$push56=, 36
	i32.add 	$push57=, $4, $pop56
	i32.load	$push58=, 0($pop57)
	call    	_ZdlPv@FUNCTION, $pop58
.LBB47_23:
	end_block
	block   	
	i32.load8_u	$push59=, 16($4)
	i32.const	$push60=, 1
	i32.and 	$push61=, $pop59, $pop60
	i32.eqz 	$push131=, $pop61
	br_if   	0, $pop131
	i32.const	$push62=, 24
	i32.add 	$push63=, $4, $pop62
	i32.load	$push64=, 0($pop63)
	call    	_ZdlPv@FUNCTION, $pop64
.LBB47_25:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB47_26:
	end_block
	i32.const	$push72=, 0
	i32.const	$push70=, 48
	i32.add 	$push71=, $8, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	copy_local	$push132=, $6
	.endfunc
.Lfunc_end47:
	.size	_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl, .Lfunc_end47-_ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv,"axG",@progbits,_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv,comdat
	.hidden	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv
	.weak	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv
	.type	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv,@function
_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push34=, $pop21, $pop22
	tee_local	$push33=, $2=, $pop34
	i32.store	__stack_pointer($pop23), $pop33
	block   	
	block   	
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push44=, $pop31
	br_if   	0, $pop44
	i32.load	$push0=, 92($1)
	i32.const	$push29=, 8
	i32.add 	$push30=, $2, $pop29
	i32.call	$push36=, db_previous_i64@FUNCTION, $pop0, $pop30
	tee_local	$push35=, $1=, $pop36
	i32.const	$push1=, 31
	i32.shr_u	$push2=, $pop35, $pop1
	i32.const	$push3=, 1
	i32.xor 	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.13
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	br      	1
.LBB48_2:
	end_block
	i32.load	$push43=, 0($0)
	tee_local	$push42=, $1=, $pop43
	i64.load	$push7=, 0($pop42)
	i64.load	$push6=, 8($1)
	i64.const	$push8=, -4461599245262127104
	i32.call	$push41=, db_end_i64@FUNCTION, $pop7, $pop6, $pop8
	tee_local	$push40=, $1=, $pop41
	i32.const	$push9=, -1
	i32.ne  	$push10=, $pop40, $pop9
	i32.const	$push11=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push27=, 8
	i32.add 	$push28=, $2, $pop27
	i32.call	$push39=, db_previous_i64@FUNCTION, $1, $pop28
	tee_local	$push38=, $1=, $pop39
	i32.const	$push12=, 31
	i32.shr_u	$push13=, $pop38, $pop12
	i32.const	$push14=, 1
	i32.xor 	$push15=, $pop13, $pop14
	i32.const	$push37=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop15, $pop37
.LBB48_3:
	end_block
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($0)
	i32.call	$push19=, _ZNK5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop18, $1
	i32.store	0($pop17), $pop19
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	copy_local	$push45=, $0
	.endfunc
.Lfunc_end48:
	.size	_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv, .Lfunc_end48-_ZN5kcwio11multi_indexILy13985144828447424512EN9commodity11scenic_infoEJEE14const_iteratormmEv

	.section	.text._ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE,"axG",@progbits,_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE,comdat
	.hidden	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE
	.weak	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE
	.type	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE,@function
_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_u	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.load	$push13=, 4($0)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_u	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.load	$push34=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end49:
	.size	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE, .Lfunc_end49-_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11scenic_infoE

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i32
	i32.const	$push29=, 0
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 80
	i32.sub 	$push51=, $pop27, $pop28
	tee_local	$push50=, $3=, $pop51
	i32.store	__stack_pointer($pop29), $pop50
	i64.load	$2=, 0($1)
	i32.const	$push33=, 64
	i32.add 	$push34=, $3, $pop33
	i32.const	$push0=, 8
	i32.add 	$push1=, $1, $pop0
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop34, $pop1
	i32.const	$push35=, 48
	i32.add 	$push36=, $3, $pop35
	i32.const	$push2=, 20
	i32.add 	$push3=, $1, $pop2
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop36, $pop3
	i32.const	$push37=, 32
	i32.add 	$push38=, $3, $pop37
	i32.const	$push4=, 32
	i32.add 	$push5=, $1, $pop4
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop38, $pop5
	i32.const	$push39=, 16
	i32.add 	$push40=, $3, $pop39
	i32.const	$push6=, 44
	i32.add 	$push7=, $1, $pop6
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop40, $pop7
	i32.const	$push8=, 56
	i32.add 	$push9=, $1, $pop8
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $3, $pop9
	i32.const	$push41=, 64
	i32.add 	$push42=, $3, $pop41
	i32.const	$push43=, 48
	i32.add 	$push44=, $3, $pop43
	i32.const	$push45=, 32
	i32.add 	$push46=, $3, $pop45
	i32.const	$push47=, 16
	i32.add 	$push48=, $3, $pop47
	call    	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_@FUNCTION, $0, $2, $pop42, $pop44, $pop46, $pop48, $3
	block   	
	i32.load8_u	$push10=, 0($3)
	i32.const	$push49=, 1
	i32.and 	$push11=, $pop10, $pop49
	i32.eqz 	$push55=, $pop11
	br_if   	0, $pop55
	i32.load	$push12=, 8($3)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB50_2:
	end_block
	block   	
	i32.load8_u	$push13=, 16($3)
	i32.const	$push52=, 1
	i32.and 	$push14=, $pop13, $pop52
	i32.eqz 	$push56=, $pop14
	br_if   	0, $pop56
	i32.load	$push15=, 24($3)
	call    	_ZdlPv@FUNCTION, $pop15
.LBB50_4:
	end_block
	block   	
	i32.load8_u	$push16=, 32($3)
	i32.const	$push53=, 1
	i32.and 	$push17=, $pop16, $pop53
	i32.eqz 	$push57=, $pop17
	br_if   	0, $pop57
	i32.load	$push18=, 40($3)
	call    	_ZdlPv@FUNCTION, $pop18
.LBB50_6:
	end_block
	block   	
	i32.load8_u	$push19=, 48($3)
	i32.const	$push54=, 1
	i32.and 	$push20=, $pop19, $pop54
	i32.eqz 	$push58=, $pop20
	br_if   	0, $pop58
	i32.load	$push21=, 56($3)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB50_8:
	end_block
	block   	
	i32.load8_u	$push23=, 64($3)
	i32.const	$push22=, 1
	i32.and 	$push24=, $pop23, $pop22
	i32.eqz 	$push59=, $pop24
	br_if   	0, $pop59
	i32.load	$push25=, 72($3)
	call    	_ZdlPv@FUNCTION, $pop25
.LBB50_10:
	end_block
	i32.const	$push32=, 0
	i32.const	$push30=, 80
	i32.add 	$push31=, $3, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	.endfunc
.Lfunc_end50:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end50-_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_SC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_SC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_,"axG",@progbits,_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_,comdat
	.hidden	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_
	.weak	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_
	.type	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_,@function
_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_:
	.param  	i32, i64, i32, i32, i32, i32, i32
	.local  	i32, i32, i32
	i32.const	$push26=, 0
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 80
	i32.sub 	$push52=, $pop24, $pop25
	tee_local	$push51=, $9=, $pop52
	i32.store	__stack_pointer($pop26), $pop51
	i32.load	$push2=, 0($0)
	i32.load	$push3=, 0($pop2)
	i32.load	$push50=, 4($0)
	tee_local	$push49=, $0=, $pop50
	i32.load	$push48=, 4($pop49)
	tee_local	$push47=, $8=, $pop48
	i32.const	$push0=, 1
	i32.shr_s	$push1=, $pop47, $pop0
	i32.add 	$7=, $pop3, $pop1
	i32.load	$0=, 0($0)
	block   	
	i32.const	$push46=, 1
	i32.and 	$push4=, $8, $pop46
	i32.eqz 	$push57=, $pop4
	br_if   	0, $pop57
	i32.load	$push5=, 0($7)
	i32.add 	$push6=, $pop5, $0
	i32.load	$0=, 0($pop6)
.LBB51_2:
	end_block
	i32.const	$push30=, 64
	i32.add 	$push31=, $9, $pop30
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop31, $2
	i32.const	$push32=, 48
	i32.add 	$push33=, $9, $pop32
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop33, $3
	i32.const	$push34=, 32
	i32.add 	$push35=, $9, $pop34
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop35, $4
	i32.const	$push36=, 16
	i32.add 	$push37=, $9, $pop36
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop37, $5
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $9, $6
	i32.const	$push38=, 64
	i32.add 	$push39=, $9, $pop38
	i32.const	$push40=, 48
	i32.add 	$push41=, $9, $pop40
	i32.const	$push42=, 32
	i32.add 	$push43=, $9, $pop42
	i32.const	$push44=, 16
	i32.add 	$push45=, $9, $pop44
	call_indirect	$7, $1, $pop39, $pop41, $pop43, $pop45, $9, $0
	block   	
	i32.load8_u	$push7=, 0($9)
	i32.const	$push53=, 1
	i32.and 	$push8=, $pop7, $pop53
	i32.eqz 	$push58=, $pop8
	br_if   	0, $pop58
	i32.load	$push9=, 8($9)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB51_4:
	end_block
	block   	
	i32.load8_u	$push10=, 16($9)
	i32.const	$push54=, 1
	i32.and 	$push11=, $pop10, $pop54
	i32.eqz 	$push59=, $pop11
	br_if   	0, $pop59
	i32.load	$push12=, 24($9)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB51_6:
	end_block
	block   	
	i32.load8_u	$push13=, 32($9)
	i32.const	$push55=, 1
	i32.and 	$push14=, $pop13, $pop55
	i32.eqz 	$push60=, $pop14
	br_if   	0, $pop60
	i32.load	$push15=, 40($9)
	call    	_ZdlPv@FUNCTION, $pop15
.LBB51_8:
	end_block
	block   	
	i32.load8_u	$push16=, 48($9)
	i32.const	$push56=, 1
	i32.and 	$push17=, $pop16, $pop56
	i32.eqz 	$push61=, $pop17
	br_if   	0, $pop61
	i32.load	$push18=, 56($9)
	call    	_ZdlPv@FUNCTION, $pop18
.LBB51_10:
	end_block
	block   	
	i32.load8_u	$push20=, 64($9)
	i32.const	$push19=, 1
	i32.and 	$push21=, $pop20, $pop19
	i32.eqz 	$push62=, $pop21
	br_if   	0, $pop62
	i32.load	$push22=, 72($9)
	call    	_ZdlPv@FUNCTION, $pop22
.LBB51_12:
	end_block
	i32.const	$push29=, 0
	i32.const	$push27=, 80
	i32.add 	$push28=, $9, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	.endfunc
.Lfunc_end51:
	.size	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_, .Lfunc_end51-_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_S8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_S8_S8_EEEDaSH_

	.section	.text._ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.weak	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.type	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,@function
_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push45=, 0
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push82=, $pop43, $pop44
	tee_local	$push81=, $7=, $pop82
	i32.store	__stack_pointer($pop45), $pop81
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.6
	call    	kcwio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push49=, 40
	i32.add 	$push50=, $7, $pop49
	i32.store	24($7), $pop50
	i32.const	$push4=, 104
	i32.call	$push80=, _Znwj@FUNCTION, $pop4
	tee_local	$push79=, $3=, $pop80
	i64.const	$push5=, 0
	i64.store	8($pop79), $pop5
	i64.const	$push78=, 0
	i64.store	16($3):p2align=2, $pop78
	i64.const	$push77=, 0
	i64.store	24($3):p2align=2, $pop77
	i64.const	$push76=, 0
	i64.store	32($3):p2align=2, $pop76
	i64.const	$push75=, 0
	i64.store	40($3):p2align=2, $pop75
	i32.const	$push74=, 0
	i32.store	48($3), $pop74
	i32.const	$push73=, 0
	i32.store	52($3), $pop73
	i32.const	$push72=, 0
	i32.store	56($3), $pop72
	i32.const	$push71=, 0
	i32.store	60($3), $pop71
	i32.const	$push70=, 0
	i32.store	64($3), $pop70
	i32.const	$push69=, 0
	i32.store	68($3), $pop69
	i32.const	$push68=, 0
	i32.store	72($3), $pop68
	i64.const	$push67=, 0
	i64.store	80($3), $pop67
	i32.store	88($3), $1
	i32.const	$push51=, 16
	i32.add 	$push52=, $7, $pop51
	call    	_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_@FUNCTION, $pop52, $3
	i32.store	32($7), $3
	i64.load	$push66=, 8($3)
	tee_local	$push65=, $2=, $pop66
	i64.store	16($7), $pop65
	i32.load	$push64=, 92($3)
	tee_local	$push63=, $4=, $pop64
	i32.store	12($7), $pop63
	block   	
	block   	
	i32.const	$push9=, 28
	i32.add 	$push62=, $1, $pop9
	tee_local	$push61=, $6=, $pop62
	i32.load	$push60=, 0($pop61)
	tee_local	$push59=, $5=, $pop60
	i32.const	$push6=, 32
	i32.add 	$push7=, $1, $pop6
	i32.load	$push8=, 0($pop7)
	i32.ge_u	$push10=, $pop59, $pop8
	br_if   	0, $pop10
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push83=, 0
	i32.store	32($7), $pop83
	i32.store	0($5), $3
	i32.const	$push13=, 24
	i32.add 	$push14=, $5, $pop13
	i32.store	0($6), $pop14
	br      	1
.LBB52_2:
	end_block
	i32.const	$push11=, 24
	i32.add 	$push12=, $1, $pop11
	i32.const	$push53=, 32
	i32.add 	$push54=, $7, $pop53
	i32.const	$push55=, 16
	i32.add 	$push56=, $7, $pop55
	i32.const	$push57=, 12
	i32.add 	$push58=, $7, $pop57
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop12, $pop54, $pop56, $pop58
.LBB52_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push15=, 0
	i32.store	32($7), $pop15
	block   	
	i32.eqz 	$push88=, $3
	br_if   	0, $pop88
	block   	
	i32.load8_u	$push16=, 64($3)
	i32.const	$push84=, 1
	i32.and 	$push17=, $pop16, $pop84
	i32.eqz 	$push89=, $pop17
	br_if   	0, $pop89
	i32.const	$push18=, 72
	i32.add 	$push19=, $3, $pop18
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB52_6:
	end_block
	block   	
	i32.load8_u	$push21=, 52($3)
	i32.const	$push85=, 1
	i32.and 	$push22=, $pop21, $pop85
	i32.eqz 	$push90=, $pop22
	br_if   	0, $pop90
	i32.const	$push23=, 60
	i32.add 	$push24=, $3, $pop23
	i32.load	$push25=, 0($pop24)
	call    	_ZdlPv@FUNCTION, $pop25
.LBB52_8:
	end_block
	block   	
	i32.load8_u	$push26=, 40($3)
	i32.const	$push86=, 1
	i32.and 	$push27=, $pop26, $pop86
	i32.eqz 	$push91=, $pop27
	br_if   	0, $pop91
	i32.const	$push28=, 48
	i32.add 	$push29=, $3, $pop28
	i32.load	$push30=, 0($pop29)
	call    	_ZdlPv@FUNCTION, $pop30
.LBB52_10:
	end_block
	block   	
	i32.load8_u	$push31=, 28($3)
	i32.const	$push87=, 1
	i32.and 	$push32=, $pop31, $pop87
	i32.eqz 	$push92=, $pop32
	br_if   	0, $pop92
	i32.const	$push33=, 36
	i32.add 	$push34=, $3, $pop33
	i32.load	$push35=, 0($pop34)
	call    	_ZdlPv@FUNCTION, $pop35
.LBB52_12:
	end_block
	block   	
	i32.load8_u	$push36=, 16($3)
	i32.const	$push37=, 1
	i32.and 	$push38=, $pop36, $pop37
	i32.eqz 	$push93=, $pop38
	br_if   	0, $pop93
	i32.const	$push39=, 24
	i32.add 	$push40=, $3, $pop39
	i32.load	$push41=, 0($pop40)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB52_14:
	end_block
	call    	_ZdlPv@FUNCTION, $3
.LBB52_15:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $7, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	.endfunc
.Lfunc_end52:
	.size	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_, .Lfunc_end52-_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_

	.section	.text._ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $1=, $pop25
	i32.eqz 	$push42=, $pop24
	br_if   	0, $pop42
	block   	
	block   	
	i32.load	$push27=, 4($0)
	tee_local	$push26=, $3=, $pop27
	i32.eq  	$push0=, $pop26, $1
	br_if   	0, $pop0
.LBB53_3:
	loop    	
	i32.const	$push31=, -24
	i32.add 	$push30=, $3, $pop31
	tee_local	$push29=, $3=, $pop30
	i32.load	$2=, 0($pop29)
	i32.const	$push28=, 0
	i32.store	0($3), $pop28
	block   	
	i32.eqz 	$push43=, $2
	br_if   	0, $pop43
	block   	
	i32.load8_u	$push1=, 64($2)
	i32.const	$push32=, 1
	i32.and 	$push2=, $pop1, $pop32
	i32.eqz 	$push44=, $pop2
	br_if   	0, $pop44
	i32.const	$push33=, 72
	i32.add 	$push3=, $2, $pop33
	i32.load	$push4=, 0($pop3)
	call    	_ZdlPv@FUNCTION, $pop4
.LBB53_6:
	end_block
	block   	
	i32.load8_u	$push5=, 52($2)
	i32.const	$push34=, 1
	i32.and 	$push6=, $pop5, $pop34
	i32.eqz 	$push45=, $pop6
	br_if   	0, $pop45
	i32.const	$push35=, 60
	i32.add 	$push7=, $2, $pop35
	i32.load	$push8=, 0($pop7)
	call    	_ZdlPv@FUNCTION, $pop8
.LBB53_8:
	end_block
	block   	
	i32.load8_u	$push9=, 40($2)
	i32.const	$push36=, 1
	i32.and 	$push10=, $pop9, $pop36
	i32.eqz 	$push46=, $pop10
	br_if   	0, $pop46
	i32.const	$push37=, 48
	i32.add 	$push11=, $2, $pop37
	i32.load	$push12=, 0($pop11)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB53_10:
	end_block
	block   	
	i32.load8_u	$push13=, 28($2)
	i32.const	$push38=, 1
	i32.and 	$push14=, $pop13, $pop38
	i32.eqz 	$push47=, $pop14
	br_if   	0, $pop47
	i32.const	$push39=, 36
	i32.add 	$push15=, $2, $pop39
	i32.load	$push16=, 0($pop15)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB53_12:
	end_block
	block   	
	i32.load8_u	$push17=, 16($2)
	i32.const	$push40=, 1
	i32.and 	$push18=, $pop17, $pop40
	i32.eqz 	$push48=, $pop18
	br_if   	0, $pop48
	i32.const	$push41=, 24
	i32.add 	$push19=, $2, $pop41
	i32.load	$push20=, 0($pop19)
	call    	_ZdlPv@FUNCTION, $pop20
.LBB53_14:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB53_15:
	end_block
	i32.ne  	$push21=, $1, $3
	br_if   	0, $pop21
	end_loop
	i32.load	$2=, 0($0)
	br      	1
.LBB53_17:
	end_block
	copy_local	$2=, $1
.LBB53_18:
	end_block
	i32.const	$push22=, 4
	i32.add 	$push23=, $0, $pop22
	i32.store	0($pop23), $1
	call    	_ZdlPv@FUNCTION, $2
.LBB53_19:
	end_block
	copy_local	$push49=, $0
	.endfunc
.Lfunc_end53:
	.size	_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev, .Lfunc_end53-_ZNSt3__113__vector_baseIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,"axG",@progbits,_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,comdat
	.hidden	_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.weak	_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.type	_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,@function
_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push40=, $pop28, $pop29
	tee_local	$push39=, $5=, $pop40
	i32.store	__stack_pointer($pop30), $pop39
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	call    	_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_@FUNCTION, $pop0, $1
	copy_local	$push38=, $5
	tee_local	$push37=, $6=, $pop38
	i32.const	$push1=, 0
	i32.store	0($pop37), $pop1
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE@FUNCTION, $6, $1
	block   	
	block   	
	i32.load	$push36=, 0($6)
	tee_local	$push35=, $3=, $pop36
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $pop35, $pop2
	br_if   	0, $pop3
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB54_2:
	end_block
	i32.const	$push26=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $3, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push42=, $5, $pop7
	tee_local	$push41=, $5=, $pop42
	copy_local	$push34=, $pop41
	i32.store	__stack_pointer($pop26), $pop34
.LBB54_3:
	end_block
	i32.store	4($6), $5
	i32.store	0($6), $5
	i32.add 	$push8=, $5, $3
	i32.store	8($6), $pop8
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE@FUNCTION, $6, $1
	i64.load	$push9=, 8($2)
	i64.const	$push12=, -4149656938784751616
	i32.load	$push10=, 8($0)
	i64.load	$push11=, 0($pop10)
	i64.load	$push44=, 8($1)
	tee_local	$push43=, $4=, $pop44
	i32.call	$push13=, db_store_i64@FUNCTION, $pop9, $pop12, $pop11, $pop43, $5, $3
	i32.store	92($1), $pop13
	block   	
	i32.const	$push14=, 513
	i32.lt_u	$push15=, $3, $pop14
	br_if   	0, $pop15
	call    	free@FUNCTION, $5
.LBB54_5:
	end_block
	block   	
	i64.load	$push16=, 16($2)
	i64.lt_u	$push17=, $4, $pop16
	br_if   	0, $pop17
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i64.const	$push22=, -2
	i64.const	$push20=, 1
	i64.add 	$push21=, $4, $pop20
	i64.const	$push18=, -3
	i64.gt_u	$push19=, $4, $pop18
	i64.select	$push23=, $pop22, $pop21, $pop19
	i64.store	0($pop25), $pop23
.LBB54_7:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $6, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end54:
	.size	_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_, .Lfunc_end54-_ZZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE7emplaceIZNS1_8setstoreEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_SB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_

	.section	.text._ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32
	i32.const	$push50=, 0
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 32
	i32.sub 	$push66=, $pop48, $pop49
	tee_local	$push65=, $10=, $pop66
	i32.store	__stack_pointer($pop50), $pop65
	block   	
	block   	
	i32.load	$push1=, 4($0)
	i32.load	$push64=, 0($0)
	tee_local	$push63=, $9=, $pop64
	i32.sub 	$push2=, $pop1, $pop63
	i32.const	$push62=, 24
	i32.div_s	$push61=, $pop2, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.const	$push3=, 1
	i32.add 	$push59=, $pop60, $pop3
	tee_local	$push58=, $8=, $pop59
	i32.const	$push4=, 178956971
	i32.ge_u	$push5=, $pop58, $pop4
	br_if   	0, $pop5
	i32.const	$push0=, 8
	i32.add 	$5=, $0, $pop0
	block   	
	block   	
	block   	
	i32.load	$push6=, 8($0)
	i32.sub 	$push7=, $pop6, $9
	i32.const	$push69=, 24
	i32.div_s	$push68=, $pop7, $pop69
	tee_local	$push67=, $9=, $pop68
	i32.const	$push8=, 89478485
	i32.ge_u	$push9=, $pop67, $pop8
	br_if   	0, $pop9
	i32.const	$push14=, 24
	i32.add 	$push15=, $10, $pop14
	i32.store	0($pop15), $5
	i32.const	$5=, 0
	i32.const	$push74=, 0
	i32.store	20($10), $pop74
	i32.const	$push18=, 20
	i32.add 	$7=, $10, $pop18
	i32.const	$push16=, 1
	i32.shl 	$push73=, $9, $pop16
	tee_local	$push72=, $9=, $pop73
	i32.lt_u	$push17=, $9, $8
	i32.select	$push71=, $8, $pop72, $pop17
	tee_local	$push70=, $9=, $pop71
	i32.eqz 	$push105=, $pop70
	br_if   	2, $pop105
	copy_local	$5=, $9
	br      	1
.LBB55_4:
	end_block
	i32.const	$push10=, 24
	i32.add 	$push11=, $10, $pop10
	i32.store	0($pop11), $5
	i32.const	$push12=, 0
	i32.store	20($10), $pop12
	i32.const	$push13=, 20
	i32.add 	$7=, $10, $pop13
	i32.const	$5=, 178956970
.LBB55_5:
	end_block
	i32.const	$push19=, 24
	i32.mul 	$push20=, $5, $pop19
	i32.call	$8=, _Znwj@FUNCTION, $pop20
	br      	2
.LBB55_6:
	end_block
	i32.const	$8=, 0
	br      	1
.LBB55_7:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB55_8:
	end_block
	i32.store	8($10), $8
	i32.const	$push21=, 24
	i32.mul 	$push22=, $4, $pop21
	i32.add 	$push87=, $8, $pop22
	tee_local	$push86=, $9=, $pop87
	i32.store	12($10), $pop86
	i32.const	$push85=, 24
	i32.mul 	$push23=, $5, $pop85
	i32.add 	$push84=, $8, $pop23
	tee_local	$push83=, $5=, $pop84
	i32.store	0($7), $pop83
	i32.load	$8=, 0($1)
	i32.const	$push82=, 0
	i32.store	0($1), $pop82
	i32.load	$1=, 0($3)
	i64.load	$6=, 0($2)
	i32.store	0($9), $8
	i64.store	8($9), $6
	i32.store	16($9), $1
	i32.const	$push81=, 24
	i32.add 	$push80=, $9, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.store	16($10), $pop79
	block   	
	i32.const	$push24=, 4
	i32.add 	$push25=, $0, $pop24
	i32.load	$push78=, 0($pop25)
	tee_local	$push77=, $8=, $pop78
	i32.load	$push76=, 0($0)
	tee_local	$push75=, $2=, $pop76
	i32.eq  	$push26=, $pop77, $pop75
	br_if   	0, $pop26
.LBB55_10:
	loop    	
	i32.const	$push101=, -24
	i32.add 	$push100=, $8, $pop101
	tee_local	$push99=, $5=, $pop100
	i32.load	$1=, 0($pop99)
	i32.const	$push98=, 0
	i32.store	0($5), $pop98
	i32.const	$push97=, -24
	i32.add 	$push27=, $9, $pop97
	i32.store	0($pop27), $1
	i32.const	$push96=, -8
	i32.add 	$push28=, $9, $pop96
	i32.const	$push95=, -8
	i32.add 	$push29=, $8, $pop95
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push94=, -12
	i32.add 	$push31=, $9, $pop94
	i32.const	$push93=, -12
	i32.add 	$push32=, $8, $pop93
	i32.load	$push33=, 0($pop32)
	i32.store	0($pop31), $pop33
	i32.const	$push92=, -16
	i32.add 	$push34=, $9, $pop92
	i32.const	$push91=, -16
	i32.add 	$push35=, $8, $pop91
	i32.load	$push36=, 0($pop35)
	i32.store	0($pop34), $pop36
	i32.load	$push37=, 12($10)
	i32.const	$push90=, -24
	i32.add 	$push89=, $pop37, $pop90
	tee_local	$push88=, $9=, $pop89
	i32.store	12($10), $pop88
	copy_local	$8=, $5
	i32.ne  	$push38=, $2, $5
	br_if   	0, $pop38
	end_loop
	i32.const	$push39=, 4
	i32.add 	$push40=, $0, $pop39
	i32.load	$8=, 0($pop40)
	i32.load	$5=, 0($7)
	i32.load	$2=, 0($0)
	i32.const	$push41=, 16
	i32.add 	$push42=, $10, $pop41
	i32.load	$1=, 0($pop42)
.LBB55_12:
	end_block
	i32.store	0($0), $9
	i32.const	$push43=, 4
	i32.add 	$push44=, $0, $pop43
	i32.store	0($pop44), $1
	i32.const	$push54=, 8
	i32.add 	$push55=, $10, $pop54
	i32.const	$push45=, 8
	i32.add 	$push46=, $pop55, $pop45
	i32.store	0($pop46), $8
	i32.const	$push104=, 8
	i32.add 	$push103=, $0, $pop104
	tee_local	$push102=, $9=, $pop103
	i32.load	$8=, 0($pop102)
	i32.store	0($9), $5
	i32.store	12($10), $2
	i32.store	0($7), $8
	i32.store	8($10), $2
	i32.const	$push56=, 8
	i32.add 	$push57=, $10, $pop56
	i32.call	$drop=, _ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev@FUNCTION, $pop57
	i32.const	$push53=, 0
	i32.const	$push51=, 32
	i32.add 	$push52=, $10, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	.endfunc
.Lfunc_end55:
	.size	_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end55-_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,"axG",@progbits,_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,comdat
	.hidden	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.weak	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev
	.type	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev,@function
_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	i32.load	$push26=, 8($0)
	tee_local	$push25=, $2=, $pop26
	i32.load	$push24=, 4($0)
	tee_local	$push23=, $1=, $pop24
	i32.eq  	$push0=, $pop25, $pop23
	br_if   	0, $pop0
	i32.const	$push1=, 8
	i32.add 	$4=, $0, $pop1
.LBB56_2:
	loop    	
	i32.const	$push30=, -24
	i32.add 	$push29=, $2, $pop30
	tee_local	$push28=, $3=, $pop29
	i32.store	0($4), $pop28
	i32.load	$2=, 0($3)
	i32.const	$push27=, 0
	i32.store	0($3), $pop27
	block   	
	i32.eqz 	$push45=, $2
	br_if   	0, $pop45
	block   	
	i32.load8_u	$push2=, 64($2)
	i32.const	$push31=, 1
	i32.and 	$push3=, $pop2, $pop31
	i32.eqz 	$push46=, $pop3
	br_if   	0, $pop46
	i32.const	$push32=, 72
	i32.add 	$push4=, $2, $pop32
	i32.load	$push5=, 0($pop4)
	call    	_ZdlPv@FUNCTION, $pop5
.LBB56_5:
	end_block
	block   	
	i32.load8_u	$push6=, 52($2)
	i32.const	$push33=, 1
	i32.and 	$push7=, $pop6, $pop33
	i32.eqz 	$push47=, $pop7
	br_if   	0, $pop47
	i32.const	$push34=, 60
	i32.add 	$push8=, $2, $pop34
	i32.load	$push9=, 0($pop8)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB56_7:
	end_block
	block   	
	i32.load8_u	$push10=, 40($2)
	i32.const	$push35=, 1
	i32.and 	$push11=, $pop10, $pop35
	i32.eqz 	$push48=, $pop11
	br_if   	0, $pop48
	i32.const	$push36=, 48
	i32.add 	$push12=, $2, $pop36
	i32.load	$push13=, 0($pop12)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB56_9:
	end_block
	block   	
	i32.load8_u	$push14=, 28($2)
	i32.const	$push37=, 1
	i32.and 	$push15=, $pop14, $pop37
	i32.eqz 	$push49=, $pop15
	br_if   	0, $pop49
	i32.const	$push38=, 36
	i32.add 	$push16=, $2, $pop38
	i32.load	$push17=, 0($pop16)
	call    	_ZdlPv@FUNCTION, $pop17
.LBB56_11:
	end_block
	block   	
	i32.load8_u	$push18=, 16($2)
	i32.const	$push39=, 1
	i32.and 	$push19=, $pop18, $pop39
	i32.eqz 	$push50=, $pop19
	br_if   	0, $pop50
	i32.const	$push40=, 24
	i32.add 	$push20=, $2, $pop40
	i32.load	$push21=, 0($pop20)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB56_13:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB56_14:
	end_block
	i32.load	$push42=, 0($4)
	tee_local	$push41=, $2=, $pop42
	i32.ne  	$push22=, $pop41, $1
	br_if   	0, $pop22
.LBB56_15:
	end_loop
	end_block
	block   	
	i32.load	$push44=, 0($0)
	tee_local	$push43=, $2=, $pop44
	i32.eqz 	$push51=, $pop43
	br_if   	0, $pop51
	call    	_ZdlPv@FUNCTION, $2
.LBB56_17:
	end_block
	copy_local	$push52=, $0
	.endfunc
.Lfunc_end56:
	.size	_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev, .Lfunc_end56-_ZNSt3__114__split_bufferIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrERNS_9allocatorIS6_EEED2Ev

	.section	.text._ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_,"axG",@progbits,_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_,comdat
	.hidden	_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_
	.weak	_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_
	.type	_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_,@function
_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32
	i32.const	$push41=, 0
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 16
	i32.sub 	$push52=, $pop39, $pop40
	tee_local	$push51=, $5=, $pop52
	i32.store	__stack_pointer($pop41), $pop51
	block   	
	i32.load	$push50=, 0($0)
	tee_local	$push49=, $2=, $pop50
	i64.load	$push48=, 16($pop49)
	tee_local	$push47=, $4=, $pop48
	i64.const	$push0=, -1
	i64.ne  	$push1=, $pop47, $pop0
	br_if   	0, $pop1
	i64.const	$4=, 0
	block   	
	i64.load	$push3=, 0($2)
	i64.load	$push2=, 8($2)
	i64.const	$push4=, -4149656938784751616
	i64.const	$push56=, 0
	i32.call	$push55=, db_lowerbound_i64@FUNCTION, $pop3, $pop2, $pop4, $pop56
	tee_local	$push54=, $3=, $pop55
	i32.const	$push53=, 0
	i32.lt_s	$push5=, $pop54, $pop53
	br_if   	0, $pop5
	i32.call	$drop=, _ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $3
	i32.const	$push59=, 0
	i32.store	12($5), $pop59
	i32.store	8($5), $2
	i64.const	$push12=, -2
	i32.const	$push45=, 8
	i32.add 	$push46=, $5, $pop45
	i32.call	$push6=, _ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv@FUNCTION, $pop46
	i32.load	$push7=, 4($pop6)
	i64.load	$push58=, 8($pop7)
	tee_local	$push57=, $4=, $pop58
	i64.const	$push10=, 1
	i64.add 	$push11=, $pop57, $pop10
	i64.const	$push8=, -3
	i64.gt_u	$push9=, $4, $pop8
	i64.select	$4=, $pop12, $pop11, $pop9
.LBB57_3:
	end_block
	i32.const	$push13=, 16
	i32.add 	$push14=, $2, $pop13
	i64.store	0($pop14), $4
.LBB57_4:
	end_block
	i64.const	$push15=, -2
	i64.lt_u	$push16=, $4, $pop15
	i32.const	$push17=, .L.str.7
	call    	kcwio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push18=, 16
	i32.add 	$push19=, $2, $pop18
	i64.load	$push20=, 0($pop19)
	i64.store	8($1), $pop20
	i32.load	$push21=, 4($0)
	i64.load	$push22=, 0($pop21)
	i64.store	0($1), $pop22
	i32.const	$push60=, 16
	i32.add 	$push23=, $1, $pop60
	i32.load	$push24=, 8($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop23, $pop24
	i32.const	$push25=, 28
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 12($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop26, $pop27
	i32.const	$push28=, 40
	i32.add 	$push29=, $1, $pop28
	i32.load	$push30=, 16($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop29, $pop30
	i32.const	$push31=, 52
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 20($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop32, $pop33
	i32.const	$push34=, 64
	i32.add 	$push35=, $1, $pop34
	i32.load	$push36=, 24($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop35, $pop36
	i64.call	$push37=, current_time@FUNCTION
	i64.store	80($1), $pop37
	i32.const	$push44=, 0
	i32.const	$push42=, 16
	i32.add 	$push43=, $5, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	.endfunc
.Lfunc_end57:
	.size	_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_, .Lfunc_end57-_ZZN9commodity8setstoreEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_S6_S6_ENKUlRNS_10store_infoEE_clES8_

	.section	.text._ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE
	.weak	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE
	.type	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE,@function
_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32
	i32.load	$push0=, 0($0)
	i32.const	$push1=, 16
	i32.add 	$push80=, $pop0, $pop1
	tee_local	$push79=, $4=, $pop80
	i32.store	0($0), $pop79
	i32.const	$push4=, 20
	i32.add 	$push5=, $1, $pop4
	i32.load	$push6=, 0($pop5)
	i32.load8_u	$push78=, 16($1)
	tee_local	$push77=, $2=, $pop78
	i32.const	$push76=, 1
	i32.shr_u	$push3=, $pop77, $pop76
	i32.const	$push75=, 1
	i32.and 	$push2=, $2, $pop75
	i32.select	$push7=, $pop6, $pop3, $pop2
	i64.extend_u/i32	$3=, $pop7
.LBB58_1:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$4=, $4, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $3, $pop84
	tee_local	$push82=, $3=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push8=, $pop82, $pop81
	br_if   	0, $pop8
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push13=, 20
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.const	$push9=, 16
	i32.add 	$push10=, $1, $pop9
	i32.load8_u	$push91=, 0($pop10)
	tee_local	$push90=, $2=, $pop91
	i32.const	$push89=, 1
	i32.shr_u	$push12=, $pop90, $pop89
	i32.const	$push88=, 1
	i32.and 	$push11=, $2, $pop88
	i32.select	$push87=, $pop15, $pop12, $pop11
	tee_local	$push86=, $2=, $pop87
	i32.eqz 	$push161=, $pop86
	br_if   	0, $pop161
	i32.add 	$push93=, $2, $4
	tee_local	$push92=, $4=, $pop93
	i32.store	0($0), $pop92
.LBB58_4:
	end_block
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.load8_u	$push97=, 28($1)
	tee_local	$push96=, $2=, $pop97
	i32.const	$push95=, 1
	i32.shr_u	$push17=, $pop96, $pop95
	i32.const	$push94=, 1
	i32.and 	$push16=, $2, $pop94
	i32.select	$push21=, $pop20, $pop17, $pop16
	i64.extend_u/i32	$3=, $pop21
.LBB58_5:
	loop    	
	i32.const	$push102=, 1
	i32.add 	$4=, $4, $pop102
	i64.const	$push101=, 7
	i64.shr_u	$push100=, $3, $pop101
	tee_local	$push99=, $3=, $pop100
	i64.const	$push98=, 0
	i64.ne  	$push22=, $pop99, $pop98
	br_if   	0, $pop22
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push27=, 32
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 0($pop28)
	i32.const	$push23=, 28
	i32.add 	$push24=, $1, $pop23
	i32.load8_u	$push108=, 0($pop24)
	tee_local	$push107=, $2=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push26=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push25=, $2, $pop105
	i32.select	$push104=, $pop29, $pop26, $pop25
	tee_local	$push103=, $2=, $pop104
	i32.eqz 	$push162=, $pop103
	br_if   	0, $pop162
	i32.add 	$push110=, $2, $4
	tee_local	$push109=, $4=, $pop110
	i32.store	0($0), $pop109
.LBB58_8:
	end_block
	i32.const	$push32=, 44
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 0($pop33)
	i32.load8_u	$push114=, 40($1)
	tee_local	$push113=, $2=, $pop114
	i32.const	$push112=, 1
	i32.shr_u	$push31=, $pop113, $pop112
	i32.const	$push111=, 1
	i32.and 	$push30=, $2, $pop111
	i32.select	$push35=, $pop34, $pop31, $pop30
	i64.extend_u/i32	$3=, $pop35
.LBB58_9:
	loop    	
	i32.const	$push119=, 1
	i32.add 	$4=, $4, $pop119
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $3, $pop118
	tee_local	$push116=, $3=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push36=, $pop116, $pop115
	br_if   	0, $pop36
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push41=, 44
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 0($pop42)
	i32.const	$push37=, 40
	i32.add 	$push38=, $1, $pop37
	i32.load8_u	$push125=, 0($pop38)
	tee_local	$push124=, $2=, $pop125
	i32.const	$push123=, 1
	i32.shr_u	$push40=, $pop124, $pop123
	i32.const	$push122=, 1
	i32.and 	$push39=, $2, $pop122
	i32.select	$push121=, $pop43, $pop40, $pop39
	tee_local	$push120=, $2=, $pop121
	i32.eqz 	$push163=, $pop120
	br_if   	0, $pop163
	i32.add 	$push127=, $2, $4
	tee_local	$push126=, $4=, $pop127
	i32.store	0($0), $pop126
.LBB58_12:
	end_block
	i32.const	$push46=, 56
	i32.add 	$push47=, $1, $pop46
	i32.load	$push48=, 0($pop47)
	i32.load8_u	$push131=, 52($1)
	tee_local	$push130=, $2=, $pop131
	i32.const	$push129=, 1
	i32.shr_u	$push45=, $pop130, $pop129
	i32.const	$push128=, 1
	i32.and 	$push44=, $2, $pop128
	i32.select	$push49=, $pop48, $pop45, $pop44
	i64.extend_u/i32	$3=, $pop49
.LBB58_13:
	loop    	
	i32.const	$push136=, 1
	i32.add 	$4=, $4, $pop136
	i64.const	$push135=, 7
	i64.shr_u	$push134=, $3, $pop135
	tee_local	$push133=, $3=, $pop134
	i64.const	$push132=, 0
	i64.ne  	$push50=, $pop133, $pop132
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 0($pop56)
	i32.const	$push51=, 52
	i32.add 	$push52=, $1, $pop51
	i32.load8_u	$push142=, 0($pop52)
	tee_local	$push141=, $2=, $pop142
	i32.const	$push140=, 1
	i32.shr_u	$push54=, $pop141, $pop140
	i32.const	$push139=, 1
	i32.and 	$push53=, $2, $pop139
	i32.select	$push138=, $pop57, $pop54, $pop53
	tee_local	$push137=, $2=, $pop138
	i32.eqz 	$push164=, $pop137
	br_if   	0, $pop164
	i32.add 	$push144=, $2, $4
	tee_local	$push143=, $4=, $pop144
	i32.store	0($0), $pop143
.LBB58_16:
	end_block
	i32.const	$push60=, 68
	i32.add 	$push61=, $1, $pop60
	i32.load	$push62=, 0($pop61)
	i32.load8_u	$push148=, 64($1)
	tee_local	$push147=, $2=, $pop148
	i32.const	$push146=, 1
	i32.shr_u	$push59=, $pop147, $pop146
	i32.const	$push145=, 1
	i32.and 	$push58=, $2, $pop145
	i32.select	$push63=, $pop62, $pop59, $pop58
	i64.extend_u/i32	$3=, $pop63
.LBB58_17:
	loop    	
	i32.const	$push153=, 1
	i32.add 	$4=, $4, $pop153
	i64.const	$push152=, 7
	i64.shr_u	$push151=, $3, $pop152
	tee_local	$push150=, $3=, $pop151
	i64.const	$push149=, 0
	i64.ne  	$push64=, $pop150, $pop149
	br_if   	0, $pop64
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push70=, 68
	i32.add 	$push71=, $1, $pop70
	i32.load	$push72=, 0($pop71)
	i32.const	$push65=, 64
	i32.add 	$push66=, $1, $pop65
	i32.load8_u	$push158=, 0($pop66)
	tee_local	$push157=, $1=, $pop158
	i32.const	$push67=, 1
	i32.shr_u	$push69=, $pop157, $pop67
	i32.const	$push156=, 1
	i32.and 	$push68=, $1, $pop156
	i32.select	$push155=, $pop72, $pop69, $pop68
	tee_local	$push154=, $1=, $pop155
	i32.eqz 	$push165=, $pop154
	br_if   	0, $pop165
	i32.add 	$push160=, $1, $4
	tee_local	$push159=, $4=, $pop160
	i32.store	0($0), $pop159
.LBB58_20:
	end_block
	i32.const	$push73=, 8
	i32.add 	$push74=, $4, $pop73
	i32.store	0($0), $pop74
	copy_local	$push166=, $0
	.endfunc
.Lfunc_end58:
	.size	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE, .Lfunc_end58-_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity10store_infoE

	.section	.text._ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE
	.weak	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE
	.type	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE,@function
_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 4($0)
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_s	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.load	$push34=, 4($0)
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop36, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end59:
	.size	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE, .Lfunc_end59-_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity10store_infoE

	.section	.text._ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 48
	i32.sub 	$push87=, $pop67, $pop68
	tee_local	$push86=, $9=, $pop87
	copy_local	$8=, $pop86
	i32.const	$push69=, 0
	i32.store	__stack_pointer($pop69), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push85=, 0($pop3)
	tee_local	$push84=, $7=, $pop85
	i32.load	$push83=, 24($0)
	tee_local	$push82=, $2=, $pop83
	i32.eq  	$push4=, $pop84, $pop82
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push88=, -24
	i32.add 	$6=, $7, $pop88
.LBB60_2:
	loop    	
	i32.const	$push89=, 16
	i32.add 	$push6=, $6, $pop89
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push93=, -24
	i32.add 	$push92=, $6, $pop93
	tee_local	$push91=, $4=, $pop92
	copy_local	$6=, $pop91
	i32.add 	$push9=, $4, $3
	i32.const	$push90=, -24
	i32.ne  	$push10=, $pop9, $pop90
	br_if   	0, $pop10
.LBB60_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB60_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push96=, 0
	i32.call	$push95=, db_get_i64@FUNCTION, $1, $pop14, $pop96
	tee_local	$push94=, $6=, $pop95
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop94, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.8
	call    	kcwio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB60_8:
	end_block
	i32.const	$push65=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push98=, $9, $pop25
	tee_local	$push97=, $4=, $pop98
	copy_local	$push81=, $pop97
	i32.store	__stack_pointer($pop65), $pop81
.LBB60_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB60_11:
	end_block
	i32.const	$push29=, 104
	i32.call	$push120=, _Znwj@FUNCTION, $pop29
	tee_local	$push119=, $6=, $pop120
	i64.const	$push30=, 0
	i64.store	8($pop119), $pop30
	i64.const	$push118=, 0
	i64.store	16($6):p2align=2, $pop118
	i64.const	$push117=, 0
	i64.store	24($6):p2align=2, $pop117
	i64.const	$push116=, 0
	i64.store	32($6):p2align=2, $pop116
	i64.const	$push115=, 0
	i64.store	40($6):p2align=2, $pop115
	i32.const	$push114=, 0
	i32.store	48($6), $pop114
	i32.const	$push113=, 0
	i32.store	52($6), $pop113
	i32.const	$push112=, 0
	i32.store	56($6), $pop112
	i32.const	$push111=, 0
	i32.store	60($6), $pop111
	i32.const	$push110=, 0
	i32.store	64($6), $pop110
	i32.const	$push109=, 0
	i32.store	68($6), $pop109
	i32.const	$push108=, 0
	i32.store	72($6), $pop108
	i64.const	$push107=, 0
	i64.store	80($6), $pop107
	i32.store	88($6), $0
	i32.const	$push73=, 32
	i32.add 	$push74=, $8, $pop73
	i32.call	$drop=, _ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE@FUNCTION, $pop74, $6
	i32.store	92($6), $1
	i32.store	24($8), $6
	i64.load	$push106=, 8($6)
	tee_local	$push105=, $5=, $pop106
	i64.store	16($8), $pop105
	i32.load	$push104=, 92($6)
	tee_local	$push103=, $7=, $pop104
	i32.store	12($8), $pop103
	block   	
	block   	
	i32.const	$push34=, 28
	i32.add 	$push102=, $0, $pop34
	tee_local	$push101=, $1=, $pop102
	i32.load	$push100=, 0($pop101)
	tee_local	$push99=, $4=, $pop100
	i32.const	$push31=, 32
	i32.add 	$push32=, $0, $pop31
	i32.load	$push33=, 0($pop32)
	i32.ge_u	$push35=, $pop99, $pop33
	br_if   	0, $pop35
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push121=, 0
	i32.store	24($8), $pop121
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB60_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push75=, 24
	i32.add 	$push76=, $8, $pop75
	i32.const	$push77=, 16
	i32.add 	$push78=, $8, $pop77
	i32.const	$push79=, 12
	i32.add 	$push80=, $8, $pop79
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop76, $pop78, $pop80
.LBB60_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push126=, $4
	br_if   	0, $pop126
	block   	
	i32.load8_u	$push39=, 64($4)
	i32.const	$push122=, 1
	i32.and 	$push40=, $pop39, $pop122
	i32.eqz 	$push127=, $pop40
	br_if   	0, $pop127
	i32.const	$push41=, 72
	i32.add 	$push42=, $4, $pop41
	i32.load	$push43=, 0($pop42)
	call    	_ZdlPv@FUNCTION, $pop43
.LBB60_17:
	end_block
	block   	
	i32.load8_u	$push44=, 52($4)
	i32.const	$push123=, 1
	i32.and 	$push45=, $pop44, $pop123
	i32.eqz 	$push128=, $pop45
	br_if   	0, $pop128
	i32.const	$push46=, 60
	i32.add 	$push47=, $4, $pop46
	i32.load	$push48=, 0($pop47)
	call    	_ZdlPv@FUNCTION, $pop48
.LBB60_19:
	end_block
	block   	
	i32.load8_u	$push49=, 40($4)
	i32.const	$push124=, 1
	i32.and 	$push50=, $pop49, $pop124
	i32.eqz 	$push129=, $pop50
	br_if   	0, $pop129
	i32.const	$push51=, 48
	i32.add 	$push52=, $4, $pop51
	i32.load	$push53=, 0($pop52)
	call    	_ZdlPv@FUNCTION, $pop53
.LBB60_21:
	end_block
	block   	
	i32.load8_u	$push54=, 28($4)
	i32.const	$push125=, 1
	i32.and 	$push55=, $pop54, $pop125
	i32.eqz 	$push130=, $pop55
	br_if   	0, $pop130
	i32.const	$push56=, 36
	i32.add 	$push57=, $4, $pop56
	i32.load	$push58=, 0($pop57)
	call    	_ZdlPv@FUNCTION, $pop58
.LBB60_23:
	end_block
	block   	
	i32.load8_u	$push59=, 16($4)
	i32.const	$push60=, 1
	i32.and 	$push61=, $pop59, $pop60
	i32.eqz 	$push131=, $pop61
	br_if   	0, $pop131
	i32.const	$push62=, 24
	i32.add 	$push63=, $4, $pop62
	i32.load	$push64=, 0($pop63)
	call    	_ZdlPv@FUNCTION, $pop64
.LBB60_25:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB60_26:
	end_block
	i32.const	$push72=, 0
	i32.const	$push70=, 48
	i32.add 	$push71=, $8, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	copy_local	$push132=, $6
	.endfunc
.Lfunc_end60:
	.size	_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl, .Lfunc_end60-_ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv,"axG",@progbits,_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv,comdat
	.hidden	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv
	.weak	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv
	.type	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv,@function
_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push34=, $pop21, $pop22
	tee_local	$push33=, $2=, $pop34
	i32.store	__stack_pointer($pop23), $pop33
	block   	
	block   	
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push44=, $pop31
	br_if   	0, $pop44
	i32.load	$push0=, 92($1)
	i32.const	$push29=, 8
	i32.add 	$push30=, $2, $pop29
	i32.call	$push36=, db_previous_i64@FUNCTION, $pop0, $pop30
	tee_local	$push35=, $1=, $pop36
	i32.const	$push1=, 31
	i32.shr_u	$push2=, $pop35, $pop1
	i32.const	$push3=, 1
	i32.xor 	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.13
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	br      	1
.LBB61_2:
	end_block
	i32.load	$push43=, 0($0)
	tee_local	$push42=, $1=, $pop43
	i64.load	$push7=, 0($pop42)
	i64.load	$push6=, 8($1)
	i64.const	$push8=, -4149656938784751616
	i32.call	$push41=, db_end_i64@FUNCTION, $pop7, $pop6, $pop8
	tee_local	$push40=, $1=, $pop41
	i32.const	$push9=, -1
	i32.ne  	$push10=, $pop40, $pop9
	i32.const	$push11=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push27=, 8
	i32.add 	$push28=, $2, $pop27
	i32.call	$push39=, db_previous_i64@FUNCTION, $1, $pop28
	tee_local	$push38=, $1=, $pop39
	i32.const	$push12=, 31
	i32.shr_u	$push13=, $pop38, $pop12
	i32.const	$push14=, 1
	i32.xor 	$push15=, $pop13, $pop14
	i32.const	$push37=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop15, $pop37
.LBB61_3:
	end_block
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($0)
	i32.call	$push19=, _ZNK5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop18, $1
	i32.store	0($pop17), $pop19
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	copy_local	$push45=, $0
	.endfunc
.Lfunc_end61:
	.size	_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv, .Lfunc_end61-_ZN5kcwio11multi_indexILy14297087134924800000EN9commodity10store_infoEJEE14const_iteratormmEv

	.section	.text._ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE,"axG",@progbits,_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE,comdat
	.hidden	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE
	.weak	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE
	.type	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE,@function
_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_u	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop11, $pop48
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.load	$push13=, 4($0)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push15=, $pop14, $pop45
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push44=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	tee_local	$push43=, $0=, $pop44
	i32.load	$push31=, 8($pop43)
	i32.load	$push30=, 4($0)
	i32.sub 	$push32=, $pop31, $pop30
	i32.const	$push42=, 7
	i32.gt_u	$push33=, $pop32, $pop42
	i32.const	$push41=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop33, $pop41
	i32.const	$push35=, 80
	i32.add 	$push36=, $1, $pop35
	i32.load	$push34=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop40
	i32.load	$push37=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop37, $pop39
	i32.store	4($0), $pop38
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end62:
	.size	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE, .Lfunc_end62-_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity10store_infoE

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$2=, 0($0)
	i32.load	$push44=, 0($1)
	tee_local	$push43=, $3=, $pop44
	i32.load	$push1=, 8($pop43)
	i32.load	$push0=, 4($3)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($3)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop6, $pop7
	i32.load	$push8=, 4($3)
	i32.const	$push42=, 8
	i32.add 	$push9=, $pop8, $pop42
	i32.store	4($3), $pop9
	i32.load	$push11=, 0($1)
	i32.load	$push41=, 0($0)
	tee_local	$push40=, $3=, $pop41
	i32.const	$push39=, 8
	i32.add 	$push10=, $pop40, $pop39
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop11, $pop10
	i32.load	$push14=, 0($1)
	i32.const	$push12=, 20
	i32.add 	$push13=, $3, $pop12
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop14, $pop13
	i32.load	$push17=, 0($1)
	i32.const	$push15=, 32
	i32.add 	$push16=, $3, $pop15
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop17, $pop16
	i32.load	$push38=, 0($1)
	tee_local	$push37=, $0=, $pop38
	i32.load	$push19=, 8($pop37)
	i32.load	$push18=, 4($0)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push36=, 7
	i32.gt_u	$push21=, $pop20, $pop36
	i32.const	$push35=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop21, $pop35
	i32.const	$push22=, 48
	i32.add 	$push23=, $3, $pop22
	i32.load	$push24=, 4($0)
	i32.const	$push34=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop34
	i32.load	$push25=, 4($0)
	i32.const	$push33=, 8
	i32.add 	$push26=, $pop25, $pop33
	i32.store	4($0), $pop26
	i32.load	$push29=, 0($1)
	i32.const	$push27=, 56
	i32.add 	$push28=, $3, $pop27
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop29, $pop28
	i32.load	$push32=, 0($1)
	i32.const	$push30=, 68
	i32.add 	$push31=, $3, $pop30
	i32.call	$drop=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop32, $pop31
	.endfunc
.Lfunc_end63:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_, .Lfunc_end63-_ZN5boost6fusion6detail17for_each_unrolledILi7EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_ySD_SD_EEELi0EEEZN5kcwiorsINSG_10datastreamIPKcEEJySD_SD_SD_ySD_SD_EEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i64, i32
	i32.const	$push29=, 0
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 80
	i32.sub 	$push51=, $pop27, $pop28
	tee_local	$push50=, $4=, $pop51
	i32.store	__stack_pointer($pop29), $pop50
	i64.load	$2=, 0($1)
	i32.const	$push33=, 64
	i32.add 	$push34=, $4, $pop33
	i32.const	$push0=, 8
	i32.add 	$push1=, $1, $pop0
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop34, $pop1
	i32.const	$push35=, 48
	i32.add 	$push36=, $4, $pop35
	i32.const	$push2=, 20
	i32.add 	$push3=, $1, $pop2
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop36, $pop3
	i32.const	$push37=, 32
	i32.add 	$push38=, $4, $pop37
	i32.const	$push4=, 32
	i32.add 	$push5=, $1, $pop4
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop38, $pop5
	i64.load	$3=, 48($1)
	i32.const	$push39=, 16
	i32.add 	$push40=, $4, $pop39
	i32.const	$push6=, 56
	i32.add 	$push7=, $1, $pop6
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop40, $pop7
	i32.const	$push8=, 68
	i32.add 	$push9=, $1, $pop8
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $4, $pop9
	i32.const	$push41=, 64
	i32.add 	$push42=, $4, $pop41
	i32.const	$push43=, 48
	i32.add 	$push44=, $4, $pop43
	i32.const	$push45=, 32
	i32.add 	$push46=, $4, $pop45
	i32.const	$push47=, 16
	i32.add 	$push48=, $4, $pop47
	call    	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_@FUNCTION, $0, $2, $pop42, $pop44, $pop46, $3, $pop48, $4
	block   	
	i32.load8_u	$push10=, 0($4)
	i32.const	$push49=, 1
	i32.and 	$push11=, $pop10, $pop49
	i32.eqz 	$push55=, $pop11
	br_if   	0, $pop55
	i32.load	$push12=, 8($4)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB64_2:
	end_block
	block   	
	i32.load8_u	$push13=, 16($4)
	i32.const	$push52=, 1
	i32.and 	$push14=, $pop13, $pop52
	i32.eqz 	$push56=, $pop14
	br_if   	0, $pop56
	i32.load	$push15=, 24($4)
	call    	_ZdlPv@FUNCTION, $pop15
.LBB64_4:
	end_block
	block   	
	i32.load8_u	$push16=, 32($4)
	i32.const	$push53=, 1
	i32.and 	$push17=, $pop16, $pop53
	i32.eqz 	$push57=, $pop17
	br_if   	0, $pop57
	i32.load	$push18=, 40($4)
	call    	_ZdlPv@FUNCTION, $pop18
.LBB64_6:
	end_block
	block   	
	i32.load8_u	$push19=, 48($4)
	i32.const	$push54=, 1
	i32.and 	$push20=, $pop19, $pop54
	i32.eqz 	$push58=, $pop20
	br_if   	0, $pop58
	i32.load	$push21=, 56($4)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB64_8:
	end_block
	block   	
	i32.load8_u	$push23=, 64($4)
	i32.const	$push22=, 1
	i32.and 	$push24=, $pop23, $pop22
	i32.eqz 	$push59=, $pop24
	br_if   	0, $pop59
	i32.load	$push25=, 72($4)
	call    	_ZdlPv@FUNCTION, $pop25
.LBB64_10:
	end_block
	i32.const	$push32=, 0
	i32.const	$push30=, 80
	i32.add 	$push31=, $4, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	.endfunc
.Lfunc_end64:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end64-_ZN5boost4mp116detail16tuple_apply_implIRZN5kcwio14execute_actionI9commodityS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_ySC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_ySC_SC_EEEJLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_,"axG",@progbits,_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_,comdat
	.hidden	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_
	.weak	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_
	.type	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_,@function
_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_:
	.param  	i32, i64, i32, i32, i32, i64, i32, i32
	.local  	i32, i32, i32
	i32.const	$push26=, 0
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 80
	i32.sub 	$push52=, $pop24, $pop25
	tee_local	$push51=, $10=, $pop52
	i32.store	__stack_pointer($pop26), $pop51
	i32.load	$push2=, 0($0)
	i32.load	$push3=, 0($pop2)
	i32.load	$push50=, 4($0)
	tee_local	$push49=, $0=, $pop50
	i32.load	$push48=, 4($pop49)
	tee_local	$push47=, $9=, $pop48
	i32.const	$push0=, 1
	i32.shr_s	$push1=, $pop47, $pop0
	i32.add 	$8=, $pop3, $pop1
	i32.load	$0=, 0($0)
	block   	
	i32.const	$push46=, 1
	i32.and 	$push4=, $9, $pop46
	i32.eqz 	$push57=, $pop4
	br_if   	0, $pop57
	i32.load	$push5=, 0($8)
	i32.add 	$push6=, $pop5, $0
	i32.load	$0=, 0($pop6)
.LBB65_2:
	end_block
	i32.const	$push30=, 64
	i32.add 	$push31=, $10, $pop30
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop31, $2
	i32.const	$push32=, 48
	i32.add 	$push33=, $10, $pop32
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop33, $3
	i32.const	$push34=, 32
	i32.add 	$push35=, $10, $pop34
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop35, $4
	i32.const	$push36=, 16
	i32.add 	$push37=, $10, $pop36
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop37, $6
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $10, $7
	i32.const	$push38=, 64
	i32.add 	$push39=, $10, $pop38
	i32.const	$push40=, 48
	i32.add 	$push41=, $10, $pop40
	i32.const	$push42=, 32
	i32.add 	$push43=, $10, $pop42
	i32.const	$push44=, 16
	i32.add 	$push45=, $10, $pop44
	call_indirect	$8, $1, $pop39, $pop41, $pop43, $5, $pop45, $10, $0
	block   	
	i32.load8_u	$push7=, 0($10)
	i32.const	$push53=, 1
	i32.and 	$push8=, $pop7, $pop53
	i32.eqz 	$push58=, $pop8
	br_if   	0, $pop58
	i32.load	$push9=, 8($10)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB65_4:
	end_block
	block   	
	i32.load8_u	$push10=, 16($10)
	i32.const	$push54=, 1
	i32.and 	$push11=, $pop10, $pop54
	i32.eqz 	$push59=, $pop11
	br_if   	0, $pop59
	i32.load	$push12=, 24($10)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB65_6:
	end_block
	block   	
	i32.load8_u	$push13=, 32($10)
	i32.const	$push55=, 1
	i32.and 	$push14=, $pop13, $pop55
	i32.eqz 	$push60=, $pop14
	br_if   	0, $pop60
	i32.load	$push15=, 40($10)
	call    	_ZdlPv@FUNCTION, $pop15
.LBB65_8:
	end_block
	block   	
	i32.load8_u	$push16=, 48($10)
	i32.const	$push56=, 1
	i32.and 	$push17=, $pop16, $pop56
	i32.eqz 	$push61=, $pop17
	br_if   	0, $pop61
	i32.load	$push18=, 56($10)
	call    	_ZdlPv@FUNCTION, $pop18
.LBB65_10:
	end_block
	block   	
	i32.load8_u	$push20=, 64($10)
	i32.const	$push19=, 1
	i32.and 	$push21=, $pop20, $pop19
	i32.eqz 	$push62=, $pop21
	br_if   	0, $pop62
	i32.load	$push22=, 72($10)
	call    	_ZdlPv@FUNCTION, $pop22
.LBB65_12:
	end_block
	i32.const	$push29=, 0
	i32.const	$push27=, 80
	i32.add 	$push28=, $10, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	.endfunc
.Lfunc_end65:
	.size	_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_, .Lfunc_end65-_ZZN5kcwio14execute_actionI9commodityS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_yS8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyS8_S8_S8_yS8_S8_EEEDaSH_

	.section	.text._ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.weak	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_
	.type	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_,@function
_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push19=, 0
	i32.const	$push16=, 0
	i32.load	$push17=, __stack_pointer($pop16)
	i32.const	$push18=, 48
	i32.sub 	$push59=, $pop17, $pop18
	tee_local	$push58=, $7=, $pop59
	i32.store	__stack_pointer($pop19), $pop58
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.6
	call    	kcwio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push23=, 40
	i32.add 	$push24=, $7, $pop23
	i32.store	24($7), $pop24
	i32.const	$push4=, 112
	i32.call	$push57=, _Znwj@FUNCTION, $pop4
	tee_local	$push56=, $3=, $pop57
	i64.const	$push5=, 0
	i64.store	8($pop56), $pop5
	i64.const	$push55=, 0
	i64.store	16($3):p2align=2, $pop55
	i64.const	$push54=, 0
	i64.store	24($3):p2align=2, $pop54
	i64.const	$push53=, 0
	i64.store	32($3):p2align=2, $pop53
	i64.const	$push52=, 0
	i64.store	40($3):p2align=2, $pop52
	i32.const	$push51=, 0
	i32.store	48($3), $pop51
	i32.const	$push50=, 0
	i32.store	52($3), $pop50
	i32.const	$push49=, 0
	i32.store	56($3), $pop49
	i32.const	$push48=, 0
	i32.store	60($3), $pop48
	i32.const	$push47=, 0
	i32.store	64($3), $pop47
	i32.const	$push46=, 0
	i32.store	68($3), $pop46
	i32.const	$push45=, 0
	i32.store	72($3), $pop45
	i32.const	$push44=, 0
	i32.store	76($3), $pop44
	i32.const	$push43=, 0
	i32.store	80($3), $pop43
	i32.const	$push42=, 0
	i32.store	84($3), $pop42
	i64.const	$push41=, 0
	i64.store	88($3), $pop41
	i32.store	96($3), $1
	i32.const	$push25=, 16
	i32.add 	$push26=, $7, $pop25
	call    	_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_@FUNCTION, $pop26, $3
	i32.store	32($7), $3
	i64.load	$push40=, 8($3)
	tee_local	$push39=, $2=, $pop40
	i64.store	16($7), $pop39
	i32.load	$push38=, 100($3)
	tee_local	$push37=, $4=, $pop38
	i32.store	12($7), $pop37
	block   	
	block   	
	i32.const	$push9=, 28
	i32.add 	$push36=, $1, $pop9
	tee_local	$push35=, $6=, $pop36
	i32.load	$push34=, 0($pop35)
	tee_local	$push33=, $5=, $pop34
	i32.const	$push6=, 32
	i32.add 	$push7=, $1, $pop6
	i32.load	$push8=, 0($pop7)
	i32.ge_u	$push10=, $pop33, $pop8
	br_if   	0, $pop10
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push60=, 0
	i32.store	32($7), $pop60
	i32.store	0($5), $3
	i32.const	$push13=, 24
	i32.add 	$push14=, $5, $pop13
	i32.store	0($6), $pop14
	br      	1
.LBB66_2:
	end_block
	i32.const	$push11=, 24
	i32.add 	$push12=, $1, $pop11
	i32.const	$push27=, 32
	i32.add 	$push28=, $7, $pop27
	i32.const	$push29=, 16
	i32.add 	$push30=, $7, $pop29
	i32.const	$push31=, 12
	i32.add 	$push32=, $7, $pop31
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop12, $pop28, $pop30, $pop32
.LBB66_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push15=, 0
	i32.store	32($7), $pop15
	block   	
	i32.eqz 	$push61=, $3
	br_if   	0, $pop61
	i32.call	$drop=, _ZN9commodity11goodsx_infoD2Ev@FUNCTION, $3
	call    	_ZdlPv@FUNCTION, $3
.LBB66_5:
	end_block
	i32.const	$push22=, 0
	i32.const	$push20=, 48
	i32.add 	$push21=, $7, $pop20
	i32.store	__stack_pointer($pop22), $pop21
	.endfunc
.Lfunc_end66:
	.size	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_, .Lfunc_end66-_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_

	.section	.text._ZN9commodity11goodsx_infoD2Ev,"axG",@progbits,_ZN9commodity11goodsx_infoD2Ev,comdat
	.hidden	_ZN9commodity11goodsx_infoD2Ev
	.weak	_ZN9commodity11goodsx_infoD2Ev
	.type	_ZN9commodity11goodsx_infoD2Ev,@function
_ZN9commodity11goodsx_infoD2Ev:
	.param  	i32
	.result 	i32
	block   	
	i32.load8_u	$push0=, 76($0)
	i32.const	$push30=, 1
	i32.and 	$push1=, $pop0, $pop30
	i32.eqz 	$push36=, $pop1
	br_if   	0, $pop36
	i32.const	$push2=, 84
	i32.add 	$push3=, $0, $pop2
	i32.load	$push4=, 0($pop3)
	call    	_ZdlPv@FUNCTION, $pop4
.LBB67_2:
	end_block
	block   	
	i32.load8_u	$push5=, 64($0)
	i32.const	$push31=, 1
	i32.and 	$push6=, $pop5, $pop31
	i32.eqz 	$push37=, $pop6
	br_if   	0, $pop37
	i32.const	$push7=, 72
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 0($pop8)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB67_4:
	end_block
	block   	
	i32.load8_u	$push10=, 52($0)
	i32.const	$push32=, 1
	i32.and 	$push11=, $pop10, $pop32
	i32.eqz 	$push38=, $pop11
	br_if   	0, $pop38
	i32.const	$push12=, 60
	i32.add 	$push13=, $0, $pop12
	i32.load	$push14=, 0($pop13)
	call    	_ZdlPv@FUNCTION, $pop14
.LBB67_6:
	end_block
	block   	
	i32.load8_u	$push15=, 40($0)
	i32.const	$push33=, 1
	i32.and 	$push16=, $pop15, $pop33
	i32.eqz 	$push39=, $pop16
	br_if   	0, $pop39
	i32.const	$push17=, 48
	i32.add 	$push18=, $0, $pop17
	i32.load	$push19=, 0($pop18)
	call    	_ZdlPv@FUNCTION, $pop19
.LBB67_8:
	end_block
	block   	
	i32.load8_u	$push20=, 28($0)
	i32.const	$push34=, 1
	i32.and 	$push21=, $pop20, $pop34
	i32.eqz 	$push40=, $pop21
	br_if   	0, $pop40
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.load	$push24=, 0($pop23)
	call    	_ZdlPv@FUNCTION, $pop24
.LBB67_10:
	end_block
	block   	
	i32.load8_u	$push25=, 16($0)
	i32.const	$push35=, 1
	i32.and 	$push26=, $pop25, $pop35
	i32.eqz 	$push41=, $pop26
	br_if   	0, $pop41
	i32.const	$push27=, 24
	i32.add 	$push28=, $0, $pop27
	i32.load	$push29=, 0($pop28)
	call    	_ZdlPv@FUNCTION, $pop29
.LBB67_12:
	end_block
	copy_local	$push42=, $0
	.endfunc
.Lfunc_end67:
	.size	_ZN9commodity11goodsx_infoD2Ev, .Lfunc_end67-_ZN9commodity11goodsx_infoD2Ev

	.section	.text._ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,"axG",@progbits,_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,comdat
	.hidden	_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.weak	_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_
	.type	_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_,@function
_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push40=, $pop28, $pop29
	tee_local	$push39=, $5=, $pop40
	i32.store	__stack_pointer($pop30), $pop39
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	call    	_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_@FUNCTION, $pop0, $1
	copy_local	$push38=, $5
	tee_local	$push37=, $6=, $pop38
	i32.const	$push1=, 0
	i32.store	0($pop37), $pop1
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE@FUNCTION, $6, $1
	block   	
	block   	
	i32.load	$push36=, 0($6)
	tee_local	$push35=, $3=, $pop36
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $pop35, $pop2
	br_if   	0, $pop3
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB68_2:
	end_block
	i32.const	$push26=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $3, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push42=, $5, $pop7
	tee_local	$push41=, $5=, $pop42
	copy_local	$push34=, $pop41
	i32.store	__stack_pointer($pop26), $pop34
.LBB68_3:
	end_block
	i32.store	4($6), $5
	i32.store	0($6), $5
	i32.add 	$push8=, $5, $3
	i32.store	8($6), $pop8
	i32.call	$drop=, _ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE@FUNCTION, $6, $1
	i64.load	$push9=, 8($2)
	i64.const	$push12=, 7289247520713080832
	i32.load	$push10=, 8($0)
	i64.load	$push11=, 0($pop10)
	i64.load	$push44=, 8($1)
	tee_local	$push43=, $4=, $pop44
	i32.call	$push13=, db_store_i64@FUNCTION, $pop9, $pop12, $pop11, $pop43, $5, $3
	i32.store	100($1), $pop13
	block   	
	i32.const	$push14=, 513
	i32.lt_u	$push15=, $3, $pop14
	br_if   	0, $pop15
	call    	free@FUNCTION, $5
.LBB68_5:
	end_block
	block   	
	i64.load	$push16=, 16($2)
	i64.lt_u	$push17=, $4, $pop16
	br_if   	0, $pop17
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i64.const	$push22=, -2
	i64.const	$push20=, 1
	i64.add 	$push21=, $4, $pop20
	i64.const	$push18=, -3
	i64.gt_u	$push19=, $4, $pop18
	i64.select	$push23=, $pop22, $pop21, $pop19
	i64.store	0($pop25), $pop23
.LBB68_7:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $6, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end68:
	.size	_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_, .Lfunc_end68-_ZZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE7emplaceIZNS1_9setgoodsxEyNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEESB_SB_ySB_SB_EUlRS2_E_EENS3_14const_iteratorEyOT_ENKUlRSF_E_clINS3_4itemEEEDaSH_

	.section	.text._ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB69_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB69_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB69_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB69_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB69_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB69_10:
	end_block
	copy_local	$6=, $7
.LBB69_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB69_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	i32.call	$drop=, _ZN9commodity11goodsx_infoD2Ev@FUNCTION, $1
	call    	_ZdlPv@FUNCTION, $1
.LBB69_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB69_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB69_18:
	end_block
	.endfunc
.Lfunc_end69:
	.size	_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end69-_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_,"axG",@progbits,_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_,comdat
	.hidden	_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_
	.weak	_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_
	.type	_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_,@function
_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_:
	.param  	i32, i32
	.local  	i32, i32, i64, i32
	i32.const	$push60=, 0
	i32.const	$push57=, 0
	i32.load	$push58=, __stack_pointer($pop57)
	i32.const	$push59=, 32
	i32.sub 	$push77=, $pop58, $pop59
	tee_local	$push76=, $5=, $pop77
	i32.store	__stack_pointer($pop60), $pop76
	block   	
	i32.load	$push75=, 0($0)
	tee_local	$push74=, $3=, $pop75
	i64.load	$push73=, 16($pop74)
	tee_local	$push72=, $4=, $pop73
	i64.const	$push0=, -1
	i64.ne  	$push1=, $pop72, $pop0
	br_if   	0, $pop1
	i64.const	$4=, 0
	block   	
	i64.load	$push3=, 0($3)
	i64.load	$push2=, 8($3)
	i64.const	$push4=, 7289247520713080832
	i64.const	$push81=, 0
	i32.call	$push80=, db_lowerbound_i64@FUNCTION, $pop3, $pop2, $pop4, $pop81
	tee_local	$push79=, $2=, $pop80
	i32.const	$push78=, 0
	i32.lt_s	$push5=, $pop79, $pop78
	br_if   	0, $pop5
	i32.call	$drop=, _ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $3, $2
	i32.const	$push84=, 0
	i32.store	20($5), $pop84
	i32.store	16($5), $3
	i64.const	$push12=, -2
	i32.const	$push70=, 16
	i32.add 	$push71=, $5, $pop70
	i32.call	$push6=, _ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv@FUNCTION, $pop71
	i32.load	$push7=, 4($pop6)
	i64.load	$push83=, 8($pop7)
	tee_local	$push82=, $4=, $pop83
	i64.const	$push10=, 1
	i64.add 	$push11=, $pop82, $pop10
	i64.const	$push8=, -3
	i64.gt_u	$push9=, $4, $pop8
	i64.select	$4=, $pop12, $pop11, $pop9
.LBB70_3:
	end_block
	i32.const	$push13=, 16
	i32.add 	$push14=, $3, $pop13
	i64.store	0($pop14), $4
.LBB70_4:
	end_block
	i64.const	$push15=, -2
	i64.lt_u	$push16=, $4, $pop15
	i32.const	$push17=, .L.str.7
	call    	kcwio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push18=, 16
	i32.add 	$push19=, $3, $pop18
	i64.load	$push20=, 0($pop19)
	i64.store	8($1), $pop20
	i32.load	$push21=, 4($0)
	i64.load	$push22=, 0($pop21)
	i64.store	0($1), $pop22
	i32.const	$push85=, 16
	i32.add 	$push23=, $1, $pop85
	i32.load	$push24=, 8($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop23, $pop24
	i32.load	$push25=, 12($0)
	i64.load	$push26=, 0($pop25)
	i64.store	8($5), $pop26
	i32.const	$push27=, 28
	i32.add 	$3=, $1, $pop27
	i32.const	$push64=, 16
	i32.add 	$push65=, $5, $pop64
	i32.const	$push66=, 8
	i32.add 	$push67=, $5, $pop66
	call    	_ZNK5kcwio4name9to_stringEv@FUNCTION, $pop65, $pop67
	block   	
	block   	
	i32.load8_u	$push28=, 28($1)
	i32.const	$push29=, 1
	i32.and 	$push30=, $pop28, $pop29
	br_if   	0, $pop30
	i32.const	$push37=, 0
	i32.store16	0($3), $pop37
	br      	1
.LBB70_6:
	end_block
	i32.const	$push31=, 36
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 0($pop32)
	i32.const	$push34=, 0
	i32.store8	0($pop33), $pop34
	i32.const	$push35=, 32
	i32.add 	$push36=, $1, $pop35
	i32.const	$push86=, 0
	i32.store	0($pop36), $pop86
.LBB70_7:
	end_block
	i32.const	$push38=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $3, $pop38
	i32.const	$push39=, 8
	i32.add 	$push40=, $3, $pop39
	i32.const	$push68=, 16
	i32.add 	$push69=, $5, $pop68
	i32.const	$push87=, 8
	i32.add 	$push41=, $pop69, $pop87
	i32.load	$push42=, 0($pop41)
	i32.store	0($pop40), $pop42
	i64.load	$push43=, 16($5)
	i64.store	0($3):p2align=2, $pop43
	i32.const	$push44=, 40
	i32.add 	$push45=, $1, $pop44
	i32.load	$push46=, 16($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop45, $pop46
	i32.const	$push47=, 52
	i32.add 	$push48=, $1, $pop47
	i32.load	$push49=, 20($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop48, $pop49
	i32.const	$push50=, 64
	i32.add 	$push51=, $1, $pop50
	i32.load	$push52=, 24($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop51, $pop52
	i32.const	$push53=, 76
	i32.add 	$push54=, $1, $pop53
	i32.load	$push55=, 28($0)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop54, $pop55
	i64.call	$push56=, current_time@FUNCTION
	i64.store	88($1), $pop56
	i32.const	$push63=, 0
	i32.const	$push61=, 32
	i32.add 	$push62=, $5, $pop61
	i32.store	__stack_pointer($pop63), $pop62
	.endfunc
.Lfunc_end70:
	.size	_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_, .Lfunc_end70-_ZZN9commodity9setgoodsxEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_yS6_S6_ENKUlRNS_11goodsx_infoEE_clES8_

	.section	.text._ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE
	.weak	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE
	.type	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE,@function
_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32
	i32.load	$push0=, 0($0)
	i32.const	$push1=, 16
	i32.add 	$push94=, $pop0, $pop1
	tee_local	$push93=, $4=, $pop94
	i32.store	0($0), $pop93
	i32.const	$push4=, 20
	i32.add 	$push5=, $1, $pop4
	i32.load	$push6=, 0($pop5)
	i32.load8_u	$push92=, 16($1)
	tee_local	$push91=, $2=, $pop92
	i32.const	$push90=, 1
	i32.shr_u	$push3=, $pop91, $pop90
	i32.const	$push89=, 1
	i32.and 	$push2=, $2, $pop89
	i32.select	$push7=, $pop6, $pop3, $pop2
	i64.extend_u/i32	$3=, $pop7
.LBB71_1:
	loop    	
	i32.const	$push99=, 1
	i32.add 	$4=, $4, $pop99
	i64.const	$push98=, 7
	i64.shr_u	$push97=, $3, $pop98
	tee_local	$push96=, $3=, $pop97
	i64.const	$push95=, 0
	i64.ne  	$push8=, $pop96, $pop95
	br_if   	0, $pop8
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push13=, 20
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.const	$push9=, 16
	i32.add 	$push10=, $1, $pop9
	i32.load8_u	$push105=, 0($pop10)
	tee_local	$push104=, $2=, $pop105
	i32.const	$push103=, 1
	i32.shr_u	$push12=, $pop104, $pop103
	i32.const	$push102=, 1
	i32.and 	$push11=, $2, $pop102
	i32.select	$push101=, $pop15, $pop12, $pop11
	tee_local	$push100=, $2=, $pop101
	i32.eqz 	$push192=, $pop100
	br_if   	0, $pop192
	i32.add 	$push107=, $2, $4
	tee_local	$push106=, $4=, $pop107
	i32.store	0($0), $pop106
.LBB71_4:
	end_block
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.load8_u	$push111=, 28($1)
	tee_local	$push110=, $2=, $pop111
	i32.const	$push109=, 1
	i32.shr_u	$push17=, $pop110, $pop109
	i32.const	$push108=, 1
	i32.and 	$push16=, $2, $pop108
	i32.select	$push21=, $pop20, $pop17, $pop16
	i64.extend_u/i32	$3=, $pop21
.LBB71_5:
	loop    	
	i32.const	$push116=, 1
	i32.add 	$4=, $4, $pop116
	i64.const	$push115=, 7
	i64.shr_u	$push114=, $3, $pop115
	tee_local	$push113=, $3=, $pop114
	i64.const	$push112=, 0
	i64.ne  	$push22=, $pop113, $pop112
	br_if   	0, $pop22
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push27=, 32
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 0($pop28)
	i32.const	$push23=, 28
	i32.add 	$push24=, $1, $pop23
	i32.load8_u	$push122=, 0($pop24)
	tee_local	$push121=, $2=, $pop122
	i32.const	$push120=, 1
	i32.shr_u	$push26=, $pop121, $pop120
	i32.const	$push119=, 1
	i32.and 	$push25=, $2, $pop119
	i32.select	$push118=, $pop29, $pop26, $pop25
	tee_local	$push117=, $2=, $pop118
	i32.eqz 	$push193=, $pop117
	br_if   	0, $pop193
	i32.add 	$push124=, $2, $4
	tee_local	$push123=, $4=, $pop124
	i32.store	0($0), $pop123
.LBB71_8:
	end_block
	i32.const	$push32=, 44
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 0($pop33)
	i32.load8_u	$push128=, 40($1)
	tee_local	$push127=, $2=, $pop128
	i32.const	$push126=, 1
	i32.shr_u	$push31=, $pop127, $pop126
	i32.const	$push125=, 1
	i32.and 	$push30=, $2, $pop125
	i32.select	$push35=, $pop34, $pop31, $pop30
	i64.extend_u/i32	$3=, $pop35
.LBB71_9:
	loop    	
	i32.const	$push133=, 1
	i32.add 	$4=, $4, $pop133
	i64.const	$push132=, 7
	i64.shr_u	$push131=, $3, $pop132
	tee_local	$push130=, $3=, $pop131
	i64.const	$push129=, 0
	i64.ne  	$push36=, $pop130, $pop129
	br_if   	0, $pop36
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push41=, 44
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 0($pop42)
	i32.const	$push37=, 40
	i32.add 	$push38=, $1, $pop37
	i32.load8_u	$push139=, 0($pop38)
	tee_local	$push138=, $2=, $pop139
	i32.const	$push137=, 1
	i32.shr_u	$push40=, $pop138, $pop137
	i32.const	$push136=, 1
	i32.and 	$push39=, $2, $pop136
	i32.select	$push135=, $pop43, $pop40, $pop39
	tee_local	$push134=, $2=, $pop135
	i32.eqz 	$push194=, $pop134
	br_if   	0, $pop194
	i32.add 	$push141=, $2, $4
	tee_local	$push140=, $4=, $pop141
	i32.store	0($0), $pop140
.LBB71_12:
	end_block
	i32.const	$push46=, 56
	i32.add 	$push47=, $1, $pop46
	i32.load	$push48=, 0($pop47)
	i32.load8_u	$push145=, 52($1)
	tee_local	$push144=, $2=, $pop145
	i32.const	$push143=, 1
	i32.shr_u	$push45=, $pop144, $pop143
	i32.const	$push142=, 1
	i32.and 	$push44=, $2, $pop142
	i32.select	$push49=, $pop48, $pop45, $pop44
	i64.extend_u/i32	$3=, $pop49
.LBB71_13:
	loop    	
	i32.const	$push150=, 1
	i32.add 	$4=, $4, $pop150
	i64.const	$push149=, 7
	i64.shr_u	$push148=, $3, $pop149
	tee_local	$push147=, $3=, $pop148
	i64.const	$push146=, 0
	i64.ne  	$push50=, $pop147, $pop146
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 0($pop56)
	i32.const	$push51=, 52
	i32.add 	$push52=, $1, $pop51
	i32.load8_u	$push156=, 0($pop52)
	tee_local	$push155=, $2=, $pop156
	i32.const	$push154=, 1
	i32.shr_u	$push54=, $pop155, $pop154
	i32.const	$push153=, 1
	i32.and 	$push53=, $2, $pop153
	i32.select	$push152=, $pop57, $pop54, $pop53
	tee_local	$push151=, $2=, $pop152
	i32.eqz 	$push195=, $pop151
	br_if   	0, $pop195
	i32.add 	$push158=, $2, $4
	tee_local	$push157=, $4=, $pop158
	i32.store	0($0), $pop157
.LBB71_16:
	end_block
	i32.const	$push60=, 68
	i32.add 	$push61=, $1, $pop60
	i32.load	$push62=, 0($pop61)
	i32.load8_u	$push162=, 64($1)
	tee_local	$push161=, $2=, $pop162
	i32.const	$push160=, 1
	i32.shr_u	$push59=, $pop161, $pop160
	i32.const	$push159=, 1
	i32.and 	$push58=, $2, $pop159
	i32.select	$push63=, $pop62, $pop59, $pop58
	i64.extend_u/i32	$3=, $pop63
.LBB71_17:
	loop    	
	i32.const	$push167=, 1
	i32.add 	$4=, $4, $pop167
	i64.const	$push166=, 7
	i64.shr_u	$push165=, $3, $pop166
	tee_local	$push164=, $3=, $pop165
	i64.const	$push163=, 0
	i64.ne  	$push64=, $pop164, $pop163
	br_if   	0, $pop64
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push69=, 68
	i32.add 	$push70=, $1, $pop69
	i32.load	$push71=, 0($pop70)
	i32.const	$push65=, 64
	i32.add 	$push66=, $1, $pop65
	i32.load8_u	$push173=, 0($pop66)
	tee_local	$push172=, $2=, $pop173
	i32.const	$push171=, 1
	i32.shr_u	$push68=, $pop172, $pop171
	i32.const	$push170=, 1
	i32.and 	$push67=, $2, $pop170
	i32.select	$push169=, $pop71, $pop68, $pop67
	tee_local	$push168=, $2=, $pop169
	i32.eqz 	$push196=, $pop168
	br_if   	0, $pop196
	i32.add 	$push175=, $2, $4
	tee_local	$push174=, $4=, $pop175
	i32.store	0($0), $pop174
.LBB71_20:
	end_block
	i32.const	$push74=, 80
	i32.add 	$push75=, $1, $pop74
	i32.load	$push76=, 0($pop75)
	i32.load8_u	$push179=, 76($1)
	tee_local	$push178=, $2=, $pop179
	i32.const	$push177=, 1
	i32.shr_u	$push73=, $pop178, $pop177
	i32.const	$push176=, 1
	i32.and 	$push72=, $2, $pop176
	i32.select	$push77=, $pop76, $pop73, $pop72
	i64.extend_u/i32	$3=, $pop77
.LBB71_21:
	loop    	
	i32.const	$push184=, 1
	i32.add 	$4=, $4, $pop184
	i64.const	$push183=, 7
	i64.shr_u	$push182=, $3, $pop183
	tee_local	$push181=, $3=, $pop182
	i64.const	$push180=, 0
	i64.ne  	$push78=, $pop181, $pop180
	br_if   	0, $pop78
	end_loop
	i32.store	0($0), $4
	block   	
	i32.const	$push84=, 80
	i32.add 	$push85=, $1, $pop84
	i32.load	$push86=, 0($pop85)
	i32.const	$push79=, 76
	i32.add 	$push80=, $1, $pop79
	i32.load8_u	$push189=, 0($pop80)
	tee_local	$push188=, $1=, $pop189
	i32.const	$push81=, 1
	i32.shr_u	$push83=, $pop188, $pop81
	i32.const	$push187=, 1
	i32.and 	$push82=, $1, $pop187
	i32.select	$push186=, $pop86, $pop83, $pop82
	tee_local	$push185=, $1=, $pop186
	i32.eqz 	$push197=, $pop185
	br_if   	0, $pop197
	i32.add 	$push191=, $1, $4
	tee_local	$push190=, $4=, $pop191
	i32.store	0($0), $pop190
.LBB71_24:
	end_block
	i32.const	$push87=, 8
	i32.add 	$push88=, $4, $pop87
	i32.store	0($0), $pop88
	copy_local	$push198=, $0
	.endfunc
.Lfunc_end71:
	.size	_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE, .Lfunc_end71-_ZlsIN5kcwio10datastreamIjEEERT_S4_RKN9commodity11goodsx_infoE

	.section	.text._ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE,"axG",@progbits,_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE,comdat
	.hidden	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE
	.weak	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE
	.type	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE,@function
_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push55=, 8
	i32.add 	$push54=, $pop8, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.store	4($0), $pop53
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push52=, 7
	i32.gt_s	$push11=, $pop10, $pop52
	i32.const	$push51=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop11, $pop51
	i32.load	$push13=, 4($0)
	i32.const	$push50=, 8
	i32.add 	$push12=, $1, $pop50
	i32.const	$push49=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop49
	i32.load	$push14=, 4($0)
	i32.const	$push48=, 8
	i32.add 	$push15=, $pop14, $pop48
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push30=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	i32.const	$push31=, 76
	i32.add 	$push32=, $1, $pop31
	i32.call	$push47=, _ZN5kcwiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop30, $pop32
	tee_local	$push46=, $0=, $pop47
	i32.load	$push34=, 8($pop46)
	i32.load	$push33=, 4($0)
	i32.sub 	$push35=, $pop34, $pop33
	i32.const	$push45=, 7
	i32.gt_s	$push36=, $pop35, $pop45
	i32.const	$push44=, .L.str.15
	call    	kcwio_assert@FUNCTION, $pop36, $pop44
	i32.load	$push37=, 4($0)
	i32.const	$push38=, 88
	i32.add 	$push39=, $1, $pop38
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop37, $pop39, $pop43
	i32.load	$push40=, 4($0)
	i32.const	$push42=, 8
	i32.add 	$push41=, $pop40, $pop42
	i32.store	4($0), $pop41
	copy_local	$push56=, $0
	.endfunc
.Lfunc_end72:
	.size	_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE, .Lfunc_end72-_ZlsIN5kcwio10datastreamIPcEEERT_S5_RKN9commodity11goodsx_infoE

	.section	.text._ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push40=, 0
	i32.load	$push41=, __stack_pointer($pop40)
	i32.const	$push42=, 48
	i32.sub 	$push61=, $pop41, $pop42
	tee_local	$push60=, $9=, $pop61
	copy_local	$8=, $pop60
	i32.const	$push43=, 0
	i32.store	__stack_pointer($pop43), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push59=, 0($pop3)
	tee_local	$push58=, $7=, $pop59
	i32.load	$push57=, 24($0)
	tee_local	$push56=, $2=, $pop57
	i32.eq  	$push4=, $pop58, $pop56
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push62=, -24
	i32.add 	$6=, $7, $pop62
.LBB73_2:
	loop    	
	i32.const	$push63=, 16
	i32.add 	$push6=, $6, $pop63
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push67=, -24
	i32.add 	$push66=, $6, $pop67
	tee_local	$push65=, $4=, $pop66
	copy_local	$6=, $pop65
	i32.add 	$push9=, $4, $3
	i32.const	$push64=, -24
	i32.ne  	$push10=, $pop9, $pop64
	br_if   	0, $pop10
.LBB73_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB73_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push70=, 0
	i32.call	$push69=, db_get_i64@FUNCTION, $1, $pop14, $pop70
	tee_local	$push68=, $6=, $pop69
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop68, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.8
	call    	kcwio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB73_8:
	end_block
	i32.const	$push39=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push72=, $9, $pop25
	tee_local	$push71=, $4=, $pop72
	copy_local	$push55=, $pop71
	i32.store	__stack_pointer($pop39), $pop55
.LBB73_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB73_11:
	end_block
	i32.const	$push29=, 112
	i32.call	$push97=, _Znwj@FUNCTION, $pop29
	tee_local	$push96=, $6=, $pop97
	i64.const	$push30=, 0
	i64.store	8($pop96), $pop30
	i64.const	$push95=, 0
	i64.store	16($6):p2align=2, $pop95
	i64.const	$push94=, 0
	i64.store	24($6):p2align=2, $pop94
	i64.const	$push93=, 0
	i64.store	32($6):p2align=2, $pop93
	i64.const	$push92=, 0
	i64.store	40($6):p2align=2, $pop92
	i32.const	$push91=, 0
	i32.store	48($6), $pop91
	i32.const	$push90=, 0
	i32.store	52($6), $pop90
	i32.const	$push89=, 0
	i32.store	56($6), $pop89
	i32.const	$push88=, 0
	i32.store	60($6), $pop88
	i32.const	$push87=, 0
	i32.store	64($6), $pop87
	i32.const	$push86=, 0
	i32.store	68($6), $pop86
	i32.const	$push85=, 0
	i32.store	72($6), $pop85
	i32.const	$push84=, 0
	i32.store	76($6), $pop84
	i32.const	$push83=, 0
	i32.store	80($6), $pop83
	i32.const	$push82=, 0
	i32.store	84($6), $pop82
	i64.const	$push81=, 0
	i64.store	88($6), $pop81
	i32.store	96($6), $0
	i32.const	$push47=, 32
	i32.add 	$push48=, $8, $pop47
	i32.call	$drop=, _ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE@FUNCTION, $pop48, $6
	i32.store	100($6), $1
	i32.store	24($8), $6
	i64.load	$push80=, 8($6)
	tee_local	$push79=, $5=, $pop80
	i64.store	16($8), $pop79
	i32.load	$push78=, 100($6)
	tee_local	$push77=, $7=, $pop78
	i32.store	12($8), $pop77
	block   	
	block   	
	i32.const	$push34=, 28
	i32.add 	$push76=, $0, $pop34
	tee_local	$push75=, $1=, $pop76
	i32.load	$push74=, 0($pop75)
	tee_local	$push73=, $4=, $pop74
	i32.const	$push31=, 32
	i32.add 	$push32=, $0, $pop31
	i32.load	$push33=, 0($pop32)
	i32.ge_u	$push35=, $pop73, $pop33
	br_if   	0, $pop35
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push98=, 0
	i32.store	24($8), $pop98
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB73_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push49=, 24
	i32.add 	$push50=, $8, $pop49
	i32.const	$push51=, 16
	i32.add 	$push52=, $8, $pop51
	i32.const	$push53=, 12
	i32.add 	$push54=, $8, $pop53
	call    	_ZNSt3__16vectorIN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop50, $pop52, $pop54
.LBB73_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push99=, $4
	br_if   	0, $pop99
	i32.call	$drop=, _ZN9commodity11goodsx_infoD2Ev@FUNCTION, $4
	call    	_ZdlPv@FUNCTION, $4
.LBB73_16:
	end_block
	i32.const	$push46=, 0
	i32.const	$push44=, 48
	i32.add 	$push45=, $8, $pop44
	i32.store	__stack_pointer($pop46), $pop45
	copy_local	$push100=, $6
	.endfunc
.Lfunc_end73:
	.size	_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl, .Lfunc_end73-_ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv,"axG",@progbits,_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv,comdat
	.hidden	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv
	.weak	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv
	.type	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv,@function
_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push34=, $pop21, $pop22
	tee_local	$push33=, $2=, $pop34
	i32.store	__stack_pointer($pop23), $pop33
	block   	
	block   	
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push44=, $pop31
	br_if   	0, $pop44
	i32.load	$push0=, 100($1)
	i32.const	$push29=, 8
	i32.add 	$push30=, $2, $pop29
	i32.call	$push36=, db_previous_i64@FUNCTION, $pop0, $pop30
	tee_local	$push35=, $1=, $pop36
	i32.const	$push1=, 31
	i32.shr_u	$push2=, $pop35, $pop1
	i32.const	$push3=, 1
	i32.xor 	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.13
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	br      	1
.LBB74_2:
	end_block
	i32.load	$push43=, 0($0)
	tee_local	$push42=, $1=, $pop43
	i64.load	$push7=, 0($pop42)
	i64.load	$push6=, 8($1)
	i64.const	$push8=, 7289247520713080832
	i32.call	$push41=, db_end_i64@FUNCTION, $pop7, $pop6, $pop8
	tee_local	$push40=, $1=, $pop41
	i32.const	$push9=, -1
	i32.ne  	$push10=, $pop40, $pop9
	i32.const	$push11=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push27=, 8
	i32.add 	$push28=, $2, $pop27
	i32.call	$push39=, db_previous_i64@FUNCTION, $1, $pop28
	tee_local	$push38=, $1=, $pop39
	i32.const	$push12=, 31
	i32.shr_u	$push13=, $pop38, $pop12
	i32.const	$push14=, 1
	i32.xor 	$push15=, $pop13, $pop14
	i32.const	$push37=, .L.str.12
	call    	kcwio_assert@FUNCTION, $pop15, $pop37
.LBB74_3:
	end_block
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($0)
	i32.call	$push19=, _ZNK5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop18, $1
	i32.store	0($pop17), $pop19
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	copy_local	$push45=, $0
	.endfunc
.Lfunc_end74:
	.size	_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv, .Lfunc_end74-_ZN5kcwio11multi_indexILy7289247520713080832EN9commodity11goodsx_infoEJEE14const_iteratormmEv

	.section	.text._ZNK5kcwio4name9to_stringEv,"axG",@progbits,_ZNK5kcwio4name9to_stringEv,comdat
	.hidden	_ZNK5kcwio4name9to_stringEv
	.weak	_ZNK5kcwio4name9to_stringEv
	.type	_ZNK5kcwio4name9to_stringEv,@function
_ZNK5kcwio4name9to_stringEv:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i64, i32
	i32.const	$push44=, 0
	i32.const	$push41=, 0
	i32.load	$push42=, __stack_pointer($pop41)
	i32.const	$push43=, 16
	i32.sub 	$push53=, $pop42, $pop43
	tee_local	$push52=, $9=, $pop53
	i32.store	__stack_pointer($pop44), $pop52
	i32.const	$push0=, 16
	i32.call	$push51=, _Znwj@FUNCTION, $pop0
	tee_local	$push50=, $6=, $pop51
	i32.store	8($0), $pop50
	i64.const	$push1=, 55834574865
	i64.store	0($0):p2align=2, $pop1
	i32.const	$push3=, 46
	i32.const	$push2=, 13
	i32.call	$drop=, memset@FUNCTION, $6, $pop3, $pop2
	i32.const	$push49=, 0
	i32.store8	13($6), $pop49
	i32.const	$push48=, 1
	i32.add 	$2=, $0, $pop48
	i64.load	$8=, 0($1)
	i32.const	$7=, 17
	i32.const	$push10=, 8
	i32.add 	$5=, $0, $pop10
	i32.const	$6=, 12
.LBB75_1:
	loop    	
	i32.const	$push63=, 0
	i32.load	$push8=, _ZZNK5kcwio4name9to_stringEvE7charmap($pop63)
	i64.const	$push62=, 15
	i64.const	$push61=, 31
	i32.const	$push60=, 12
	i32.eq  	$push59=, $6, $pop60
	tee_local	$push58=, $4=, $pop59
	i64.select	$push5=, $pop62, $pop61, $pop58
	i64.and 	$push6=, $pop5, $8
	i32.wrap/i64	$push7=, $pop6
	i32.add 	$push9=, $pop8, $pop7
	i32.load8_u	$3=, 0($pop9)
	copy_local	$1=, $2
	block   	
	i32.const	$push57=, 1
	i32.and 	$push4=, $7, $pop57
	i32.eqz 	$push80=, $pop4
	br_if   	0, $pop80
	i32.load	$1=, 0($5)
.LBB75_3:
	end_block
	block   	
	i32.add 	$push11=, $1, $6
	i32.store8	0($pop11), $3
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	i32.const	$push56=, -1
	i32.add 	$6=, $6, $pop56
	i64.const	$push55=, 4
	i64.const	$push54=, 5
	i64.select	$push12=, $pop55, $pop54, $4
	i64.shr_u	$8=, $8, $pop12
	i32.load8_u	$7=, 0($0)
	br      	1
.LBB75_5:
	end_block
	end_loop
	i32.const	$push15=, 4
	i32.add 	$push16=, $0, $pop15
	i32.load	$push17=, 0($pop16)
	i32.load8_u	$push68=, 0($0)
	tee_local	$push67=, $6=, $pop68
	i32.const	$push13=, 1
	i32.shr_u	$push14=, $pop67, $pop13
	i32.const	$push66=, 1
	i32.and 	$push65=, $6, $pop66
	tee_local	$push64=, $1=, $pop65
	i32.select	$6=, $pop17, $pop14, $pop64
	i32.const	$push18=, 8
	i32.add 	$push19=, $0, $pop18
	i32.load	$push20=, 0($pop19)
	i32.select	$7=, $pop20, $2, $1
.LBB75_6:
	block   	
	loop    	
	i32.eqz 	$push82=, $6
	br_if   	1, $pop82
	i32.add 	$1=, $7, $6
	i32.const	$push73=, -1
	i32.add 	$push72=, $6, $pop73
	tee_local	$push71=, $3=, $pop72
	copy_local	$6=, $pop71
	i32.const	$push70=, -1
	i32.add 	$push21=, $1, $pop70
	i32.load8_u	$push22=, 0($pop21)
	i32.const	$push69=, 46
	i32.eq  	$push23=, $pop22, $pop69
	br_if   	0, $pop23
	end_loop
	i32.const	$push24=, -1
	i32.eq  	$push25=, $3, $pop24
	br_if   	0, $pop25
	i32.const	$push75=, 0
	i32.const	$push26=, 1
	i32.add 	$push27=, $3, $pop26
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_jjRKS4_@FUNCTION, $9, $0, $pop75, $pop27, $0
	block   	
	block   	
	i32.load8_u	$push28=, 0($0)
	i32.const	$push74=, 1
	i32.and 	$push29=, $pop28, $pop74
	br_if   	0, $pop29
	i32.const	$push76=, 0
	i32.store16	0($0), $pop76
	br      	1
.LBB75_11:
	end_block
	i32.const	$push30=, 8
	i32.add 	$push31=, $0, $pop30
	i32.load	$push32=, 0($pop31)
	i32.const	$push78=, 0
	i32.store8	0($pop32), $pop78
	i32.const	$push33=, 4
	i32.add 	$push34=, $0, $pop33
	i32.const	$push77=, 0
	i32.store	0($pop34), $pop77
.LBB75_12:
	end_block
	i32.const	$push35=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $0, $pop35
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.const	$push79=, 8
	i32.add 	$push38=, $9, $pop79
	i32.load	$push39=, 0($pop38)
	i32.store	0($pop37), $pop39
	i64.load	$push40=, 0($9)
	i64.store	0($0):p2align=2, $pop40
.LBB75_13:
	end_block
	i32.const	$push47=, 0
	i32.const	$push45=, 16
	i32.add 	$push46=, $9, $pop45
	i32.store	__stack_pointer($pop47), $pop46
	.endfunc
.Lfunc_end75:
	.size	_ZNK5kcwio4name9to_stringEv, .Lfunc_end75-_ZNK5kcwio4name9to_stringEv

	.section	.text._ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE,"axG",@progbits,_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE,comdat
	.hidden	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE
	.weak	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE
	.type	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE,@function
_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push55=, 8
	i32.add 	$push54=, $pop8, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.store	4($0), $pop53
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push52=, 7
	i32.gt_u	$push11=, $pop10, $pop52
	i32.const	$push51=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop11, $pop51
	i32.const	$push50=, 8
	i32.add 	$push12=, $1, $pop50
	i32.load	$push13=, 4($0)
	i32.const	$push49=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop49
	i32.load	$push14=, 4($0)
	i32.const	$push48=, 8
	i32.add 	$push15=, $pop14, $pop48
	i32.store	4($0), $pop15
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.call	$push20=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop19
	i32.const	$push16=, 28
	i32.add 	$push17=, $1, $pop16
	i32.call	$push21=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop20, $pop17
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.call	$push24=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop21, $pop23
	i32.const	$push25=, 52
	i32.add 	$push26=, $1, $pop25
	i32.call	$push27=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop24, $pop26
	i32.const	$push28=, 64
	i32.add 	$push29=, $1, $pop28
	i32.call	$push30=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop27, $pop29
	i32.const	$push31=, 76
	i32.add 	$push32=, $1, $pop31
	i32.call	$push47=, _ZN5kcwiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop30, $pop32
	tee_local	$push46=, $0=, $pop47
	i32.load	$push34=, 8($pop46)
	i32.load	$push33=, 4($0)
	i32.sub 	$push35=, $pop34, $pop33
	i32.const	$push45=, 7
	i32.gt_u	$push36=, $pop35, $pop45
	i32.const	$push44=, .L.str.9
	call    	kcwio_assert@FUNCTION, $pop36, $pop44
	i32.const	$push38=, 88
	i32.add 	$push39=, $1, $pop38
	i32.load	$push37=, 4($0)
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop39, $pop37, $pop43
	i32.load	$push40=, 4($0)
	i32.const	$push42=, 8
	i32.add 	$push41=, $pop40, $pop42
	i32.store	4($0), $pop41
	copy_local	$push56=, $0
	.endfunc
.Lfunc_end76:
	.size	_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE, .Lfunc_end76-_ZrsIN5kcwio10datastreamIPKcEEERT_S6_RN9commodity11goodsx_infoE

	.text
	.hidden	memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$5=, 0
	block   	
	i32.eqz 	$push10=, $2
	br_if   	0, $pop10
.LBB77_2:
	block   	
	loop    	
	i32.load8_u	$push4=, 0($0)
	tee_local	$push3=, $3=, $pop4
	i32.load8_u	$push2=, 0($1)
	tee_local	$push1=, $4=, $pop2
	i32.ne  	$push0=, $pop3, $pop1
	br_if   	1, $pop0
	i32.const	$push9=, 1
	i32.add 	$1=, $1, $pop9
	i32.const	$push8=, 1
	i32.add 	$0=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push6=, $2, $pop7
	tee_local	$push5=, $2=, $pop6
	br_if   	0, $pop5
	br      	2
.LBB77_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB77_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end77:
	.size	memcmp, .Lfunc_end77-memcmp

	.weak	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	block   	
	i32.const	$push0=, 1
	i32.select	$push4=, $0, $pop0, $0
	tee_local	$push3=, $1=, $pop4
	i32.call	$push2=, malloc@FUNCTION, $pop3
	tee_local	$push1=, $0=, $pop2
	br_if   	0, $pop1
.LBB78_1:
	loop    	
	i32.const	$0=, 0
	i32.const	$push9=, 0
	i32.load	$push8=, _ZStL13__new_handler($pop9)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push10=, $pop7
	br_if   	1, $pop10
	call_indirect	$2
	i32.call	$push6=, malloc@FUNCTION, $1
	tee_local	$push5=, $0=, $pop6
	i32.eqz 	$push11=, $pop5
	br_if   	0, $pop11
.LBB78_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end78:
	.size	_Znwj, .Lfunc_end78-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB79_2:
	end_block
	.endfunc
.Lfunc_end79:
	.size	_ZdlPv, .Lfunc_end79-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end80:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end80-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push0=, $0, $1
	br_if   	0, $pop0
	i32.load	$push2=, 4($1)
	i32.load8_u	$push28=, 0($1)
	tee_local	$push27=, $2=, $pop28
	i32.const	$push26=, 1
	i32.shr_u	$push1=, $pop27, $pop26
	i32.const	$push25=, 1
	i32.and 	$push24=, $2, $pop25
	tee_local	$push23=, $4=, $pop24
	i32.select	$2=, $pop2, $pop1, $pop23
	i32.const	$push22=, 1
	i32.add 	$5=, $1, $pop22
	i32.load	$6=, 8($1)
	i32.const	$1=, 10
	block   	
	i32.load8_u	$push21=, 0($0)
	tee_local	$push20=, $3=, $pop21
	i32.const	$push19=, 1
	i32.and 	$push3=, $pop20, $pop19
	i32.eqz 	$push34=, $pop3
	br_if   	0, $pop34
	i32.load	$push30=, 0($0)
	tee_local	$push29=, $3=, $pop30
	i32.const	$push4=, -2
	i32.and 	$push5=, $pop29, $pop4
	i32.const	$push6=, -1
	i32.add 	$1=, $pop5, $pop6
.LBB81_3:
	end_block
	i32.select	$5=, $6, $5, $4
	i32.const	$push31=, 1
	i32.and 	$4=, $3, $pop31
	block   	
	block   	
	block   	
	i32.le_u	$push7=, $2, $1
	br_if   	0, $pop7
	br_if   	1, $4
	i32.const	$push14=, 254
	i32.and 	$push15=, $3, $pop14
	i32.const	$push16=, 1
	i32.shr_u	$3=, $pop15, $pop16
	br      	2
.LBB81_6:
	end_block
	br_if   	3, $4
	i32.const	$push8=, 1
	i32.add 	$1=, $0, $pop8
	br_if   	4, $2
	br      	5
.LBB81_8:
	end_block
	i32.load	$3=, 4($0)
.LBB81_9:
	end_block
	i32.sub 	$push17=, $2, $1
	i32.const	$push18=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc@FUNCTION, $0, $1, $pop17, $3, $pop18, $3, $2, $5
.LBB81_10:
	end_block
	return  	$0
.LBB81_11:
	end_block
	i32.load	$1=, 8($0)
	i32.eqz 	$push35=, $2
	br_if   	1, $pop35
.LBB81_12:
	end_block
	i32.call	$drop=, memmove@FUNCTION, $1, $5, $2
.LBB81_13:
	end_block
	i32.add 	$push9=, $1, $2
	i32.const	$push10=, 0
	i32.store8	0($pop9), $pop10
	block   	
	i32.load8_u	$push11=, 0($0)
	i32.const	$push32=, 1
	i32.and 	$push12=, $pop11, $pop32
	br_if   	0, $pop12
	i32.const	$push33=, 1
	i32.shl 	$push13=, $2, $pop33
	i32.store8	0($0), $pop13
	return  	$0
.LBB81_15:
	end_block
	i32.store	4($0), $2
	copy_local	$push36=, $0
	.endfunc
.Lfunc_end81:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_, .Lfunc_end81-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc:
	.param  	i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32
	block   	
	i32.const	$push0=, -18
	i32.sub 	$push1=, $pop0, $1
	i32.lt_u	$push2=, $pop1, $2
	br_if   	0, $pop2
	block   	
	block   	
	i32.load8_u	$push3=, 0($0)
	i32.const	$push24=, 1
	i32.and 	$push4=, $pop3, $pop24
	br_if   	0, $pop4
	i32.const	$push25=, 1
	i32.add 	$9=, $0, $pop25
	br      	1
.LBB82_3:
	end_block
	i32.load	$9=, 8($0)
.LBB82_4:
	end_block
	i32.const	$10=, -17
	block   	
	i32.const	$push5=, 2147483622
	i32.gt_u	$push6=, $1, $pop5
	br_if   	0, $pop6
	i32.const	$10=, 11
	i32.const	$push7=, 1
	i32.shl 	$push32=, $1, $pop7
	tee_local	$push31=, $8=, $pop32
	i32.add 	$push30=, $2, $1
	tee_local	$push29=, $2=, $pop30
	i32.lt_u	$push8=, $2, $8
	i32.select	$push28=, $pop31, $pop29, $pop8
	tee_local	$push27=, $2=, $pop28
	i32.const	$push26=, 11
	i32.lt_u	$push9=, $pop27, $pop26
	br_if   	0, $pop9
	i32.const	$push10=, 16
	i32.add 	$push11=, $2, $pop10
	i32.const	$push12=, -16
	i32.and 	$10=, $pop11, $pop12
.LBB82_7:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $10
	block   	
	i32.eqz 	$push39=, $4
	br_if   	0, $pop39
	i32.call	$drop=, memcpy@FUNCTION, $2, $9, $4
.LBB82_9:
	end_block
	block   	
	i32.eqz 	$push40=, $6
	br_if   	0, $pop40
	i32.add 	$push13=, $2, $4
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $7, $6
.LBB82_11:
	end_block
	block   	
	i32.sub 	$push36=, $3, $5
	tee_local	$push35=, $3=, $pop36
	i32.sub 	$push34=, $pop35, $4
	tee_local	$push33=, $7=, $pop34
	i32.eqz 	$push41=, $pop33
	br_if   	0, $pop41
	i32.add 	$push16=, $2, $4
	i32.add 	$push17=, $pop16, $6
	i32.add 	$push14=, $9, $4
	i32.add 	$push15=, $pop14, $5
	i32.call	$drop=, memcpy@FUNCTION, $pop17, $pop15, $7
.LBB82_13:
	end_block
	block   	
	i32.const	$push18=, 10
	i32.eq  	$push19=, $1, $pop18
	br_if   	0, $pop19
	call    	_ZdlPv@FUNCTION, $9
.LBB82_15:
	end_block
	i32.store	8($0), $2
	i32.const	$push20=, 1
	i32.or  	$push21=, $10, $pop20
	i32.store	0($0), $pop21
	i32.add 	$push38=, $3, $6
	tee_local	$push37=, $4=, $pop38
	i32.store	4($0), $pop37
	i32.add 	$push22=, $2, $4
	i32.const	$push23=, 0
	i32.store8	0($pop22), $pop23
	return
.LBB82_16:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end82:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc, .Lfunc_end82-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, -16
	i32.ge_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.const	$2=, 10
	block   	
	i32.load8_u	$push35=, 0($0)
	tee_local	$push34=, $5=, $pop35
	i32.const	$push33=, 1
	i32.and 	$push2=, $pop34, $pop33
	i32.eqz 	$push52=, $pop2
	br_if   	0, $pop52
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $5=, $pop37
	i32.const	$push3=, -2
	i32.and 	$push4=, $pop36, $pop3
	i32.const	$push5=, -1
	i32.add 	$2=, $pop4, $pop5
.LBB83_3:
	end_block
	block   	
	block   	
	i32.const	$push38=, 1
	i32.and 	$push6=, $5, $pop38
	br_if   	0, $pop6
	i32.const	$push7=, 254
	i32.and 	$push8=, $5, $pop7
	i32.const	$push9=, 1
	i32.shr_u	$3=, $pop8, $pop9
	br      	1
.LBB83_5:
	end_block
	i32.load	$3=, 4($0)
.LBB83_6:
	end_block
	i32.const	$4=, 10
	block   	
	i32.gt_u	$push10=, $3, $1
	i32.select	$push40=, $3, $1, $pop10
	tee_local	$push39=, $1=, $pop40
	i32.const	$push11=, 11
	i32.lt_u	$push12=, $pop39, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.const	$push17=, -1
	i32.add 	$4=, $pop16, $pop17
.LBB83_8:
	end_block
	block   	
	i32.eq  	$push18=, $4, $2
	br_if   	0, $pop18
	block   	
	block   	
	i32.const	$push19=, 10
	i32.ne  	$push20=, $4, $pop19
	br_if   	0, $pop20
	i32.const	$6=, 1
	i32.const	$push41=, 1
	i32.add 	$1=, $0, $pop41
	i32.load	$2=, 8($0)
	i32.const	$7=, 0
	br      	1
.LBB83_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB83_13:
	end_block
	block   	
	i32.load8_u	$push45=, 0($0)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.and 	$push23=, $pop44, $pop43
	br_if   	0, $pop23
	i32.const	$7=, 1
	i32.const	$push46=, 1
	i32.add 	$2=, $0, $pop46
	i32.const	$6=, 0
	br      	1
.LBB83_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB83_16:
	end_block
	block   	
	block   	
	i32.const	$push47=, 1
	i32.and 	$push24=, $5, $pop47
	br_if   	0, $pop24
	i32.const	$push25=, 254
	i32.and 	$push26=, $5, $pop25
	i32.const	$push48=, 1
	i32.shr_u	$5=, $pop26, $pop48
	br      	1
.LBB83_18:
	end_block
	i32.load	$5=, 4($0)
.LBB83_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB83_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB83_23:
	end_block
	block   	
	i32.eqz 	$push56=, $7
	br_if   	0, $pop56
	i32.store	4($0), $3
	i32.store	8($0), $1
	i32.const	$push30=, 1
	i32.add 	$push31=, $4, $pop30
	i32.const	$push51=, 1
	i32.or  	$push32=, $pop31, $pop51
	i32.store	0($0), $pop32
	return
.LBB83_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB83_26:
	end_block
	return
.LBB83_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end83:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end83-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end84:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end84-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push23=, 8
	i32.add 	$push22=, $0, $pop23
	tee_local	$push21=, $3=, $pop22
	i32.const	$push1=, 0
	i32.store	0($pop21), $pop1
	block   	
	i32.load8_u	$push2=, 0($1)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push18=, 0($1):p2align=2
	i64.store	0($0):p2align=2, $pop18
	i32.const	$push24=, 8
	i32.add 	$push19=, $1, $pop24
	i32.load	$push20=, 0($pop19)
	i32.store	0($3), $pop20
	return  	$0
.LBB85_2:
	end_block
	block   	
	i32.load	$push26=, 4($1)
	tee_local	$push25=, $3=, $pop26
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop25, $pop5
	br_if   	0, $pop6
	i32.load	$2=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $3, $pop14
	i32.store8	0($0), $pop15
	i32.const	$push27=, 1
	i32.add 	$1=, $0, $pop27
	br_if   	1, $3
	br      	2
.LBB85_5:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $3, $pop9
	i32.const	$push11=, -16
	i32.and 	$push29=, $pop10, $pop11
	tee_local	$push28=, $4=, $pop29
	i32.call	$1=, _Znwj@FUNCTION, $pop28
	i32.const	$push12=, 1
	i32.or  	$push13=, $4, $pop12
	i32.store	0($0), $pop13
	i32.store	8($0), $1
	i32.store	4($0), $3
.LBB85_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB85_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB85_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end85:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end85-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_jjRKS4_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_:
	.param  	i32, i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
	i64.const	$push1=, 0
	i64.store	0($0):p2align=2, $pop1
	i32.const	$push2=, 8
	i32.add 	$push3=, $0, $pop2
	i32.const	$push4=, 0
	i32.store	0($pop3), $pop4
	block   	
	i32.load	$push6=, 4($1)
	i32.load8_u	$push31=, 0($1)
	tee_local	$push30=, $8=, $pop31
	i32.const	$push29=, 1
	i32.shr_u	$push5=, $pop30, $pop29
	i32.const	$push28=, 1
	i32.and 	$push27=, $8, $pop28
	tee_local	$push26=, $5=, $pop27
	i32.select	$push25=, $pop6, $pop5, $pop26
	tee_local	$push24=, $8=, $pop25
	i32.lt_u	$push7=, $pop24, $2
	br_if   	0, $pop7
	i32.sub 	$push35=, $8, $2
	tee_local	$push34=, $8=, $pop35
	i32.lt_u	$push8=, $8, $3
	i32.select	$push33=, $pop34, $3, $pop8
	tee_local	$push32=, $3=, $pop33
	i32.const	$push9=, -16
	i32.ge_u	$push10=, $pop32, $pop9
	br_if   	0, $pop10
	i32.load	$6=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push13=, 11
	i32.ge_u	$push14=, $3, $pop13
	br_if   	0, $pop14
	i32.const	$push20=, 1
	i32.shl 	$push21=, $3, $pop20
	i32.store8	0($0), $pop21
	i32.const	$push36=, 1
	i32.add 	$8=, $0, $pop36
	br_if   	1, $3
	br      	2
.LBB86_4:
	end_block
	i32.const	$push15=, 16
	i32.add 	$push16=, $3, $pop15
	i32.const	$push17=, -16
	i32.and 	$push38=, $pop16, $pop17
	tee_local	$push37=, $7=, $pop38
	i32.call	$8=, _Znwj@FUNCTION, $pop37
	i32.const	$push18=, 1
	i32.or  	$push19=, $7, $pop18
	i32.store	0($0), $pop19
	i32.store	8($0), $8
	i32.store	4($0), $3
.LBB86_5:
	end_block
	i32.const	$push39=, 1
	i32.add 	$push11=, $1, $pop39
	i32.select	$push12=, $6, $pop11, $5
	i32.add 	$push0=, $pop12, $2
	i32.call	$drop=, memcpy@FUNCTION, $8, $pop0, $3
.LBB86_6:
	end_block
	i32.add 	$push22=, $8, $3
	i32.const	$push23=, 0
	i32.store8	0($pop22), $pop23
	return  	$0
.LBB86_7:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end86:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_, .Lfunc_end86-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_

	.text
	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5kcwio11memory_heapE
	i32.call	$push1=, _ZN5kcwio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end87:
	.size	malloc, .Lfunc_end87-malloc

	.section	.text._ZN5kcwio14memory_manager6mallocEm,"axG",@progbits,_ZN5kcwio14memory_manager6mallocEm,comdat
	.hidden	_ZN5kcwio14memory_manager6mallocEm
	.weak	_ZN5kcwio14memory_manager6mallocEm
	.type	_ZN5kcwio14memory_manager6mallocEm,@function
_ZN5kcwio14memory_manager6mallocEm:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push128=, $1
	br_if   	0, $pop128
	block   	
	i32.load	$push63=, 8384($0)
	tee_local	$push62=, $13=, $pop63
	br_if   	0, $pop62
	i32.const	$13=, 16
	i32.const	$push0=, 8384
	i32.add 	$push1=, $0, $pop0
	i32.const	$push64=, 16
	i32.store	0($pop1), $pop64
.LBB88_3:
	end_block
	i32.const	$push2=, 8
	i32.add 	$push3=, $1, $pop2
	i32.const	$push69=, 4
	i32.add 	$push4=, $1, $pop69
	i32.const	$push5=, 7
	i32.and 	$push68=, $pop4, $pop5
	tee_local	$push67=, $2=, $pop68
	i32.sub 	$push6=, $pop3, $pop67
	i32.select	$2=, $pop6, $1, $2
	block   	
	block   	
	block   	
	i32.load	$push66=, 8388($0)
	tee_local	$push65=, $10=, $pop66
	i32.ge_u	$push7=, $pop65, $13
	br_if   	0, $pop7
	i32.const	$push8=, 12
	i32.mul 	$push9=, $10, $pop8
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, 8192
	i32.add 	$1=, $pop10, $pop11
	block   	
	br_if   	0, $10
	i32.const	$push12=, 8196
	i32.add 	$push71=, $0, $pop12
	tee_local	$push70=, $13=, $pop71
	i32.load	$push13=, 0($pop70)
	br_if   	0, $pop13
	i32.const	$push14=, 8192
	i32.store	0($1), $pop14
	i32.store	0($13), $0
.LBB88_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB88_8:
	loop    	
	block   	
	i32.load	$push74=, 8($1)
	tee_local	$push73=, $13=, $pop74
	i32.add 	$push15=, $pop73, $10
	i32.load	$push16=, 0($1)
	i32.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.load	$push18=, 4($1)
	i32.add 	$push84=, $pop18, $13
	tee_local	$push83=, $13=, $pop84
	i32.load	$push19=, 0($13)
	i32.const	$push82=, -2147483648
	i32.and 	$push20=, $pop19, $pop82
	i32.or  	$push21=, $pop20, $2
	i32.store	0($pop83), $pop21
	i32.const	$push81=, 8
	i32.add 	$push80=, $1, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $10
	i32.store	0($pop79), $pop23
	i32.load	$push24=, 0($13)
	i32.const	$push78=, -2147483648
	i32.or  	$push25=, $pop24, $pop78
	i32.store	0($13), $pop25
	i32.const	$push77=, 4
	i32.add 	$push76=, $13, $pop77
	tee_local	$push75=, $1=, $pop76
	br_if   	3, $pop75
.LBB88_10:
	end_block
	i32.call	$push86=, _ZN5kcwio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB88_11:
	end_loop
	end_block
	i32.const	$push26=, 2147483644
	i32.sub 	$4=, $pop26, $2
	i32.const	$push55=, 8392
	i32.add 	$11=, $0, $pop55
	i32.const	$push57=, 8384
	i32.add 	$12=, $0, $pop57
	i32.load	$push88=, 8392($0)
	tee_local	$push87=, $3=, $pop88
	copy_local	$13=, $pop87
.LBB88_12:
	loop    	
	i32.const	$push100=, 12
	i32.mul 	$push27=, $13, $pop100
	i32.add 	$push99=, $0, $pop27
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, 8200
	i32.add 	$push29=, $pop98, $pop97
	i32.load	$push30=, 0($pop29)
	i32.const	$push96=, 8192
	i32.add 	$push95=, $1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.load	$push28=, 0($pop94)
	i32.eq  	$push31=, $pop30, $pop28
	i32.const	$push93=, .L.str.1.21
	call    	kcwio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB88_13:
	loop    	
	i32.load	$push33=, 0($5)
	i32.add 	$7=, $6, $pop33
	i32.const	$push107=, -4
	i32.add 	$push106=, $13, $pop107
	tee_local	$push105=, $8=, $pop106
	i32.load	$push104=, 0($pop105)
	tee_local	$push103=, $9=, $pop104
	i32.const	$push102=, 2147483647
	i32.and 	$1=, $pop103, $pop102
	block   	
	i32.const	$push101=, 0
	i32.lt_s	$push34=, $9, $pop101
	br_if   	0, $pop34
	block   	
	i32.ge_u	$push35=, $1, $2
	br_if   	0, $pop35
.LBB88_15:
	loop    	
	i32.add 	$push109=, $13, $1
	tee_local	$push108=, $10=, $pop109
	i32.ge_u	$push36=, $pop108, $7
	br_if   	1, $pop36
	i32.load	$push112=, 0($10)
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 0
	i32.lt_s	$push37=, $pop111, $pop110
	br_if   	1, $pop37
	i32.const	$push116=, 2147483647
	i32.and 	$push38=, $10, $pop116
	i32.add 	$push39=, $1, $pop38
	i32.const	$push115=, 4
	i32.add 	$push114=, $pop39, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.lt_u	$push40=, $pop113, $2
	br_if   	0, $pop40
.LBB88_18:
	end_loop
	end_block
	i32.lt_u	$push41=, $1, $2
	i32.select	$push42=, $1, $2, $pop41
	i32.const	$push117=, -2147483648
	i32.and 	$push43=, $9, $pop117
	i32.or  	$push44=, $pop42, $pop43
	i32.store	0($8), $pop44
	block   	
	i32.le_u	$push45=, $1, $2
	br_if   	0, $pop45
	i32.add 	$push46=, $13, $2
	i32.add 	$push47=, $4, $1
	i32.const	$push118=, 2147483647
	i32.and 	$push48=, $pop47, $pop118
	i32.store	0($pop46), $pop48
.LBB88_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB88_21:
	end_block
	i32.add 	$push53=, $13, $1
	i32.const	$push121=, 4
	i32.add 	$push120=, $pop53, $pop121
	tee_local	$push119=, $13=, $pop120
	i32.lt_u	$push54=, $pop119, $7
	br_if   	0, $pop54
	end_loop
	i32.const	$1=, 0
	i32.const	$push127=, 0
	i32.load	$push56=, 0($11)
	i32.const	$push126=, 1
	i32.add 	$push125=, $pop56, $pop126
	tee_local	$push124=, $13=, $pop125
	i32.load	$push58=, 0($12)
	i32.eq  	$push59=, $13, $pop58
	i32.select	$push123=, $pop127, $pop124, $pop59
	tee_local	$push122=, $13=, $pop123
	i32.store	0($11), $pop122
	i32.ne  	$push60=, $13, $3
	br_if   	0, $pop60
.LBB88_23:
	end_loop
	end_block
	return  	$1
.LBB88_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB88_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end88:
	.size	_ZN5kcwio14memory_manager6mallocEm, .Lfunc_end88-_ZN5kcwio14memory_manager6mallocEm

	.section	.text._ZN5kcwio14memory_manager16next_active_heapEv,"axG",@progbits,_ZN5kcwio14memory_manager16next_active_heapEv,comdat
	.hidden	_ZN5kcwio14memory_manager16next_active_heapEv
	.weak	_ZN5kcwio14memory_manager16next_active_heapEv
	.type	_ZN5kcwio14memory_manager16next_active_heapEv,@function
_ZN5kcwio14memory_manager16next_active_heapEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.load	$1=, 8388($0)
	block   	
	block   	
	i32.const	$push94=, 0
	i32.load8_u	$push2=, _ZZ4sbrkjE11initialized($pop94)
	i32.eqz 	$push157=, $pop2
	br_if   	0, $pop157
	i32.const	$push95=, 0
	i32.load	$7=, _ZZ4sbrkjE10sbrk_bytes($pop95)
	br      	1
.LBB89_2:
	end_block
	current_memory	$7=
	i32.const	$push99=, 0
	i32.const	$push3=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop99), $pop3
	i32.const	$push98=, 0
	i32.const	$push4=, 16
	i32.shl 	$push97=, $7, $pop4
	tee_local	$push96=, $7=, $pop97
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop98), $pop96
.LBB89_3:
	end_block
	copy_local	$3=, $7
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 65535
	i32.add 	$push6=, $7, $pop5
	i32.const	$push7=, 16
	i32.shr_u	$push103=, $pop6, $pop7
	tee_local	$push102=, $2=, $pop103
	current_memory	$push101=
	tee_local	$push100=, $8=, $pop101
	i32.le_u	$push8=, $pop102, $pop100
	br_if   	0, $pop8
	i32.sub 	$push9=, $2, $8
	grow_memory	$pop9
	i32.const	$8=, 0
	current_memory	$push10=
	i32.ne  	$push11=, $2, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, 0
	i32.load	$3=, _ZZ4sbrkjE10sbrk_bytes($pop12)
.LBB89_6:
	end_block
	i32.const	$8=, 0
	i32.const	$push105=, 0
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop105), $3
	i32.const	$push104=, 0
	i32.lt_s	$push13=, $7, $pop104
	br_if   	0, $pop13
	i32.const	$push0=, 12
	i32.mul 	$push1=, $1, $pop0
	i32.add 	$2=, $0, $pop1
	i32.const	$push20=, 65536
	i32.const	$push19=, 131072
	i32.const	$push16=, 65535
	i32.and 	$push110=, $7, $pop16
	tee_local	$push109=, $8=, $pop110
	i32.const	$push17=, 64513
	i32.lt_u	$push108=, $pop109, $pop17
	tee_local	$push107=, $6=, $pop108
	i32.select	$push21=, $pop20, $pop19, $pop107
	i32.add 	$push22=, $7, $pop21
	i32.const	$push14=, 131071
	i32.and 	$push15=, $7, $pop14
	i32.select	$push18=, $8, $pop15, $6
	i32.sub 	$push23=, $pop22, $pop18
	i32.sub 	$7=, $pop23, $7
	block   	
	i32.const	$push106=, 0
	i32.load8_u	$push24=, _ZZ4sbrkjE11initialized($pop106)
	br_if   	0, $pop24
	current_memory	$3=
	i32.const	$push114=, 0
	i32.const	$push25=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop114), $pop25
	i32.const	$push113=, 0
	i32.const	$push26=, 16
	i32.shl 	$push112=, $3, $pop26
	tee_local	$push111=, $3=, $pop112
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop113), $pop111
.LBB89_9:
	end_block
	i32.const	$push116=, 8192
	i32.add 	$2=, $2, $pop116
	i32.const	$push115=, 0
	i32.lt_s	$push27=, $7, $pop115
	br_if   	1, $pop27
	copy_local	$6=, $3
	block   	
	i32.const	$push28=, 7
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, -8
	i32.and 	$push122=, $pop29, $pop30
	tee_local	$push121=, $5=, $pop122
	i32.add 	$push31=, $pop121, $3
	i32.const	$push32=, 65535
	i32.add 	$push33=, $pop31, $pop32
	i32.const	$push34=, 16
	i32.shr_u	$push120=, $pop33, $pop34
	tee_local	$push119=, $8=, $pop120
	current_memory	$push118=
	tee_local	$push117=, $4=, $pop118
	i32.le_u	$push35=, $pop119, $pop117
	br_if   	0, $pop35
	i32.sub 	$push36=, $8, $4
	grow_memory	$pop36
	current_memory	$push37=
	i32.ne  	$push38=, $8, $pop37
	br_if   	2, $pop38
	i32.const	$push39=, 0
	i32.load	$6=, _ZZ4sbrkjE10sbrk_bytes($pop39)
.LBB89_13:
	end_block
	i32.const	$push41=, 0
	i32.add 	$push40=, $6, $5
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop41), $pop40
	i32.const	$push42=, -1
	i32.eq  	$push43=, $3, $pop42
	br_if   	1, $pop43
	i32.const	$push44=, 12
	i32.mul 	$push45=, $1, $pop44
	i32.add 	$push128=, $0, $pop45
	tee_local	$push127=, $1=, $pop128
	i32.const	$push46=, 8196
	i32.add 	$push47=, $pop127, $pop46
	i32.load	$push126=, 0($pop47)
	tee_local	$push125=, $6=, $pop126
	i32.load	$push124=, 0($2)
	tee_local	$push123=, $8=, $pop124
	i32.add 	$push48=, $pop125, $pop123
	i32.eq  	$push49=, $pop48, $3
	br_if   	2, $pop49
	block   	
	i32.const	$push50=, 8200
	i32.add 	$push132=, $1, $pop50
	tee_local	$push131=, $5=, $pop132
	i32.load	$push130=, 0($pop131)
	tee_local	$push129=, $1=, $pop130
	i32.eq  	$push51=, $8, $pop129
	br_if   	0, $pop51
	i32.add 	$push134=, $6, $1
	tee_local	$push133=, $6=, $pop134
	i32.load	$push55=, 0($6)
	i32.const	$push56=, -2147483648
	i32.and 	$push57=, $pop55, $pop56
	i32.const	$push52=, -4
	i32.sub 	$push53=, $pop52, $1
	i32.add 	$push54=, $pop53, $8
	i32.or  	$push58=, $pop57, $pop54
	i32.store	0($pop133), $pop58
	i32.load	$push59=, 0($2)
	i32.store	0($5), $pop59
	i32.load	$push60=, 0($6)
	i32.const	$push61=, 2147483647
	i32.and 	$push62=, $pop60, $pop61
	i32.store	0($6), $pop62
.LBB89_17:
	end_block
	i32.const	$push63=, 8388
	i32.add 	$push142=, $0, $pop63
	tee_local	$push141=, $2=, $pop142
	i32.load	$push64=, 0($2)
	i32.const	$push65=, 1
	i32.add 	$push140=, $pop64, $pop65
	tee_local	$push139=, $2=, $pop140
	i32.store	0($pop141), $pop139
	i32.const	$push66=, 12
	i32.mul 	$push67=, $2, $pop66
	i32.add 	$push138=, $0, $pop67
	tee_local	$push137=, $0=, $pop138
	i32.const	$push68=, 8196
	i32.add 	$push69=, $pop137, $pop68
	i32.store	0($pop69), $3
	i32.const	$push70=, 8192
	i32.add 	$push136=, $0, $pop70
	tee_local	$push135=, $8=, $pop136
	i32.store	0($pop135), $7
.LBB89_18:
	end_block
	return  	$8
.LBB89_19:
	end_block
	block   	
	i32.load	$push150=, 0($2)
	tee_local	$push149=, $8=, $pop150
	i32.const	$push72=, 12
	i32.mul 	$push73=, $1, $pop72
	i32.add 	$push148=, $0, $pop73
	tee_local	$push147=, $3=, $pop148
	i32.const	$push74=, 8200
	i32.add 	$push146=, $pop147, $pop74
	tee_local	$push145=, $1=, $pop146
	i32.load	$push144=, 0($pop145)
	tee_local	$push143=, $7=, $pop144
	i32.eq  	$push75=, $pop149, $pop143
	br_if   	0, $pop75
	i32.const	$push79=, 8196
	i32.add 	$push80=, $3, $pop79
	i32.load	$push81=, 0($pop80)
	i32.add 	$push152=, $pop81, $7
	tee_local	$push151=, $3=, $pop152
	i32.load	$push82=, 0($3)
	i32.const	$push83=, -2147483648
	i32.and 	$push84=, $pop82, $pop83
	i32.const	$push76=, -4
	i32.sub 	$push77=, $pop76, $7
	i32.add 	$push78=, $pop77, $8
	i32.or  	$push85=, $pop84, $pop78
	i32.store	0($pop151), $pop85
	i32.load	$push86=, 0($2)
	i32.store	0($1), $pop86
	i32.load	$push87=, 0($3)
	i32.const	$push88=, 2147483647
	i32.and 	$push89=, $pop87, $pop88
	i32.store	0($3), $pop89
.LBB89_21:
	end_block
	i32.const	$push90=, 8388
	i32.add 	$push156=, $0, $pop90
	tee_local	$push155=, $7=, $pop156
	i32.load	$push91=, 0($pop155)
	i32.const	$push92=, 1
	i32.add 	$push154=, $pop91, $pop92
	tee_local	$push153=, $3=, $pop154
	i32.store	8384($0), $pop153
	i32.store	0($7), $3
	i32.const	$push93=, 0
	return  	$pop93
.LBB89_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end89:
	.size	_ZN5kcwio14memory_manager16next_active_heapEv, .Lfunc_end89-_ZN5kcwio14memory_manager16next_active_heapEv

	.text
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push28=, $0
	br_if   	0, $pop28
	i32.const	$push0=, 0
	i32.load	$push16=, _ZN5kcwio11memory_heapE+8384($pop0)
	tee_local	$push15=, $2=, $pop16
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop15, $pop1
	br_if   	0, $pop2
	i32.const	$3=, _ZN5kcwio11memory_heapE+8192
	i32.const	$push18=, 12
	i32.mul 	$push3=, $2, $pop18
	i32.const	$push17=, _ZN5kcwio11memory_heapE+8192
	i32.add 	$1=, $pop3, $pop17
.LBB90_3:
	loop    	
	i32.const	$push21=, 4
	i32.add 	$push4=, $3, $pop21
	i32.load	$push20=, 0($pop4)
	tee_local	$push19=, $2=, $pop20
	i32.eqz 	$push29=, $pop19
	br_if   	1, $pop29
	block   	
	i32.const	$push22=, 4
	i32.add 	$push5=, $2, $pop22
	i32.gt_u	$push6=, $pop5, $0
	br_if   	0, $pop6
	i32.load	$push7=, 0($3)
	i32.add 	$push8=, $2, $pop7
	i32.gt_u	$push9=, $pop8, $0
	br_if   	3, $pop9
.LBB90_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB90_7:
	end_loop
	end_block
	return
.LBB90_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end90:
	.size	free, .Lfunc_end90-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"onerror"
	.size	.L.str, 8

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"kcwio"
	.size	.L.str.1, 6

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"onerror action's are only valid from the \"kcwio\" system account"
	.size	.L.str.2, 64

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"kachuo name, "
	.size	.L.str.22, 14

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"\r\n"
	.size	.L.str.4, 3

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"kachuo context: %s"
	.size	.L.str.23, 19

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.6, 51

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"write"
	.size	.L.str.15, 6

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"next primary key in table is at autoincrement limit"
	.size	.L.str.7, 52

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"cannot decrement end iterator when the table is empty"
	.size	.L.str.12, 54

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"cannot decrement iterator at beginning of table"
	.size	.L.str.13, 48

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"error reading iterator"
	.size	.L.str.8, 23

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"read"
	.size	.L.str.9, 5

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"get"
	.size	.L.str.10, 4

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"tourist name, "
	.size	.L.str.20, 15

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"tourist context: %s"
	.size	.L.str.21, 20

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"scenic name, "
	.size	.L.str.18, 14

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"scenic context: %s"
	.size	.L.str.19, 19

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"store name, "
	.size	.L.str.16, 13

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"store context: %s"
	.size	.L.str.17, 18

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"goods name, "
	.size	.L.str.3, 13

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"goods context: %s"
	.size	.L.str.5, 18

	.hidden	_ZZNK5kcwio4name9to_stringEvE7charmap
	.type	_ZZNK5kcwio4name9to_stringEvE7charmap,@object
	.section	.data._ZZNK5kcwio4name9to_stringEvE7charmap,"aGw",@progbits,_ZZNK5kcwio4name9to_stringEvE7charmap,comdat
	.weak	_ZZNK5kcwio4name9to_stringEvE7charmap
	.p2align	2
_ZZNK5kcwio4name9to_stringEvE7charmap:
	.int32	.L.str.14
	.size	_ZZNK5kcwio4name9to_stringEvE7charmap, 4

	.type	.L.str.14,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	".12345abcdefghijklmnopqrstuvwxyz"
	.size	.L.str.14, 33

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.hidden	_ZN5kcwio11memory_heapE
	.type	_ZN5kcwio11memory_heapE,@object
	.bss
	.globl	_ZN5kcwio11memory_heapE
	.p2align	2
_ZN5kcwio11memory_heapE:
	.skip	8396
	.size	_ZN5kcwio11memory_heapE, 8396

	.type	.L.str.1.21,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.21:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.21, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_@FUNCTION
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_jjRKS4_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_jjRKS4_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_jjRKS4_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_jjRKS4_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_@FUNCTION
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.functype	current_time, i64
	.functype	require_auth2, void, i64, i64
	.functype	kcwio_assert, void, i32, i32
	.functype	prints, void, i32
	.functype	printn, void, i64
	.functype	current_receiver, i64
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	db_lowerbound_i64, i32, i64, i64, i64, i64
	.functype	db_end_i64, i32, i64, i64, i64
	.functype	db_previous_i64, i32, i32, i32
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	memset, i32, i32, i32, i32
	.functype	abort, void
	.functype	memmove, i32, i32, i32, i32
