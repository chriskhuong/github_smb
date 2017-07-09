/// @description Insert description here
// You can write your code in this editor
scr_getInput(dvc);


//Get direction
dir = point_direction(0, 0, xaxis, yaxis);

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
x += hspd;
y += vspd;
