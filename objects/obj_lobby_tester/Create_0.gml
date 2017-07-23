/// @description Insert description here
// You can write your code in this editor
dvc = noone;

scr_getInput(dvc);

spd = 1.5;
hspd = 0;
vspd = 0;
len = 0;    //length
xaxis = 0;
yaxis = 0;
dir = 0;

state = scr_move_state;

//set fixed rotation
phy_fixed_rotation = true;