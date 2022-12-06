
jmp code 
choise db "Choise a color 1-red,2-blue,3-yellow,4-white:$"
choise2 db "-------------------------------------Menu-----------------------------------------------",10,13,"1-carre",10,13,"2-triangle",10,13,"3-cercle",10,13,"-----------------------------------------------------------------------------",10,13,"choise an option :$"

code:  
    carre :
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
             
        jmp end
     triangle : 
        pop ax
        mov cx,50
        mov dx,70
        mov bl,80
        First:
            inc cx
            dec bl    
            int 10h 
            jnz Firstline   
        mov bl,80
        Secondline:
            inc dx
            dec bl 
            int 10h 
            jnz Second
        mov bl,80
        Thirdline:
            dec cx
            dec dx
            dec bl 
            int 10h 
            cmp bl,0
            jne Third 
         
       
     
              
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
        mov ah,04h
        push ax
        jmp choise_t
    blue:
        mov ah,01h
        push ax 
        jmp choise_t
    yellow:    
        mov ah,14
        push ax  
        jmp choise_t
    white: 
        mov ah,15
        push ax  
        jmp choise_t
    choise_t:

    
            lea dx,choise2
            mov ah,09h
            int 21h
            mov ah,01h
            int 21h
            sub al,30h
            cmp al,01h
            je car
            cmp al,02h
            je Tr
            cmp al,03h
            je Cer
     car:
        jmp carre
              
            
     Tr:
        jmp triangle
     Cer: 
     end:
        int 10h 