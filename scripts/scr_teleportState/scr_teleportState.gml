///scr_teleportState()
/*
movement = MOVE;

if (len == 0)   //locks our teleport to 90 degrees IF we're not moving
    {
        dir = facing * 90; //gets our facing MACRO (1, 2, 3, 4) and multiplies it by 90 to get our direction
    }
    
//get the h and v speed

len = spd * 4

//this fixes the speed of any angular movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;
*/
//create the effect
//TO DO
//POOF particles
//damage anything that the player moves through

movement = MOVE;

if (len == 0)   //locks our teleport to 90 degree IF we're not moving
    {
        dir = facing * 90;  //gets our facing MACRO (1, 2, 3, 4) and multiplies it by 90 to get our direction
    }

var max_length = 160;
var solid_object = obj_tempWall;

for(var i = 0; i < max_length; i++)
    {
        var lx = obj_tempPlayer.x + lengthdir_x(i, dir);
        var ly = obj_tempPlayer.y + lengthdir_y(i, dir);
        
        if (collision_point(lx, ly + 32, solid_object, false, true))
            {
                break;
            }
        if (collision_point(lx, ly, solid_object, false, true))
            {
                break;
            }    
        obj_tempPlayer.phy_position_x = lx;
        obj_tempPlayer.phy_position_y = ly;
    }

