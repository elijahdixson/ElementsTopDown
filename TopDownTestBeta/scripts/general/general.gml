// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.gamewidth = 1920;
global.gameheight = 1080;


/// @description approach
/// @param start
/// @param end
/// @param shift
function approach(argument0, argument1, argument2) {


	if (argument0 < argument1)
	    return min(argument0 + argument2, argument1); 
	else
	    return max(argument0 - argument2, argument1);

}


///@param sprite
///@param subimg
///@param x
///@param y
///@param xscale
///@param yscale
///@param rot
///@param col
///@param alpha
function draw_sprite_solid_color(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	var _spr = argument0,
	    _img = argument1,
	    _x   = argument2,
	    _y   = argument3,
	    _xs  = argument4,
	    _ys  = argument5,
	    _ang = argument6,
	    _col = argument7,
	    _a   = argument8;

	gpu_set_fog(true,_col,-16000,16000);
	draw_sprite_ext(_spr,_img,_x,_y,_xs,_ys,_ang,_col,_a);
	gpu_set_fog(false,0,0,0);


}


/// @description round_n(value, increment)
/// @param value
/// @param increment
function round_n(argument0, argument1) {
	return round(argument0/argument1)*argument1;


}




