// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @function fireball(_object);
/// @param {direction} direction The direction the projectile is shot
/// @param {speed} speed The speed at which the projectile moves
/// @param {hurts_player} boolen wether or not the projectile can hurt the player
// maybe also add number of projectiles, size, and spread

function fireball(_dir,_speed,hurts_player) {
	
	var inst = instance_create_layer(x,y,"Skills",obj_fireball);
	inst.direction = _dir;
	inst.image_angle = _dir - 90;
	inst.speed = _speed;
	if hurts_player = true {} //run player damage script

}


/// @function waterbolt(_object);
/// @param {direction} direction The direction the projectile is shot
/// @param {speed} speed The speed at which the projectile moves
/// @param {hurts_player} boolen wether or not the projectile can hurt the player

function waterbolt(_dir,_speed,hurts_player) {
	
	var inst = instance_create_layer(x,y,"Skills",obj_waterbolt);
	inst.direction = _dir;
	inst.image_angle = _dir - 90;
	inst.speed = _speed;
	if hurts_player = true {} //run player damage script

}


/// @function rockball(_object);
/// @param {direction} direction The direction the projectile is shot
/// @param {speed} speed The speed at which the projectile moves
/// @param {hurts_player} boolen wether or not the projectile can hurt the player
/// @param {player ID} player_id The player's instance ID

function rockball(_dir,_speed,hurts_player,_player_id) {
	
	var inst = instance_create_layer(x,y,"Skills",obj_rockball);
	inst.direction = _dir;
	inst.image_angle = _dir - 90;
	inst.speed = _speed;
	if hurts_player = true {} //run player damage script
	inst.spawned_by_player = _player_id;

}


/// @function airbolt(_object);
/// @param {direction} direction The direction the projectile is shot
/// @param {speed} speed The speed at which the projectile moves
/// @param {hurts_player} boolen wether or not the projectile can hurt the player

function airbolt(_dir,_speed,hurts_player) {
	
	var inst = instance_create_layer(x,y,"Skills",obj_airbolt);
	inst.direction = _dir;
	inst.image_angle = _dir - 90;
	inst.speed = _speed;
	if hurts_player = true {} //run player damage script

}
	
	
/// @function rockblock(_object);
/// @param {direction} direction The direction the block is spawned
/// @param {distance} distance The distance the block is spawned from the player
/// @parm {x} px - The player's x location
/// @parm {y} py - The player's y location
/// @parm {gamepad} gamepad_number - The gamepad assigned to the player 
// maybe also adds size and shape
	
function rockblock(_dir,_dis,px,py){
	
	if (rockblock_spawned = false){
	
	var x_off = lengthdir_x(_dis,_dir);
	var y_off = lengthdir_y(_dis,_dir);
	
	var _x = px + x_off;
	var _y = py + y_off;
		
	var inst = instance_create_layer(_x,_y,"Walls",obj_rockblock);
	asset_add_tags(inst,"moveable",asset_object);	//have to tag instances 
	
	rockblock_spawned = true;
	
	return inst
	}

}