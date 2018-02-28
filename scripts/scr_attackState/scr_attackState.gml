///scr_attackState

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

//create hitbox on the right frame
/*
if (image_index >= 2 && hitbox == -1 && attacked == false)
	{
		hitbox = scr_hitboxCreate(500, 500, attack_x, attack_y, 250, 3, 3, 45);
		//var D = instance_create_depth(attack_x, attack_y, depth, obj_damage);
		attacked = true;
		attackSequence++;
		alarm[0] = room_speed;
	}
*/

if (image_index >= 2 && attacked == false)   //used >= rather than == to avoid jumps in decimals
    {
	/*
		//if (friendlyFire == true)
			{
				creator = id;
			}
		else
	*/	
		//
		var D = instance_create_depth(attack_x, attack_y, depth, obj_damage);
		D.creator = id;
		D.creatorTag = tag;
        D.damage = id.dmg;
		
		//show_debug_message("Damage :" + string(dmg));
        //var dmgOBJ = scr_damage(attack_x, attack_y, creatorTag, damage);
        attacked = true;
		attackSequence++;
		alarm[0] = room_speed;
    }

//attackSequence++;
//alarm[0] = room_speed;

if (attackSequence + 1 > maxSequence)
	{
		attackSequence = 0;
	}
