/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch(gunOver)
	{
			
			case true:
				draw_sprite_ext(headArray[head, movement], image_index, x, y, myHeadXScale, myHeadYScale, myHeadAngle, image_blend, image_alpha);
				draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
				break;
				
			case false:
				draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
				draw_sprite_ext(headArray[head, movement], image_index, x, y, myHeadXScale, myHeadYScale, myHeadAngle, image_blend, image_alpha);
				break;
				
				default:
				break;
	}

if (stunFlash)
	{
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
		draw_sprite_ext(headArray[head, movement], image_index, x, y, myHeadXScale, myHeadYScale, myGunAngle, image_blend, image_alpha);
		gpu_set_fog(false, c_white, 0, 0);
	}

