/// @description Insert description here
// You can write your code in this editor

draw_self();
//draw
//draw_sprite_ext(spr_warning_text, warningText, x, y, 2, 2, image_angle, image_blend, warningTextAlpha);
draw_sprite_part_ext(spr_warning_text, warningText, 0, 0, warningW, warningH/2, warning1X-warningW, warningY-warningH, 2, 2, image_blend, warningTextAlpha);
draw_sprite_part_ext(spr_warning_text, warningText, 0, 0+warningH/2, warningW, warningH, warning2X-warningW, warningY, 2, 2, image_blend, warningTextAlpha);

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