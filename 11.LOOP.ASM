INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data


.code


main proc
          
   
   MOV CX,10
   TOP:
   PRINTN "LOOP IS RUNNING"
   LOOP TOP ;I-- ;I >=0
   PRINTN "LOOP IS ENDED"
           
            
   mov ah,4ch
   int 21h
   main endp
    
end main