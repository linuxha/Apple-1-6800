        IFNDEF  WOZMON_INC
;*
;;;
;;;
;;; 
    IFDEF _SIM
;;;
;;; Setup for the simulator
;;;
      if mompass = 2
        message "***"
        message "*** Built for the sim6800"
        message "***"
      endif

;;;
;* 6850 ACIA
ACIACS  EQU     $F000           ;V3 has $F000, $F001
ACIADA  EQU     $F001
;*
    ENDIF
;*

xam         equ $0024       ; two bytes
st          equ $0026       ; two bytes
h           equ $0028
l           equ $0029

mode        equ $002b
ysav        equ $002c       ; two bytes
inptr       equ $002e       ; two bytes

; interrupt vectors (jmp table)
irq         equ $0030       ; 3 bytes
swi         equ $0033       ; 3 bytes
nmi         equ $0036       ; 3 bytes

in	    equ $0200           ; Input buffer

;* 6820 PIA
kbd	    equ $d010
kbd_cr	    equ $d011
dsp	    equ $d012
dsp_cr	    equ $d013

;*
        ENDIF
; =[ Fini ]==================================================================
;/* Local Variables: */
;/* mode:asm         */
;/* End:             */

; Notes
; 8 1000
; 9 1001
; A 1010
; B 1011
; C 1100
; D 1101
; E 1110
; F 1111
        
