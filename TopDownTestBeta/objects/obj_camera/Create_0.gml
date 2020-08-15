/// @description Insert description here
// You can write your code in this editor

enum cammode {
	follow_object, // 0
	follow_mouse_drag, // 1
	follow_mouse_border, // 2
	follow_mouse_peek, // 3
	move_to_target, // 4
	move_to_follow_object, // 5	
}

mode = 0;
following = obj_player1;
pointer = obj_point_cam;
boundless = true;

camera_speed = .25;

target_x = 200;
target_y = 200;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

mouse_xprevious = -1;
mouse_yprevious = -1;