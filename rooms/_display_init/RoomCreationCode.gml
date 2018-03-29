global.fontAmmo = font_add_sprite_ext(spr_ammoCount, " 0123456789/", false, -5);
global.fontGrenade = font_add_sprite_ext(spr_count, "0123456789x", false, 0);
instance_create(0,0,obj_palette_manager);
instance_create(0,0,InputForPlayer1);
instance_create(0,0,InputForPlayer2);
instance_create(0,0,InputForPlayer3);
instance_create(0,0,InputForPlayer4);