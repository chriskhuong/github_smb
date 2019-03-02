///scr_keyTargetingState
//show_debug_message("Keyboard Targeting");

//TO DO: Just really copy what's being called within the step event of the myTarget
    //because for whatever reason this these actions aren't even doing anything.
    
    /*****REMEMBER TO REFER TO THE TARGET'S STEP EVENT IN PROJECT_20*****/

var rng = weaponArray[weapon, 20]; //range from player
var minRng = 40; //how close the cursor should get to the player
var dir = point_direction(myTargetX, myTargetY, x, (y + 8));    //gets the direction
var playDir = point_direction(0, 0, creator.xaxis, creator.yaxis);  //gets the player moving direction
var tarDir = point_direction(0, 0, creator.xaim, creator.yaim);   //gets the targeting direction
var len = tarSpd * 10;

//limits the range that the target can move
if (point_distance(myTargetX ,myTargetY, x, (y + 8)) > rng)
    {
        myTargetX = x - lengthdir_x(rng, dir);
        myTargetY = (y + 8) - lengthdir_y(rng, dir);
    }


if (creator.xaim == 0 && creator.yaim == 0)
    {
        tarDir = playDir;
    }

hspd = lengthdir_x(len, tarDir);
vspd = lengthdir_y(len, tarDir);

//move the target
myTargetX += hspd;
myTargetY += vspd;


//Move the cursor back towards the player
if (creator.xaim == 0 && creator.yaim == 0 && creator.xaxis == 0 && creator.yaxis == 0)
    {
		myTargetX -= hspd;
		myTargetY -= vspd;
		
		if (point_distance(myTargetX ,myTargetY, x, (y + 8)) > minRng)
			{
			    myTargetX = x - lengthdir_x(minRng, dir);
			    myTargetY = (y + 8) - lengthdir_y(minRng, dir);
			}
    }

if (creator.xaim != 0 || creator.yaim != 0)
    {
        myTargetAlpha += .1;
        if (myTargetAlpha > myTargetAlphaMax)
            {
                myTargetAlpha = myTargetAlphaMax;
            }
    }

else if (creator.xaim == 0 || creator.yaim == 0)
    {
        myTargetAlpha -= .1;
        if (myTargetAlpha < 0)
            {
                myTargetAlpha = 0;
            }
    }

if (creator.swap_mode)
    {
        target_state = scr_mouseTargetingState;
    }