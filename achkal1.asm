.model small
.stack 199h
.data 
    choise db "Choise a color 1-red,2-blue,3-yellow,4-white:$"
choise2 db 10,13,"--------------Menu--------------------",10,13,"1-carre",10,13,"2-triangle",10,13,"3-cercle",10,13,"--------------------------------------",10,13,"choise an option :$"
.code 
    
    carre macro
        
        pop ax
        mov cx,50
        mov dx,70 
        int 10h
        mov bl,80
        Firstline:
            inc cx
            dec bl
            int 10h 
            jnz Firstline
              
        mov bl,80
        Second:
            inc dx
            dec bl 
            int 10h 
            jnz Second
            
        mov bl,80
        Third:
            dec cx
            dec bl
            int 10h 
            cmp bl,0
            jne Third
            
        mov bl,80
        ford:
            dec dx
            dec bl
            int 10h 
            cmp bl,0
            jne ford
             
    endm
    triangle macro 
        pop ax
        mov cx,50
        mov dx,70
        mov bl,80
        First:
            inc cx
            dec bl    
            int 10h 
            jnz First   
        mov bl,80
        Secondline:
            inc dx
            dec bl 
            int 10h 
            jnz Secondline
        mov bl,80
        Thirdline:
            dec cx
            dec dx
            dec bl 
            int 10h 
            cmp bl,0
            jne Thirdline  
       endm
    main proc
        
        mov ax,data
        mov ds,ax
        lea dx,choise
    mov ah,09h
    int 21h
    mov ah,01h
    int 21h
    sub al,30h
    cmp al,01h
    je red
    cmp al,02h
    je blue
    cmp al,03h
    je yellow
    cmp al,04h
    je white 
    
    red:
        mov ah,0
        mov al,13h
        int 10h
        mov ah,0ch
        mov al,04h
        push ax
        jmp choise_t
    blue:    
        mov ah,0
        mov al,13h
        int 10h
        mov ah,0ch
        mov al,01h
        push ax
        jmp choise_t
    yellow:  
        mov ah,0
        mov al,13h
        int 10h
        mov ah,0ch  
        mov al,14
        push ax
        jmp choise_t
    white: 
        mov ah,0
        mov al,13h
        int 10h
        mov ah,0ch
        mov al,15
        push ax  
        jmp choise_t
         
        
        choise_t:

            mov ax,data
            mov ds,ax
            lea dx,choise2
            mov ah,09h
            int 21h
            mov ah,01h
            int 21h
            cmp al,31h
            je car
            cmp al,32h
            je tri
            
     car:
         carre     
     tri:
         triangle
         
    endp
end