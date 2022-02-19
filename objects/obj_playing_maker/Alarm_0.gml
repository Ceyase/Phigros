a = instance_create_depth(1366,140,0,obj_tick)
a.text =string(floor(global.tick+(1366/2/10)))
alarm[0] = room_speed/4