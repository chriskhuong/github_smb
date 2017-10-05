///Collision
damage = 50;
//scr_damage(0, 0, creator.tag, damage);
i = instance_create_depth(x, y, depth, obj_tempBoom);
i.damage = damage;
instance_destroy();

