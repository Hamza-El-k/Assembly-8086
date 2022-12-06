.model small
.stack 100h
.data                               
    text1 db "entrer le premier text:$"
    text2 db 0ah,"entrer le deuxieme text:$"
    tab1 db 10 dup <?>   
    tab2 db 10 dup <?>
.code
    macro calc_str str,arg2,arg3
        mov di,0
        mov cx,0    
        arg2:
            mov al,str[di]
            cmp al,0Dh
            je  arg3
            inc di
            inc cx
            jmp arg2
            arg3:    
                mov ch,0
                push cx 
                endm
     macro initialize
        mov ax,data
        mov ds,ax
        xor ax,ax
                
     endm      
    main proc  
                      
            mov di,0
            print1:
                mov ax,data
                mov ds,ax
                lea dx,text1
                mov ah,09h
                int 21h
            input1:  
                initialize
                mov ah,01h
                int 21h
                cmp al,0dh
                je print2
                mov tab1[di],al
                inc di
                jmp input1
                  
            print2: 
                inc di
                mov tab1[di],0dh
                mov ax,data
                mov ds,ax
                lea dx,text2
                mov ah,09h
                int 21h
                mov di,0
            input2: 
                initialize
                mov ah,01h
                int 21h
                cmp al,0dh
                je pass
                mov tab2[di],al
                inc di
                jmp input2 
            pass: 
                
                ;cmp bx,cx
                ;jb  str1
                ;cmp bx,cx
                ;je  equal
            str2:  
               mov si,0 
               mov di,0
               mov cl,0
               
               str22: 
                    initialize
                   
                    mov al,offset tab2[si]
                    cmp al,0dh 
                    je str23   
                    mov dl,offset tab1[di]
                    cmp al,dl
                    je incr
                    jmp str22
              incr:
                inc cl
                inc di
                
                jmp str22 
             str23:
                initialize
                mov dl, offset tab2[si]
                cmp dl,0dh
                je done
                inc si
                jmp str22   
            done :
                mov dl,cl
                add dl,30h
                mov ah,02h
                int 21h