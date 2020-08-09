/// @description Insert description here
// You can write your code in this editor

instance_destroy();

var _object = other;

with(_object)
{
	if asset_has_tags(_object,"burning",asset_object) {} 
	else asset_add_tags(_object,"burning",asset_object) {status_burning(_object);}
}