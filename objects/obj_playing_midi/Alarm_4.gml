ANIM_Stop(obj_line,"controlY")
LineMoveY(line[1],100,global.bpm,0)
LineMoveY(line[2],room_height - 100,global.bpm,0)
alarm[4] = 1000