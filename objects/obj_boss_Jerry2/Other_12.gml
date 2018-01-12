/// @description earthquake
//show_debug_message("Earthquake");
z += zSpeed;
zSpeed += grav;

if (z >= 0)
	{
		var bounceAmount = 0.15;
		zSpeed = -zSpeed * bounceAmount;
		if (zSpeed > -1)
			{
				zSpeed = 0;
				z = 0;
			}
	}

if (z == 0 && alarm[2] > 0)
	{
		ran = random_range(-15, 15);
		
		if (alarm[3] == -1)
			{
				alarm[3] = secondsPassed * .25;
				
				var xAdd = obj_tempPlayer2.hspd * 58;
				var yAdd = obj_tempPlayer2.vspd * 58;
				
				var p = instance_create_layer(obj_tempPlayer2.x + xAdd + ran, obj_tempPlayer2.y + yAdd + ran, "Instances", obj_tempBullet2);
				p.z = -400;
				p.zSpeed = 0;
				p.grav = 0.3;
				p.state = fire.falling;
			}
	}

/*
if (jump_flag == true && z == 0)
	{
		jump_flag = false;
	}
*/

//attack is over
if (alarm[2] == -1)
	{
		alarm[1] = secondsPassed * 3;
		state = jerry.idle;
	}