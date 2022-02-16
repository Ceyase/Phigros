step = -1


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
alarm[0] = 10*120
alarm[1] = 60;//音频校准
room_speed = 10000
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