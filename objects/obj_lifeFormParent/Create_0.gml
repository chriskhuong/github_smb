///Initialize LifeForms
//phy_fixed_rotation = true;
hp = 3;
alive = true;
start_height = sprite_height;
start_width = sprite_width;
start_yoffset = sprite_yoffset;
shadow_var = 0;	//variable specifically for the sake of the shadow widths
hh = sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index);
depth = -y;