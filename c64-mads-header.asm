; mads c64-mads.asm -o:c64-mads.prg

      opt h-

			org $0801

      ; 10 SYS 2064
			.word $0801, next, 10
      .byte $9e, ' 2064', 0
next  .word 0, 0

      org $0810

@     inc $d020
      jmp @-