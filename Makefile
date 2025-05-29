#

# ------------------------------------------------------------------------------
#
lilbug.s19: lilbug.p
	p2hex +5 -F Moto -r \$$-\$$ lilbug.p lilbug.s19
	ls
	srec_info lilbug.s19

lilbug.lst: lilbug.asm lilbug.inc ascii.inc
	asl -i . -D DEF9600 -L lilbug.asm

lilbug.p: lilbug.asm lilbug.inc ascii.inc
	asl -i . -D DEF9600 -L lilbug.asm
# ------------------------------------------------------------------------------
# ACIA @$F000
wozsim.s19: wozmon-68.p
	p2hex +5 -F Moto -r \$$-\$$ wozmon-68.p wozsim.s19
	ls
	srec_info wozsim.s19

wozsim.lst: wozmon-68.asm wozmon.inc ascii.inc
	asl -i . -D SIM -L wozmon-68.asm

wozsim.p: wozmon-68.asm wozmon.inc ascii.inc
	asl -i . -D SIM -L wozmon-68.asm
# ------------------------------------------------------------------------------
# PIA @$D010 (D010-D013)
wozmon.s19: wozmon.p
	p2hex +5 -F Moto -r \$$-\$$ wozmon.p wozmon.s19
	ls
	srec_info wozmon.s19

wozmon.lst: wozmon.asm wozmon.inc ascii.inc
	asl -i . -D DEF9600 -L wozmon.asm

wozmon.p: wozmon.asm wozmon.inc ascii.inc
	asl -i . -D DEF9600 -L wozmon.asm
