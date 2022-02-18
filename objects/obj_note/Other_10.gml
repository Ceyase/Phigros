/// @description Die

global.noteNumNow +=1
global.point += global.pointUp
show_debug_message(global.noteNumNow)
if(global.noteNumNow = global.noteNum)global.point=1000000;
instance_create_depth(x,y,depth,obj_explode)
instance_destroy()