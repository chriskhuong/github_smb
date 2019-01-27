/// @description Insert description here
// You can write your code in this editor

//Intro
if (time < duration && warningPhase == 0)
	{
		stripeX = stripeStartX;
		//image_xscale = scr_ease_out(time, startWidth, destW - startWidth, duration);
		stripeX = scr_ease_out(time, stripeStartX, destX - stripeStartX, duration);
		time++;
	}
	
//Opening
if (time < duration && warningPhase == 1)
	{
		//image_xscale = scr_ease_out(time, startWidth, destW - startWidth, duration);
		image_yscale = scr_ease_out(time-1, startHeight , destH - startHeight, duration);
		warning_yscale = scr_ease_out(time-1, startHeight , destH - startHeight, duration);
		stripe1Y = scr_ease_out(time, stripe1YPos, (destY - 100) - stripe1YPos, duration);
		stripe2Y = scr_ease_out(time, stripe2YPos, (destY + 100) - stripe2YPos, duration);
		time++;
	}
	
//Hold or flash the warning
if (time < duration && warningPhase == 2)
	{
		warningTextAlpha = 1;
		var frameEnd = sprite_get_number(spr_warning_text);
		if (warningText < frameEnd-1)
			{
				warningText += .2;
			}
		if (warningText >= frameEnd-1)
			{
				warningTime++;
				warning1X = scr_ease_in(warningTime, warning1XPos, (destW - warning1XPos) * 4, duration/2);
				warning2X = scr_ease_in(warningTime, warning1XPos, (destW + warning1XPos) * 4, duration/2);
			}
		time++;
	}

//Close
if (time < duration && warningPhase == 3)
	{
		warningTextAlpha = 0;
		image_yscale = scr_ease_out(time, destH, startHeight - destH, duration);
		stripe1Y = scr_ease_out(time, (destY - 100), startY - (destY - 100), duration);
		stripe2Y = scr_ease_out(time, (destY + 100), startY - (destY + 100), duration);
		time++;
	}
	
//Exit
if (time < duration && warningPhase == 4)
	{
		stripeX = stripeCurrentX;
		stripeX = scr_ease_out(time, stripeCurrentX, destEnd + stripeCurrentX, duration);
		time++;
	}

//Time between animations
if (time >= duration && phaseCounter > 0)
	{
		phaseCounter--;
	}
	
//Triggers the next phase
if (phaseCounter <= 0)
	{
		stripeCurrentX = stripeX;
		warningPhase += 1;
		time = 0;
		phaseCounter = maxPhaseCount;
	}

//STRIPE MOVEMENT ONLY
//when the first intro finishes, run the stripes
if (time >= duration && warningPhase == 0)
	{
		runningStripes = true;
	}
if (warningPhase == 4)
	{
		runningStripes = false;
	}
//iterate the stripes horizontally indefinitely
if (runningStripes)
	{
		stripeX += 3;
		
		if (stripeX >= stripeWidth)
			{
				stripeX = 0;
			}
	}

if (image_yscale <= .1)
	{
		image_alpha = 0;
	}
else
	{
		image_alpha = 1;
	}