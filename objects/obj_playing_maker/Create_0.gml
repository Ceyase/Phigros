var b = layer_create(100)
var a = layer_background_create(b,Illustration__338)
layer_background_stretch(a,true)
layer_background_blend(a,make_color_rgb(120,120,120))
global.MusicID = 9999;

audio_stop_all()
alarm[1] = 10;//音频校准
alarm[0] = room_speed/4;//铺面读取
s = 0
p = 0
linenum = 0
line = [];
note = [];
global.button = ds_map_create()
global.map = 0;
global.MusicID = audio_play_sound(Music,0,0)
global.noteNumNow = 0;//已击打音符数
global.noteNum = -1; //音符总数
global.pointUp = floor(1000000/global.noteNum) //每个音符加多少分
global.point = 0 //分数
global.s = 0//单位为“秒”，舍弃掉了帧判定

global.MusicLong = audio_sound_length(global.MusicID)


Judg = ds_map_create()
JudgMeta = ds_list_create()
Events = ds_map_create()

global.bpm = 60
ds_list_add(JudgMeta,global.noteNum)
ds_list_add(JudgMeta,global.bpm)
for(var i=0;i<linenum;i++){
	line[i] = LineMake()
}

