///@arg COMMAND
///@arg vault
///@arg s
function ComRun(_COMMAND,_vault,_s){
	var _obj = instance_create_depth(0,0,0,_COMM)
	_obj._COMMAND = _COMMAND
	_obj._vault = _vault
	_obj._s = _s
}