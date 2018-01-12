///scr_shotgun()

var bullet_spd = 10;

for (var i = 0; i < 5; i++)
    {
		var spread = 0;
		var variance = 15;
		var shotgun = (myGunAngle + spread);
        //fuck...what am I even doing...
        var xforce = lengthdir_x(myGunLenX, random_range(shotgun - variance, shotgun + variance)) - lengthdir_y(myGunLenY, random_range(shotgun - variance, shotgun + variance));
        var yforce = lengthdir_y(myGunLenX, random_range(shotgun - variance, shotgun + variance)) + lengthdir_x(myGunLenY, random_range(shotgun - variance, shotgun + variance));
		var p = instance_create_depth(myGunX + lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle), myGunY + lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle), depth, obj_tempBullet);
        p.creator = tag;
        with (p)
            {
				move_towards_point(x + xforce, y + yforce, bullet_spd);
                //physics_apply_impulse(x, y, xforce, yforce);
            }
		spread += 5;
    }
