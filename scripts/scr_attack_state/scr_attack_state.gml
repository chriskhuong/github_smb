// @description scr_attack_state
image_speed = .5;

switch(image_index)
	{
		case spr_player_down:
			sprite_index = spr_player_attack_down;
			break;
			
		case spr_player_up:
			sprite_index = spr_player_attack_up;
			break;
			
		case spr_player_right:
			sprite_index = spr_player_attack_right;
			break;
			
		case spr_player_left:
			sprite_index = spr_player_attack_left;
			break;
	}
	
if (image_index >= 3 && attacked == false)
	{
		var xx = 0;
		var yy = 0;
		switch(image_index)
			{
				case spr_player_attack_down:
					//xx = x_offset
					//yy = y_offset
					break;
					
				case spr_player_attack_up:
					//xx = x_offset
					//yy = y_offset
					break;
					
				case spr_player_attack_right:
					//xx = x_offset
					//yy = y_offset
					break;
					
				case spr_player_attack_left:
					//xx = x_offset
					//yy = y_offset
					break;
			}
			
		//var damage = scr_damage(xx, yy, creator.tag, 10);
		attacked = true;
	}