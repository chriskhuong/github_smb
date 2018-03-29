/// @description Insert description here
// You can write your code in this editor


if(!InputManager.paused) exit;


input_up_p = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0,gp_padu);
input_down_p = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0,gp_padd);
input_enter_p = keyboard_check_pressed(global.key_enter) || gamepad_button_check_pressed(0,gp_face1);
input_revert_p = keyboard_check_pressed(global.key_revert) || gamepad_button_check_pressed(0,gp_face2);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
if(inputting)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.shift:
		var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
		if(hinput != 0)
		{
			// audio for changing input
			audio_play_sound(snd_charSelect,1,false);
			ds_grid[# 3, menu_option[page]] += hinput;	
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,array_length_1d(ds_grid[# 4, menu_option[page]]));
		}
		break;
		case menu_element_type.slider:
			switch(menu_option[page]){
			case 0: if(!audio_is_playing(snd_charSelect)){ audio_play_sound(snd_charSelect,1,false); } break;
			case 1: if(!audio_is_playing(snd_charSelect)){ audio_play_sound(snd_charSelect,1,false);} break;
			case 2: if(!audio_is_playing(snd_Epic_Battle)){ audio_play_sound(snd_Epic_Battle,1,false);} break;
			};
			
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left) //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[page]] += hinput * 0.01;	
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,1);
			script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);
		}
		break;
		case menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[page]] += hinput;	
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],0,1);
		}
		break;
		case menu_element_type.input:
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
{
	var ochange = input_down_p - input_up_p;

if(ochange != 0)
	{
		menu_option[page] += ochange;
	
		if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
		if(menu_option[page] < 0) { menu_option[page] = ds_height - 1; }
		audio_play_sound(snd_charSelect,1,false);
		// play audio
	}	
}


if(input_enter_p)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]);
		break;
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.shift: script_execute(ds_grid[# 2, menu_option[page]]);
		case menu_element_type.slider: if(inputting) script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]],ds_grid[# 0, menu_option[page]]);
		case menu_element_type.toggle:	
		case menu_element_type.input:
		inputting = !inputting;
		break;
		
	}
	audio_play_sound(snd_charSelect,1,false);
	// audio
	
}



