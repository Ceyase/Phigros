///@arg id
///@arg x
///@arg y
///@arg time
function LineMove(lineid,linex,liney,time){
	ANIM_New(lineid,"_line_x",0,0,lineid._line_x,linex-lineid._line_x,time)
	ANIM_New(lineid,"_line_y",0,0,lineid._line_y,liney-lineid._line_y,time)
}