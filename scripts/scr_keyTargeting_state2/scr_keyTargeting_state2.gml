///scr_keyTargeting_state
//show_debug_message("Keyboard Targeting");

//TO DO: Just really copy what's being called within the step event of the myTarget
    //because for whatever reason this these actions aren't even doing anything.
    
    /*****REMEMBER TO REFER TO THE TARGET'S STEP EVENT IN PROJECT_20*****/

var rng = 90; //range from player
var minRng = 45; //how close the cursor should get to the player
var dir = point_direction(myTargetX, myTargetY, x, (y + 8));    //gets the direction
var playDir = point_direction(0, 0, creator.xaxis, creator.yaxis);  //gets the player moving direction
var tarDir = point_direction(0, 0, creator.xaim, creator.yaim);   //gets the targeting direction
var len = spd * 10;

//limits the range that the target can move
if (point_distance(myTargetX, myTargetY, x, (y + 8)) > rng)
    {
        myTargetX = x - lengthdir_x(rng, dir);
        myTargetY = (y + 8) - lengthdir_y(rng, dir);
    }


if (creator.xaim == 0 && creator.yaim == 0)
    {
        tarDir = playDir;
    }

myTargetHspd = lengthdir_x(len, tarDir);
myTargetVspd = lengthdir_y(len, tarDir);

//move the target
myTargetX += myTargetHspd;
myTargetY += myTargetVspd;

/* //probably doubled up the speed when moving
// temporary aiming controls
if (creator.xaxis != 0) //horizontal
    {
        myTarget.x += hspd;
    }

if (creator.yaxis != 0) //vertical
    {
        myTarget.y += vspd
    }
*/
    
/*
//fuck these controls
//move the target with the player
playHspd = lengthdir_x(len, playDir);
playVspd = lengthdir_y(len, playDir);
*/
//Move the cursor back towards the player
if (creator.xaim == 0 && creator.yaim == 0 && creator.xaxis == 0 && creator.yaxis == 0)
    {   
        move_towards_point(x, (y + 8), 0); //sets the direction that this object will move when moving BACK to our object
        xTo = x + (lengthdir_x(48, direction)); ///WTF is 48?!?!?!?!
        yTo = (y + 8) + (lengthdir_y(48, direction));

        myTargetX += (xTo -myTargetX) / 25;
        myTargetY += (yTo -myTargetY) / 25;

        if (point_distance(x, y, myTargetX, (myTargetY + 8)) < minRng)
            {
                myTargetX = x - lengthdir_x(minRng + 1, dir);
                myTargetY = (y + 8) - lengthdir_y(minRng + 1, dir);
            }
    }

if (creator.xaim != 0 || creator.yaim != 0)
    {
        myTargetAlpha += .7;
        if (myTargetAlpha > 1)
            {
                myTargetAlpha = 1;
            }
    }

else if (creator.xaim == 0 || creator.yaim == 0)
    {
        myTargetAlpha -= .7;
        if (myTargetAlpha < 0)
            {
                myTargetAlpha = 0;
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
