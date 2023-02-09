INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data


.code


main proc
    
   start: 
   printn 'Avijit'
   jmp start
   
   mov ah,4ch
   int 21h
   main endp
    
end main