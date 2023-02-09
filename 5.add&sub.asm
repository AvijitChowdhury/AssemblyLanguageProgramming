.model small
.stack 100h
.data
   A DB ?
   B DB ?

.code


main proc
    
   ;code for input      
   MOV AH,1
   int 21h  
    
   ;instruction destination,source
   mov A ,AL 
   sub A,48 ;A =A-48
   int 21h
   mov B ,AL
   sub B ,48;B = B-48      
   int 21h
   
   mov bh,A
   add bh,B
   add bh,48
   
   ;for printing new lin
   mov ah,2
   mov dl,0AH
   int 21h
   mov dl,0DH
   int 21h
   
   mov ah,2
   mov dl,bh
   int 21h
   
    
   mov ah,4ch
   int 21h
   main endp
    
end main