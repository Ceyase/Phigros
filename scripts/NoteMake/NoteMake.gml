///@arg note_type
///@arg line_id
///@arg isDown
///@arg offset
///@arg s
function NoteMake(note_type,line_id,isDown,offset,s){
	if(note_type == "red")note_type = obj_filck;
	else if(note_type == "blue")note_type = obj_tap;
	else if(note_type == "yellow")note_type = obj_drag;
	var obj = instance_create_depth(-1000,-1000,0,note_type)
	obj._line = line_id;
	obj._isDown = isDown;
	obj._offset = offset;
	obj._s = s+10; //默认情况下应该是10秒后落到线上。
	obj._time = obj._s*120*obj._speed;
	return obj;
}