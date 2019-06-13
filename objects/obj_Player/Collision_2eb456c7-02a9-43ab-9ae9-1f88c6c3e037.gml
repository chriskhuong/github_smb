///Collect experience

if (hp < maxHp)
	{
		pickup = true;
		if(creator.cancel)
			{
				hp += 2;
					if (hp > maxHp)
						{
							hp = maxHp;
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