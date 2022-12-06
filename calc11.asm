jmp start       
Operation    db      0dh,0ah,"choisir un operation (+,-,*,/):$"
first_number    db      0dh,0ah,"Enter le premier nombre: $"
second_number    db      0dh,0ah,"Enter le deuxieme nombre: $"
error    db      0dh,0ah,"Invalid Operation  !!!!!!!! $" 
resultat    db      0dh,0ah,"Resultat : $" 
start:
    lea dx,Operation
    mov ah,09h
    int 21h    
    mov ah,01h
    int 21h
    cmp al,31h
    je addition
addition:
    lea dx,first_number 
    mov ah,09h
    int 21h   
    mov cx,0
    call input_numbers
    push dx
    lea dx,second_number 
    mov ah,09h
    int 21h      
    mov cx,0
    call input_numbers
    pop bx
    add dx,bx
    push dx     
    mov cx,1000
    call print_number
    
    
input_numbers:
    mov ah,01h
    int 21h   
    mov bx,1
    mov dx,0
    cmp al,0dh 
    je formules
    sub al,30h
    mov ah,0
    push ax
    inc cx
    jmp input_numbers    
formules:
    pop ax
    push dx
    mul bx
    pop dx
    add dx,ax 
    push dx
    mov ax,bx
    mov bx,10
    mul bx
    mov bx,ax
    pop dx
    dec cx
    cmp cx,0
    jne formules
    ret           
print_number:
    mov ax,dx
    mov dx,0
    div cx
    call print_each  
    
    push dx 
    mov dx,0
    mov ax,cx
    mov cx,10
    div cx
    mov cx,ax
    pop dx
    cmp cx,0
    jne print_number
    ret
    
print_each:
    push ax
    push dx
    mov dx,ax
    add dl,30h
    mov ah,02h
    int 21h
    pop dx
    pop ax
    ret 

    