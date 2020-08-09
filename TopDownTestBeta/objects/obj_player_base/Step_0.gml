/// @description Read Input

//Check analog stick
var _axis_h = gamepad_axis_value(0,gp_axislh);
var _axis_v = gamepad_axis_value(0,gp_axislv);
var _axis_dist = point_distance(0,0,_axis_h,_axis_v);
var _axis_dir = point_direction(0,0,_axis_h,_axis_v)

movement_percent = 0;
input_h = 0;
input_v = 0;


if(_axis_dist > analog_deadzone) {
  movement_percent = min(_axis_dist,1);
  control_mode = mode_analog;
  input_h = _axis_h;
  input_v = _axis_v;
}


// Set Point direction
if(_axis_dist > analog_deadzone) {point_dir = _axis_dir;}


//debug options
if (keyboard_check_pressed(vk_escape)) game_end();
if (keyboard_check_pressed(vk_tab)) {
	//Change Control Display
	with(obj_analog) visible = other.control_mode == mode_analog;
} //not working and idk why
//need to add: colision mask, speed, dir 