; mads plus4-mads-header.asm -o:plus4-mads.prg

      opt h-

      org [a($1001),a($100b),a(10),$9e,c'4109',t(0)],$100d

      ldx #0
      beq entry
@     sta $c00,x
      inx
entry lda text,x
      bne @-
      rts

text  .cbm 'mads'
      .by 0