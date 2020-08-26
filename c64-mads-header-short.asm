; mads c64-mads.asm -o:c64-mads.prg

      opt h-

      org $0801

      ; 10 SYS 2064
      .word $0801, next, 10
      .byte $9e, ' 2064', 0
next  .dword 0

      org $0810

      lda #0
      sta $d020
      rts
