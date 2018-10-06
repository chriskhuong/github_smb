///@ description scr_reloadState()

#region Behavior

myState = "Reload";
myStats.can_shoot = false;
attacked = false;
movement = MOVE;
reloading = true;

myGunSprite = weaponArray[weapon, 18];
myGunFinal = sprite_get_number(weaponArray[weapon, 18]);
myGunAlpha = 1;
myArmAlpha = 0;
if (facing == RIGHT || facing == DOWN)
	{
		myGunAngle = 0;
		
		if (facing == UP)
			{
				myGunYScale = -1;
			}
	}
else
	{
		myGunAngle = 180;
	}

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
        len = trueSpd;
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
		var sweepInterval = 10;
		
		for (var angle = sweepInterval; angle <= 90; angle += sweepInterval)
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

#endregion

#region Transition Triggers

if(hit)
	{
		myGunIndex = 0;
		reloading = false;
		myStats.can_shoot = true;
		alarm[10] = 0;
		//hspd = 15;//hitBy.xHit
		len = knockback;//hitBy.yHit
		hit = false;
		state = sStun;
		//state = scr_hitStunState;
		exit;
	}

#region Reloading Ammo

if(myGunIndex >= (myGunFinal - 1) && reloading == true)
	{	
		var reload;
		//var maxAmmo = weaponArray[weapon, 10];	//Kept these in for debugging, not using these vars at all
		//var clip = weaponArray[weapon, 8];		//Kept these in for debugging, not using these vars at all
		var clipFull = weaponArray[weapon, 11];
		
		reload = scr_diff(clipFull, weaponArray[weapon, 8])
		
		if (reload >= weaponArray[weapon, 10])
			{
				reload = weaponArray[weapon, 10];
			}
		
												//max ammo						//reload			
		weaponArray[weapon, 10] = scr_approach(weaponArray[weapon, 10], 0, reload);
		
												//current clip			//clip full					//reload
		weaponArray[weapon, 8] = scr_approach(weaponArray[weapon, 8], clipFull, reload);
		
		myGunIndex = 0;
		reloading = false;
		myStats.can_shoot = true;
		alarm[10] = 0;
		state = sMove;
		//state = scr_moveState;
	}
	
#endregion

#endregion

#region Sprite

#region Player sprite
    
//Horizontal sprite control

if (hspd > 0)
    {
        if (facing == LEFT)
            {
				image_xscale = 1;
                image_speed = -1;
            }
		else
			{
				image_xscale = -1;
				image_speed = 1;
			}
    }
else if (hspd < 0)
    {
        if (facing == RIGHT)
            {
				image_xscale = -1;
                image_speed = -1;
            }
		else
			{
				image_xscale = 1;
				image_speed = 1;
			}
    }
else
	{
		if (facing == RIGHT)
			{
				image_xscale = -1;
			}
		else if (facing == LEFT)
			{
				image_xscale = 1;
			}
	}
if (vspd > 0)
    {
        if (facing == UP)
            {
                image_speed = -1;
            }
		else
			{
				image_speed = 1;
			}
    }
else if (vspd < 0)
    {
        if (facing == DOWN)
            {
                image_speed = -1;
            }
		else
			{
				image_speed = 1;
			}
    }
	
#endregion

sprite_index = sprite[facing, movement];

#endregion