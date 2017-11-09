///scr_checkForPlayer()
target = instance_nearest(x, y, obj_playerParent);

new_target = noone;

if (instance_exists(target) && target.alive == true)
    {
        var dis = point_distance(x, y, target.x, target.y)
        if (dis < sight)
            {
                state = scr_enemy_chaseState;
                targetx = target.x;
                targety = target.y;
            }
/*			
        else
            {
                scr_enemy_chooseNextState(); //NOTE we used parenthesis because we're just calling the script and not assigning it
            }
    }
else
    {
        scr_enemy_chooseNextState();
    }
*/
	}