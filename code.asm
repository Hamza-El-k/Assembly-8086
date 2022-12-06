.model small
.stack 100h
.code 
    main proc
     test1 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            inc cx
            dec bl 
            int 10h
            jnz arg2
         inc dx  
     endm
     test2 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            inc dx
            dec bl 
            int 10h
            jnz arg2
           
     endm
     test3 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            dec cx
            dec bl 
            int 10h
            jnz arg2 
         inc dx
           
     endm 
     test4 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            dec cx
            dec bl 
            int 10h
            jnz arg2 
         dec dx
           
     endm   
     test5 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            dec dx
            dec bl 
            int 10h
            jnz arg2 
         dec cx
           
     endm     
     test6 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            dec dx
            dec bl 
            int 10h
            jnz arg2 
         inc cx
           
     endm 
     test7 macro arg1,arg2 
          
         mov bl,arg1 
        
         arg2:
            inc cx
            dec bl 
            int 10h
            jnz arg2 
        
           
     endm 
     

        mov ah,0
        mov al,13h
        int 10h 
        
        
        mov ah,0ch
        mov al,15
        mov cx,40
        mov dx,50
        int 10h
             
        test1 5,1
        test1 4,2 
        test1 3,3
        test1 3,4
        test1 2,5 
        test1 2,6
        test1 2,7
        test1 2,8
        test1 2,9
        test1 2,1_1
        test1 2,10
        test2 9,11
        dec cx
        test2 4,12
        dec cx
        test2 3,13  
        dec cx
        test2 3,14 
        dec cx
        test2 2,15
        dec cx
        test2 2,16
        dec cx
        test2 2,17
        dec cx
        test2 2,18
        dec cx
        test2 2,19
        dec cx
        test2 2,20  
        dec cx
        test2 2,21
        
        test3 3,22
        test3 3,23
        test3 4,24
        test3 10,25
        
        dec dx
        test4 4,26
        test4 3,27
        test4 3,28
        test4 3,29
        test4 3,30
        test4 2,31
        test4 2,32
        test4 2,33
        test4 2,34
        test4 2,35
        test4 2,36 
        dec cx 
        test5 3,37
        test5 3,38
        test5 4,39
        test5 9,40 
        inc cx
        test6 4,41
        test6 3,42  
        test6 3,43
        test6 2,44
        test6 2,45
        dec dx
        dec dx
        dec dx
        test7 30,49
        ;test7 3,50
        ;test7 3,51
        
        
        
    endp
          