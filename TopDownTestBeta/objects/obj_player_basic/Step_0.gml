event_inherited();
move_dir = point_distance(0,0,input_h,input_v) > 0 
           ? point_direction(0,0,input_h,input_v) 
           : no_direction;

event_user(ev_set_sprite);

movement_and_collision(move_dir,
                       max_speed*movement_percent,
                       obj_wall_base);
			   

//Direction pointer graphic
with (instance_number(_obj_point_dir)) {
	var obj_player = obj_player_basic
	image_angle = obj_player.point_dir + 90;	
	x = obj_player.x;
	y = obj_player.y;
}

		   
if (gamepad_button_check_pressed(0,gp_face2)) fireball(point_dir,3,false);

if (gamepad_button_check_pressed(0,gp_face3)) waterbolt(point_dir,3,false);

if (gamepad_button_check_pressed(0,gp_face1)) rockball(point_dir,3,false);



