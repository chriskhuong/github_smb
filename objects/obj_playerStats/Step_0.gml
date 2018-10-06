///Control the stats
/*if(creator.creator.dash_key && room == rm_SurvivalMode)
{
	hp = 0;
}*/
if (hp <= 0)
    {
		creator.state = sGhost;
		/*InputManager.retry = true;
			obj_menu.ds_menu_main = scr_create_menu_page(
	["RETRY", menu_element_type.script_runner, scr_resume_game],
	["RETRUN TO MAIN MENU", menu_element_type.script_runner, scr_return_menu]
);
		InputManager.paused = true;*/
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
	

