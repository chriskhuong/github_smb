///scr_pistol()

shot = true
var bullet_spd = 10;
var offsetNum = 8
myGunDisplace = !myGunDisplace;

//fuck...what am I even doing...
var xforce = lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle);
var yforce = lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle);
if (shot)
	{
		myGunIndex = 0;
		shot = false;
		alarm[10] = 0;
	}
if (!myGunDisplace)
	{
		offset = -offsetNum;
	}
else
	{
		offset = offsetNum;
	}

var p = instance_create_depth(myGunX + lengthdir_x((myGunLenX+offset), (myGunAngle-offset)) - lengthdir_y((myGunLenY+offset), (myGunAngle-offset)), myGunY + lengthdir_y((myGunLenX+offset), (myGunAngle-offset)) + lengthdir_x((myGunLenY+offset), (myGunAngle-offset)), depth, obj_tempBullet);
p.creator = tag;
p.creatorid = id;
p.sprite_index = spr_shot_pistol;
p.image_angle = myGunAngle;

with (p)
	{
		move_towards_point(x + xforce, y + yforce, bullet_spd);
	}
/*with (p)
    {
        physics_apply_impulse(x, y, xforce, yforce);
    }
*/