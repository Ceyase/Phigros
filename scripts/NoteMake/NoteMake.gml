///@arg note_type
///@arg line_id
///@arg isDown
///@arg offset
function NoteMake(note_type,line_id,isDown,offset){
	if(note_type == "red")note_type = obj_filck;
	else if(note_type == "blue")note_type = obj_tap;
	else if(note_type == "yellow")note_type = obj_drag;
	var obj = instance_create_depth(-1000,-1000,0,note_type)
	obj._line = line_id;
	obj._isDown = isDown;
	obj._offset = offset;
}