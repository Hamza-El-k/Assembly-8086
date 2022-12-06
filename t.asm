.model small
.stack 100h
.data
    text1 db "hamza el $"
    len1 equ $-text1
    text2 db "hamza$"


 .code  
   main proc 
     mov cx,len1 
     mov si,cx
     
     loop1:     
        mov bl,text1[si]
        mov dl,text2[si]
        
         cmp bl,dl
         je return 
         inc si
         int 21h
     loop loop1
    
     print:
          mov dx,ax 
          mov ah,02h
          int 21h     
   endp main
   return:
        inc ax
        RET
    
  end   