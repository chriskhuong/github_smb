///scr_dashState()

#region Behavior

myState = "Dash";
movement = MOVE;
myGunAlpha = 0;
image_speed = 2;
transparency = TALIVE;

if (attacked == false)
	{
		image_index = 0;
		attacked = true;
	}

if (len == 0)   //locks our dash to 90 degrees IF we're not moving
    {
        dir = facing * 90; //get's our current facing direction
                            //(in Macros Global Game Settings 1, 2, 3, 4) and multiplies it by 90
                            //to get our (UP, DOWN, LEFT, or RIGHT)
    }

//Get the h and v speed

len = trueSpd * 4;

//this fixes the speed of any angular movement
hspd = x + lengthdir_x(len, dir);
vspd = y + lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Collision check if free
scr_collision(hspd, vspd, "Tile_Collision");

#endregion

#region Transition Triggers

//This state exits via timer from when this stat was called
//might try and get this to work instead
if (image_index > image_number - 1)
	{
		state = sMove;
	}

#endregion

#region Sprite Control

switch(facing)
	{
		case RIGHT : sprite_index = spr_jo_roll_side;
		break;
		case UP : sprite_index = spr_jo_roll_up;
		break;
		case LEFT: sprite_index = spr_jo_roll_side;
		break;
		case DOWN: sprite_index = spr_jo_roll_down;
		break;
		default: sprite_index = spr_jo_roll_side;
		break;
	}
	
//Create the dash effect    //var dash is a temporary variable
var dash = instance_create_depth(x, y, depth, obj_dashEffect); //we can alter the properties of the object after creation
dash.image_xscale = image_xscale;
dash.image_yscale = image_yscale;
dash.sprite_index = sprite_index; //assigns the player's current sprite index to the created instance
dash.image_index = image_index; //assigns the player's current image index to the created instance

#endregion