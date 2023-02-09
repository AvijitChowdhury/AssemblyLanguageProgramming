INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data


.code


main proc
    
  
   printn 'hello world'
   printn 'avijit'
   
   mov ah,4ch
   int 21h
   main endp
    
end main