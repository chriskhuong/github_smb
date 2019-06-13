/// @description Insert description here
// You can write your code in this editor

states_array[0] = scr_waveIntro; //Intro
states_array[1] = scr_waveExit; //Exit
waveArray = array_length_1d(states_array);

time = 0;
altTime = 0;
height = (sprite_get_bbox_bottom(spr_survival_popup) - sprite_get_bbox_top(spr_survival_popup))/2;
textHeight = string_height("abcdefghijklmnopqrstuvwxyz0123456789")/2
startX = global.view_w/2;
startY = -height;
dest1Y = height;
dest2Y = height*2.5;
duration = room_speed;
waveText = -1;
waveTextAlpha = 0;
wavePhase = 0;
phaseCounter = room_speed*2;
maxPhaseCount = phaseCounter;


image_xscale = 1;
image_yscale = 1;
x = startX;
y = startY;


//text
wave1Y = startY;
wave2Y = startY;
wave1YPos = wave1Y;
wave2YPos = wave2Y;
waveTime = 0;