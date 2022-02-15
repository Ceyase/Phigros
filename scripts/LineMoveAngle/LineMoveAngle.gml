///@arg id
///@arg angle
///@arg time
function LineMoveAngle(lineid,linegle,time){
	GMU_Anim_New(lineid,"_line_angle",0,0,lineid._line_angle,linegle-lineid._line_angle,time)
}