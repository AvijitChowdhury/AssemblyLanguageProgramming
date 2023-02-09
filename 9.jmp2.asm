INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data


.code


main proc
          
          
   INC BX ;BX = BX+a;BX++
   DEC BX ;BX = BX-1;BX--
   
   
   MOV CX,5
   MOV BX,0
   
   ;for(int i=0;i<n;i++)
   start:
   cmp BX,CX;condtion check; I < N ;BX < CX
   JE LAST
   PRINTN "HERE"
   INC BX
   JNE start
   
   LAST:
   printn 'the program is ended'
   
   mov ah,4ch
   int 21h
   main endp
    
end main