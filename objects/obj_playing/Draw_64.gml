draw_set_alpha(1)
draw_set_font(font_exo)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
point_str=""
repeat(7 - string_length(string(global.point))){
point_str+="0";
}
point_str+=string(global.point);
draw_text_transformed(room_width-20,20,point_str,1,1,0)
draw_set_valign(fa_bottom)
draw_text_transformed(room_width-20,room_height - 20,"SP q'x■1ia\\",1,1,0)
draw_set_halign(fa_left)
draw_text_transformed(20,room_height - 20,"| The ultra-oriental sleepless night",1,1,0)
draw_set_valign(fa_top)