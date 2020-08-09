// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function status_burning(_object);
/// @param {index} _object The Object to apply the effect to

function status_burning(_object) {
	
	if asset_has_tags(_object,"wet",asset_object) {} 
	else {
		asset_add_tags(_object,"burning",asset_object);
		_object.image_blend = c_red;
	}

}


/// @function status_wet(_object);
/// @param {index} _object The Object to apply the effect to

function status_wet(_object) 
{
	if asset_has_tags(_object,"burning",asset_object) {asset_remove_tags(_object,"burning",asset_object);}
	if asset_has_tags(_object,"dry",asset_object) {asset_remove_tags(_object,"dry",asset_object);} 
	
	asset_add_tags(_object,"wet",asset_object)
	_object.image_blend = c_aqua;
	

}

/// @function status_dry(_object);
/// @param {index} _object The Object to apply the effect to

function status_dry(_object) 
{
	if asset_has_tags(_object,"wet",asset_object) {asset_remove_tags(_object,"wet",asset_object); image_blend = c_white;} 
	
	asset_add_tags(_object,"dry",asset_object)
	

}