///scr_smg()

var bullet_spd = 10;

//fuck...what am I even doing...
var xforce = lengthdir_x(myGun.LenX, random_range(myGun.image_angle - 20, myGun.image_angle + 20)) - lengthdir_y(myGun.LenY, random_range(myGun.image_angle - 20, myGun.image_angle + 20));
var yforce = lengthdir_y(myGun.LenX, random_range(myGun.image_angle - 20, myGun.image_angle + 20)) + lengthdir_x(myGun.LenY, random_range(myGun.image_angle - 20, myGun.image_angle + 20));
var p = instance_create_depth(myGun.x + lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle), myGun.y + lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle), depth, obj_tempBullet);
p.creator = tag;
with (p)
    {
		move_towards_point(x + xforce, y + yforce, bullet_spd);
        //physics_apply_impulse(x, y, xforce, yforce);
    }
