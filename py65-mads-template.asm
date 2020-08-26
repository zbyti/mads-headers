; https://github.com/mnaberez/py65

; mads py65-mads-template.asm
; py65mon -l py65-mads-template.obx -g 200

      opt h-

      org 0 \ brk \ .align $200,0

      ldx #$ff
@     inx
      lda text,x
      sta $f001
      bne @-
      brk

text  .by 'MADS Rulez!' 0 '??'
