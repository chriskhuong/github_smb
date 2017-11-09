///scr_ghostState()
//image_blend = c_gray;
//image_alpha= .5;
ability = DEAD;
var rng = 90; //range from player
var deadBody = instance_create_depth(x, y, depth, obj_deadBody);
deadBody.creator = id;
var deadDir = point_direction(x,y, deadBody.x,deadBody.y);
deadBody.image_index = special[character, ability];
alive = false;

if (point_distance(x,y, deadBody.x, deadBody.y) > rng)
    {
        x = deadBody.x - lengthdir_x(rng, deadDir);
        y = deadBody.y - lengthdir_y(rng, deadDir);
    }

//Get direction
dir = point_direction(0, 0, creator.xaxis, creator.yaxis);

//Get the length
if (creator.xaxis == 0 && creator.yaxis == 0)   //we're NOT moving
    {
        len = 0;
        movement = IDLE;
    }
    
else    //we're moving
    {
        //scr_getFace(); //took this out because is was overriding the player targeting direction
        len = spd;
    }

//Get the h and v speed

//this fixes the speed of any  movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Move
x += hspd;
y += vspd;

#region scr_attackState
/*
image_speed = 1.5;

movement = ATTACK;

var attack_x = 0;
var attack_y = 0;

switch (facing)    //change facing to image_index
    {
        //Do Something
        case RIGHT:
            image_xscale = -1;
            attack_x = x + 32;
            attack_y = y + 16;
            break;
        
        case UP:
			attack_x = x;
            attack_y = y - 32;
            break;

        case LEFT:
            image_xscale = 1;
            attack_x = x - 32;
            attack_y = y + 16;
            break;
                
        case DOWN:
			attack_x = x;
            attack_y = y + 40;
            break;
        
    }

if (image_index >= 3 && attacked == false)   //used >= rather than == to avoid jumps in decimals
    {
	/*
		//if (friendlyFire == true)
			{
				creator = id;
			}
		else
	*//*	
		//
		var D = instance_create_depth(attack_x, attack_y, depth, obj_damage);
		D.creator = id;
		D.creatorTag = tag;
        D.damage = id.dmg;
		
		//show_debug_message("Damage :" + string(dmg));
        //var dmgOBJ = scr_damage(attack_x, attack_y, creatorTag, damage);
        attacked = true;
    }
*/
#endregion