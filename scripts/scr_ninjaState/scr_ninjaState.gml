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
		phase = false
		image_index = 0;
		attacked = true;
	}

if (phase == false && image_index > image_number - 1)
	{
		phase = true;
	}

if (phase)
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
if (place_free(hspd, vspd))
	{
		//Move
		x = hspd;
		y = vspd;
	}
else
	{
		var sweepInterval = 1;
		
		for (var angle = sweepInterval; angle <= 80; angle += sweepInterval)
			{
				for (var multiplier = -1; multiplier <= 1; multiplier += 2)
					{
						var angleToCheck = dir + angle * multiplier;
						hspd = x + lengthdir_x(len, angleToCheck);
						vspd = y + lengthdir_y(len, angleToCheck);
						if (place_free(hspd, vspd))
							{
								x = hspd;
								y = vspd;
								exit;
							}
					}
			}
	}


#endregion
	}

#endregion

#region Transition Triggers
if (phase)
	{
		alive = false;
		timeKeep++;
		
		show_debug_message(string(timeKeep));
		
		if (timeKeep >= timer)
			{
				alive = true;
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

if (phase == true)
	{
		sprite_index = sprite[facing, movement];
	}
	
else
	{
		sprite_index = spr_mio_teleport_left;
	}
#endregion