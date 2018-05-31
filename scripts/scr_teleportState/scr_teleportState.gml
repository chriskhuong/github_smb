///scr_teleportState()

//TO DO
//create the effect
//POOF particles
//damage anything that the player moves through for special

movement = MOVE;

if (len == 0)   //locks our teleport to 90 degree IF we're not moving
    {
        dir = facing * 90;  //gets our facing MACRO (1, 2, 3, 4) and multiplies it by 90 to get our direction
    }

var max_length = 20;
var solid_object = noone;

if (instance_exists(obj_tempWall))
	{
		solid_object = obj_tempWall;
	}

for(var i = 0; i < max_length; i++)
    {
        var lx = x + lengthdir_x(i, dir);
        var ly = y + lengthdir_y(i, dir);
        
        if (collision_point(lx, ly + 32, solid_object, false, true))
            {
                break;
            }
        if (collision_point(lx, ly, solid_object, false, true))
            {
                break;
            }    
        x = lx;
        y = ly;
    }

