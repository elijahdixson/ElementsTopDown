/// @description
press = approach(press,
                 (keyboard_check(key) || gamepad_button_check(0,button))*max_press*image_yscale,
                 1*image_yscale);
				 
if (keyboard_check_pressed(vk_f6)) game_end();
