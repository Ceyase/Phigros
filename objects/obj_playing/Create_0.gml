step = -1
linen = 0
noten = 0
var b = layer_create(100)
var a = layer_background_create(b,Illustration__338)
layer_background_stretch(a,true)
layer_background_blend(a,make_color_rgb(120,120,120))
global.MusicID = 9999;
global.point = 0
audio_stop_all()
alarm[0] = 10*120
room_speed = 9000
s = 0
p = 0
line = [];
note = [];

line[1] = LineMake();