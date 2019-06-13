/// @description scr_hitStunState()

#region Behavior

myState = "Stun"
movement = STUN;
transparency = TALIVE;

len = scr_approach(len, 0, 1);

//Get the h and v speed

//this fixes the speed of any  movement
hspd = x + lengthdir_x(len, dir);
vspd = y + lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Collision
scr_collision(hspd, vspd, "Tile_Collision");

#endregion

#region Transition Triggers

//len -= .25;
hitStun--;

if(hitStun <= 0)
	{
		state = sMove;
		//state = scr_moveState;
	}

#endregion

#region Sprite

//invert to have you facing the enemy that hit you

if (hspd > 0)
    {
        facing = LEFT;
    }
else if (hspd < 0)
    {
        facing = RIGHT;
	}
if (vspd > 0)
    {
        facing = UP;
    }
else if (vspd < 0)
    {
        facing = DOWN;
    }

sprite_index = special[character, STUN];

#endregion