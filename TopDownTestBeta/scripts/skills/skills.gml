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

function rockball(_dir,_speed,hurts_player) {
	
	var inst = instance_create_layer(x,y,"Skills",obj_rockball);
	inst.direction = _dir;
	inst.image_angle = _dir - 90;
	inst.speed = _speed;
	if hurts_player = true {} //run player damage script

}