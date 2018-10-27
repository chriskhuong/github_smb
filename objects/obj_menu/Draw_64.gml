var xSpot = (0 * ((global.view_w/2) / 2.5));
var ySpot = (global.view_h - 64);
if(!InputManager.paused) exit;


var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 32, x_buffer = 16;
var start_y = (gheight/3) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2.1;

// Draw pause menu "backgound"
var c = c_black;
draw_set_alpha(.5);
draw_rectangle_color(0,0,gwidth,gheight,c,c,c,c,false);
draw_set_alpha(1);

// Draw the elements on the left side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var leftTextXPos = start_x - x_buffer, leftTextYPos, xOff; 

var yy = 0; repeat(ds_height)
{
	leftTextYPos = start_y + (yy*y_buffer);
	c = c_white;
	xOff = 0;
	if(yy== menu_option[page])
	{
		c = c_red;
		xOff = -(x_buffer/2);
	}
	var sprite_indexer = ds_grid_width(ds_grid) - 2;
	draw_sprite(ds_grid[# 0, yy],ds_grid[# sprite_indexer, yy],leftTextXPos+xOff,leftTextYPos);
	//draw_text_color(leftTextXPos+xOff,leftTextYPos, ds_grid[# 0, yy], c,c,c,c,1);
	yy++;	
}
// Draw the dividing Line

draw_line(start_x,start_y,start_x,leftTextYPos);

// Draw Elements on the Right side
draw_set_halign(fa_left);

var rightTextXPosition = start_x + x_buffer, rightTextYPosition;

yy= 0; repeat(ds_height)
{
	rightTextYPosition = start_y + (yy*y_buffer);
	switch(ds_grid[# 1, yy])
	{
		case menu_element_type.shift:
		var current_val = ds_grid [# 3, yy];
		var current_array = ds_grid[# 4,yy];
		var left_shift = "<< ";
		var right_shift = " >>";
		
		if(current_val == 0) left_shift = "";
		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
		c = c_white;
		
		if(inputting and yy == menu_option[page]) c = c_yellow;
		
		draw_text_color(rightTextXPosition,rightTextYPosition,left_shift + current_array[current_val] + right_shift, c,c,c,c,1);
		break;
		
		case menu_element_type.slider:
		var len = 64;
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_white;
		
		draw_line_width(rightTextXPosition,rightTextYPosition,rightTextXPosition + len, rightTextYPosition,2);
		if(inputting and yy == menu_option[page]) c = c_yellow;
		draw_circle_color(rightTextXPosition + (circle_pos*len),rightTextYPosition,4,c,c,false);
		draw_text_color(rightTextXPosition + (len * 1.2), rightTextYPosition, string(floor(circle_pos*100))+"%",c,c,c,c,1);
		break;
		
		case menu_element_type.toggle:
		var current_val = ds_grid[# 3, yy];
		var c1, c2;
		c = c_white;
		if(inputting and yy == menu_option[page]) c = c_yellow;
		
		if(current_val == 0)  {c1 = c; c2 = c_dkgray;}
		else {c1 = c_dkgray; c2 = c;}
		
		draw_text_color(rightTextXPosition,rightTextYPosition,"ON",c1,c1,c1,c1,1);
		draw_text_color(rightTextXPosition + 32,rightTextYPosition,"OFF",c2,c2,c2,c2,1);
		break;
		
		case menu_element_type.input:
		
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
		if(inputting and yy == menu_option[page]) c = c_yellow;
		draw_text_color(rightTextXPosition,rightTextYPosition,string_val,c,c,c,c,1)
		break;
	}
	
	yy++;
}

draw_set_valign(fa_top);