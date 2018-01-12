/// @description Makes the player stats in their correct places

if(!once)
	{
		myStats = instance_create_depth(x, y, depth, obj_playerStats2);
		myStats.creator = id;
		myStats.maxHp = hp;
		myStats.num = playerNum;
		myStats.character = special[character, NAME];
		once = true;
	}