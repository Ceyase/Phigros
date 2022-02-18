///@arg id
///@arg y
///@arg time
///@arg delay
function LineMoveY(lineid,liney,time,delay){
	delay *= global.bpm
	ANIM_New(lineid,"controlY",0,0,lineid.controlY,liney-lineid.controlY,time,delay)
}