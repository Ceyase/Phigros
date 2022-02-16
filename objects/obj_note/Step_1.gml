if(_line != noone){
if!(_stop){
if(_isDown=1)_time = -(global.s+10-_s)*120*_speed;
if(_isDown=0)_time = (global.s+10-_s)*120*_speed;
}
/*
if!(_stop){
if(_isDown)_time-=_speed;
if!(_isDown)_time+=_speed;
}*/
_linex = _line._line_x + lengthdir_x(_offset,_line._line_angle)
_liney = _line._line_y + lengthdir_y(_offset,_line._line_angle)
_x = _linex + lengthdir_x(_time,_line._line_angle+90)
_y = _liney + lengthdir_y(_time,_line._line_angle+90)
x = _x;
y = _y;
image_angle = _line._line_angle
}