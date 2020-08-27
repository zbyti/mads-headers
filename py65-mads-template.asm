; https://github.com/mnaberez/py65

; mads py65-mads-template.asm
; py65mon -l py65-mads-template.obx -g 200

; $a enter
; $d home

      opt h-

      org 0 \ brk \ .align $200,0


      ldx #0
      jmp entry
@     inx
      sta $f001
entry lda text,x
      bne @-
      brk

text  .by 'MADS Rulez!' $a 'Template by Zbyti' 0
