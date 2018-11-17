

var gwidth = global.view_w, gheight = global.view_h;

var ds_grid = mainMenu_page[global.page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 32, x_buffer = 16;
var start_y = (gheight/2.3) - ((((ds_height-1)/2) * y_buffer)) + 100 , start_x = gwidth/1.8;

// Draw pause menu "backgound"
var c = make_color_rgb(29,33,13);
//draw_sprite(spr_titlescreen_background,0,0,0);
if(global.page != 2)
draw_sprite(spr_mainMenu,0,start_x/2.7,start_y/20);
if(global.page == 2)
{
	//drawing the character selection screen
	draw_sprite(spr_previewRevival,0,start_x/2,start_y/5);
	if(menu_option[global.page] == 0)
	{
		draw_text(start_x,start_y, "Objective: Maid Brigade's military operations.");
		draw_text(start_x,start_y + 20, "Destroy all enemies.");
	}
	if(menu_option[global.page] == 1)
	{
		draw_text(start_x,start_y, "Objective: Survive as long as you can in our");
		draw_text(start_x,start_y + 20, "swarm of slimes.");	
	}
		if(menu_option[global.page] == 2)
	{
		draw_text(start_x,start_y, "Objective: Battle against other players in our");
		draw_text(start_x,start_y + 20, "PVP game.");	
	}
}
// Draw the elements on the left side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var leftTextXPos = start_x - x_buffer * 3, leftTextYPos, xOff; 

var yy = 0; repeat(ds_height)
{
	leftTextYPos = start_y + (yy*y_buffer);
	c = c_white;
	xOff = 0;
	if(yy == menu_option[global.page])
	{
		c = c_red;
		xOff = -(x_buffer/2);
	}
	draw_text_color(leftTextXPos+xOff,leftTextYPos, ds_grid[# 0, yy], c,c,c,c,1);
	yy++;	
}
// Draw the dividing Line

//draw_line(start_x,start_y,start_x,leftTextYPos);

// Draw Elements on the Right side
draw_set_halign(fa_left);

var rightTextXPosition = start_x + x_buffer, rightTextYPosition;

yy= 0; repeat(ds_height)
{
	rightTextYPosition = start_y + (yy*y_buffer);
	switch(ds_grid[# 1, yy])
	{
		case mainMenu_element_type.shift:
		var current_val = ds_grid [# 3, yy];
		var current_array = ds_grid[# 4,yy];
		var left_shift = "<< ";
		var right_shift = " >>";
		if(current_val == 0) left_shift = "";
		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
		c = c_white;
		
		if(inputting and yy == menu_option[global.page]) c = c_yellow;
		
		var testing = scr_split_function(current_array[current_val]," ")
		if(real(testing[0]) <= obj_resolution.max_resolution)
		draw_text_color(rightTextXPosition,rightTextYPosition,left_shift + current_array[current_val] + right_shift, c,c,c,c,1);
		else
		draw_text_color(rightTextXPosition,rightTextYPosition,left_shift + current_array[current_val] + right_shift, c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
		break;
		case mainMenu_element_type.slider:
		var len = 64;
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_white;
		
		draw_line_width(rightTextXPosition,rightTextYPosition,rightTextXPosition + len, rightTextYPosition,2);
		if(inputting and yy == menu_option[global.page]) c = c_yellow;
		draw_circle_color(rightTextXPosition + (circle_pos*len),rightTextYPosition,4,c,c,false);
		draw_text_color(rightTextXPosition + (len * 1.2), rightTextYPosition, string(floor(circle_pos*100))+"%",c,c,c,c,1);
		break;
		
		case mainMenu_element_type.toggle:
		var current_val = ds_grid[# 3, yy];
		var c1, c2;
		c = c_white;
		if(inputting and yy == menu_option[global.page]) c = c_yellow;
		
		if(current_val == 0)  {c1 = c; c2 = c_dkgray;}
		else {c1 = c_dkgray; c2 = c;}
		
		draw_text_color(rightTextXPosition,rightTextYPosition,"ON",c1,c1,c1,c1,1);
		draw_text_color(rightTextXPosition + 32,rightTextYPosition,"OFF",c2,c2,c2,c2,1);
		break;
		
		case mainMenu_element_type.input:
		
		var current_val = ds_grid[# 3,yy];
		var string_val;
		switch(current_val){
			case vk_up:	string_val = "UP KEY"; break;
			case vk_left:	string_val = "LEFT KEY"; break; 
			case vk_right: string_val = "RIGHT KEY"; break; 
			case vk_down:	string_val = "DOWN KEY"; break; 
			default:		string_val = chr(current_val); break;
		}
		c = c_white;
		if(inputting and yy == menu_option[global.page]) c = c_yellow;
		draw_text_color(rightTextXPosition,rightTextYPosition,string_val,c,c,c,c,1)
		break;
	}
	
	yy++;
}

draw_set_valign(fa_top);



