///Player Controls
if(room == rm_SurvivalMode)
{
	if(!edge || next)
	curX += 14;
	else
	curX += 6;
}
xpos++;
if (!next && curX >= maxX)
{
edge = true;	
curX = global.view_w + 64;
move = true;
}
if (!stop && move && curY < maxY)
{
	curY++;
	size += .037;
	if(size2 <= 1)
	size2 += .042;
}
if (!stop && curY3 < 16 && room == rm_SurvivalMode)
{
	curY3++;
}
if (!stop && curY4 < 48 && room == rm_SurvivalMode)
{
	curY4++;
}
if(!stop && curY4 >= 48 && room == rm_SurvivalMode)
{
	stop = true;
}
if (!stop && move && curY2 > maxY2)
{
	curY2--;
}
if(stop)
{
	if(move && curY >= global.view_h/2)
	curY--;
	if(move && curY <= global.view_h/2)
	curY = global.view_h/2;
	if (move && curY2 <= global.view_h/2)
	curY2++;
	if(move && curY2 >= global.view_h/2)
	curY2 = global.view_h/2;
	if(size >= 0)
	size -= .037;
	if(size <= 0)
	{
		size = 0;	
		next = true;
	}
	if(size2 >= 0)
	size2 -= .042;
	if(size2 <= 0)
	size2 = 0;
	
	if(next)
	{
		if (curY >= -128 && curY4 < 16)
			{
				curY3--;
			}
		if (curY4 >= -128)
			{
				curY4--;
			}
			if(curY3 == -128)
			{
				finshed = true;
			}
	}
}
var p;
p = 100
if (x < view_xview + p) view_xview = x - p
if (x > view_xview + view_wview - p) view_xview = x - view_wview + p
if (y < view_yview + p) view_yview = y - p
if (y > view_yview + view_hview - p) view_yview = y - view_hview + p
view_xview = max(0, min(room_width - global.view_w, global.view_x))
view_yview = max(0, min(room_height - global.view_h, global.view_y))

#region timeadjustment for movement

secondsPassed = delta_time/1000000;
trueSpd = spd * secondsPassed;

#endregion

#region Pallet swap control /*NOTE - MODIFY THIS SO EACH IDIVIDUAL PLAYER CAN CONTROL THIS*/
/*
if (room == rm_characterSelect)
	{
		if(creator.grenade_key)
		    {
				current_pal++;
			}
		if(creator.ult_key)
		    {
				current_pal--;
			}
			
		current_pal=scr_wrap(current_pal,0,(pal_swap_get_pal_count(my_pal_sprite) - 1));
		
		myColor = pal_swap_get_pal_color(my_pal_sprite, current_pal, 1);
	}
*/
#endregion

depth = -y - 26;
scr_characterData(character);
//scr_gunControl();
//script_execute(state);

script_execute(states_array[state])
script_execute(target_state);
