/// @Menu set up
/*

//global.pause = false;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);
	
enum characterSelect_page {
    characterSelection
}

enum characterSelect_element_type
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

// Create menu pages

ds_character_select = scr_create_menu_page(
	["PLAY", characterSelect_element_type.page_transfer, characterSelect_page.characterSelection],
	["EXIT", characterSelect_element_type.script_runner, scr_exit_game]
);


page = 0;
characterSelect_page = [ds_character_select]
var i = 0, array_len = array_length_1d(characterSelect_page);
repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}
inputting = false;

#region Audio
	audio_group_load(audiogroup_music);
	audio_group_load(audiogroup_soundEffects);
#endregion

*/