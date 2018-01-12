/// @description falling
z += zSpeed;
zSpeed += grav;

if (z >= 0)
	{
		
		var bounceAmount = 0;
		zSpeed = zSpeed * bounceAmount;
		
		if (zSpeed > -1)
			{
				zSpeed = 0;
				z = 0;
			}
	}

if (z == 0)
	{
		instance_destroy();
	}