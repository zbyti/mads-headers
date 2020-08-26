; mads c64-mads.asm -o:c64-mads.prg

      opt h-

      org [a($801),a($80b),a(10),b($9e),c'2064',a(0),f(0)],$810

@     inx
      lda text,x
      beq end
      sta $400,x
      bne @-
end   rts

text: .by +$c0 'MADS'
      .by 0