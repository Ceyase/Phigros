///@arg id
///@arg x
///@arg y
///@arg time
///@arg delay
function LineMove(lineid,linex,liney,time,delay){
	delay *= global.bpm
	ANIM_New(lineid,"controlX",0,0,lineid.controlX,linex-lineid.controlX,time,delay)
	ANIM_New(lineid,"controlY",0,0,lineid.controlY,liney-lineid.controlY,time,delay)
}