/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(snd_Epic_Battle))
audio_play_sound(snd_Epic_Battle,1,false);



var ds_grid = mainMenu_page[page], ds_height = ds_grid_height(ds_grid);
if(inputting)
{

	switch(ds_grid[# 1, menu_option[page]])
	{
		case mainMenu_element_type.shift:
		var hinput = InputManager.down_pressed - InputManager.up_pressed; //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			// audio for changing input
			audio_play_sound(snd_charSelect,1,false);
			ds_grid[# 3, menu_option[page]] += hinput;	
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,array_length_1d(ds_grid[# 4, menu_option[page]]));
		}
		break;
		case mainMenu_element_type.slider:
				
			var hinput = InputManager.right_pressed - InputManager.left_pressed;
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[page]] += hinput * 0.01;	
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,1);
			script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);
		}
		break;
		case mainMenu_element_type.toggle:
			var hinput = InputManager.down_pressed - InputManager.up_pressed; //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[page]] += hinput;	
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,1);
		}
		break;
		case mainMenu_element_type.input:
		var kk = keyboard_lastkey;
		if(kk != vk_enter)
		{
			if(kk != ds_grid[# 3, menu_option[page]]) audio_play_sound(snd_charSelect,1,false); // audio
			ds_grid[# 3, menu_option[page]] = kk;
			variable_global_set(ds_grid[# 2, menu_option[page]],kk);
		}
		break;
		
	}
}
else
{	// InputManager.down_pressed - InputManager.up_pressed;
	var ochange = InputManager.down_pressed - InputManager.up_pressed;

if(ochange != 0)
	{
		menu_option[page] += ochange;
		
		if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
		if(menu_option[page] < 0) { menu_option[page] = ds_height - 1; }
		audio_play_sound(snd_charSelect,1,false);
		// play audio
	}	
}


if(InputManager.attack_key)
{
	
	switch(ds_grid[# 1, menu_option[page]])
	{
		case mainMenu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 0, menu_option[page]]);
		break;
		case mainMenu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case mainMenu_element_type.shift: script_execute(ds_grid[# 2, menu_option[page]]);
		case mainMenu_element_type.slider: if(inputting) script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]],ds_grid[# 0, menu_option[page]]);
		case mainMenu_element_type.toggle:	if(inputting) script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);
		case mainMenu_element_type.input:
		inputting = !inputting;
		break;
		
	}
	audio_play_sound(snd_charSelect,1,false);
	// audio
	
}


// This is temporay...till I find a better solution to manage backing in the menu, but it works.
// to follow this logic, you would need to look at the array of page positions.
if(InputManager.cancel)
	{
		switch(page)
	{
		case 4: page = 1 inputting = false; break;
		case 5:	page = 1 inputting = false; break;
		case 6: page = 1 inputting = false; break;
		default: page = 0 inputting = false;	 
	}
		show_debug_message("Back");
	}


