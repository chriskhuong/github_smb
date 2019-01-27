/// @description Insert description here
// You can write your code in this editor

time = 0;
startX = global.view_w/2;
startY = global.view_h/2;
startWidth = 0;
startHeight = 0;
destX = global.view_w;
destY = startY;
destW = (obj_resolution.ideal_width/sprite_width)*2;
destH = 4.125;
destEnd = global.view_w + destW;
duration = room_speed;
image_index = 0;
image_speed = 0;
warningText = -1;
warningTextAlpha = 0;
warningPhase = 0;
phaseCounter = room_speed/4;
maxPhaseCount = phaseCounter;
//stripes

//create
stripeWidth = sprite_get_width(spr_survival_popup_bg);
stripeNum = floor(obj_resolution.ideal_width/stripeWidth);
stripeX = 0;
stripe1Y = startY;
stripe2Y = stripe1Y;
stripeStartX = 0 - ((stripeNum + 1)*stripeWidth);
stripeCurrentX = 0;
stripe1YPos = stripe1Y;
stripe2YPos = stripe1Y;

destX -= ((stripeNum - 1)*stripeWidth);

runningStripes = false;
image_xscale = destW;
image_yscale = startHeight;
x = startX;
y = startY;
/*
//step
curX++;

if (curX >= maxX)
{
curX = 0;
}*/
