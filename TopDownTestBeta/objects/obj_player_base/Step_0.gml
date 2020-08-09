/// @description Read Input
var _dpad_h = gamepad_button_check(0,gp_padr) - gamepad_button_check(0,gp_padl);
var _dpad_v = gamepad_button_check(0,gp_padd) - gamepad_button_check(0,gp_padu);
var _dpad_dist = point_distance(0,0,_dpad_h,_dpad_v);

var _arrows_h = keyboard_check(vk_right) - keyboard_check(vk_left);
var _arrows_v = keyboard_check(vk_down) - keyboard_check(vk_up);
var _arrows_dist = point_distance(0,0,_arrows_h,_arrows_v);

//Check analog stick
var _axis_h = gamepad_axis_value(0,gp_axislh);
var _axis_v = gamepad_axis_value(0,gp_axislv);
var _axis_dist = point_distance(0,0,_axis_h,_axis_v);
var _axis_dir = point_direction(0,0,_axis_h,_axis_v)

movement_percent = 0;
input_h = 0;
input_v = 0;

if(_arrows_dist > 0)
{
  movement_percent = 1;
  control_mode = mode_keyboard;
  input_h = _arrows_h;
  input_v = _arrows_v;
}
else if(_dpad_dist > 0)
{
  movement_percent = 1;
  control_mode = mode_dpad;
  input_h = _dpad_h;
  input_v = _dpad_v;
}
else if(_axis_dist > analog_deadzone)
{
  movement_percent = min(_axis_dist,1);
  control_mode = mode_analog;
  input_h = _axis_h;
  input_v = _axis_v;
}


//Change Control Display
with(obj_analog) 
  visible = other.control_mode == mode_analog;

with(obj_key)    
  visible = other.control_mode == mode_keyboard || other.control_mode == mode_dpad;
  


//Change move_speed
if(position_meeting(mouse_x,mouse_y,id))
{
  max_speed = clamp(max_speed + (mouse_wheel_up()-mouse_wheel_down())*.25,
                    .25,
                    5);
}







if (gamepad_button_check_pressed(0,gp_face2)) 
{
	var inst = instance_create_layer(x,y,"Skills",obj_fireball);
	inst.direction = _axis_dir;
	inst.image_angle = _axis_dir - 90;
	inst.speed = 3;
}


if (gamepad_button_check_pressed(0,gp_face3)) 
{
	var inst = instance_create_layer(x,y,"Skills",obj_waterbolt);
	inst.direction = _axis_dir;
	inst.image_angle = _axis_dir - 90;
	inst.speed = 3;
}

if (gamepad_button_check_pressed(0,gp_face1)) 
{
	var inst = instance_create_layer(x,y,"Skills",obj_rockball);
	inst.direction = _axis_dir;
	inst.image_angle = _axis_dir - 90;
	inst.speed = 3;
}

