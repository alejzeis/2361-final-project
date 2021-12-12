.include "xc.inc"

.text                       ;BP (put the following data in ROM(program memory))

; This is a library, thus it can *not* contain a _main function: the C file will
; define main().  However, we
; we will need a .global statement to make available ASM functions to C code.
; All functions utilized outside of this file will need to have a leading 
; underscore (_) and be included in a comment delimited list below.
.global _write_0, _write_1, _wait_100us, _wait_1ms

_write_0:
    inc LATA
    repeat #3
    nop
    clr LATA
    repeat #6
    nop
    return
    
_write_1:
    inc LATA
    nop
    nop
    repeat #7  ;10 high
    nop
    clr LATA
    nop
    nop
    return
    
_wait_100us:
    clr LATA
    repeat #1592 ;100us low
    nop
    return

_wait_1ms:
    clr LATA
    repeat #15992
    nop
    return

