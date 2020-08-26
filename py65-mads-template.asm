; https://github.com/mnaberez/py65

; mads py65-mads-template.asm
; py65mon -l py65-mads-template.obx -g 200

      opt h-

      org 0 \ brk \ .align $200,0

      ldx #0
@     lda text,x
      beq end
      sta $f001
      inx
      jmp @-
end   brk

text  .by 'MADS Rulez!' 0
