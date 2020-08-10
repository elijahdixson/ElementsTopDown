event_inherited();

/// @description Read Input

//Movement
var gamepad_number = player_number;
var face_bottom_input = (gamepad_button_check_pressed(gamepad_number,gp_face1))
var face_top_input = (gamepad_button_check_pressed(gamepad_number,gp_face4))
var face_right_input = (gamepad_button_check_pressed(gamepad_number,gp_face2))
var face_left_input = (gamepad_button_check_pressed(gamepad_number,gp_face3))
var point_dir = move_inputs(gamepad_number);
		 
directional_pointer(_obj_point_dir,point_dir,x,y);
		  
//Abilites
if face_right_input fireball(point_dir,3,false);
if face_left_input waterbolt(point_dir,3,false);
if face_bottom_input rockball(point_dir,3,false);

