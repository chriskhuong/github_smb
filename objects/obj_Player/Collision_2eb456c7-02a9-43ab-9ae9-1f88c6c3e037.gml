///Collect experience

if (hp < maxHp)
	{
		pickup = true;
		if(creator.cancel)
			{
				hp += maxHp;
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