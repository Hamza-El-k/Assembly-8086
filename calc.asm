.model small
.stack 100h
.data 
    text1 db "Entrer le premier nombre :$"
    text2 db "Entrer le deuxieme nombre :$"
    text3 db "the result is :$"      
    text4  db "Choise the operation '*,+,-,/':$"
    num1 dw 0h
    num2 dw 0h
    num3 db 0h
    num4 dw 0h
    

.code  
  
 
    
        
    main proc  
        print1:
            mov ax,data
            mov ds,ax 
            lea DX,text1                                                      
            mov ah,09h
            int 21h 
            
         Read1:
            pusha 
            pushf
            mov ah,01h
            int 21h
            cmp al,0dh
            je finished
            sub al,30h
            mov cx,ax
            mov bl,10
            mov ax,num1
            mul bx
            add ax,bx
            mov num1,ax
            jmp Read1
            finished:
                popa
                popf
                
                call cr
         print2:                        
            mov ax,data
            mov ds,ax 
            lea dx,text2
            mov ah,09h
            int 21h
         Read2:
            pusha 
            pushf
            mov ah,01h
            int 21h
            cmp al,0dh
            je finish2
            sub al,30h
            mov cx,ax
            mov bl,10
            mov ax,num2
            mul bx
            add ax,bx
            mov num2,ax
            jmp Read2 
            finish2:
                popa
                popf
                call cr
         print3:
            mov ax,data
            mov ds,ax 
            mov dx,num2
            mov ah,09h
            int 21h
         Read3:
            mov ah,01h
            int 21h
            mov num3,al
            call cr
            
            call tests   
            
         
        
    endp main  
    cr proc    
            pusha
            pushf
            mov dl,10
            mov ah,02h
            int 21h
            mov dx,13
            mov ah,02h
            int 21h
            popa
            popf 
            RET
    cr endp 
    tests proc   
         ;mov al,num3
         cmp num3,2ah
         je multiplication
         cmp num3,2bh 
         je addition
         cmp num3,2dh  
         je substraction
         cmp num3,2fh
         je division
         addition:
            mov ax,data
            mov ds,ax
            mov dx,num2
            mov ah,09h
            int 21h
            
            mov ax,num1
            add ax,num2
            aaa
            xor ax,3030h
            mov bx,ax
            mov ax,data
            mov ds,ax
            lea dx,text3
            mov ah,09h
            int 21h 
            
            
            ;popa
            ;print_num
            ;mov bx,ax
            ;mov dl,bh
            ;mov ah,02h
            ;int 21h
            ;mov dl,bl
            ;mov ah,02h
            ;int 21h
            jmp to_end
         substraction: 
            
            mov ax,num1
            mov bx,num2
            sub ax,bx 
            add ax,30h
            ;aas
            ;or ax,3030h 
            push ax            
            ;print
            mov ax,data
            mov ds,ax
            lea dx,text3
            mov ah,09h
            int 21h
            ;print_num
            pop bx
            mov dl,bh
            mov ah,02h
            int 21h
            mov dl,bl
            mov ah,02h
            int 21h
            jmp to_end  
         multiplication:
            mov ax,num1
            mov bx,num2
            mul bx
            add ax,30h
            ;aam
            ;or ax,3030h
            add ax,30h 
            push ax
            
            ;print
            mov ax,data
            mov ds,ax
            lea dx,text3
            mov ah,09h
            int 21h
            ;print_num
            pop bx
            mov dl,bh
            mov ah,02h
            int 21h
            mov dl,bl
            mov ah,02h
            int 21h 
            jmp to_end
             
         division:
            mov ax,num1
            mov bx,num2
            div bx
            add ax,30h
            ;aad
            ;or ax,3030h 
            push ax
            
            ;print
            mov ax,data
            mov ds,ax
            lea dx,text3
            mov ah,09h
            int 21h
            ;print_num
            pop bx
            mov dl,bh
            mov ah,02h
            int 21h
            mov dl,bl
            mov ah,02h
            int 21h
            jmp to_end 
            to_end:
                endp
    
end
           
