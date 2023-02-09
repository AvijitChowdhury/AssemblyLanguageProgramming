INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data


.code


main proc
          
   
   
   MOV BX, 10;RANDOM NUMBER
   
   CMP BX,100
   JGE IF1
   
   CMP BX,80
   JGE IF2
   
   CMP BX,70
   JGE IF3
   
   CMP BX,60
   JGE IF4
   
   JMP ELSE
   
   IF1:
   PRINTN "GOT HIGHEST NUMBER AND GOT A+"
   JMP END_IF 
   
   IF2:
   PRINTN "GOT A+"
   JMP END_IF
   
    IF3:
   PRINTN "GOT A"
   JMP END_IF
   
    IF4:
   PRINTN " GOT A-"
   JMP END_IF
   
   ELSE:
   PRINTN "FAILED"
   
   END_IF:
           
            
   mov ah,4ch
   int 21h
   main endp
    
end main

