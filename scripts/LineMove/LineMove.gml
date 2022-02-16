///@arg id
///@arg x
///@arg y
///@arg time
///@arg delay
function LineMove(lineid,linex,liney,time,delay){
	delay *= 120
	ANIM_New(lineid,"_line_x",0,0,lineid._line_x,linex-lineid._line_x,time,delay)
	ANIM_New(lineid,"_line_y",0,0,lineid._line_y,liney-lineid._line_y,time,delay)
}