///scr_checkForPlayer()
if (instance_exists(obj_tempPlayer))
    {
        var dis = point_distance(x, y, obj_tempPlayer.x, obj_tempPlayer.y)
        if (dis < sight)
            {
                state = scr_enemy_chaseState;
                targetx = obj_tempPlayer.x;
                targety = obj_tempPlayer.y;
            }
        else
            {
                scr_enemy_chooseNextState(); //NOTE we used parenthesis because we're just calling the script and not assigning it
            }
    }
else
    {
        scr_enemy_chooseNextState();
    }
