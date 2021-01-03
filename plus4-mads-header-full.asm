; mads plus4-mads-header-full.asm -o:plus4-mads.prg

      opt h-

      org $1001

      ; 10 SYS4109
      .byte $01, $10           ; header data, little-endian number indicating the starting address
      .byte $0B, $10           ; 2-byte pointer to the next line of BASIC code ($100B)
      .byte $0A, $00           ; 2-byte line number ($000A = 10)
      .byte $9E                ; Byte code for the SYS command
      .byte $34, $31, $30, $39 ; The rest of the line, which is just the string "4109"
      .byte $00                ; Null byte, terminating the line
      .byte $00, $00           ; 2-byte pointer to the next line of BASIC code ($0000 = end of program)

      org $100D

      lda #$21
      sta $0C00
      rts