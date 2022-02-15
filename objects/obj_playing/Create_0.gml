alarm[0] = 1
step = 0
var b = layer_create(100)
var a = layer_background_create(b,Illustration__338)
layer_background_stretch(a,true)
layer_background_blend(a,make_color_rgb(120,120,120))
c = LineMake()
d = LineMake()
LineMoveAlpha(c,0.5,0)
LineMoveAngle(c,360,5000)
LineMoveAngle(d,-360,5000)
LineMove(c,0,0,5000)
LineMove(d,room_width,room_height,5000)