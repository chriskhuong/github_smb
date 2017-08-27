///scr_sniperHitScan

var temp_dir = myGun.dir;
var temp_x = x + lengthdir_x(myGun.LenX, myGun.image_angle) - lengthdir_y(myGun.LenY, myGun.image_angle);
var temp_y = y + lengthdir_y(myGun.LenX, myGun.image_angle) + lengthdir_x(myGun.LenY, myGun.image_angle);
var start_x = temp_x;
var start_y = temp_y;
var collision = noone; 

if (instance_exists(obj_tempWall))
	{
		collision = (position_meeting(temp_x, temp_y, obj_tempWall));
	}

while (!collision && distance_to_point(temp_x, temp_y) < room_width)
    {
        temp_x += lengthdir_x(4, temp_dir);
        temp_y += lengthdir_y(4, temp_dir);
        collision = (position_meeting(temp_x, temp_y, obj_tempWall));
    }

var shot = instance_create_depth(temp_x, temp_y, depth, obj_shot);
shot.start_x = start_x;
shot.start_y = start_y;

if(collision_line(start_x, start_y, temp_x, temp_y, obj_enemyParent, false, true))
    {
        hitpoint = scr_raycast(start_x, start_y, temp_x, temp_y, obj_enemyParent);
        damage = 50;
        show_debug_message(string(hitpoint[0]) + " " + string(hitpoint[1]));
        
        var hit = instance_create_depth(hitpoint[0], hitpoint[1], depth, obj_damage);
        hit.creator = id;
        hit.damage = damage;
        /*
        damage = 50;
        hitpoint_x = other.x;
        hitpoint_y = other.y;
        var hit = instance_create(hitpoint_x, hitpoint_y, obj_damage);
        hit.creator = id;
        hit.damage = damage;
        */
    }