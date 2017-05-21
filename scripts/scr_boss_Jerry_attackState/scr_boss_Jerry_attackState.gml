///scr_boss_Jerry_attackState

//Check State
var dist = point_distance(x, y, obj_tempPlayer.x, obj_tempPlayer.y);

if (dist >= 600)
    {
        state = scr_boss_Jerry_idleState;
    }

//Stand Still
speed = 0;

//Attack Animation
sprite_index = spr_boss_Jerry_down_idle;    //will change this to an attack
//image_speed = 0.15 *DON'T HAVE AN ATTACK JUST YET*

//Flip Sprite
//WON'T HAVE THIS DUE TO SINGLE DIRECTIONAL BOSS SPRITE

//Attack
if (alarm[1] = -1)
    {
        alarm[1] = 64;
    }


