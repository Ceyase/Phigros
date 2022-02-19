var b = layer_create(100)
var a = layer_background_create(b,Illustration__338)
layer_background_stretch(a,true)
layer_background_blend(a,make_color_rgb(120,120,120))
global.MusicID = 9999;

audio_stop_all()
alarm[1] = 10;//音频校准
alarm[0] = 30;//铺面读取
s = 0
p = 0
line = [];
note = [];

global.MusicID = audio_play_sound(Music,0,0)

fn = string(get_open_filename_ext("铺面文件(*.json)|*.json", "", working_directory, "载入乐谱"))
file = file_text_open_read(fn)
dsmap = json_decode(file_text_read_string(file))


global.noteNumNow = 0;//已击打音符数
global.noteNum = ds_map_find_value(dsmap,"numOfNotes"); //音符总数
global.pointUp = floor(1000000/global.noteNum) //每个音符加多少分
global.point = 0 //分数
global.s = 0//单位为“秒”，舍弃掉了帧判定


judgeLineList = ds_map_find_value(dsmap,"judgeLineList")

Judg = ds_map_create()
JudgMeta = ds_list_create()
Events = ds_map_create()


for(var i=0;i<ds_list_size(judgeLineList);i++){
	
	line[i] = LineMake()
	judgeLineListMap = ds_list_find_value(judgeLineList,i)
	global.bpm = ds_map_find_value(judgeLineListMap,"bpm")
	speedEvents = ds_map_find_value(judgeLineListMap,"speedEvents")
	for(var j=0;j<ds_list_size(speedEvents);j++){
		speedEventsMap = ds_list_find_value(speedEvents,j)
		startTime = ds_map_find_value(speedEventsMap,"startTime")
		//endTime = ds_map_find_value(speedEventsMap,"endTime")
		//floorPosition = ds_map_find_value(speedEventsMap,"floorPosition")
		value = ds_map_find_value(speedEventsMap,"value")
		
		ds_map_add(speedEventsMap,"line",i)
		ds_map_add_map(Events,string(startTime) + "sE",speedEventsMap)
		//SetData(line[i],"_line_speed",value,startTime)
	}
	notesAbove = ds_map_find_value(judgeLineListMap,"notesAbove")
	for(var j=0;j<ds_list_size(notesAbove);j++){
		notesAboveMap = ds_list_find_value(notesAbove,j)
		type = ds_map_find_value(notesAboveMap,"type")
        time = ds_map_find_value(notesAboveMap,"time")
        positionX = ds_map_find_value(notesAboveMap,"positionX")
		//if(type=1)NoteMake("blue",line[i],1,HSLX(positionX/10),time)
		//if(type=2)NoteMake("yellow",line[i],1,HSLX(positionX/10),time)
		//if(type=4)NoteMake("red",line[i],1,HSLX(positionX/10),time)
		ds_map_set(notesAboveMap,"positionX",HSLL(positionX))
		ds_map_add(notesAboveMap,"line",i)
		ds_map_add_map(Events,string(time) + "nA",notesAboveMap)
	}
	notesBelow = ds_map_find_value(judgeLineListMap,"notesBelow")
	for(var j=0;j<ds_list_size(notesBelow);j++){
		notesBelowMap = ds_list_find_value(notesBelow,j)
		type = ds_map_find_value(notesBelowMap,"type")
        time = ds_map_find_value(notesBelowMap,"time")
        positionX = ds_map_find_value(notesBelowMap,"positionX")
		//if(type=1)NoteMake("blue",line[i],0,HSLX(positionX/10),time)
		//if(type=2)NoteMake("yellow",line[i],0,HSLX(positionX/10),time)
		//if(type=4)NoteMake("red",line[i],0,HSLX(positionX/10),time)
		ds_map_set(notesAboveMap,"positionX",HSLL(positionX))
		ds_map_add(notesBelowMap,"line",i)
		ds_map_add_map(Events,string(time) + "nB",notesBelowMap)
	}
	judgeLineDisappearEvents = ds_map_find_value(judgeLineListMap,"judgeLineDisappearEvents")
	for(var j=0;j<ds_list_size(judgeLineDisappearEvents);j++){
		judgeLineDisappearEventsMap = ds_list_find_value(judgeLineDisappearEvents,j)
		startTime = ds_map_find_value(judgeLineDisappearEventsMap,"startTime")
        endTime = ds_map_find_value(judgeLineDisappearEventsMap,"endTime")
        start = ds_map_find_value(judgeLineDisappearEventsMap,"start")
        end1 = ds_map_find_value(judgeLineDisappearEventsMap,"end")
        //start2 = ds_map_find_value(judgeLineDisappearEventsMap,"start2")
        //end2 = ds_map_find_value(judgeLineDisappearEventsMap,"end2")
		//ANIM_New(line[i],"lineAlpha",0,0,start,end1-start,endTime-startTime,startTime)
		
		ds_map_add(judgeLineDisappearEventsMap,"line",i)
		ds_map_add_map(Events,string(startTime) + "jLDE",judgeLineDisappearEventsMap)
	}
	judgeLineMoveEvents = ds_map_find_value(judgeLineListMap,"judgeLineMoveEvents")
	for(var j=0;j<ds_list_size(judgeLineMoveEvents);j++){
		judgeLineMoveEventsMap = ds_list_find_value(judgeLineMoveEvents,j)
		startTime = ds_map_find_value(judgeLineMoveEventsMap,"startTime")
        endTime = ds_map_find_value(judgeLineMoveEventsMap,"endTime")
        start = ds_map_find_value(judgeLineMoveEventsMap,"start")
        end1 = ds_map_find_value(judgeLineMoveEventsMap,"end")
        start2 = ds_map_find_value(judgeLineMoveEventsMap,"start2")
        end2 = ds_map_find_value(judgeLineMoveEventsMap,"end2")
		//ANIM_New(line[i],"controlX",0,0,HSLX(start),HSLX(end1-start),endTime-startTime,startTime)
		//ANIM_New(line[i],"controlY",0,0,HSLY(start2),HSLY(end2-start2),endTime-startTime,startTime)
		
		ds_map_add(judgeLineMoveEventsMap,"line",i)
		ds_map_add_map(Events,string(startTime) + "jLME",judgeLineMoveEventsMap)
	}
	judgeLineRotateEvents = ds_map_find_value(judgeLineListMap,"judgeLineRotateEvents")
	for(var j=0;j<ds_list_size(judgeLineRotateEvents);j++){
		judgeLineRotateEventsMap = ds_list_find_value(judgeLineRotateEvents,j)
		startTime = ds_map_find_value(judgeLineRotateEventsMap,"startTime")
        endTime = ds_map_find_value(judgeLineRotateEventsMap,"endTime")
        start = ds_map_find_value(judgeLineRotateEventsMap,"start")
        end1 = ds_map_find_value(judgeLineRotateEventsMap,"end")
        //start2 = ds_map_find_value(judgeLineRotateEventsMap,"start2")
        //end2 = ds_map_find_value(judgeLineRotateEventsMap,"end2")
		//ANIM_New(line[i],"_line_angle",0,0,start,end1-start,endTime-startTime,startTime)
		
		ds_map_add(judgeLineRotateEventsMap,"line",i)
		ds_map_add_map(Events,string(startTime) + "jLRE",judgeLineRotateEventsMap)
	}
}

ds_list_add(JudgMeta,global.noteNum)
ds_list_add(JudgMeta,global.bpm)
ds_list_add(JudgMeta,ds_list_size(judgeLineList))
ds_map_add_list(Judg,"JudgMeta",JudgMeta)
ds_map_add_map(Judg,"Events",Events)

clipboard_set_text(json_encode(Judg))