;IMPORTING DATA
.model small
.stack 100H
.data 
;the variable which are declared

    ;BH BL 8 Bits register 1byte
    ;BX 16 bits register 1 word      
    NUM DB 'd' ; d=100
    NUM2 DB ?
    CHAR DB '#'
    STR DB "My Name is Emu"
    CHAR2 DB ?
       
.code
;code segment 
main proc ;INT MAIN
    ;code segment
    
    mov AX , @DATA
    MOV DS, AX
    
    mov ah,4ch
    int 21h
    main endp

end main