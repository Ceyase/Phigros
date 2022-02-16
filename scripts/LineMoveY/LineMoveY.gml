///@arg id
///@arg y
///@arg time
function LineMoveY(lineid,liney,time){
	ANIM_New(lineid,"_line_y",0,0,lineid._line_y,liney-lineid._line_y,time)
}