jmp start       
Operation    db      0dh,0ah,"choisir un operation (+,-,*,/):$"
first_number    db      0dh,0ah,"Enter le premier nombre: $"
second_number    db      0dh,0ah,"Enter le deuxieme nombre: $"
error    db      0dh,0ah,"Invalid Operation  !!!!!!!! $" 
resultat    db      0dh,0ah,"Resultat : $" 
start:  
            mov ah,9
            lea dx,  Operation 
            int 21h
            mov ah,01h                       
            int 21h  
            cmp al,2Bh 
            je addition        
            cmp al,2Ah
            je Multiplication         
            cmp al,2Dh
            je Substraction
            cmp al,2Fh
            je Division        
            mov ah,09h
            lea dx, error
            int 21h
            jmp start
            
    addition:   
                mov ah,9  
                lea  dx, first_number  
                int 21h
                mov cx,0 
                call input_numbers
                push dx
                mov ah,9
                lea dx,  second_number
                int 21h 
                mov cx,0
                call input_numbers
                pop bx
                add dx,bx
                push dx 
                mov ah,9
                lea dx,resultat
                int 21h
                mov cx,1000
                pop dx
                call print_number 
                jmp start 
                
    input_numbers:    
                mov ah,01h
                int 21h 
                mov dx,0  
                mov bx,1 
                cmp al,0dh
                je numbers_Formules 
                sub ax,30h 
                mov ah,0
                push ax 
                inc cx   
                jmp input_numbers 
    numbers_Formules:
                     
                pop ax
                push dx      
                mul bx
                pop dx
                add dx,ax  
                
                mov ax,bx       
                mov bx,10
                push dx
                mul bx
                pop dx
                mov bx,ax
                dec cx
                cmp cx,0
                jne numbers_Formules
                ret 
    print_number:  
           mov ax,dx
           mov dx,0
           div cx 
           call print_each_digit  
           
           push dx
           mov dx,0
           mov ax,cx 
           mov cx,10
           div cx
           pop dx   
           
           mov cx,ax
           cmp cx,0
           jne print_number
           ret
    
    
    print_each_digit:    
               push ax 
               push dx 
               mov dx,ax    
               add dl,30h 
               mov ah,02h
               int 21h
               pop dx  
               pop ax
               ret
                    
    Multiplication:   mov ah,9
                lea dx, first_number
                int 21h
                mov cx,0
                call input_numbers
                push dx
                mov ah,9
                lea dx,  second_number
                int 21h 
                mov cx,0
                call input_numbers
                pop bx
                mov ax,dx
                mul bx 
                mov dx,ax
                push dx 
                mov ah,9
                lea dx, resultat
                int 21h
                mov cx,1000
                pop dx
                call print_number 
                jmp start 
    Substraction:   
                mov ah,9
                lea dx,  first_number
                int 21h
                mov cx,0
                call input_numbers
                push dx
                mov ah,9
                lea dx,  second_number
                int 21h 
                mov cx,0
                call input_numbers
                pop bx
                sub bx,dx
                mov dx,bx
                push dx 
                mov ah,9
                lea dx,  resultat
                int 21h
                mov cx,1000
                pop dx
                call print_number 
                jmp start                
    Division:     mov ah,9
                lea dx,  first_number
                int 21h
                mov cx,0
                call input_numbers
                push dx
                mov ah,9
                lea dx,  second_number
                int 21h 
                mov cx,0
                call input_numbers   
                pop bx
                mov ax,bx
                mov cx,dx
                
                mov dx,0
                mov bx,0
                div cx
                mov dx,ax 
                push dx 
                mov ah,9
                lea dx,  resultat
                int 21h
                mov cx,1000
                pop dx
                call print_number
                jmp start 