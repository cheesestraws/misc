	.text
	.globl	_bios
	.globl  _bdos

_bios:	
    move.l	(sp)+,biosav
	trap	#13
	move.l	biosav,-(sp)
	rts
	
_bdos:
	move.l	(sp)+,bdosav
	trap	#1
	move.l	bdosav,-(sp)
	rts


	.bss
	.even
biosav:	.ds.l	1
bdosav: .ds.l   1