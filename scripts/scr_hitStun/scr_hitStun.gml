/// scr_hitStun()

//ability = STUN;
//sprite_index = special[character, STUN];
movement = STUN;

len = scr_approach(len, 0, 1);

/*
if (len == 0)   //locks our dash to 90 degrees IF we're not moving
    {
        dir = facing * 90; //get's our current facing direction
                            //(in Macros Global Game Settings 1, 2, 3, 4) and multiplies it by 90
                            //to get our (UP, DOWN, LEFT, or RIGHT)
    }
*/

//Get the h and v speed

//this fixes the speed of any angular movement
hspd = lengthdir_x(-len, dir);
vspd = lengthdir_y(-len, dir);

//Move
x += hspd;
y += vspd;

//len -= .25;
hitStun--;

if(hitStun <= 0)
	{
		state = scr_moveState2;
	}

//var _x = x,
//	_y = y,
//	_xx,
//	_yy;

//if (len == 0)   //locks our dash to 90 degrees IF we're not moving
//    {
//        dir = point_direction(_x, _y, _xx, _yy); //get's our current facing direction
//												//(in Macros Global Game Settings 1, 2, 3, 4) and multiplies it by 90
//												//to get our (UP, DOWN, LEFT, or RIGHT)
//    }

////Get the h and v speed

//len = trueSpd * 4;

////this fixes the speed of any angular movement
//hspd = lengthdir_x(len, dir);
//vspd = lengthdir_y(len, dir);

////Move
//x += hspd;
//y += vspd;