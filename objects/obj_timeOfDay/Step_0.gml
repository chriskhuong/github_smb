/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("T")))
	{
		time_pause = !time_pause;
	}
if(time_pause)
	{
		exit;
	}
seconds+=time_incriment;
minutes = seconds/60;
hours = minutes/60;

//darkness = hours/24;

if(draw_daylight)
{
	#region Phases and Variables
	var darks,colors, pstart, pend;
	
	if(hours > phase.sunrise and hours <= phase.dayTime)
	{
			darks = [maxDarkness,0.2];
			colors = [make_color_hsv(223,38,24)]
			pstart = phase.sunrise;
			pend = phase.dayTime;
	}
	else if (hours > phase.dayTime and hours <= phase.sunset)
	{
			darks = [0.2,0,0,0,0.2];
			colors = [make_color_hsv(56,34,61)]
			pstart = phase.dayTime;
			pend = phase.sunset;
	}
	else if (hours > phase.sunset and hours <= phase.nightTime)
	{
			darks = [0.2,maxDarkness];
			colors = [make_color_hsv(25,34,58)]
			pstart = phase.sunset;
			pend = phase.nightTime;
	}
	else 
	{
			darks = [maxDarkness];
			colors = [make_color_hsv(238,34,22)];
			pstart = phase.nightTime;
			pend = phase.sunrise;
	}
	#endregion
	
	#region Alter Darkness and Colors depending on time
	//Colors
	if (pstart == phase.nightTime)
		{
			light_color = colors[0];
		}
	else
		{
			var cc = ((hours - pstart) / (pend - pstart)) * (array_length_1d(colors) - 1);
			var c1 = colors[floor(cc)];
			var c2 = colors[ceil(cc)];
			
			light_color = merge_color(c1, c2, cc - floor(cc));
		}
	
	//Darkness
	if (pstart == phase.nightTime)
		{
			darkness = darks[0];
		}
	else
		{
			var dd = ((hours - pstart) / (pend - pstart)) * (array_length_1d(darks) - 1);
			var d1 = darks[floor(dd)];
			var d2 = darks[ceil(dd)];
			
			darkness = scr_merge_number(d1, d2, dd - floor(dd));
		}
		
	#endregion
}


#region Cycle Check
if(hours >= 24)
{
	seconds = 0;
	day += 1;
	if(day > 30)
	{
		day = 1;
		season += 1;
	}
	if(season > 4)
	{
		season = 1;
		year+=1;
	}
}

#endregion
