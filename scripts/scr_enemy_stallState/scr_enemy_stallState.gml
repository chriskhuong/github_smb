///scr_enemy_stallState()

//using an alarm to see how long we need to be in a stall state
//do nothing in this state but wait until the alarm goes up, then switch back to the idle state
if (alarm[1] <= 0)
    {
        state = scr_enemy_idleState;
    }
