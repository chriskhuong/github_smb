/// @Menu set up
//audio_play_sound(snd_Epic_Battle,1,true);

//Keep track if we are in a paused state or not. 
//global.pause = false;
//Grabbing the view width and height we are using. 
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

// Makes these controls what you are using for the player
/*We do not need these since Input manager will be taking over all inputs.
global.key_revert = ord("M");
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;*/



//display_set_gui_size(global.view_width, global.view_height);

//This is where we will store what type of pages we are going to be using.
enum menu_page {
    main,
	settings,
	audio,
	difficulty,
	graphics,
	controls,
	height
}

//This is where we will store the functions a menu can preform when a user interacts with it, such as
// sliders for audio control and so on.
enum menu_element_type
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

/* 
//	Create menu pages with the contents being the following format, Text is going to be position 0			//
//	in the array. Position 1 will be the element type you are going to be using. Position 2 can				//
//	hold either a script or other functionallity like taking you to another page in the menu. 				//
//	You can add other elemnts after position 2, that you will need for what you are going to accomplish		//
//	in your scripts, for example audio is using 0,1 at position 4 to control the volume loundness from 		//
//	0-1, 0 being completly off, and 1 being the max volume. You take these extra values and pass them		//
//	to your script from the step event.																		//
*/
ds_menu_main = scr_create_menu_page(
	["Resume",menu_element_type.script_runner, scr_resume_game],
	["Settings", menu_element_type.page_transfer, menu_page.settings],
	[spr_gameover_buttons, menu_element_type.script_runner, scr_return_menu,4]
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
	["RESOLUTION", menu_element_type.shift, scr_change_resolution, 0, ["384 x 216","768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
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

//setting the page to the first page in the menu_pages array, which is the ds_menu_main.
page = 0;
//Listing out all of your menu pages into an array.
menu_pages = [ds_menu_main,ds_settings,ds_menu_audio,ds_menu_difficulty,ds_menu_graphics,ds_menu_controls]
//A repeat function for each elemnt of your array of pages in our case setting our menu options
// to a length of 5.
var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}
//Check for is user is inputting changes into the menu such as chaning the in game volume.
inputting = false;

