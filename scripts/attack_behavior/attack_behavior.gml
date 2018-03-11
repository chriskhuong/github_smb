///@description attack_behavior()

//Behavior
if(my_slash == noone)
	{
		my_slash = instance_create_depth(x + image_xscale*16, y, depth, obj_damage);
		my_slash.creator = id;
		my_slash.image_xscale = image_xscale;
		image_index = 0;
	}

//Transition Triggers
if(image_index > image_number - 1)
	{
		state = states.alert;
	}
	
//Sprite
//sprite_index = spr_enemy_attacking;