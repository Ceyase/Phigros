///@arg id
///@arg x
///@arg time
///@arg delay
function LineMoveX(lineid,linex,time,delay){
	delay *= global.bpm
	ANIM_New(lineid,"controlX",0,0,lineid.controlX,linex-lineid.controlX,time,delay)
}