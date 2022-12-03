.MODEL small
.STACK 100h
.DATA	
iniCoordX byte 40
iniCoordy byte 40

.CODE
 brick proc
 mov ax, @data 
 mov ds, ax
 mov ax, 0

mov ah, 0h; switch to video mode
mov al, 13h
int 10h


mov si, 20
mov dl, iniCoordy
mov cl, iniCoordX
line1:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
inc cx
int 10h
dec si
cmp si, 0
je change1
jmp line1

change1:

mov si, 40
line2:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
inc dx
int 10h
dec si
cmp si, 0
je change2
jmp line2

change2:

mov si, 20
line3:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
dec cx
int 10h
dec si
cmp si, 0
je change3
jmp line3

change3:

mov si, 40
line4:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
dec dx
int 10h
dec si
cmp si, 0
je change4
jmp line4

change4:

mov ah, 4ch
int 21h
brick endp


end
