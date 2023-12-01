include 'emu8086.inc'

.model small
.data
input_usuario   db 10, 13, "             " 
var1            db  ?
.code
.start

MOV AX, 0
MOV BX, 0
MOV CX, 0

;esto es el codigo de los colores
MOV AX, 3
INT 10h
;hasta aqui 

;MENU PRINCIPAL

MENU:
GOTOXY 0,0                          
PRINT 'SOPA DE LETRAS'
GOTOXY 0, 1
PRINT 'ELIJE'
GOTOXY 0, 2
PRINT '1: PAISES DE AMERICA/EUROPA'
GOTOXY 0,3
PRINT '2: CUIDADES DEL ECUADOR'
GOTOXY 0,4
PRINT '3: PAISES DE ASIA/AFRICA'
jmp USERINPUT1

;O 
;Hacer Checks de 2 O 3 Luego El Check de 1 o 2.

USERINPUT1:
CALL pthis
DB 10, 13, '', 0
LEA DX, var1
CALL get_string
MOV AX, [SI]
MOV AH, 0
MOV BL, '1'
CMP BL, AL
JE USERINPUT1A
MOV BL, '2'
CMP BL, AL
JE USERINPUT1B
MOV BL, '3'
CMP BL, AL
JE USERINPUT1C
GOTOXY 0,6
PRINT 'INTENTE OTRA VEZ'
JMP USERINPUT1     

;MENU PARA ELEGIR LA SOPA DE LETRAS

USERINPUT1A:
GOTOXY 0,5
PRINT '1: SOPA AMERICA/EUROPA 1'
GOTOXY 0,6
PRINT '2: SOPA AMERICA/EUROPA 2'
CALL pthis
DB 10, 13, '', 0
LEA DX, var1
CALL get_string
MOV AX, [SI]
MOV AH, 0
MOV BL, '1'
CMP BL, AL
JE SP1
MOV BL, '2'
CMP BL, AL
JE SP2
GOTOXY 0,8
PRINT 'INTENTE OTRA VEZ'
JMP USERINPUT1A 

USERINPUT1B:
GOTOXY 0,5
PRINT '1: SOPA CUIDADES 1'
GOTOXY 0,6
PRINT '2: SOPA CUIDADES 2'
CALL pthis
DB 10, 13, '', 0
LEA DX, var1
CALL get_string
MOV AX, [SI]
MOV AH, 0
MOV BL, '1'
CMP BL, AL
JE SP3
MOV BL, '2'
CMP BL, AL
JE SP4
GOTOXY 0,8
PRINT 'INTENTE OTRA VEZ'
JMP USERINPUT1B 

USERINPUT1C:
GOTOXY 0,6
PRINT '1: SOPA ASIA/AFRICA 1'
GOTOXY 0,7
PRINT '2: SOPA ASIA/AFRICA 2'
CALL pthis
DB 10, 13, '', 0
LEA DX, var1
CALL get_string
MOV AX, [SI]
MOV AH, 0
MOV BL, '1'
CMP BL, AL
JE SP5
MOV BL, '2'
CMP BL, AL
JE SP6
GOTOXY 0,8
PRINT 'INTENTE OTRA VEZ'
JMP USERINPUT1C 



;PRINT A LA SOPA DE LETRAS      

;SOPAS DE LETRAS

SP1:
GOTOXY 0, 1
PRINT "(E K H K D D I J V U T U E)" 
GOTOXY 0, 2
PRINT "(C S C F V A I N A M E L A)" 
GOTOXY 0, 3
PRINT "(B T I N R Z D G L L G A U)"
GOTOXY 0, 4 
PRINT "(X N W T X A Z E Z I V E N)"
GOTOXY 0, 5 
PRINT "(I V Y G Q B N N X F F L O)"
GOTOXY 0, 6 
PRINT "(S B Y T S W S C J J F I J)" 
GOTOXY 0, 7
PRINT "(G L P E M N Z C I U J H N)"
GOTOXY 0, 8 
PRINT "(I U G N N S W G X A D C L)"
GOTOXY 0, 9
PRINT "(R Z I F C F B W Q C F S E)"
GOTOXY 0, 10 
PRINT "(O N W F C L T T K L X U S)"
GOTOXY 0, 11 
PRINT "(X M N U R O D A U C E X R)"
GOTOXY 0, 12
PRINT "(Q V A U R E P Y O Z W X A)"
GOTOXY 0, 13 
PRINT "(Q C F R F F A T D W S E W)"
JMP USERINPUT2

SP2:
GOTOXY 0, 1
PRINT "(Z M W E N P A O A P T O Q)" 
GOTOXY 0, 2
PRINT "(X V N F P H B N C S M K S)" 
GOTOXY 0, 3
PRINT "(Y O H P A Y P O N X S A T)"
GOTOXY 0, 4 
PRINT "(M D E B E Q Z Y P H Z B C)"
GOTOXY 0, 5 
PRINT "(T Q M O L Z S P E E O P U)"
GOTOXY 0, 6 
PRINT "(F K Y J A M P J X C R S K)" 
GOTOXY 0, 7
PRINT "(H R N J J I A D M K U U I)"
GOTOXY 0, 8 
PRINT "(G Y P G L S B J W I N T D)"
GOTOXY 0, 9
PRINT "(T F O C F Q H M Z R A W N)"
GOTOXY 0, 10 
PRINT "(F N E S U K X A O L C I A)"
GOTOXY 0, 11 
PRINT "(U H K T R R H E I L Y I Q)"
GOTOXY 0, 12
PRINT "(R T J R L R B A Z I O Z P)"
GOTOXY 0, 13 
PRINT "(N T T Y R A I C E R G C M)"
JMP USERINPUT2

SP3:
GOTOXY 0, 1
PRINT "(Z U G J B S D G R X B H J)" 
GOTOXY 0, 2
PRINT "(D E L D X I D K Z Q N D M)" 
GOTOXY 0, 3
PRINT "(A B C J T H G Y G U G F J)"
GOTOXY 0, 4 
PRINT "(F C D S P A C R H U Y J L)"
GOTOXY 0, 5 
PRINT "(N R G U T A O M A B S Q Z)"
GOTOXY 0, 6 
PRINT "(E X U N X J B Y M P Q K B)" 
GOTOXY 0, 7
PRINT "(F D A J B S A L F D L T H)"
GOTOXY 0, 8 
PRINT "(K M R Z I Q J C U Q C X K)"
GOTOXY 0, 9
PRINT "(T L L Q U Q P O T I U Q E)"
GOTOXY 0, 10 
PRINT "(U O E I D Z R Z Y Z T S X)"
GOTOXY 0, 11 
PRINT "(W J L N G N D Y T S R A S)"
GOTOXY 0, 12
PRINT "(S A Q Q A U A D A U L E K)"
GOTOXY 0, 13 
PRINT "(Z V U M N O H M K V D C A)"
JMP USERINPUT2

SP4:
GOTOXY 0, 1
PRINT "(F V S C N M A N Y T B B X)" 
GOTOXY 0, 2
PRINT "(R D U R A N I T G L J Q B)" 
GOTOXY 0, 3
PRINT "(E O R C V O L N G T Y S M)"
GOTOXY 0, 4 
PRINT "(N R I T A L H S U Z M N O)"
GOTOXY 0, 5 
PRINT "(E G V S F K H N F B A T W)"
GOTOXY 0, 6 
PRINT "(F A C H F N V C C E C H N)" 
GOTOXY 0, 7
PRINT "(M L F Q R B U N U Q H M C)"
GOTOXY 0, 8 
PRINT "(E I N S I E J A R R A B I)"
GOTOXY 0, 9
PRINT "(M M O E N X D E Q I L M X)"
GOTOXY 0, 10 
PRINT "(D I C C B G B H I T A D J)"
GOTOXY 0, 11 
PRINT "(I A A S P A D H S T O R W)"
GOTOXY 0, 12
PRINT "(N V D M K B G D S M I R N)"
GOTOXY 0, 13 
PRINT "(B O X J R Y L F V K D F S)"
JMP USERINPUT2 

SP5:
GOTOXY 0, 1
PRINT "(K L Y A D V K Y M E B E V)" 
GOTOXY 0, 2
PRINT "(K F Y T F K G S R L N F W)" 
GOTOXY 0, 3
PRINT "(W N J Y E Z A Y S Z N F L)"
GOTOXY 0, 4 
PRINT "(L I Q A X N L E Q R B U I)"
GOTOXY 0, 5 
PRINT "(O L N O P G I O B N U G A)"
GOTOXY 0, 6 
PRINT "(D T I D A O S G I Y I G I)" 
GOTOXY 0, 7
PRINT "(O I T N I Y N Y J N F P S)"
GOTOXY 0, 8 
PRINT "(U I I U E A Z F C M H U E)"
GOTOXY 0, 9
PRINT "(K H V G I D R J H V G J N)"
GOTOXY 0, 10 
PRINT "(C N T M D N F E F W Q N O)"
GOTOXY 0, 11 
PRINT "(V Z L Z A P S N J V Z A D)"
GOTOXY 0, 12
PRINT "(B I U R Y B R N F N I V N)"
GOTOXY 0, 13 
PRINT "(N Q C O R E A S S E S Z I)"
JMP USERINPUT2

SP6:
GOTOXY 0, 1
PRINT "(Y T O Q E V P M C I J I Z)" 
GOTOXY 0, 2
PRINT "(E P S U D A F R I C A I W)" 
GOTOXY 0, 3
PRINT "(H N Y R N Z M H N N E P M)"
GOTOXY 0, 4 
PRINT "(I X F S N I U E T W X E H)"
GOTOXY 0, 5 
PRINT "(A S T E B C P M E M I R L)"
GOTOXY 0, 6 
PRINT "(X L N N I N B L Q V A Q L)" 
GOTOXY 0, 7
PRINT "(R F Y E I C S C M T J X S)"
GOTOXY 0, 8 
PRINT "(D M P G Z P V A N A H G L)"
GOTOXY 0, 9
PRINT "(N Q A A F D E Y I W R P G)"
GOTOXY 0, 10 
PRINT "(V P I L R L C J I N V E I)"
GOTOXY 0, 11 
PRINT "(M K D X U J P F G Y S Y O)"
GOTOXY 0, 12
PRINT "(N F P Q D O T P I G E N I)"
GOTOXY 0, 13 
PRINT "(T A F J N I G E R I A Y J)"
JMP USERINPUT2


USERINPUT2:
CALL pthis
DB 10, 13, '', 0
LEA DX, var1
CALL get_string
MOV AX, [SI]
MOV AH, 0
MOV BL, 'E'
CMP BL, AL
JE HOLA
JNE NO


HOLA:
mov     ax, 1003h
mov     bx, 0      
int     10h

               
mov     dl, 9   
mov     dh, 1   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'E'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh
;hasta aqui


mov     dl, 9   
mov     dh, 2   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'C'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh


mov     dl, 9   
mov     dh, 3   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'U'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh 


mov     dl, 9   
mov     dh, 4   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'A'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh 



mov     dl, 9   
mov     dh, 5   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'D'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh 



mov     dl, 9   
mov     dh, 6   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'O'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh 



mov     dl, 9   
mov     dh, 7   

mov     bl, 0

mov     ah, 02h
int     10h

mov     al, 'R'
mov     bh, 0
mov     bl, 2
mov     cx, 1
mov     ah, 09h
int     10h
inc     dh
jmp salida

NO:
PRINT "INTENTE OTRA VEZ"
JMP USERINPUT2

 
DEFINE_PRINT_STRING
DEFINE_PTHIS 
DEFINE_GET_STRING  

SALIDA:
.exit
end