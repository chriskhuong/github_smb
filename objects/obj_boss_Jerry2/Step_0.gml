///State
//event_inherited();

secondsPassed = delta_time/1000000;

if (state != noone)
	{
		event_user(state);
	}

if (hp <= 0)
	{
		instance_destroy();
	}


z += zSpeed;
zSpeed += grav;

if (z >= 0)
	{
		var bounceAmount = 0.25;
		zSpeed = -zSpeed * bounceAmount;
		
		if (zSpeed > -1)
			{
				zSpeed = 0;
				z = 0;
			}
	}

//we are on the ground
/*
if (z = 0)
	{
		apply_friction_to_movement_entity();
		create_hitbox(s_dragon_shadow, x, y, 0, 1, [o_player], 1, 10, 0);
	}
*/	

var xd = 5
var ran_x = x + random_range(-xd, xd);
var ran_y = (y + random_range(-xd, xd) + sprite_height/2) + z;
//script_execute(state);

