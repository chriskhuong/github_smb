///Draw the stats

//NOTE: for enemy duplicate, remove this event;
draw_text_transformed (16, 8, string_hash_to_newline("LIVES: " + string(p_lives)), .5, .5, 0);
draw_text_transformed (16, 16, string_hash_to_newline("HP: " + string(hp) + "/" + string(maxHp)), .5, .5, 0);
draw_text_transformed (16, 24, string_hash_to_newline("STAMINA: " + string(stamina) + "/" + string(maxStamina)), .5, .5, 0);
if(instance_exists(obj_tempGun))
{
draw_text_transformed (16, 32, string_hash_to_newline("WEAPON: " + string(obj_tempGun.weapon)), .5, .5, 0);
}
//draw_text (32, 48, "LEVEL:" + string(level));

