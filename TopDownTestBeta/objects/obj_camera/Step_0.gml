/// @description Insert description here
// You can write your code in this editor

cx = camera_get_view_x(view_camera[0])
cy = camera_get_view_y(view_camera[0])

switch(mode){

	case cammode.follow_object:
	
		if (!instance_exists(following)) break; //checks to make sure the thing we are following exists
		cx = following.x - (view_w/2);
		cy = following.y - (view_h/2);

	break;

	case cammode.follow_mouse_drag:
		
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
		
		if (mouse_check_button(mb_left)){
			cx += (mouse_xprevious-mx) * .25;
			cy += (mouse_yprevious-my) * .25;	
		}
		
		mouse_xprevious = mx;
		mouse_yprevious = my;

	break;

	case cammode.follow_mouse_border:
		if (point_in_rectangle(mouse_x,mouse_y, cx+(view_w*0.1), cy+(view_h*0.1), cx+(view_w*0.9), cy+(view_h*0.9))) {
			cx = lerp(cx, mouse_x-(view_w/2), 0.01);
			cy = lerp(cy, mouse_y-(view_h/2), 0.01);
		}

	break;

	case cammode.follow_mouse_peek: //defualt player cam
		cx = lerp(following.x, pointer.x, 0.2)-(view_w/2);
		cy = lerp(following.y, pointer.y, 0.2)-(view_h/2);
		
		//cx += ((following.x - pointer.x)/camera_speed);
		//cy += ((following.y - pointer.y)/camera_speed);
		

	break;

	case cammode.move_to_target:
		cx = lerp(cx, target_x - (view_w/2), 0.1);
		cy = lerp(cy, target_y - (view_h/2), 0.1);

	break;

	case cammode.move_to_follow_object:
		if (!instance_exists(following)) break;
		
		var point_x =  following.x - (view_w/2)
		var point_y = following.y - (view_h/2)
		
		cx = lerp(cx,point_x, 0.1);
		cy = lerp(cy,point_y, 0.1);
		
		if(point_distance(cx,cy,point_x,point_y) < 1) {
			mode = cammode.follow_object;
		}

	break;

}

if(!boundless) {
	cx = clamp(cx,0,room_width-view_w);	
	cy = clamp(cy,0,room_height-view_h);
}

camera_set_view_pos(view_camera[0],cx,cy);