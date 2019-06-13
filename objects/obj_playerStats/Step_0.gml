///Control the stats
/*
if(creator.creator.dash_key && room == rm_SurvivalMode && hp != 0)
	{
		hp = 0;
	}
*/

if(global.fullHealth && creator.hp == 0)
{
	creator.hp = creator.maxHp;
}

/*
if(hp <= 0)
{
	creator.state = sGhost;
	if(creator.deathCounter < 0)
		{
			creator.state = sGameOver;
		}
}
*/

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