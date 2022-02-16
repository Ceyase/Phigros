step = 10*120


var b = layer_create(100)
var a = layer_background_create(b,Illustration__338)
layer_background_stretch(a,true)
layer_background_blend(a,make_color_rgb(120,120,120))
global.MusicID = 9999;
global.noteNumNow = 0;//已击打音符数
global.noteNum = 28 //音符总数
global.pointUp = floor(1000000/global.noteNum) //每个音符加多少分
global.point = 0 //分数
global.s = 0//单位为“秒”，舍弃掉了帧判定

audio_stop_all()
room_speed = 120
global.MusicID = audio_play_sound(Music,0,0)
alarm[1] = 60;//音频校准
s = 0
p = 0
line = [];
note = [];

line[1] = LineMake();

//铺面
note[1] = NoteMake("blue",line[1],1,100,TK(5,3))
note[2] = NoteMake("blue",line[1],1,-100,TK(5,8))
note[3] = NoteMake("blue",line[1],1,0,TK(5,16))
note[4] = NoteMake("yellow",line[1],1,-20,TK(5,18))
note[5] = NoteMake("yellow",line[1],1,-40,TK(5,20))
note[6] = NoteMake("yellow",line[1],1,-60,TK(5,22))

SetData(note[1],"_stop",1,TK(4,27))
SetData(note[2],"_stop",1,TK(4,27))
SetData(note[3],"_stop",1,TK(4,27))
SetData(note[4],"_stop",1,TK(4,27))
SetData(note[5],"_stop",1,TK(4,27))
SetData(note[6],"_stop",1,TK(4,27))
SetData(note[1],"_isFake",1,TK(4,27))
SetData(note[2],"_isFake",1,TK(4,27))
SetData(note[3],"_isFake",1,TK(4,27))
SetData(note[4],"_isFake",1,TK(4,27))
SetData(note[5],"_isFake",1,TK(4,27))
SetData(note[6],"_isFake",1,TK(4,27))

LineMoveY(line[1],room_height/2,0,TK(2,0))
LineMoveY(line[1],600,24,TK(2,0))
LineMoveAlpha(line[1],0.7,0,TK(2,0))

var c = 24
repeat(20){
LineMoveY(line[1],640,3,TK(4,c))
LineMoveY(line[1],600,1,TK(4,c+3))
c+=4
}

ComRun("NoteDec",note[1],TK(15,0))
ComRun("NoteDec",note[1],TK(15,0))
ComRun("NoteDec",note[2],TK(15,0))
ComRun("NoteDec",note[3],TK(15,0))
ComRun("NoteDec",note[4],TK(15,0))
ComRun("NoteDec",note[5],TK(15,0))
ComRun("NoteDec",note[6],TK(15,0))

NoteMake("blue",line[1],1,100,TK(15,26))
NoteMake("blue",line[1],1,-100,TK(16,6))
NoteMake("blue",line[1],1,50,TK(16,6))
NoteMake("blue",line[1],1,-100,TK(16,11))
NoteMake("blue",line[1],1,150,TK(16,16))
NoteMake("yellow",line[1],1,130,TK(16,18))
NoteMake("yellow",line[1],1,110,TK(16,20))
NoteMake("yellow",line[1],1,90,TK(16,22))
NoteMake("yellow",line[1],1,70,TK(16,24))
NoteMake("yellow",line[1],1,80,TK(16,26))
NoteMake("yellow",line[1],1,100,TK(16,28))
NoteMake("red",line[1],1,120,TK(16,30))
NoteMake("blue",line[1],1,-200,TK(17,10))
NoteMake("blue",line[1],1,200,TK(17,15))
NoteMake("blue",line[1],1,150,TK(17,20))
NoteMake("yellow",line[1],1,130,TK(17,24))
NoteMake("yellow",line[1],1,110,TK(17,26))
NoteMake("yellow",line[1],1,90,TK(17,28))
NoteMake("yellow",line[1],1,70,TK(18,0))
NoteMake("blue",line[1],1,200,TK(18,5))
NoteMake("blue",line[1],1,100,TK(18,10))
NoteMake("blue",line[1],1,200,TK(18,15))
NoteMake("red",line[1],1,-200,TK(18,15))
NoteMake("blue",line[1],1,100,TK(18,20))
NoteMake("blue",line[1],1,-200,TK(18,26))
NoteMake("blue",line[1],1,100,TK(19,1))
NoteMake("blue",line[1],1,-100,TK(19,6))
NoteMake("blue",line[1],1,-200,TK(19,11))
