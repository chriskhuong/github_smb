///scr_ninjaState()

//To Do
//figure out a custom timer
//POOF particles
//take advantage of the alive var
//What to do about the shooting mechanic
//Break into 2 phases
	//-starting poof phase
	//-ninja run phase


#region Behavior

myState = "Ninja"
movement = MOVE;
myGunAlpha = 0;
myTargetAlpha = 0;
var skillLength = 2;
var timer = room_speed * skillLength;
image_speed = 1;

if (attacked == false)
	{
		//Create the dash effect    //var dash is a temporary variable
		timeKeep = 0;
		invisible = false
		image_index = 0;
		attacked = true;
	}

if (invisible == false && image_index > image_number - 1)
	{
		transparency = TGHOST;
		invisible = true;
		image_blend = c_purple;
	}

if (invisible)
	{
		#region Movement

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
		        len = trueSpd * 1.5;
		    }
		
		//Get the h and v speed
		
		//this fixes the speed of any  movement
		hspd = x + lengthdir_x(len, dir);
		vspd = y + lengthdir_y(len, dir);
		collision_zoneX = !place_free(x + hspd, y);
		collision_zoneY = !place_free(x, y + vspd);
		
		//Collision check if free
		scr_collision(hspd, vspd, "Tile_Collision");
		
		
#endregion
	}

#endregion

#region Transition Triggers
if (invisible)
	{
		timeKeep++;
		
		show_debug_message(string(timeKeep));
		
		if (timeKeep >= timer)
			{
				image_blend = c_white;
				invisible = false;
				state = sMove;
			}
	}


#endregion

#region Sprite Control

#region Facing

//Horizontal sprite control

if (facing == LEFT)
	{
		image_xscale = 1;
	}
	
else if (facing == RIGHT)
	{
		image_xscale = -1;
	}

#endregion

if (invisible == true)
	{
		sprite_index = sprite[facing, movement];
	}
	
else
	{
		sprite_index = spr_mio_teleport_left;
	}
#endregion