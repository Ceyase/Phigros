///@arg id
///@arg x
///@arg time
///@arg delay
function LineMoveX(lineid,linex,time,delay){
	delay *= 120
	ANIM_New(lineid,"_line_x",0,0,lineid._line_x,linex-lineid._line_x,time,delay)
}