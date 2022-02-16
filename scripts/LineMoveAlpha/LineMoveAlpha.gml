///@arg id
///@arg alpha
///@arg time
///@arg delay
function LineMoveAlpha(lineid,linealpha,time,delay){
	delay *= 120
	ANIM_New(lineid,"_line_alpha",0,0,lineid._line_alpha,linealpha-lineid._line_alpha,time,delay)
}