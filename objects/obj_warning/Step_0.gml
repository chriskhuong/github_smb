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
		stripe1Y = scr_ease_out(time, stripe1YPos, (destY - 100) - stripe1YPos, duration);
		stripe2Y = scr_ease_out(time, stripe2YPos, (destY + 100) - stripe2YPos, duration);
		time++;
	}
	
//Hold or flash the warning
if (time < duration && warningPhase == 2)
	{
		time++;
	}

//Close
if (time < duration && warningPhase == 3)
	{
		//image_xscale = scr_ease_out(time, startWidth, destW - startWidth, duration);
		stripe1Y = scr_ease_out(time, (destY - 100), startY - (destY - 100), duration);
		stripe2Y = scr_ease_out(time, (destY + 100), startY - (destY + 100), duration);
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
//iterate the stripes horizontally indefinitely
if (runningStripes)
	{
		stripeX += 3;
		
		if (stripeX >= stripeWidth)
			{
				stripeX = 0;
			}
	}
/*
else
	{
		var tempStart = stripeStartX;
		stripeStartX = destX;
		destX = tempStart;
		time = 0;
	}
*/
/*phase 2
stripeX++;

if (stripeX > stripeWidth)
	{
		stripeX = 0;
	}
image_alpha = 1;

/* //segment for height
if (time < duration)
	{
		x = startX;
		y = startY;
		image_xscale = scr_ease_out(time, startWidth, destW - startWidth, duration);
		time++;
	}
else
	{
		var tempStart = startWidth;
		startWidth = destW;
		destW = tempStart;
		time = 0;
	}
*/
/*