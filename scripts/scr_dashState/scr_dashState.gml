///scr_moveState()

movement = MOVE;

if (len == 0)   //locks our dash to 90 degrees IF we're not moving
    {
        dir = facing * 90; //get's our current facing direction
                            //(in Macros Global Game Settings 1, 2, 3, 4) and multiplies it by 90
                            //to get our (UP, DOWN, LEFT, or RIGHT)
    }

//Get the h and v speed

len = spd * 4;

//this fixes the speed of any angular movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Create the dash effect    //var dash is a temporary variable
var dash = instance_create(x, y, obj_dashEffect); //we can alter the properties of the object after creation
dash.sprite_index = sprite_index; //assigns the player's current sprite index to the created instance
dash.image_index = image_index; //assigns the player's current image index to the created instance
