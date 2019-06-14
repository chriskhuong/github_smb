#region Behavior

duration = room_speed/2;			//change the variable here for any vairance in state speeds

////Exit
if (time < duration)
	{
		wave1Y = wave1YPos;
		wave1Y = scr_ease_out(time, dest1Y, startY - dest2Y, duration);
		time++;
	}
if (altTime < duration/2)
	{
		wave2Y = wave2YPos;
		wave2Y = scr_ease_out(altTime, dest2Y, startY - dest2Y, duration/2);
		altTime++;
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
		if (wavePhase+1 < waveArray)
			{
				wavePhase++;
			}
		else
			{
				obj_SurvivalController.countUp = true;
				instance_destroy();
			}
		time = 0;
		phaseCounter = maxPhaseCount;	//change this for adjustments between phases
	}


#endregion

#region Sprite control
//N/A//
#endregion