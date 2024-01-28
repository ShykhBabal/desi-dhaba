ExitProcess proto
WriteString proto
ReadString proto
WriteInt64 proto
ReadInt64 proto
WriteHex64 proto
ReadHex64 proto
ReadChar proto
Crlf proto
.data
string1  db "                                          WELL COME TO DESI DABBAH", 0
string2  db "  Our Menu List is HERE      ",0
String3  db "  1:Chicken     2:Vegetable    3:Daaal     4:Drinks   5:Exit",0
string4  db "  Please Select any one of the Following option  ",0
string5  db "  Your  Total  Bill... =  ",0
string6  db "  Do you want to select again ",0
string7  db "  *****Thanks for using our services*Have a nice Day",0
string8  db "  1:Chicken khari Full RS:1200  2:Chicken krahi half RS:600   3:Chicken tikka 6 Pc's RS:500    4:Chicken fry RS:260 ",0
string11 db "  1:Mix sabzi KODA special RS:250  2:Bhindi special RS:220  3:Palak Gosht  RS:180  4:Salades  RS:200  ",0
string12 db "  1:Daal Mash special RS:140   2:Daal mash tarka  RS:150   3:Daal channa  RS:170   4:Daal mong  RS:250 ",0
string13 db "  1:lassi RS:100  2:1.5 litter cold drink RS:90  3:GHA Spical Tea RS:50  4:Simple Tea RS:30 ",0
string14 db "  ******Do You Want To Add More Items*Please Press 1 for YES and Press 2 for NO and also For return to main menu**** ",0
string10 db "        INVALID ENTRY        ",0
choice dq ?
chictotal dq ?
total dw ?
pick dq ?
.code
main proc
mov rdx,0
mov rdx,offset string1
call WriteString
Call crlf
mov rdx,0
mov rdx,offset string2
call WriteString
Call crlf
PICKING:
call Crlf
mov rdx,0
mov rdx,offset string3
call WriteString
Call crlf
call Crlf
mov rdx,0
mov rdx,offset string4
call WriteString
Call crlf
mov rax,0
call ReadInt64
mov choice,rax
cmp choice,1
JE chicken
cmp choice,2
JE vegetable
cmp choice,3
JE daaal
cmp choice,4
JE drinks
cmp choice,5
JE TE
JNE EXITWORK
chicken:
;Call chicken from the menue here 
call Crlf
mov rdx,offset string8
call WriteString
call crlf
call crlf
mov rdx,0
mov rdx,offset string4
call WriteString
Call ReadInt64
mov chictotal,rax
Call crlf
cmp chictotal,1
JE BILL_1
cmp chictotal,2
JE BILL_2
cmp chictotal,3
JE BILL_3
cmp chictotal,4
JE BILL_4
JMP EXITWORK
vegetable:
;call Vegetables from the menue here 
call Crlf
mov rdx,offset string11
call WriteString 
Call crlf
mov rdx,0
mov rdx,offset string4
call WriteString
call ReadInt64
mov choice,rax
Call crlf
cmp choice,1
JE BILL_5
cmp choice,2
JE BILL_6
cmp choice,3
JE BILL_7
cmp choice,4
JE BILL_8
Call crlf
JMP EXITWORK
daaal:
call Crlf
;call DAAL here and print them
mov rdx,0
mov rdx,offset string12
call WriteString 
Call crlf
mov rdx,0
mov choice,rdx
mov rdx,offset string4
call WriteString
call ReadInt64
mov choice,rax
cmp choice,1
JE BILL_9
cmp choice,2
JE BILL_10
cmp choice,3
JE BILL_11
cmp choice,4
JE BILL_12
JMP EXITPROCESS
drinks:
call Crlf
mov rdx,offset string13
call WriteString 
Call crlf
mov rdx,0
mov choice,rdx
mov rdx,offset string4
call WriteString
call ReadInt64
mov choice,rax
cmp choice,1
JE BILL_13
cmp choice,2
JE BILL_14
cmp choice,3
JE BILL_15
cmp choice,4
JE BILL_16
JMP EXITWORK
TE:
call Crlf
mov rdx,0
mov rdx,offset string7
call WriteString 
Call crlf
JMP LAST
JMP EXITWORK
BILL_1:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,1200
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE chicken
cmp pick,2
JE PICKING
BILL_2:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,600
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE chicken
cmp pick,2
JE PICKING
BILL_3:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,500
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE chicken
cmp pick,2
JE PICKING
BILL_4:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,260
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE chicken
cmp pick,2
JE PICKING
BILL_5:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,250
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE vegetable
cmp pick,2
JE PICKING
BILL_6:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,220
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE vegetable
cmp pick,2
JE PICKING
BILL_7:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,180
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE vegetable
cmp pick,2
JE PICKING
BILL_8:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,200
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE vegetable
cmp pick,2
JE PICKING
BILL_9:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,140
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE daaal
cmp pick,2
JE PICKING
BILL_10:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,150
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE daaal
cmp pick,2
JE PICKING
BILL_11:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,170
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
CMP pick,1
JE daaal
cmp pick,2
JE PICKING
BILL_12:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,250
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE daaal
cmp pick,2
JE PICKING
BILL_13:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,100
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE drinks
cmp pick,2
JE PICKING
BILL_14:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,90
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE drinks
cmp pick,2
JE PICKING
BILL_15:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,50
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE drinks
cmp pick,2
JE PICKING
BILL_16:
call Crlf
mov rdx,offset string5
call WriteString
MOV AX,0
mov ax,30
mov bx,total
add ax,bx
mov total,ax
mov dx,total
call writeInt64
call Crlf
mov rdx,offset string14
call WriteString
call ReadInt64
mov pick,rax
cmp pick,1
JE drinks
cmp pick,2
JE PICKING
EXITWORK:
mov rdx,0
mov rdx,offset string10
call WriteString
Call crlf
LAST:
Call ExitProcess
main endp
end