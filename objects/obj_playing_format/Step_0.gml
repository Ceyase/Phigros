//获取tick
global.tick++
if(ds_map_exists(Events,string(global.tick)+"speedEvents")){
	Map = ds_map_find_value(Events,string(global.tick)+"speedEvents")
	value = ds_map_find_value(Map,"value")
	linen = ds_map_find_value(Map,"line")
	line[linen]._line_speed = value
}
if(ds_map_exists(Events,string(global.tick+50)+"notesAbove")){
	Map = ds_map_find_value(Events,string(global.tick+50)+"notesAbove")
	type = ds_map_find_value(Map,"type")
    time = ds_map_find_value(Map,"time")
    positionX = ds_map_find_value(Map,"positionX")
	linen = ds_map_find_value(Map,"line")
	if(type=1)NoteMake("blue",line[linen],1,HSLL(positionX),time)
	if(type=2)NoteMake("yellow",line[linen],1,HSLL(positionX),time)
	if(type=4)NoteMake("red",line[linen],1,HSLL(positionX),time)
}
if(ds_map_exists(Events,string(global.tick+50)+"notesBelow")){
	Map = ds_map_find_value(Events,string(global.tick+50)+"notesBelow")
	type = ds_map_find_value(Map,"type")
    time = ds_map_find_value(Map,"time")
    positionX = ds_map_find_value(Map,"positionX")
	linen = ds_map_find_value(Map,"line")
	if(type=1)NoteMake("blue",line[linen],0,HSLL(positionX),time)
	if(type=2)NoteMake("yellow",line[linen],0,HSLL(positionX),time)
	if(type=4)NoteMake("red",line[linen],0,HSLL(positionX),time)
}
if(ds_map_exists(Events,string(global.tick)+"judgeLineDisappearEvents")){
	Map = ds_map_find_value(Events,string(global.tick)+"judgeLineDisappearEvents")
	startTime = ds_map_find_value(Map,"startTime")
    endTime = ds_map_find_value(Map,"endTime")
    start = ds_map_find_value(Map,"start")
    end1 = ds_map_find_value(Map,"end")
	linen = ds_map_find_value(Map,"line")
	ANIM_New(line[linen],"lineAlpha",0,0,start,end1-start,endTime-startTime)
}
if(ds_map_exists(Events,string(global.tick)+"judgeLineMoveEvents")){
	Map = ds_map_find_value(Events,string(global.tick)+"judgeLineMoveEvents")
	startTime = ds_map_find_value(Map,"startTime")
    endTime = ds_map_find_value(Map,"endTime")
    start = ds_map_find_value(Map,"start")
    end1 = ds_map_find_value(Map,"end")
    start2 = ds_map_find_value(Map,"start2")
    end2 = ds_map_find_value(Map,"end2")
	linen = ds_map_find_value(Map,"line")
	ANIM_New(line[linen],"controlX",0,0,HSLX(start),HSLX(end1-start),endTime-startTime)
	ANIM_New(line[linen],"controlY",0,0,HSLY(start2),HSLY(end2-start2),endTime-startTime)
}
if(ds_map_exists(Events,string(global.tick)+"judgeLineRotateEvents")){
	Map = ds_map_find_value(Events,string(global.tick)+"judgeLineRotateEvents")
	startTime = ds_map_find_value(Map,"startTime")
    endTime = ds_map_find_value(Map,"endTime")
    start = ds_map_find_value(Map,"start")
    end1 = ds_map_find_value(Map,"end")
	linen = ds_map_find_value(Map,"line")
	ANIM_New(line[linen],"_line_angle",0,0,start,end1-start,endTime-startTime)
}

global.s = global.tick/global.timingbase/global.beat
//if(global.noteNumNow = global.noteNum)
//以下是线动


