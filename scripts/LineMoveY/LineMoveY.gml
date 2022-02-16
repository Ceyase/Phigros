///@arg id
///@arg y
///@arg time
///@arg delay
function LineMoveY(lineid,liney,time,delay){
	delay *= 120
	ANIM_New(lineid,"_line_y",0,0,lineid._line_y,liney-lineid._line_y,time,delay)
}