#region Behavior

duration = room_speed;			//change the variable here for any vairance in state speeds
var altDuration = room_speed;
warningTextAlpha = 1;

//Hold or flash the warning
var frameEnd = sprite_get_number(spr_warning_text);

if (warningText < frameEnd-1)
	{
		warningText += .2;
	}
if (warningText >= frameEnd-1 && altTime < altDuration)
	{
		altTime++;
	}
if (altTime >= altDuration)
	{
		warning1X = scr_ease_in(warningTime, warning1XPos, (destW - warning1XPos) * 4, duration);
		warning2X = scr_ease_in(warningTime, warning1XPos, (destW + warning1XPos) * 4, duration);
		warningTime++;
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

#endregion