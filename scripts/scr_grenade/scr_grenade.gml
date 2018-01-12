///scr_grenade()

var grenade_spd = 5;

var p = instance_create_depth(x, y, depth, obj_grenade)
var xforce = lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle);
var yforce = lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle);
p.creator = tag;

with(p)
    {
		move_towards_point(x + xforce, y + yforce, grenade_spd);
		xforce -= 0.1;
		yforce -= 0.1;
        //physics_apply_impulse(x, y, xforce, yforce);
    }

