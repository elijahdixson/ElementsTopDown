/// @description Camera Mode Player

switch (cam_switch)
{
	case true: 
	
		camera_change_mode(obj_camera,0,0,0,0);
		cam_switch = false;
	
	break;
	
	case false: 
	
		camera_change_mode(obj_camera,3,0,0,0);
		cam_switch = true;
		
	break;
}
