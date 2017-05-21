///scr_damage(xoffset, yoffset, creator, damage)
xoffset = argument0;
yoffset = argument1;
creat = argument2;
dmg = argument3;

boom = noone;

if (creat == GRENADE)
    {
        boom = obj_tempBoom;
    }
else
    {
        boom = obj_damage;
    }

damage = instance_create(x + xoffset, y + yoffset, boom);   //returns the id of the object created, so we assign it to a local variable

        
damage.creator = creat;    //tells the damage object that the player created the damage object so it doesn't damage themg
damage.damage = dmg;    //now the damage variable is equal to the ID of the damage object

