///scr_boss_Jerry_idleState
//Check Player Distance
var dist = point_distance(x, y, obj_tempPlayer.x, obj_tempPlayer.y)
/*
if (dist <= 600)
    {
        state = scr_boss_Jerry_attackState;
    }
*/
//Movement Speed
speed = 5;
direction = random(359);

//Animation
sprite_index = spr_boss_Jerry_down_run;
image_speed = 0.3;

//Control Sprite Direction
//not needed due to just up and down sprites

//Change Movement Direction
if (alarm[0] = -1)
    {
        alarm[0] = room_speed*3;
    }
