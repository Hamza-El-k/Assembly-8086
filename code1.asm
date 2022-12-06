.model small
.stack 100h
.code
    main proc


        mov ah,0
        mov al,13h
        int 10h 
        
        
        mov ah,0ch
        mov al,15
        mov cx,30
        mov dx,50
        int 10h     
        mov bl,5
        first_points: 
              inc cx
              dec bl
              int 10h
              jnz first_points
       inc dx
       mov bl,4
       s_points: 
              inc cx
              dec bl
              int 10h
              jnz s_points 
       inc dx
       mov bl,3
       int 10h 
       1: 
              inc cx
              dec bl
              int 10h 
              cmp bl,0
              jne 1  
       inc dx
       mov bl,3 
       int 10h 
       section_2: 
              inc cx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_2 
      inc dx
       mov bl,2 
       int 10h 
       section_4: 
              inc cx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_4
       inc dx
       mov bl,2 
       int 10h 
       section_6: 
              inc cx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_6    
       inc dx
       mov bl,2 
       int 10h 
       section_7: 
              inc cx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_7
      inc dx
       mov bl,2 
       int 10h 
       section_8: 
              inc cx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_8
      inc dx
       mov bl,2 
       int 10h 
       section_9: 
              inc cx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_9 
       inc cx
       mov bl,3 
       int 10h 
       section_10: 
              inc dx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_10 
       inc cx
       mov bl,3 
       int 10h 
       section_11: 
              inc dx
              sub bl,1
              int 10h 
              cmp bl,0
              jne section_11
     section_12: 
     endp  