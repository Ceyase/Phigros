draw_set_alpha(lineAlpha)
draw_line_width_color(
controlX + lengthdir_x(HSL*6,_line_angle),
controlY + lengthdir_y(HSL*6,_line_angle),
controlX - lengthdir_x(HSL*6,_line_angle),
controlY - lengthdir_y(HSL*6,_line_angle),
5,global._line_color,global._line_color)