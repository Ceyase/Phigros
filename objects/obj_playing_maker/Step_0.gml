//获取tick
global.tick++
if(ds_map_exists(Events,string(global.tick)+"sE")){
	Map = ds_map_find_value(Events,string(global.tick)+"sE")
	value = ds_map_find_value(Map,"value")
	linen = ds_map_find_value(Map,"line")
	line[linen]._line_speed = value
}
if(ds_map_exists(Events,string(global.tick+100)+"nA")){
	Map = ds_map_find_value(Events,string(global.tick+100)+"nA")
	type = ds_map_find_value(Map,"type")
    time = ds_map_find_value(Map,"time")
    positionX = ds_map_find_value(Map,"positionX")
	linen = ds_map_find_value(Map,"line")
	if(type=1)NoteMake("blue",line[linen],1,positionX,time)
	if(type=2)NoteMake("yellow",line[linen],1,positionX,time)
	if(type=4)NoteMake("red",line[linen],1,positionX,time)
}
if(ds_map_exists(Events,string(global.tick+100)+"nB")){
	Map = ds_map_find_value(Events,string(global.tick+100)+"nB")
	type = ds_map_find_value(Map,"type")
    time = ds_map_find_value(Map,"time")
    positionX = ds_map_find_value(Map,"positionX")
	linen = ds_map_find_value(Map,"line")
	if(type=1)NoteMake("blue",line[linen],0,positionX,time)
	if(type=2)NoteMake("yellow",line[linen],0,positionX,time)
	if(type=4)NoteMake("red",line[linen],0,positionX,time)
}
if(ds_map_exists(Events,string(global.tick)+"jLDE")){
	Map = ds_map_find_value(Events,string(global.tick)+"jLDE")
	startTime = ds_map_find_value(Map,"startTime")
    endTime = ds_map_find_value(Map,"endTime")
    start = ds_map_find_value(Map,"start")
    end1 = ds_map_find_value(Map,"end")
	linen = ds_map_find_value(Map,"line")
	ANIM_New(line[linen],"lineAlpha",0,0,start,end1-start,endTime-startTime)
}
if(ds_map_exists(Events,string(global.tick)+"jLME")){
	Map = ds_map_find_value(Events,string(global.tick)+"jLME")
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
if(ds_map_exists(Events,string(global.tick)+"jLRE")){
	Map = ds_map_find_value(Events,string(global.tick)+"jLRE")
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

//以下是按钮按下事件
if(global.button[?"创建:判定线"].isDown){
	line[linenum] = LineMake()
	linenum+=1
}
if(global.button[?"创建:蓝键"].isDown){
	
}
if(global.button[?"创建:红键"].isDown){
	
}
if(global.button[?"创建:黄键"].isDown){
	
}
