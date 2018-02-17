/// scr_hitStun()

movement = STUN;

if (len == 0)   //locks our dash to 90 degrees IF we're not moving
    {
        dir = facing * 90; //get's our current facing direction
                            //(in Macros Global Game Settings 1, 2, 3, 4) and multiplies it by 90
                            //to get our (UP, DOWN, LEFT, or RIGHT)
    }

//Get the h and v speed

len = trueSpd * 4;

//this fixes the speed of any angular movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
x += hspd;
y += vspd;