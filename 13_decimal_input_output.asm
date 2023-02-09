include 'EMU8086.INC'
.model small
.stack 100h
.data 
    n DB 0
    NUMBER DB 0 
    COUNT DB 0

.code
main proc
    
    mov ax,@data
    mov ds,ax 
    xor cx,cx;counter
    xor dx,dx;to store the result
    
    call decimal_input
    
    printn
    mov ah,2
    int 21h
    printn
    mov n,dl
    call decimal_output
    
    
    mov ah,4ch
    int 21h
    main endp
    

decimal_input proc
    print "INPUT: "
    for:
        mov ah,1
        int 21h
        cmp al,0dh
        je end_for
        sub al,48
        mov n,al
        mov al,10
        mul dl
        add al,n
        mov dl,al
        inc COUNT
        jmp for
    end_for:
    
    ret

    
decimal_input endp

decimal_output proc
    
    print "output"
    xor cx,cx
    mov cl,COUNT 
    
    mov bl,10
    xor ah,ah
    mov al,n
    
    for2:
        div bl
        xor dx,dx
        mov dl,ah
        add dl,48
        push dx
    loop for2
    
    xor cx,cx
    mov cl,count
    mov ah,2
    for3:
        pop dx
        int 21h
    loop for3
    
    ret
    
    
decimal_output endp
end main