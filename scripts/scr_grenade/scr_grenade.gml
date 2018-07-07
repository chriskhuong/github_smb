///scr_grenade()

var p = instance_create_depth(x, y, depth, obj_grenade)
p.spd = 5;
p.xforce = lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle);
p.yforce = lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle);
p.creator = tag;

with(p)
    {
		move_towards_point(x + xforce, y + yforce, spd);
    }

