/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(snd_Epic_Battle))
audio_play_sound(snd_Epic_Battle,1,false);

inputUp = InputForPlayer1.up_pressed || InputForPlayer2.up_pressed || InputForPlayer3.up_pressed || InputForPlayer4.up_pressed;
inputDown = InputForPlayer1.down_pressed || InputForPlayer2.down_pressed || InputForPlayer3.down_pressed || InputForPlayer4.down_pressed;
inputRight = InputForPlayer1.right_pressed || InputForPlayer2.right_pressed || InputForPlayer3.right_pressed || InputForPlayer4.right_pressed;
inputLeft = InputForPlayer1.left_pressed || InputForPlayer2.left_pressed || InputForPlayer3.left_pressed || InputForPlayer4.left_pressed;
inputCancel = InputForPlayer1.cancel || InputForPlayer2.cancel || InputForPlayer3.cancel || InputForPlayer4.cancel;
inputConfirm = InputForPlayer1.attack_key || InputForPlayer2.attack_key || InputForPlayer3.attack_key || InputForPlayer4.attack_key;

var ds_grid = mainMenu_page[global.page], ds_height = ds_grid_height(ds_grid);
if(inputting)
{

	switch(ds_grid[# 1, menu_option[global.page]])
	{
		case mainMenu_element_type.shift:
		var hinput = inputRight - inputLeft; //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			// audio for changing input
			audio_play_sound(snd_charSelect,1,false);
			ds_grid[# 3, menu_option[global.page]] += hinput;	
			ds_grid[# 3, menu_option[global.page]] = clamp(ds_grid[# 3, menu_option[global.page]],0,array_length_1d(ds_grid[# 4, menu_option[global.page]])-1);
		}
		break;
		case mainMenu_element_type.slider:
				
			var hinput = inputRight - inputLeft;
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[global.page]] += hinput * 0.01;	
			ds_grid[# 3, menu_option[global.page]] = clamp(ds_grid[# 3, menu_option[global.page]],0,1);
			script_execute(ds_grid[# 2, menu_option[global.page]],ds_grid[# 3, menu_option[global.page]]);
		}
		break;
		case mainMenu_element_type.toggle:
			var hinput = inputRight - inputLeft; //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[global.page]] += hinput;	
			ds_grid[# 3, menu_option[global.page]] = clamp(ds_grid[# 3, menu_option[global.page]],0,1);
		}
		break;
		case mainMenu_element_type.input:
		/*var kk = keyboard_lastkey
		if(kk != vk_enter)
		{
			if(kk != ds_grid[# 3, menu_option[global.page]]) audio_play_sound(snd_charSelect,1,false); // audio
			ds_grid[# 3, menu_option[global.page]] = kk;
			variable_global_set(ds_grid[# 2, menu_option[global.page]],kk);
		}*/
		break;
		
	}
}
else
{	// InputManager.down_pressed - InputManager.up_pressed;
	var ochange = inputDown - inputUp;

if(ochange != 0)
	{
		menu_option[global.page] += ochange;
		
		if(menu_option[global.page] > ds_height-1) { menu_option[global.page] = 0; }
		if(menu_option[global.page] < 0) { menu_option[global.page] = ds_height - 1; }
		//if(ochange)audio_play_sound(snd_charSelect,1,false);
		// play audio
	}	
}
var yy = 0; repeat(ds_height)
{
	yy++;	
}

if(inputConfirm)
{
	//var test = ds_grid[# 2, menu_option[global.menuPage]];	
	switch(ds_grid[# 1, menu_option[global.page]])
	{
		
		case mainMenu_element_type.script_runner: var test = ds_grid[# 0,menu_option[global.page]]if(test != "CONTROLS") {script_execute(ds_grid[# 2, menu_option[global.page]],ds_grid[# 0, menu_option[global.page]]); break}
		else
		break;
		case mainMenu_element_type.page_transfer: var test = ds_grid[# 0,menu_option[global.page]]if(test != "CONTROLS")
		{
			global.page = ds_grid[# 2, menu_option[global.page]]; 
			break;
		} 
		else 
		{
			break;
		}
		case mainMenu_element_type.shift: script_execute(ds_grid[# 2, menu_option[global.page]]);
		case mainMenu_element_type.slider: if(inputting) script_execute(ds_grid[# 2, menu_option[global.page]],ds_grid[# 3, menu_option[global.page]],ds_grid[# 0, menu_option[global.page]]);
		case mainMenu_element_type.toggle:	if(inputting) script_execute(ds_grid[# 2, menu_option[global.page]],ds_grid[# 3, menu_option[global.page]]);
		case mainMenu_element_type.input:
		inputting = !inputting;
		break;
		
	}
	audio_play_sound(snd_charSelect,1,false);
	// audio
	
}

// This is temporay...till I find a better solution to manage backing in the menu, but it works.
// to follow this logic, you would need to look at the array of page positions.
if(inputCancel)
	{
		switch(global.page)
	{
		case 4: global.page = 1 inputting = false; break;
		case 5:	global.page = 1 inputting = false; break;
		case 6: global.page = 1 inputting = false; break;
		default: global.page = 0 inputting = false; break;	 
	}
		show_debug_message("Back");
	}




