.MODEL small
.STACK 100h
.DATA	
iniCoordX byte 40
iniCoordy byte 40

.CODE
 circle proc
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
mov si, 10
line2:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
inc cx
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
inc dx
int 10h
dec si
cmp si, 0
je change3
jmp line3

change3:

mov si, 10
line4:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
inc dx
dec cx
int 10h
dec si
cmp si, 0
je change4
jmp line4

change4:

mov si, 20
line5:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
dec cx
int 10h
dec si
cmp si, 0
je change5
jmp line5

change5:

mov si, 10
line6:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
dec dx
dec cx
int 10h
cmp si, 0
dec si
je change6
jmp line6

change6:
mov si, 20
line7:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
dec dx
int 10h
dec si
cmp si, 0
je change7
jmp line7

change7:
mov si, 10
line8:
mov ah, 0ch; color of pixel
mov al, 2
mov bh, 0
dec dx
inc cx
int 10h
dec si
cmp si, 0
je change8
jmp line8

change8:

mov ah, 4ch
int 21h

circle endp


end

