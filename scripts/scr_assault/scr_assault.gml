///scr_assault()
//might not even need this

var bullet_spd = 10;
//fuck...what am I even doing...
var xforce = lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle);
var yforce = lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle);
var p = instance_create_depth(myGunX + lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle), myGunY + lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle), depth, obj_tempBullet);
p.creator = tag;
p.sprite_index = spr_shot_assault;
p.image_angle = myGunAngle;

with (p)
    {
		move_towards_point(x + xforce, y + yforce, bullet_spd);
        //physics_apply_impulse(x, y, xforce, yforce);
    }
