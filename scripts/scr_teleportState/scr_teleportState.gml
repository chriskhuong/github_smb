///scr_teleportState()

//TO DO
//create the effect
//POOF particles
//damage anything that the player moves through for special
#region Behavior

///....where the heck do I start with this one???....

/*TO DO (mark II)

	-Phase 1 sets mio in the position select phase
		-trigger icon becomes transparent Mio
		-can't cancel out of it
		-has a time limit (can't hold this phase forever)
	-Phase 2 moves Mio (basically all the currently existing code)
		-reverse anim out of teleport
		-*POOF EFFECTS*
*/

myState = "Teleport"
movement = MOVE;
myGunAlpha = 0;
myTargetAlpha = 0;

if (attacked == false)
	{
		//Create the dash effect    //var dash is a temporary variable
		place = instance_create_depth(x, y, depth, obj_deadBody); //we can alter the properties of the object after creation
		place.sprite_index = spr_mio_idle_side; //assigns the player's current sprite index to the created instance
		place.image_alpha = 0.5;
		place.image_speed = 0; //assigns the player's current image index to the created instance
		attacked = true;
	}

if (len == 0)   //locks our teleport to 90 degree IF we're not moving
    {
        dir = facing * 90;  //gets our facing MACRO (1, 2, 3, 4) and multiplies it by 90 to get our direction
    }

var max_length = 2;	//rng
var solid_object = noone;
/*
if (instance_exists(obj_tempWall))	//scrap tempWall
	{
		solid_object = obj_tempWall;
	}
*/

for(var i = 0; i < max_length; i++)
    {
        var lx = place.x + lengthdir_x(i, dir);
        var ly = place.y + lengthdir_y(i, dir);
        
        if (collision_point(lx, ly + 32, solid_object, false, true))
            {
                break;
            }
        if (collision_point(lx, ly, solid_object, false, true))
            {
                break;
            }    
		
        place.x = lx;
        place.y = ly;
    }

#endregion

#region Transition Triggers



#endregion

#region Sprite Control



#endregion