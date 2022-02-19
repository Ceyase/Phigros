/*
以下代码提供PhiFormat支持
什么是PhiFormat?
这是Phigros原版，Phigros第三方制谱器乃至所有Phigros衍生作品都支持的铺面格式
这个项目如果不支持肯定不好（
*/

step = 10*global.bpm



var b = layer_create(100)
var a = layer_background_create(b,Illustration__338)
layer_background_stretch(a,true)
layer_background_blend(a,make_color_rgb(120,120,120))
global.MusicID = 9999;
global.noteNumNow = 0;//已击打音符数
global.noteNum = 2480 //音符总数
global.pointUp = floor(1000000/global.noteNum) //每个音符加多少分
global.point = 0 //分数
global.s = 0//单位为“秒”，舍弃掉了帧判定

audio_stop_all()
room_speed = global.bpm
alarm[1] = 60;//音频校准
s = 0
p = 0
line = [];
note = [];

k=10

//铺面

aa=0
aa2=0
//fn = string(get_open_filename_ext("所有支持的格式(*.mid;*.midi)|*.mid;*.midi", "", working_directory, "载入音乐"))
//e = read_midi(fn)[0]
//lipboard_set_text(ds_list_write(e))
e = ds_list_create()
file = file_text_open_read(working_directory + "p1.txt")
ds_list_read(e,file_text_read_string(file))
bb = ds_list_size(e)
c = ds_list_find_value(e,aa)


//fn = string(get_open_filename_ext("所有支持的格式(*.mid;*.midi)|*.mid;*.midi", "", working_directory, "载入音乐"))
//e2 = read_midi(fn)[0]
//clipboard_set_text(ds_list_write(e2))
//ds_list_read(e2,"")
e2 = ds_list_create()
file = file_text_open_read(working_directory + "p2.txt")
ds_list_read(e2,file_text_read_string(file))
bb2 = ds_list_size(e2)
c2 = ds_list_find_value(e2,aa2)

alarm[0] = 10
alarm[3] = 10
alarm[2] = 60
alarm[4] = 1000
//a=编号b=编号上限c=获取的数组d=获取的时间e=矩阵编号
//c[0]=音符开始时长c[1]=音高c[2]=音量c[3]=音符结束时间

global.MusicID = audio_play_sound(Music,0,0)


Judg = ds_map_create()
JudgMeta = ds_list_create()
Events = ds_map_create()

global.bpm = 60
ds_list_add(JudgMeta,global.noteNum)
ds_list_add(JudgMeta,global.bpm)
ds_list_add(JudgMeta,0)


line[1] = LineMake();
line[2] = LineMake();
LineMoveAlpha(line[1],0.7,60,0)
LineMoveAlpha(line[2],0.7,60,0)
LineMoveY(line[1],100,60,0)
LineMoveY(line[2],room_height - 100,60,0)
LineMoveAngle(line[1],20,global.bpm*100,0)
LineMoveAngle(line[2],20,global.bpm*100,0)