///scr_sniper()
var Laser = instance_create_depth(myGun.x + lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle), 
                            myGun.y + lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle), 
                            depth, obj_sniperBullet);

var collision = noone;
if (instance_exists(obj_tempWall))
	{
		collision = obj_tempWall;
	}
	
//move laser into collision
do
    {
        Laser.x += lengthdir_x(1, myGun.dir);
        Laser.y += lengthdir_y(1, myGun.dir);
    }
//until it meets a collision_circle
until (collision_point(Laser.x, Laser.y, collision, true, true)); // || collision_point(Laser.x, Laser.y, obj_enemyParent, true, true));


