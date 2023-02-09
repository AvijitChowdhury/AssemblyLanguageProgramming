.model small
.stack 100h
.data
;the variable which are declared
.code
                                ;code statement
main proc
    
    
    mov ah,1
    int 21h
    ;the input is stored in 'AL' register
    
    mov ah,2
    mov dl,al
    int 21h
    
    
    
    mov ah,4ch
    int 21h
    main endp    
    
end main