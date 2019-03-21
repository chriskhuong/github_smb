/// @Menu set up

//global.pause = false;
//global.view_width = camera_get_view_width(view_camera[0]);
//global.view_height = camera_get_view_height(view_camera[0]);


//window_set_size(global.view_width,global.view_height)
//display_set_gui_size(global.view_width, global.view_height);
	global.joined = 0;
	ini_open("savedata.ini");
windowed = ini_read_real("Variables","windowedMode",0);
res_text = ini_read_real("Variables","currentResText",0);


ini_close();
enum mainMenu_page {
    main,
	settings,
	mode,
	characterSelect,
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

ds_character_select = scr_create_menu_page(
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
	["RESOLUTION", mainMenu_element_type.shift, scr_change_resolution, res_text, ["1024 X 576","1280 X 720", "1920 X 1080", "2560 X 1440", "3840 X 2160"]],
	["WINDOW MODE", mainMenu_element_type.toggle, scr_change_window_mode, windowed, ["FULLSCREEN", "WINDOWED"]],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.settings]
);

ds_menu_controls = scr_create_menu_page(
	["UP", mainMenu_element_type.input, "key_up", vk_up],
	["LEFT", mainMenu_element_type.input, "key_left", vk_left],
	["RIGHT", mainMenu_element_type.input, "key_right", vk_right],
	["DOWN", mainMenu_element_type.input, "key_down", vk_down],
	["BACK", mainMenu_element_type.page_transfer, mainMenu_page.settings],
);

//global.page = 0;
mainMenu_page = [ds_menu_main,ds_settings,ds_mode_select,ds_character_select,ds_menu_audio,ds_menu_graphics,ds_menu_controls]
var i = 0, array_len = array_length_1d(mainMenu_page);
repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_soundEffects);