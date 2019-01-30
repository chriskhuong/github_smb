/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_survival_popup, 1, startX, wave2Y, 1, 1, image_angle, image_blend, image_alpha);
draw_set_font(global.font2);
draw_text(startX, wave2Y-textHeight-3, "wave :" + string(obj_spawner.wave));
draw_set_font(-1)
draw_sprite_ext(spr_survival_popup, 0, startX, wave1Y, 1, 1, image_angle, image_blend, image_alpha);