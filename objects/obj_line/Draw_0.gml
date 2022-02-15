draw_set_alpha(_line_alpha)
draw_line_width_color(
_line_x + lengthdir_x(5000,_line_angle),
_line_y + lengthdir_y(5000,_line_angle),
_line_x - lengthdir_x(5000,_line_angle),
_line_y - lengthdir_y(5000,_line_angle),
5,global._line_color,global._line_color)
/*
show_debug_message(_line_x + lengthdir_x(100,_line_angle))
show_debug_message(_line_y + lengthdir_y(100,_line_angle))
show_debug_message(_line_x - lengthdir_x(100,_line_angle))
show_debug_message(_line_y - lengthdir_y(100,_line_angle))*/