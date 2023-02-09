; LOOP USING JMP KEYWORD
; 1 + 2 + 3 + .....+ N = ?
INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data

  N DB ?
.code


main proc
          
   
   
            
   mov ah,4ch
   int 21h
   main endp
    
end main