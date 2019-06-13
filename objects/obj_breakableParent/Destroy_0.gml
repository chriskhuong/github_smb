/// @description Insert description here
// You can write your code in this editor
///Inherit obj_lifeFormParent events

//test = random_range(1,10);

for(i = 1; i < image_number; i+=1)
{
var d = instance_create_depth(x,y,depth,obj_broken);
d.sprite_index = sprite_index;
d.image_speed = 0;
d.image_index = i;
}

mp_grid_clear_rectangle(obj_grid.grid, bbox_left, bbox_top, bbox_right, bbox_bottom);