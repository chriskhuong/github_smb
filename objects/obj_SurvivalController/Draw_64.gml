/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.fontTime);
draw_set_alpha(.75);
if (showTime)
	{
		if(seconds < 10 && minutes < 10)
			{
				draw_text(countX, countY, "0"+string(minutes) + ":0" + string(seconds));
			}
		else if(seconds >= 10 && minutes >= 10)
			{
				draw_text(countX, countY, string(minutes) + ":" + string(seconds));
			}
		else if(seconds < 10 && minutes >= 10)
			{
				draw_text(countX, countY, string(minutes) + ":0" + string(seconds));
			}
		else if(seconds >= 10 && minutes < 10)
			{
				draw_text(countX, countY, "0"+string(minutes) + ":" + string(seconds));
			}
	}
draw_set_alpha(1);
draw_set_font(-1);