///scr_damage(xoffset, yoffset, creatorID, creator Tag, damage)
xoffset = argument0;
yoffset = argument1;
//creat = argument2;
tag = argument2;
dmg = argument3;

boom = noone;
//weird logic here, will have to come back to this
/*if (creat == GRENADE)
    {
        boom = obj_tempBoom;
    }
else
    {
        boom = obj_damage;
    }
*/
damage = instance_create_depth(x + xoffset, y + yoffset, depth, obj_damage);   //returns the id of the object created, so we assign it to a local variable

        
//damage.creator = creat;    //tells the damage object that the player created the damage object so it doesn't damage themg
damage.damage = dmg;    //now the damage variable is equal to the ID of the damage object
