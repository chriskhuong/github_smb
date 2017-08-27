///scr_pistol()

var bullet_spd = 10;

//fuck...what am I even doing...
var xforce = lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle);
var yforce = lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle);
var p = instance_create_depth(myGun.x, myGun.y, depth, obj_tempBullet);
p.creator = tag;
with (p)
	{
		move_towards_point(x + xforce, y + yforce, bullet_spd);
	}
/*with (p)
    {
        physics_apply_impulse(x, y, xforce, yforce);
    }
*/