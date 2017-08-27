///scr_grenade()

var grenade_spd = 5;

var p = instance_create_depth(x, y, depth, obj_grenade)
var xforce = lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle);
var yforce = lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle);
p.creator = tag;

with(p)
    {
		move_towards_point(x + xforce, y + yforce, grenade_spd);
        //physics_apply_impulse(x, y, xforce, yforce);
    }

