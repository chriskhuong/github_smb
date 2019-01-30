#region Behavior

duration = room_speed/4;			//change the variable here for any vairance in state speeds
//phaseCounter = room_speed/4;	//change the variable here for any vairance in time between states

//Opening
if (time < duration)
	{
		image_yscale = scr_ease_out(time-1, startHeight , destH - startHeight, duration);
		warning_yscale = scr_ease_out(time-1, startHeight , destH - startHeight, duration);
		stripe1Y = scr_ease_out(time, stripe1YPos, (destY - 100) - stripe1YPos, duration);
		stripe2Y = scr_ease_out(time, stripe2YPos, (destY + 100) - stripe2YPos, duration);
		time++;
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