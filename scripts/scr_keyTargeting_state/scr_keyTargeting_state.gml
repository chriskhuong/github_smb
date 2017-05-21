///scr_keyTargeting_state
//show_debug_message("Keyboard Targeting");

//TO DO: Just really copy what's being called within the step event of the obj_target
    //because for whatever reason this these actions aren't even doing anything.
    
    /*****REMEMBER TO REFER TO THE TARGET'S STEP EVENT IN PROJECT_20*****/

var rng = 90; //range from player
var minRng = 45; //how close the cursor should get to the player
var dir = point_direction(obj_target.x, obj_target.y, obj_target.creator.x, (obj_target.creator.y + 8));    //gets the direction
var playDir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);  //gets the player moving direction
var tarDir = point_direction(0, 0, obj_input.xaim, obj_input.yaim);   //gets the targeting direction
var len = obj_target.spd;

//limits the range that the target can move
if (point_distance(obj_target.x, obj_target.y, obj_target.creator.x, (obj_target.creator.y + 8)) > rng)
    {
        obj_target.x = obj_target.creator.x - lengthdir_x(rng, dir);
        obj_target.y = (obj_target.creator.y + 8) - lengthdir_y(rng, dir);
    }


if (obj_input.xaim == 0 && obj_input.yaim == 0)
    {
        tarDir = playDir;
    }

hspd = lengthdir_x(len, tarDir);
vspd = lengthdir_y(len, tarDir);

//move the target
obj_target.x += hspd;
obj_target.y += vspd;

// temporary aiming controls
if (obj_input.xaxis != 0) //horizontal
    {
        obj_target.x += hspd;
    }

if (obj_input.yaxis != 0) //vertical
    {
        obj_target.y += vspd
    }

    
/*
//fuck these controls
//move the target with the player
playHspd = lengthdir_x(len, playDir);
playVspd = lengthdir_y(len, playDir);
*/
//Move the cursor back towards the player
if (obj_input.xaim == 0 && obj_input.yaim == 0 && obj_input.xaxis == 0 && obj_input.yaxis == 0)
    {   
        move_towards_point(obj_target.creator.x, (obj_target.creator.y + 8), 0); //sets the direction that this object will move when moving BACK to our object
        xTo = obj_target.creator.x + (lengthdir_x(48, direction));
        yTo = (obj_target.creator.y + 8) + (lengthdir_y(48, direction));

        obj_target.x += (xTo - obj_target.x) / 25;
        obj_target.y += (yTo - obj_target.y) / 25;

        if (point_distance(x, y, obj_target.creator.x, (obj_target.creator.y + 8)) < minRng)
            {
                obj_target.x = obj_target.creator.x - lengthdir_x(minRng + 1, dir);
                obj_target.y = (obj_target.creator.y + 8) - lengthdir_y(minRng + 1, dir);
            }
    }

if (obj_input.xaim != 0 || obj_input.yaim != 0)
    {
        obj_target.image_alpha += .7;
        if (obj_target.image_alpha > 1)
            {
                obj_target.image_alpha = 1;
            }
    }

else if (obj_input.xaim == 0 || obj_input.yaim == 0)
    {
        obj_target.image_alpha -= .7;
        if (obj_target.image_alpha < 0)
            {
                obj_target.image_alpha = 0;
            }
    }

/*
if (obj_input.fire_key)
    {
        instance_create(obj_gun_01.x + lengthdir_x(obj_gun_01.LenX, obj_gun_01.image_angle) - lengthdir_y(obj_gun_01.LenY, obj_gun_01.image_angle), obj_gun_01.y + lengthdir_y(obj_gun_01.LenX, obj_gun_01.image_angle) + lengthdir_x(obj_gun_01.LenY, obj_gun_01.image_angle), obj_bullet);
    }
*/
if (obj_input.swap_mode)
    {
        target_state = scr_mouseTargeting_state;
    }
