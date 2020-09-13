/// @description Insert description here
// You can write your code in this editor

var _object = other;
var _dir = direction;
var _spd = speed;
var spd_multi = 1.1;

with(_object)
{
	if asset_has_tags(_object,"moveable",asset_object) {
		show_debug_message("push");
		
		_object.direction = _dir;
		_object.speed = (_spd * spd_multi);
	}
	
	status_dry(_object);
}

instance_destroy();