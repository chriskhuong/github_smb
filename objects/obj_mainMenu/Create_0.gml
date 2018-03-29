/// @Menu set up


//global.pause = false;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

// Makes these controls what you are using for the player
/*
global.key_revert = vk_backspace;
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;
*/


//display_set_gui_size(global.view_width, global.view_height);
	

enum mainMenu_page {
    main,
	settings,
	mode,
	audio,
	graphics,
	controls,
	height
}

enum mainMenu_element_type
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

// Create menu pages

ds_menu_main = scr_create_menu_page(
	["PLAY", mainMenu_element_type.page_transfer, mainMenu_page.mode],
	["SETTINGS", mainMenu_element_type.page_transfer, mainMenu_page.settings],
	["CREDITS", mainMenu_element_type.script_runner, scr_playCredits],
	["EXIT", mainMenu_element_type.script_runner, scr_exit_game]
);

ds_mode_select = scr_create_menu_page(
	["CAMPAIN", mainMenu_element_type.script_runner, scr_start_game],
	["SURVIVAL", mainMenu_element_type.script_runner, scr_start_game],
	["BATTLE MAIDENS", mainMenu_element_type.script_runner,scr_start_game],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.main]
);

ds_settings = scr_create_menu_page(
	["AUDIO", mainMenu_element_type.page_transfer, mainMenu_page.audio],
	["GRAPHICS", mainMenu_element_type.page_transfer, mainMenu_page.graphics],
	["CONTROLS", mainMenu_element_type.page_transfer, mainMenu_page.controls],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.main],
);

ds_menu_audio = scr_create_menu_page(
	["MASTER", mainMenu_element_type.slider, scr_change_volume,1,[0,1]],
	["SOUNDS", mainMenu_element_type.slider, scr_change_volume,1,[0,1]],
	["MUSIC", mainMenu_element_type.slider, scr_change_volume,1,[0,1]],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.settings]
);


ds_menu_graphics = scr_create_menu_page(
	["RESOLUTION", mainMenu_element_type.shift, scr_change_resolution, 0, [string(obj_resolutionManager.ideal_width*obj_resolutionManager.zoom) + " x " + string(obj_resolutionManager.ideal_height*obj_resolutionManager.zoom),
																	   string(obj_resolutionManager.ideal_width*(obj_resolutionManager.zoom-1)) + " x " + string(obj_resolutionManager.ideal_height*(obj_resolutionManager.zoom-1)),
																	   string(obj_resolutionManager.ideal_width*(obj_resolutionManager.zoom-2)) + " x " + string(obj_resolutionManager.ideal_height*(obj_resolutionManager.zoom-2))]],
	/*["RESOLUTION", menu_element_type.shift, scr_change_resolution, 0, ["384 x 216","768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],*/
	["WINDOW MODE", mainMenu_element_type.toggle, scr_change_window_mode, 1, ["FULLSCREEN", "WINDOWED"]],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.settings]
);

ds_menu_controls = scr_create_menu_page(
	["UP", mainMenu_element_type.input, "key_up", vk_up],
	["LEFT", mainMenu_element_type.input, "key_left", vk_left],
	["RIGHT", mainMenu_element_type.input, "key_right", vk_right],
	["DOWN", mainMenu_element_type.input, "key_down", vk_down],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.settings],
);

page = 0;
mainMenu_page = [ds_menu_main,ds_settings,ds_mode_select,ds_menu_audio,ds_menu_graphics,ds_menu_controls]
var i = 0, array_len = array_length_1d(mainMenu_page);
repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;

	audio_group_load(audiogroup_music);
	audio_group_load(audiogroup_soundEffects);
