///scr_attackState

image_speed = .5;

movement = ATTACK;

var attack_x = 0;
var attack_y = 0;

switch (facing)    //change facing to image_index
    {
        //Do Something
        case RIGHT:
            image_xscale = -1;
            attack_x = 32;
            attack_y = 16;
            break;
        
        case UP:
            attack_y = -32;
            break;

        case LEFT:
            image_xscale = 1;
            attack_x = -32;
            attack_y = 16;
            break;
                
        case DOWN:
            attack_y = 40;
            break;
        
    }

if (image_index >= 1 && attacked == false)   //used >= rather than == to avoid jumps in decimals
    {
	/*
		//if (friendlyFire == true)
			{
				creator = id;
			}
		else
	*/	
        creator = tag;
        damage = id.dmg;
        scr_damage(attack_x, attack_y, creator, damage);
        attacked = true;
    }
