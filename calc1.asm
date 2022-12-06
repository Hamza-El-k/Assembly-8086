.model small
.stack 100h
.data
    msg1 db 10,13,"Entrer le premier nombre :$"
    msg2 db 10,13,"Entrer le deuxieme nombre :$" 
    msg3 db 10,13,"The result : $"
    num1 db 0h
    num2 dw 0h
    num3 dw 0h
.code 
    
        
    main proc  
        print1:
            mov ax,data
            mov ds,ax 
            lea DX,msg1                                                      
            mov ah,09h
            int 21h 
            
         Read1:
           mov ah,01h
           int 21h
           cmp al,0dh
           je finish
           sub al,30h
           mov bl,al
           mov al,num1
           mov cl,10
           mul cl
           add ax,bx
           mov num1,al
           jmp Read1
          finish:
            push ax
          print2:
            mov dl,num1
            mov ah,02h
            int 21h
         
    endp
   