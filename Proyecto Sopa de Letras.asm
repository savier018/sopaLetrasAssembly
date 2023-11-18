name "Proyecto OG Sopa de Letras"

include "emu8086.inc"

org 100h
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS


xor ax,ax
xor bx,bx
xor cx,cx        
mov si,0 

.data
array   db  5,6,7
        db  4,5,6
        db  3,5,6  
.code        


imprimirMatriz:
print " "      
mov al,array[si]
call print_num
inc si
inc bx
cmp bx,3
jne imprimirMatriz
printn " "
jmp imprimirMatriz1   

imprimirMatriz1:
print " "      
mov al,array[si]
call print_num
inc si
inc bx
cmp bx,6
jne imprimirMatriz1
printn " "
jmp imprimirMatriz2 

imprimirMatriz2:
print " "      
mov al,array[si]
call print_num
inc si
inc bx
cmp bx,9
jne imprimirMatriz2
printn " "
jmp final


final:
.exit
end   

