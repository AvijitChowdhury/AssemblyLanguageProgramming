.model small
.stack 100H
.data ;the variable which are declared

.code
;code segment 
main proc
    ;statement segment
    
    mov num1, num2
    
    mov ah,4ch
    int 21h
    main endp

end main