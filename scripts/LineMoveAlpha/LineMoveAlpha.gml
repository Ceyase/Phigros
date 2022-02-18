///@arg id
///@arg alpha
///@arg time
///@arg delay
function LineMoveAlpha(lineid,linealpha,time,delay){
	delay *= global.bpm
	ANIM_New(lineid,"lineAlpha",0,0,lineid.lineAlpha,linealpha-lineid.lineAlpha,time,delay)
}