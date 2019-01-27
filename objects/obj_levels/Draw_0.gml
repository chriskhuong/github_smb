/// @description Draw the lines

if (status == 0)
	{
		draw_set_color(c_gray)
	}
	else
	{
		draw_set_color(c_black)
	}
	
for (d = 0; d < needCount; d++) //loop through the cached lines we already have and draw them
	{
		draw_line_width(x, y, lineToX[d], lineToY[d], 2)
	}