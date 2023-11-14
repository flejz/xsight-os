org 0x7c00
bits 16       ; legacy BIOS real mode (16 bit)

main:
  mov ah, 0x0e
  mov al, 'A'
  int 0x10

loop:
  inc al
  int 0x10
  cmp al, 'Z'
  jl  loop
  jg  exit

exit:

.halt:
  jmp .halt


; $  memory offset of the current line
; $$ memory offset of the beginning of the current sector
times 510-($-$$) db 0

db 0x55, 0xaa
