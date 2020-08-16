/// @description Insert description here
// You can write your code in this editor

var _object = other;
var _dir = direction;

with(_object)
{
	if asset_has_tags(_object,"moveable",asset_object) {
		show_debug_message("push");
		movement_and_collision(_dir,20,obj_wall_base);
	}
	
	status_dry(_object);
}

instance_destroy();