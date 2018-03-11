/// @description Insert description here
// You can write your code in this editor
var i = 0, array_len = array_length_1d(mainMenu_page);
repeat(array_len)
{
	ds_grid_destroy(mainMenu_page[i]);
	i++;
}