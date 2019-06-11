/// @description Insert description here
// You can write your code in this editor
if(InputManager.paused)
{
inputUp = global.activeObject.up_pressed;
inputDown = global.activeObject.down_pressed;
inputRight = global.activeObject.right_pressed;
inputLeft = global.activeObject.left_pressed;
inputCancel = global.activeObject.cancel;
inputConfirm = global.activeObject.attack_key;
}

if(!InputManager.paused) exit;


var ds_grid = menu_pages[global.menuPage], ds_height = ds_grid_height(ds_grid);

if(inputting)
{

	switch(ds_grid[# 1, menu_option[global.menuPage]])
	{
		case menu_element_type.shift:
		var hinput = inputRight - inputLeft; //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			// audio for changing input
			audio_play_sound(snd_charSelect,1,false);
			ds_grid[# 3, menu_option[global.menuPage]] += hinput;	
			ds_grid[# 3, menu_option[global.menuPage]] = clamp(ds_grid[# 3, menu_option[global.menuPage]],0,array_length_1d(ds_grid[# 4, menu_option[global.menuPage]])-1);
		}
		break;
		case menu_element_type.slider:
				
			var hinput = inputRight - inputLeft;
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[global.menuPage]] += hinput * 0.01;	
			ds_grid[# 3, menu_option[global.menuPage]] = clamp(ds_grid[# 3, menu_option[global.menuPage]],0,1);
			script_execute(ds_grid[# 2, menu_option[global.menuPage]],ds_grid[# 3, menu_option[global.menuPage]]);
		}
		break;
		case menu_element_type.toggle:
			var hinput = inputRight - inputLeft; //|| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl);
		if(hinput != 0)
		{
			ds_grid[# 3, menu_option[global.menuPage]] += hinput;	
			ds_grid[# 3, menu_option[global.menuPage]] = clamp(ds_grid[# 3, menu_option[global.menuPage]],0,1);
		}
		break;
		case menu_element_type.input:
		var kk = keyboard_lastkey
/*		if(kk != vk_enter)
		{
			if(kk != ds_grid[# 3, menu_option[global.menuPage]]) audio_play_sound(snd_charSelect,1,false); // audio
			ds_grid[# 3, menu_option[global.menuPage]] = kk;
			variable_global_set(ds_grid[# 2, menu_option[global.menuPage]],kk);
		}*/
		break;
		
	}
}
else
{	// InputManager.down_pressed - InputManager.up_pressed;
	var ochange = inputDown - inputUp;

if(ochange != 0)
	{
		menu_option[global.menuPage] += ochange;
		
		if(menu_option[global.menuPage] > ds_height-1) { menu_option[global.menuPage] = 0; }
		if(menu_option[global.menuPage] < 0) { menu_option[global.menuPage] = ds_height - 1; }
		audio_play_sound(snd_charSelect,1,false);
		// play audio
	}	
}

if(inputConfirm)
{
	switch(ds_grid[# 1, menu_option[global.menuPage]])
	{
		case menu_element_type.script_runner: 
		var test = ds_grid[# 0,menu_option[global.menuPage]];
		if(test != "CONTROLS") {
			script_execute(ds_grid[# 2, menu_option[global.menuPage]],ds_grid[# 0, menu_option[global.menuPage]]);
			break;
		}
		else break;
		case menu_element_type.page_transfer: 
		var test = ds_grid[# 0,menu_option[global.menuPage]];
		if(test != "CONTROLS")
		{
			global.menuPage = ds_grid[# 2, menu_option[global.menuPage]];
			break;
		}
		else
		{
			break;	
		}
		case menu_element_type.shift: script_execute(ds_grid[# 2, menu_option[global.menuPage]]);
		case menu_element_type.slider: if(inputting) script_execute(ds_grid[# 2, menu_option[global.menuPage]],ds_grid[# 3, menu_option[global.menuPage]],ds_grid[# 0, menu_option[global.menuPage]]);
		case menu_element_type.toggle:	if(inputting) script_execute(ds_grid[# 2, menu_option[global.menuPage]],ds_grid[# 3, menu_option[global.menuPage]]);
		case menu_element_type.input:
		inputting = !inputting;
		break;
		
	}
	audio_play_sound(snd_charSelect,1,false);
	// audio
	
}

if(inputCancel)
	{
		switch(global.menuPage)
	{
		case 0: InputManager.paused = false; inputting = false; break;
		case 2: global.menuPage = 1 inputting = false; break;
		case 3:	global.menuPage = 1 inputting = false; break;
		case 4: global.menuPage = 1 inputting = false; break;
		default: global.menuPage = 0 inputting = false; break;	 
	}
		show_debug_message("Back");
	}




