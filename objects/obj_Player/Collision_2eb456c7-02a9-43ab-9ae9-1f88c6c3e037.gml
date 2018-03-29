///Collect experience

with (other)
    {
        instance_destroy();
    }

//LevelUp code /*Will need to remove this for our current game no use of experience*/
with (obj_playerStats)
    {/*
        obj_playerStats.expr += 1;
        if (expr >= maxExpr)
            {
                level += 1;
                expr = expr - maxExpr;  //just incase we have extra experience left over after a levelup
                maxExpr += 2; //*=2
                hp += 2;
                maxHp += 2;
                stamina += 2;
                maxStamina += 2
                attack += 1;
            }*/
			hp += 2;
			if (hp > maxHp)
				{
					hp = maxHp;
				}
    }

/* */
/*  */
