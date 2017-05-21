///scr_enemy_chooseNextState
//randomly chooses between wandering and idle states

if (alarm[0] <= 0)
    {
        state = choose(scr_enemy_wanderState, scr_enemy_idleState);
        alarm[0] = room_speed * irandom_range(1, 3); //picks a random integer between x and y
        if (state == scr_enemy_wanderState)
            {
                xaxis = random_range(-1, 1);
                yaxis = random_range(-1, 1);
            }
    }
