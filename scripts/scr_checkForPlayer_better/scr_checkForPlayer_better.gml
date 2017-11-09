///scr_checkForPlayer()
if (instance_exists(obj_tempPlayer1) && obj_tempPlayer1.alive == true)
    {
		myTarget = instance_nearest(x, y, obj_tempPlayer1)
		/*
		for(var i = 0; i < instance_number(obj_tempPlayer1); i += 1)
			{
				target[i] = instance_find(obj_tempPlayer1,i);
			}
		*/
		
        var dis = point_distance(x, y, myTarget.x, myTarget.y)
        if (dis < sight)
            {
                state = scr_enemy_chaseState;
                var dir = point_direction(x, y, myTarget.x, myTarget.y);
                xaxis = lengthdir_x(1, dir);
                yaxis = lengthdir_y(1, dir);
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
