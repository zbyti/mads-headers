; mads c64-mads.asm -o:c64-mads.prg

      opt h-

      org [a($801),a($80b),a(10),b($9e),c'2064',a(0),f(0)],$810

      lda #0
      sta $d020
      rts
