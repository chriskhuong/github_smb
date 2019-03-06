///Collect experience

if (myStats.hp < myStats.maxHp)
	{
		pickup = true;
		if(creator.cancel)
			{
				myStats.hp += 2;
					if (myStats.hp > myStats.maxHp)
						{
							myStats.hp = myStats.maxHp;
						}
				with (other)
					{
						instance_destroy();
					}
				pickup = false;
			}
	}
else
	{
		pickup = false;
	}