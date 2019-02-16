///Collision
if (z < other.hh)
	{
		//damage = 50;
		//scr_damage(0, 0, creator.tag, damage);
		i = instance_create_depth(x, y, depth, obj_tempBoom);
		i.damage = damage;
		i.creator = creator;
		i.creatorid = creatorid;
		instance_destroy();
	}
