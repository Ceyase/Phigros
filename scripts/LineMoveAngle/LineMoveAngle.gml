///@arg id
///@arg angle
///@arg time
///@arg delay
function LineMoveAngle(lineid,linegle,time,delay){
	delay *= 120
	ANIM_New(lineid,"_line_angle",0,0,lineid._line_angle,linegle-lineid._line_angle,time,delay)
}