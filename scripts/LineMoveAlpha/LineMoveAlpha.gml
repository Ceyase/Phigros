///@arg id
///@arg alpha
///@arg time
function LineMoveAlpha(lineid,linealpha,time){
	GMU_Anim_New(lineid,"_line_alpha",0,0,lineid._line_alpha,linealpha-lineid._line_alpha,time)
}