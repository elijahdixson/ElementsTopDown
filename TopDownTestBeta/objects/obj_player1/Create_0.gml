event_inherited();
mode = "BASIC";

//Gamepad
player_number = 0;
player_id = id;

//Pointer
_obj_cam = instance_create_layer(x,y,"Player",obj_camera); 
_obj_point_dir = instance_create_layer(x,y,"point_dir",obj_point_dir); //maybe need to get the exact instance number ... can sometimes break on engine update
_obj_point_cam = instance_create_layer(x,y,"point_dir",obj_point_cam); 

