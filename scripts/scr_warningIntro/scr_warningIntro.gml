#region Behavior

duration = room_speed;			//change the variable here for any vairance in state speeds
//phaseCounter = room_speed/4;	//change the variable here for any vairance in time between states

if (time < duration)
	{
		stripeX = stripeStartX;
		stripeX = scr_ease_out(time, stripeStartX, destX - stripeStartX, duration);
		time++;
	}

if (time >= duration)
	{
		runningStripes = true;
	}

#endregion

#region transition Trigger

//Time between animations
if (time >= duration && phaseCounter > 0)
	{
		phaseCounter--;
	}
	
//Triggers the next phase
if (phaseCounter <= 0)
	{
		if (warningPhase+1 < warningArray)
			{
				warningPhase++;
			}
		else
			{
				instance_destroy();
			}
		stripeCurrentX = stripeX;
		time = 0;
		phaseCounter = maxPhaseCount;	//change this for adjustments between phases
	}


#endregion

#region Sprite control
//N/A//
#endregion