/// @description fireball
//show_debug_message("Fireball");
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
/*
if (alarm[3] == -1 && z == 0)
	{
		alarm[3] = 500000000;*/	//secondsPassed * .25;
		var xAdd = obj_tempPlayer2.hspd * 58;
		var yAdd = obj_tempPlayer2.vspd * 58;
		
		var dire = point_direction(x, y, obj_tempPlayer2.x, obj_tempPlayer2.y);
		
		//var p = instance_create_depth(myGunX + lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle), myGunY + lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle), depth, obj_tempBullet);
		var p = instance_create_depth(x, y, -500, obj_tempBullet2);
		p.state = fire.levitating;
		p.xforce = lengthdir_x(x + xAdd, dire);// - lengthdir_y(y, dire);
		p.yforce = lengthdir_y(y + yAdd, dire);// + lengthdir_x(y, dire);
		
		//var p = instance_create_depth(myGunX + lengthdir_x(myGunLenX, myGunAngle), myGunY - 5 + lengthdir_y(myGunLenX, myGunAngle), depth, obj_tempBullet);
		p.creator = tag;

		
		/*
		var p = instance_create_layer(x, y, "Instances", obj_tempBullet2);
		
		p.state = fire.levitating;
		p.image_angle = dire;
		p.alarm[0] = secondsPassed;
		p.max_peed = 3.5;
		*/
/*	}


/*
if (jump_flag == true && z == 0)
	{
		jump_flag = false;
	}
*/

//attack is over
/*
if (alarm[2] == -1)
	{
		alarm[1] = secondsPassed * 5;
		state = jerry.idle;
	}
*/