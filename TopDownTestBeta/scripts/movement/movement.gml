// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function move_inputs(gamepad)
/// @param {gamepad} gamepad_number
function move_inputs(gamepad_number){

	//Check analog stick
	var _axis_h = gamepad_axis_value(gamepad_number,gp_axislh);
	var _axis_v = gamepad_axis_value(gamepad_number,gp_axislv);
	var _axis_dist = point_distance(gamepad_number,0,_axis_h,_axis_v);
	var _axis_dir = point_direction(gamepad_number,0,_axis_h,_axis_v);

	//Reset variables
	movement_percent = 0;
	input_h = 0;
	input_v = 0;

	//Deadzone and control mode
	if(_axis_dist > analog_deadzone) {
	  movement_percent = min(_axis_dist,1);
	  control_mode = mode_analog;
	  input_h = _axis_h;
	  input_v = _axis_v;
	}

	//Movement
	move_dir = point_distance(0,0,input_h,input_v) > 0 
	           ? point_direction(0,0,input_h,input_v) 
	           : no_direction;

	event_user(ev_set_sprite);

	movement_and_collision(move_dir,max_speed*movement_percent,obj_wall_base);


	// Set Point direction
	if(_axis_dist > analog_deadzone) {point_dir = _axis_dir;}

	return point_dir;


}
	
	
///@function movement_and_collision
///@arg direction
///@arg movespeed
///@arg wall object
/// returns true if blocked by a wall.
function movement_and_collision() {

#macro no_direction -1  //Comment or Remove this line if you already have it defined elsewhere

	///********************************************************///
	///         PLEASE REPORT ISSUES TO PIXELATED POPE         ///
	/// Twitter: @pixelated_pope  Discord: Pixelated_Pope#7777 ///
	///********************************************************///

	//Settings
	var _max_scan_angle = 75,
	    _inc = 1,
   
	    _mv_dir = argument[0],
	    _mv_spd = argument[1],
	    _wall   = argument[2],
	    _count  = argument_count > 3 ? argument[3]+1 : 1,
	    _limit  = 4;


	if(_mv_dir == no_direction || _mv_spd == 0 || _count > _limit) return false;
 
	var _xtarg = x + lengthdir_x(_mv_spd, _mv_dir),
	    _ytarg = y + lengthdir_y(_mv_spd, _mv_dir);
 
	if(!place_meeting(_xtarg, _ytarg, _wall))
	{ //Nothing in the way, move forward
	  x = _xtarg;
	  y = _ytarg;
	  return false;
	}

	var _x_inc = lengthdir_x(1, _mv_dir),
	    _y_inc = lengthdir_y(1, _mv_dir);
 
	//Move to just inside the wall
	while(!place_meeting(_xtarg, _ytarg, _wall))
	{
	  if(point_distance(x, y, _xtarg + _x_inc, _ytarg + _y_inc) > _mv_spd) break;
	  _xtarg += _x_inc;
	  _ytarg += _y_inc;
	}
 
	//Scan for openings laterally
	var _dist = 0;

	do
	{
	  _dist += _inc;
	  var _sign = 1,
	      _test_dir = _mv_dir;
	  repeat(2)
	  {
	    var _testx = _xtarg + lengthdir_x(_dist, _mv_dir + 90 * _sign);
	    var _testy = _ytarg + lengthdir_y(_dist, _mv_dir + 90 * _sign);
	    _test_dir = point_direction(x, y, _testx, _testy);
	    if(!place_meeting(_testx, _testy, _wall)) //We found an opening.  Go ahead and move towards that.
	        return movement_and_collision(_test_dir, _mv_spd, _wall, _count);

	    _sign = -1;
	  }
	} until(abs(angle_difference(_mv_dir, _test_dir)) > _max_scan_angle)
 
	//Face plant into wall
	while(!place_meeting(x + _x_inc, y + _y_inc, _wall))
	{
	    x += _x_inc;
	    y += _y_inc;
	}
 
	return true;


}
	
	
/// @function directional_pointer
/// @param {object} object_instance_id - The pointer object for this character
/// @parm {direction} p_direction - The player's direction
/// @parm {x} p_x - The player's x location
/// @parm {y} p_y - The player's y location
function directional_pointer(obj_id, p_dir, p_x, p_y) {

	with (obj_id) {
		image_angle = p_dir + 90;	
		x = p_x;
		y = p_y;
	}
}