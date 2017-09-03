/// @description Insert description here
// You can write your code in this editor
///Inherit obj_lifeFormParent events

test = random_range(1,10);

for(i = 0; i < test; i+=1)
{
var d = instance_create_depth(x,y,depth,obj_broken);
d.sprite_index = sprite_index;
}
