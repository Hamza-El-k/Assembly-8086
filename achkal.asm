.model small
.stack 199h
.data 
    choise db 10,13,"Choise a color 1-red,2-blue,3-yellow,4-white:$"
choise2 db 10,13,"--------------Menu--------------------",10,13,"1-carre",10,13,"2-triangle",10,13,"3-cercle",10,13,"--------------------------------------",10,13,"choise an option :$"
    Error db 10,13,"Invalid number !!!!$"
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
    cercle macro 
        pop ax  
        mov cx,100
        mov dx,100
        int 10h
        
        mov bl,30
        test1:
        int 10h
        inc cx
        dec bl
        jnz test1
        
        
        mov bl,5
        test2:
        int 10h
        inc dx
        dec bl
        jnz test2
             
             
        mov bl,10
        first1:
        int 10h
        inc cx
        dec bl
        jnz first1
        
        
        mov bl,5
        second2:
        int 10h
        inc dx
        dec bl
        jnz second2 
        
        mov bl,5
        first3:
        int 10h
        inc cx
        dec bl                
        jnz first3            
        
        
        mov bl,5
        second3:
        int 10h
        inc dx
        dec bl
        jnz second3
        
        mov bl,5
        first4:
        int 10h
        inc cx
        dec bl
        jnz first4 
        
        mov bl,5
        second4:
        int 10h
        inc dx
        dec bl
        jnz second4   
        
                     
        mov bl,5
        first5:
        int 10h
        inc cx
        dec bl
        jnz first5   
        
        
        mov bl,10
        second5:
        int 10h
        inc dx
        dec bl
        jnz second5
        
        
        mov bl,5
        first6:
        int 10h
        inc cx
        dec bl                
        jnz first6
        
        
        mov bl,30
        second6:
        int 10h
        inc dx
        dec bl
        jnz second6
        
        
        ;;;;;
        
        mov bl,5
        first7:
        int 10h
        dec cx
        dec bl                
        jnz first7
        
        
        mov bl,10
        second7:
        int 10h
        inc dx
        dec bl
        jnz second7
        
        
        mov bl,5
        first8:
        int 10h
        dec cx
        dec bl                
        jnz first8
        
        
        mov bl,5
        second8:
        int 10h
        inc dx
        dec bl
        jnz second8
        
        
        mov bl,5
        first9:
        int 10h
        dec cx
        dec bl                
        jnz first9
        
        
        mov bl,5
        second9:
        int 10h
        inc dx
        dec bl
        jnz second9
        
        mov bl,5
        first10:
        int 10h
        dec cx
        dec bl                
        jnz first10  
        
        
        mov bl,5
        second10:
        int 10h
        inc dx
        dec bl
        jnz second10
        
        
        mov bl,10
        first11:
        int 10h
        dec cx
        dec bl                
        jnz first11  
        
        
        mov bl,5
        second11:
        int 10h
        inc dx
        dec bl
        jnz second11
        
        
        mov bl,30
        first12:
        int 10h
        dec cx
        dec bl                
        jnz first12
        
        ;;;;;;
        
        
        mov bl,5
        first13:
        int 10h
        dec dx
        dec bl                
        jnz first13
        
        
        mov bl,10
        second14:
        int 10h
        dec cx
        dec bl
        jnz second14
        
        
        mov bl,5
        first14:
        int 10h
        dec dx
        dec bl                
        jnz first14
        
        
        mov bl,5
        second15:
        int 10h
        dec cx
        dec bl
        jnz second15
        
        mov bl,5
        first15:
        int 10h
        dec dx
        dec bl                
        jnz first15  
        
        
        mov bl,5
        second16:
        int 10h 
        dec cx
        dec bl
        jnz second16
        
        
        mov bl,5
        first16:
        int 10h
        dec dx
        dec bl                
        jnz first16  
        
        
        mov bl,5
        second17:
        int 10h 
        dec cx
        dec bl
        jnz second17
        
        
        mov bl,10
        first17:
        int 10h
        dec dx
        dec bl                
        jnz first17  
        
        
        mov bl,5
        second18:
        int 10h
        dec cx
        dec bl
        jnz second18
        
        mov bl,30
        first19:
        int 10h
        dec dx
        dec bl                
        jnz first19 
       
        mov bl,5
        second19:
        int 10h
        inc cx
        dec bl
        jnz second19
             
             
        mov bl,10
        first20:
        int 10h
        dec dx
        dec bl
        jnz first20
        
        
        mov bl,5
        second20:
        int 10h
        inc cx
        dec bl
        jnz second20 
        
        mov bl,5
        first21:
        int 10h
        dec dx
        dec bl                
        jnz first21            
        
        
        mov bl,5
        second21:
        int 10h
        inc cx
        dec bl
        jnz second21
        
        mov bl,5
        first22:
        int 10h
        dec dx
        dec bl
        jnz first22 
                   
                   
        mov bl,5
        second22:
        int 10h
        inc cx
        dec bl
        jnz second22   
        
                     
        mov bl,5
        first23:
        int 10h
        dec dx
        dec bl
        jnz first23 
        
        
        mov bl,10
        second23:
        int 10h
        inc cx
        dec bl
        jnz second23
        
        
        mov bl,5
        first24:
        int 10h
        dec dx
        dec bl                
        jnz first24 
       endm
    
    
    
    
    
     
              
        main proc
          print:
            
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
        lea dx,Error
        mov ah,09h
        int 21h  
        jmp print
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
               cmp al,33h
               je cr 
               lea dx,Error
                mov ah,09h
                int 21h  
                jmp choise_t
               
                
         car:
             carre     
         tri:
             triangle
          cr:
            cercle
             
        endp
    end