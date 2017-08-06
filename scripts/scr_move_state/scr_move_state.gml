///scr_move_state
argument0 = dvc;
scr_getInput(dvc);

if (dash_key)
	{
		state = scr_dashState;
		alarm[0] = room_speed/5;
	}

if (attack_key)
	{
		image_index = 0;
		state = scr_attackState;
	}
/*
//Move Right
if (right_key)
    {
        phy_position_x += spd;
    }

//Move Left
if (left_key)
    {
        phy_position_x -= spd;
    }

//Move Down
if (down_key)
    {
        phy_position_y += spd;
    }

//Move Up
if (up_key)
    {
        phy_position_y -= spd;
    }
    
//Stop Animating
if (!right_key && !left_key && !up_key && !down_key)
    {
        //image_speed = 0;
        //image_index = 0; //animation frame *useful for dust kick-up*
    }
    
///TEMP TARGETING SWITCH
/*    
if(keyboard_shoot)
    {
        obj_game_camera.target_state = scr_keyTargeting_state;
    }
if(mouse_shoot)
    {
        obj_game_camera.target_state = scr_mouseTargeting_state;
    }
*/

//Get direction
dir = point_direction(0, 0, xaxis, yaxis); //(x1, y1, x2, y2);

//Get the length
if (xaxis == 0 && yaxis == 0)   //we're NOT moving
    {
        len = 0;
        movement = IDLE;
    }
    
else    //we're moving
    {
        //scr_getFace(); //took this out because is was overriding the player targeting direction
        len = spd;
    }

//Get the h and v speed

//this fixes the speed of any  movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

/*
//Control the sprite

image_speed = sign(len) * .2;
if (len == 0)
	{
		image_index = 0;
	}

//VERTICAL
if (vspd > 0)
	{
		sprite_index = spr_player_down;
		//facing = DOWN;
	}
else if (vspd < 0)
	{
		sprite_index = spr_player_up;
		//facing = UP;
		
//HORIZONTAL
if (hspd > 0)
	{
		sprite_index = spr_player_right;
		//facing = RIGHT;
	}
else if (hspd < 0)
	{
		sprite_index = spr_player_left;
		//facing = LEFT;
	}
	}
*/