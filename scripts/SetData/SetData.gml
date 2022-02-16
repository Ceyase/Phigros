///@arg note_id
///@arg data_name
///@arg line_vause
///@arg s
function SetData(note_id,data_name,line_vause,s){
	var _obj = instance_create_depth(0,0,0,_DATA)
	_obj.note_id = note_id
	_obj.data_name = data_name
	_obj._s = s
	_obj.line_vause = line_vause
}