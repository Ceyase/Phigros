draw_set_alpha(1)
draw_set_font(font_exo)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
point_str=""
repeat(7 - string_length(string(global.point))){
point_str+="0";
}
point_str+=string(global.point);
draw_set_alpha(0.5)
draw_rectangle(0,0,room_width*global.s/global.MusicLong,6,false)
draw_rectangle(room_width/2-5,140,room_width/2+5,250,false)
draw_set_alpha(1)
draw_text_transformed(room_width-20,20,point_str,1,1,0)
draw_text_transformed(room_width-20,60,"Ticks:"+string(global.tick),1,1,0)
draw_set_valign(fa_bottom)
draw_text_transformed(room_width-20,room_height - 20,"?? Lv.??",1,1,0)
draw_set_halign(fa_left)
draw_text_transformed(20,room_height - 20,"| Spasmodic",1,1,0)
draw_set_valign(fa_top)