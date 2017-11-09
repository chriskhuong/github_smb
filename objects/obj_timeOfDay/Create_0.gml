/// @description Insert description here
// You can write your code in this editor
seconds = 0;
minutes = 0;
hours = 0;

day =1;
season = 1;
year =1;
 
time_incriment = 500;
time_pause = true;

maxDarkness = .7;
darkness = 0;
light_color = c_black;
draw_daylight = true;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();



enum phase
{
	sunrise = 6,
	dayTime = 8.5,
	sunset = 18,
	nightTime = 22
}
