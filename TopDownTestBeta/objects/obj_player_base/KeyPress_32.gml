/// @description Camera Mode Player

switch (cam_switch)
{
	case true: 
	
		camera_change_mode(_obj_cam,0,0,0,0);
		cam_switch = false;
	
	break;
	
	case false: 
	
		camera_change_mode(_obj_cam,3,0,0,0);
		cam_switch = true;
		
	break;
}
