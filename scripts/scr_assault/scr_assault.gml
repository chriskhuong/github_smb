///scr_assault()
//might not even need this

var bullet_spd = 10;
//fuck...what am I even doing...
var xforce = lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle);
var yforce = lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle);
var p = instance_create_depth(myGun.x + lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle), myGun.y + lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle), depth, obj_tempBullet);
p.creator = tag;
with (p)
    {
		move_towards_point(x + xforce, y + yforce, bullet_spd);
        //physics_apply_impulse(x, y, xforce, yforce);
    }
