#region Behavior

duration = room_speed/4;			//change the variable here for any vairance in state speeds
//phaseCounter = room_speed/4;	//change the variable here for any vairance in time between states

////Close
if (time < duration)
	{
		warningTextAlpha = 0;
		image_yscale = scr_ease_out(time, destH, startHeight - destH, duration);
		stripe1Y = scr_ease_out(time, (destY - 100), startY - (destY - 100), duration);
		stripe2Y = scr_ease_out(time, (destY + 100), startY - (destY + 100), duration);
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