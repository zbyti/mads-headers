; mads c64-mads.asm -o:c64-mads.prg

      opt h-

      org $0801

      ; 10 SYS2064
      .byte $01, $08           ; header data, little-endian number indicating the starting address
      .byte $0B, $08           ; 2-byte pointer to the next line of BASIC code ($080B)
      .byte $0A, $00           ; 2-byte line number ($000A = 10)
      .byte $9E                ; Byte code for the SYS command
      .byte $32, $30, $36, $34 ; The rest of the line, which is just the string "2064"
      .byte $00                ; Null byte, terminating the line
      .byte $00, $00           ; 2-byte pointer to the next line of BASIC code ($0000 = end of program)
      .byte $00, $00, $00      ; filler

      org $0810

@     inc $d020
      jmp @-