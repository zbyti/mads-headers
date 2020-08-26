; https://github.com/mnaberez/py65

; mads test.asm
; py65mon -l test.obx -g 200

        opt h-

        org 0 \ brk \ .align $200,0

        ldx #0
loop:   lda text,x
        sta $f001
        inx
        bne loop
        rts

text:  .byte 'MADS Rulez!',0
