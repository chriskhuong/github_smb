/// @description Insert description here
// You can write your code in this editor

//draw_self();
//draw
for(i = 0; i < stripeNum + 2; i++)
	{
		draw_sprite_ext(spr_survival_popup_bg, 1, stripeX + ((i-1) * stripeWidth), stripe1Y, 1, 2, image_angle, image_blend, image_alpha);
		draw_sprite_ext(spr_survival_popup_bg, 1, stripeX + ((i-1) * stripeWidth), stripe2Y, 1, 2, image_angle, image_blend, image_alpha);
	}
/*
{
draw_sprite(spr_slime_run_side, 0, x + curX + (i * stripeWidth), y);
}
*/