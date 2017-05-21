///scr_sniper()
var Laser = instance_create(obj_tempGun.x + lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle), 
                            obj_tempGun.y + lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle), 
                            obj_sniperBullet);

//move laser into collision
do
    {
        Laser.x += lengthdir_x(1, obj_tempGun.dir);
        Laser.y += lengthdir_y(1, obj_tempGun.dir);
    }
//until it meets a collision_circle
until (collision_point(Laser.x, Laser.y, obj_tempWall, true, true)); // || collision_point(Laser.x, Laser.y, obj_enemyParent, true, true));


