step++
show_debug_message(p)
p = step/120;
global.s = p - 10
//以下是线动
if(p=TKT(2,0)){
line[1]._line_y = room_height/2
LineMoveY(line[1],600,24)
LineMoveAlpha(line[1],0.7,0)
}

if(p=TK(14,27)){
	NoteStop(note[1])
	NoteStop(note[2])
	NoteStop(note[3])
	NoteStop(note[4])
	NoteStop(note[5])
	NoteStop(note[6])
}
var c = 24
repeat(20){
if(p=TKT(4,c))LineMoveY(line[1],640,3)
if(p=TKT(4,c+3))LineMoveY(line[1],600,1)
c+=4
}
if(p=TKT(15,0)){
	NoteDec(note[1])
	NoteDec(note[2])
	NoteDec(note[3])
	NoteDec(note[4])
	NoteDec(note[5])
	NoteDec(note[6])
}
if(p=TK(15,26))NoteMake("blue",line[1],1,100)
if(p=TK(16,1))NoteMake("blue",line[1],1,-100)
if(p=TK(16,6))NoteMake("blue",line[1],1,50)
if(p=TK(16,11))NoteMake("blue",line[1],1,-100)
if(p=TK(16,16))NoteMake("blue",line[1],1,150)
if(p=TK(16,18))NoteMake("yellow",line[1],1,130)
if(p=TK(16,20))NoteMake("yellow",line[1],1,110)
if(p=TK(16,22))NoteMake("yellow",line[1],1,90)
if(p=TK(16,24))NoteMake("yellow",line[1],1,70)
if(p=TK(16,26))NoteMake("yellow",line[1],1,80)
if(p=TK(16,28))NoteMake("yellow",line[1],1,100)
if(p=TK(16,30))NoteMake("red",line[1],1,120)
if(p=TK(17,10))NoteMake("blue",line[1],1,-200)
if(p=TK(17,15))NoteMake("blue",line[1],1,200)
if(p=TK(17,20))NoteMake("blue",line[1],1,150)
if(p=TK(17,24))NoteMake("yellow",line[1],1,130)
if(p=TK(17,26))NoteMake("yellow",line[1],1,110)
if(p=TK(17,28))NoteMake("yellow",line[1],1,90)
if(p=TK(18,0))NoteMake("yellow",line[1],1,70)
if(p=TK(18,5))NoteMake("blue",line[1],1,200)
if(p=TK(18,10))NoteMake("blue",line[1],1,100)
if(p=TK(18,15))NoteMake("blue",line[1],1,200)
if(p=TK(18,15))NoteMake("red",line[1],1,-200)
if(p=TK(18,20))NoteMake("blue",line[1],1,100)
if(p=TK(18,26))NoteMake("blue",line[1],1,-200)
if(p=TK(19,1))NoteMake("blue",line[1],1,100)
if(p=TK(19,6))NoteMake("blue",line[1],1,-100)
if(p=TK(19,11))NoteMake("blue",line[1],1,-200)
//以下是铺面
/*
if(p=TK(5,3))note[1] = NoteMake("blue",line[1],1,100)
if(p=TK(5,8))note[2] = NoteMake("blue",line[1],1,-100)
if(p=TK(5,16))note[3] = NoteMake("blue",line[1],1,0)
if(p=TK(5,18))note[4] = NoteMake("yellow",line[1],1,-20)
if(p=TK(5,20))note[5] = NoteMake("yellow",line[1],1,-40)
if(p=TK(5,22))note[6] = NoteMake("yellow",line[1],1,-60)
if(p=TK(14,27)){
	NoteStop(note[1])
	NoteStop(note[2])
	NoteStop(note[3])
	NoteStop(note[4])
	NoteStop(note[5])
	NoteStop(note[6])
}
var c = 24
repeat(20){
if(p=TKT(4,c))LineMoveY(line[1],640,3)
if(p=TKT(4,c+3))LineMoveY(line[1],600,1)
c+=4
}
if(p=TKT(15,0)){
	NoteDec(note[1])
	NoteDec(note[2])
	NoteDec(note[3])
	NoteDec(note[4])
	NoteDec(note[5])
	NoteDec(note[6])
}
if(p=TK(15,26))NoteMake("blue",line[1],1,100)
if(p=TK(16,1))NoteMake("blue",line[1],1,-100)
if(p=TK(16,6))NoteMake("blue",line[1],1,50)
if(p=TK(16,11))NoteMake("blue",line[1],1,-100)
if(p=TK(16,16))NoteMake("blue",line[1],1,150)
if(p=TK(16,18))NoteMake("yellow",line[1],1,130)
if(p=TK(16,20))NoteMake("yellow",line[1],1,110)
if(p=TK(16,22))NoteMake("yellow",line[1],1,90)
if(p=TK(16,24))NoteMake("yellow",line[1],1,70)
if(p=TK(16,26))NoteMake("yellow",line[1],1,80)
if(p=TK(16,28))NoteMake("yellow",line[1],1,100)
if(p=TK(16,30))NoteMake("red",line[1],1,120)
if(p=TK(17,10))NoteMake("blue",line[1],1,-200)
if(p=TK(17,15))NoteMake("blue",line[1],1,200)
if(p=TK(17,20))NoteMake("blue",line[1],1,150)
if(p=TK(17,24))NoteMake("yellow",line[1],1,130)
if(p=TK(17,26))NoteMake("yellow",line[1],1,110)
if(p=TK(17,28))NoteMake("yellow",line[1],1,90)
if(p=TK(18,0))NoteMake("yellow",line[1],1,70)
if(p=TK(18,5))NoteMake("blue",line[1],1,200)
if(p=TK(18,10))NoteMake("blue",line[1],1,100)
if(p=TK(18,15))NoteMake("blue",line[1],1,200)
if(p=TK(18,15))NoteMake("red",line[1],1,-200)
if(p=TK(18,20))NoteMake("blue",line[1],1,100)
if(p=TK(18,26))NoteMake("blue",line[1],1,-200)
if(p=TK(19,1))NoteMake("blue",line[1],1,100)
if(p=TK(19,6))NoteMake("blue",line[1],1,-100)
if(p=TK(19,11))NoteMake("blue",line[1],1,-200)



