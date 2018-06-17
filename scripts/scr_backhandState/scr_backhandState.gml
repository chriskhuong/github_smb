///scr_backhandState()

#region Behavior

mystate = "Slam"
movement = ATTACK; //ATTACK
myGunAlpha = 0;
var once = false;

var attack_x = 0;
var attack_y = 0;

switch (facing)    //change facing to image_index
    {
        //Do Something
        case RIGHT:
            image_xscale = -1;
            image_speed = 1;
            attack_x = x + 32;
            attack_y = y + 16;
            break;
        
        case UP:
            image_speed = 1;
			attack_x = x;
            attack_y = y - 32;
            break;

        case LEFT:
            image_xscale = 1;
            image_speed = 1;
            attack_x = x - 32;
            attack_y = y + 16;
            break;
                
        case DOWN:
            image_speed = 1;
			attack_x = x;
            attack_y = y + 40;
            break;
        
    }

if (attacked == false)
	{
		image_index = 0;
		attacked = true;
	}

if (image_index > 7)
	{
		if (!once)
			{
				once = true;
				var D = instance_create_depth(attack_x, attack_y, depth, obj_damage);
				D.creator = id;
				D.creatorTag = tag;
				D.damage = (id.dmg * 2);
			}
	}

/*
/*TO DO
	-call cam shake if connects (*maybe)
	-call crash sound if connects else call *whiff
	-create particles of broken bottle
*/
/*
if(instance_exists(obj_view))
	{
		obj_view.shake = 15;
	}
*/

#endregion

#region Transition Triggers

if (image_index > image_number - 1)
	{
		state = sMove;
	}

#endregion

#region Sprite Control

switch(facing)
	{
		case RIGHT : sprite_index = spr_anna_vodka_side;
		break;
		case UP : sprite_index = spr_anna_vodka_up;
		break;
		case LEFT: sprite_index = spr_anna_vodka_side;
		break;
		case DOWN: sprite_index = spr_anna_vodka_down;
		break;
		default: sprite_index = spr_anna_vodka_side;
		break;
	}
	
//Create the dash effect    //var dash is a temporary variable
var smash = instance_create_depth(x, y, depth, obj_dashEffect); //we can alter the properties of the object after creation
smash.image_xscale = image_xscale;
smash.image_yscale = image_yscale;
smash.sprite_index = sprite_index; //assigns the player's current sprite index to the created instance
smash.image_index = image_index; //assigns the player's current image index to the created instance

#endregion