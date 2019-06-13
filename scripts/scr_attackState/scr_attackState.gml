/// @description scr_playerSelectState()

#region Behavior

myState = "Attack";
myGunAlpha = 0;
myArmAlpha = myGunAlpha;
image_speed = 2;
movement = ATTACK
transparency = TALIVE;

var attack_x = 0;
var attack_y = 0;

switch(facing)
	{
		//WILL CHANGE! REFER TO HITBOX TUTORIAL
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

#endregion

#region Transition Triggers

if (attacked == false)
	{
		image_index = 0;
		var D = instance_create_depth(attack_x, attack_y, depth, obj_damage);
		D.creator = id;
		D.tag = tag;
        D.damage = id.dmg;
		
        attacked = true;

		attackSequence++;
		alarm[0] = room_speed;
	}

if (attackSequence + 1 > maxSequence)
	{
		attackSequence = 0;
	}

#endregion

#region Sprite

sprite_index = sprite[facing, movement];

#endregion