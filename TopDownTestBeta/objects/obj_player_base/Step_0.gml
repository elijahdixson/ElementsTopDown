//debug options
if (keyboard_check_pressed(vk_escape)) game_end();


if (keyboard_check_pressed(vk_tab)) {
	//Change Control Display
	with(obj_analog) visible = other.control_mode == mode_analog;
} //not working and idk why
//need to add: colision mask, speed, dir 