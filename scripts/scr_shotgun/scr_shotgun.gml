///scr_shotgun()

var bullet_spd = 10;

for (var i = 0; i < 5; i++)
    {
		var spread = 0;
		var variance = 15;
		var shotgun = (myGun.image_angle + spread);
        //fuck...what am I even doing...
        var xforce = lengthdir_x(myGun.LenX, random_range(shotgun - variance, shotgun + variance)) - lengthdir_y(myGun.LenY, random_range(shotgun - variance, shotgun + variance));
        var yforce = lengthdir_y(myGun.LenX, random_range(shotgun - variance, shotgun + variance)) + lengthdir_x(myGun.LenY, random_range(shotgun - variance, shotgun + variance));
		var p = instance_create_depth(myGun.x + lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle), myGun.y + lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle), depth, obj_tempBullet);
        p.creator = tag;
        with (p)
            {
				move_towards_point(x + xforce, y + yforce, bullet_spd);
                //physics_apply_impulse(x, y, xforce, yforce);
            }
		spread += 5;
    }
