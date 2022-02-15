///@arg id
///@arg x
///@arg time
function LineMoveX(lineid,linex,time){
	GMU_Anim_New(lineid,"_line_x",0,0,lineid._line_x,linex-lineid._line_x,time)
}