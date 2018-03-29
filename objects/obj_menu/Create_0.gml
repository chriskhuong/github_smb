/// @Menu set up
//audio_play_sound(snd_Epic_Battle,1,true);
global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

// Makes these controls what you are using for the player
global.key_revert = ord("M");
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;


//display_set_gui_size(global.view_width, global.view_height);

enum menu_page {
    main,
	settings,
	audio,
	difficulty,
	graphics,
	controls,
	height
}

enum menu_element_type
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
	["RESUME", menu_element_type.script_runner, scr_resume_game],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT", menu_element_type.script_runner, scr_exit_game]
);

ds_settings = scr_create_menu_page(
	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["DIFFICULTY", menu_element_type.page_transfer, menu_page.difficulty],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],
	["BACK", menu_element_type.page_transfer, menu_page.main],
);

ds_menu_audio = scr_create_menu_page(
	["MASTER", menu_element_type.slider, scr_change_volume,1,[0,1]],
	["SOUNDS", menu_element_type.slider, scr_change_volume,1,[0,1]],
	["MUSIC", menu_element_type.slider, scr_change_volume,1,[0,1]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_difficulty = scr_create_menu_page(
	["ENEMIES", menu_element_type.shift, scr_change_difficulty, 0, ["EASY","NORMAL","HARD"]],
	["ALLIES", menu_element_type.shift, scr_change_difficulty, 0, ["EASY", "NORMAL", "HARD"]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_graphics = scr_create_menu_page(
	["RESOLUTION", menu_element_type.shift, scr_change_resolution, 0, [string(obj_resolutionManager.ideal_width*obj_resolutionManager.zoom) + " x " + string(obj_resolutionManager.ideal_height*obj_resolutionManager.zoom),
																	   string(obj_resolutionManager.ideal_width*(obj_resolutionManager.zoom-1)) + " x " + string(obj_resolutionManager.ideal_height*(obj_resolutionManager.zoom-1)),
																	   string(obj_resolutionManager.ideal_width*(obj_resolutionManager.zoom-2)) + " x " + string(obj_resolutionManager.ideal_height*(obj_resolutionManager.zoom-2))]],
	/*["RESOLUTION", menu_element_type.shift, scr_change_resolution, 0, ["384 x 216","768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],*/
	["WINDOW MODE", menu_element_type.toggle, scr_change_window_mode, 1, ["FULLSCREEN", "WINDOWED"]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_controls = scr_create_menu_page(
	["UP", menu_element_type.input, "key_up", vk_up],
	["LEFT", menu_element_type.input, "key_left", vk_left],
	["RIGHT", menu_element_type.input, "key_right", vk_right],
	["DOWN", menu_element_type.input, "key_down", vk_down],
	["BACK", menu_element_type.page_transfer, menu_page.settings],
);

page = 0;
menu_pages = [ds_menu_main,ds_settings,ds_menu_audio,ds_menu_difficulty,ds_menu_graphics,ds_menu_controls]
var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;
