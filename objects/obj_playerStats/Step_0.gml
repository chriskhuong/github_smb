///Control the stats
if(creator.creator.dash_key && room == rm_SurvivalMode && hp != 0)
{
	hp = 0;
}
if(global.fullHealth && hp == 0)
{
	hp = maxHp;
}
	if(hp <= 0)
	{
		creator.state = sGhost;
	}


//stamina regen
/*if (stamina < maxStamina && cooltime < 1)
    {
        stamina += .1;
    }
*/
var zoom_speed = .1;


if(room != rm_characterSelect)
	{
		view_zoom = .75;
	}