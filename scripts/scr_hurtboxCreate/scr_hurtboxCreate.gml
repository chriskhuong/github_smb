///@description	scr_hurtboxCreate()

hurtbox = instance_create_layer(x + argument2, y + argument3, "Instances", obj_hurtbox);
hurtbox.owner = id;
hurtbox.image_xscale = argument0;
hurtbox.image_yscale = argument1;
hurtbox.xOffset = argument2;
hurtbox.yOffset = argument3;

return hurtbox;