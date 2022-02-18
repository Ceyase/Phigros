if(_line != noone){
_speed = _line._line_speed;

if!(_stop){
_time = ((_tick-global.tick)/global.timingbase)*_speed*HSL
}

_linex = _line.controlX + lengthdir_x(_offset,_line._line_angle)
_liney = _line.controlY + lengthdir_y(_offset,_line._line_angle)

if(_isDown){
_x = _linex + lengthdir_x(_time,_line._line_angle+90)
_y = _liney + lengthdir_y(_time,_line._line_angle+90)
}

if!(_isDown){
_x = _linex - lengthdir_x(_time,_line._line_angle+90)
_y = _liney - lengthdir_y(_time,_line._line_angle+90)
}

x = _x;
y = _y;
image_angle = _line._line_angle

}
if(_time>displayRange)image_alpha = 0;
if(_time<=displayRange)image_alpha = noteAlpha;