///scr_ghostState()
//image_blend = c_gray;
//image_alpha= .5;
var rng = 90; //range from player
var deadDir = point_direction(x,y, myStats.dead.x,myStats.dead.y); 
alive = false;

if (point_distance(x,y, myStats.dead.x, myStats.dead.y) > rng)
    {
        x = myStats.dead.x - lengthdir_x(rng, deadDir);
        y = myStats.dead.y - lengthdir_y(rng, deadDir);
    }

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
        //scr_getFace(); //took this out because is was overriding the player targeting direction
        len = spd;
    }

//Get the h and v speed

//this fixes the speed of any  movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Move
x += hspd;
y += vspd;