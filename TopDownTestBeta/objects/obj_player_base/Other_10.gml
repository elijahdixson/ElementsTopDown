/// @description Update Sprite Index
if(move_dir != no_direction) //happens after movement and collison function
{
  image_speed = 1;
  xscale=1;
  switch(round_n(move_dir,45))
  {
    case 180: xscale = -1; sprite_index = spr_east; break; 
    case 225: xscale = -1; sprite_index = spr_south_east; break;
    case 135: xscale = -1; sprite_index = spr_north_east; break;
    case 360:
    case 0:   sprite_index = spr_east; break; 
    case 315: sprite_index = spr_south_east; break;
    case 45:  sprite_index = spr_north_east; break;
    case 90:  sprite_index = spr_north; break;
    case 270: sprite_index = spr_south; break;
  }
}
else
{  
  image_speed = 0;
  image_index = 0; //or whatever frame has both feet on the ground.
}

//will likely need to replace or refacter for kylie's character creater