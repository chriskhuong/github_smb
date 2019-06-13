#region Behavior

duration = room_speed/2;			//change the variable here for any vairance in state speeds
var altDuration = room_speed;

if (time < duration)
	{
		wave1Y = wave1YPos;
		wave1Y = scr_ease_out(time, wave1YPos, dest1Y - wave1YPos, duration);
		//wave2Y = wave2YPos;
		//wave2Y = scr_ease_out(time, wave2YPos, dest2Y - wave2YPos, duration);
		time++;
	}
else
	{
		if (altTime < altDuration)
			{
				wave2Y = wave2YPos;
				wave2Y = scr_ease_out_elastic(altTime, wave2YPos, dest2Y - wave2YPos, altDuration, 10);
				altTime++
			}
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
		if (wavePhase < waveArray)
			{
				wavePhase++;
			}
		else
			{
				instance_destroy();
			}
		
		altTime = 0;
		time = 0;
		phaseCounter = maxPhaseCount/2;	//change this for adjustments between phases
	}


#endregion

#region Sprite control
//N/A//
#endregion

/*
#region Behavior

duration = room_speed;			//change the variable here for any vairance in state speeds
var altDuration = room_speed/2;			//change the variable here for any vairance in state speeds
var altTime = 0;

//Intro
if (time < duration)
	{
		wave1Y = wave1YPos;
		wave1Y = scr_ease_out(time, wave1YPos, dest1Y - wave1YPos, duration);
		time++;
	}

if (time >= duration)
	{
		wave2Y = wave2YPos;
		wave2Y = scr_ease_out(altTime, wave2YPos, dest2Y - wave2YPos, altDuration);
		altTime++
	}

#endregion

#region transition Trigger

//Time between animations
if (altTime >= altDuration && phaseCounter > 0)
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
				instance_destroy();
			}
		time = 0;
		phaseCounter = maxPhaseCount;	//change this for adjustments between phases
	}


#endregion

#region Sprite control
//N/A//
#endregion