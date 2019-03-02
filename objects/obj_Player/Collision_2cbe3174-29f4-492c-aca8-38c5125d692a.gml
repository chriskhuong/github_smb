///Collect experience

//LevelUp code /*Will need to remove this for our current game no use of experience*/
pickup = true;

if (creator.attack_key)
	{
		weaponArray[0, 10] = weaponArray[0, 12];
		weaponArray[1, 10] = weaponArray[1, 12];
		with (other)
			{
				instance_destroy();
			}
		pickup = false;
	}
/* */
/*  */
