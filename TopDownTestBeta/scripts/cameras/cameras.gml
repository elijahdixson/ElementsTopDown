// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function camera_pointer
/// @param {object} pointer_instance_id - The camera focus for this player
/// @parm {gamepad} gamepad_number - The gamepad assigned to the player 
/// @parm {x} px - The player's x location
/// @parm {y} py - The player's y location
/// @parm {cam_dis} camera_distance - the set distance / offset the camera is from the player
function camera_pointer(obj_id,_gamepad,px,py,cam_dis){
	with(obj_id){
		var _axis_h = gamepad_axis_value(_gamepad,gp_axislh);
		var _axis_v = gamepad_axis_value(_gamepad,gp_axislv);
		
		var _x = lerp(0,-cam_dis,_axis_h);
		var _y = lerp(0,-cam_dis,_axis_v);
		
		x = px + _x;
		y = py + _y;
	}
}
	
/// @function camera_change_mode
/// @param {object} camera_instance_id - The camera focus for this player
/// @parm {mode} new_camera_mode - The camrea mode defined in obj_camera that you want to switch to
/// @parm {x} new_target_x - The target's x location
/// @parm {y} new_target_y - The target's y location
/// @parm {following} new_following - the new obj to follow if there is one
function camera_change_mode(obj_id,new_mode,new_target_x,new_target_y,new_following){
	
	with(obj_id){
		mode = new_mode;
		
		switch(mode){
			case cammode.move_to_target:
				if (new_target_x != 0) {target_x = new_target_x;}
				if (new_target_y != 0) {target_y = new_target_y;}
			break;
			
			case cammode.follow_object:
			case cammode.move_to_follow_object:	//applies to both ... would probably want to adjust this a bit for cinematics and stuff
				if (new_following != 0) {following = new_following;}
			break;
			
			
		}
	}
	
	return new_mode
	
}