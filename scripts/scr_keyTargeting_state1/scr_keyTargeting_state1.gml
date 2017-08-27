///scr_keyTargeting_state
//show_debug_message("Keyboard Targeting");

//TO DO: Just really copy what's being called within the step event of the myTarget
    //because for whatever reason this these actions aren't even doing anything.
    
    /*****REMEMBER TO REFER TO THE TARGET'S STEP EVENT IN PROJECT_20*****/

var rng = 90; //range from player
var minRng = 45; //how close the cursor should get to the player
var dir = point_direction(myTarget.x,myTarget.y, myTarget.creator.x, (myTarget.creator.y + 8));    //gets the direction
var playDir = point_direction(0, 0, creator.xaxis, creator.yaxis);  //gets the player moving direction
var tarDir = point_direction(0, 0, creator.xaim, creator.yaim);   //gets the targeting direction
var len = myTarget.spd;

//limits the range that the target can move
if (point_distance(myTarget.x,myTarget.y, myTarget.creator.x, (myTarget.creator.y + 8)) > rng)
    {
        myTarget.x = myTarget.creator.x - lengthdir_x(rng, dir);
        myTarget.y = (myTarget.creator.y + 8) - lengthdir_y(rng, dir);
    }


if (creator.xaim == 0 && creator.yaim == 0)
    {
        tarDir = playDir;
    }

hspd = lengthdir_x(len, tarDir);
vspd = lengthdir_y(len, tarDir);

//move the target
myTarget.x += hspd;
myTarget.y += vspd;

// temporary aiming controls
if (creator.xaxis != 0) //horizontal
    {
        myTarget.x += hspd;
    }

if (creator.yaxis != 0) //vertical
    {
        myTarget.y += vspd
    }

    
/*
//fuck these controls
//move the target with the player
playHspd = lengthdir_x(len, playDir);
playVspd = lengthdir_y(len, playDir);
*/
//Move the cursor back towards the player
if (creator.xaim == 0 && creator.yaim == 0 && creator.xaxis == 0 && creator.yaxis == 0)
    {   
        move_towards_point(myTarget.creator.x, (myTarget.creator.y + 8), 0); //sets the direction that this object will move when moving BACK to our object
        xTo = myTarget.creator.x + (lengthdir_x(48, direction));
        yTo = (myTarget.creator.y + 8) + (lengthdir_y(48, direction));

        myTarget.x += (xTo -myTarget.x) / 25;
        myTarget.y += (yTo -myTarget.y) / 25;

        if (point_distance(x, y, myTarget.creator.x, (myTarget.creator.y + 8)) < minRng)
            {
                myTarget.x = myTarget.creator.x - lengthdir_x(minRng + 1, dir);
                myTarget.y = (myTarget.creator.y + 8) - lengthdir_y(minRng + 1, dir);
            }
    }

if (creator.xaim != 0 || creator.yaim != 0)
    {
        myTarget.image_alpha += .7;
        if (myTarget.image_alpha > 1)
            {
                myTarget.image_alpha = 1;
            }
    }

else if (creator.xaim == 0 || creator.yaim == 0)
    {
        myTarget.image_alpha -= .7;
        if (myTarget.image_alpha < 0)
            {
                myTarget.image_alpha = 0;
            }
    }

/*
if (creator.fire_key)
    {
        instance_create(obj_gun_01.x + lengthdir_x(obj_gun_01.LenX, obj_gun_01.image_angle) - lengthdir_y(obj_gun_01.LenY, obj_gun_01.image_angle), obj_gun_01.y + lengthdir_y(obj_gun_01.LenX, obj_gun_01.image_angle) + lengthdir_x(obj_gun_01.LenY, obj_gun_01.image_angle), obj_bullet);
    }
*/
if (creator.swap_mode)
    {
        target_state = scr_mouseTargeting_state;
    }
