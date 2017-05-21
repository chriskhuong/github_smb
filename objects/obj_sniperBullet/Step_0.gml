///Fade/Destroy shot
image_alpha -= 0.1;
bang = noone;

if collision_line(obj_sniperBullet.LV_StartX, obj_sniperBullet.LV_StartY, x, y, obj_enemyParent.id, false, false)
    {
        with (other)
            {
                bang = obj_enemyParent.id
                damage = 50;
                var hit = instance_create(bang.x, bang.y, obj_damage);
                hit.damage = damage;
            }
    }

bang = noone;

/*
if place_meeting(x, y, obj_enemyParent)
    {
        damage = 50;
        var hit = instance_create(x, y, obj_damage);
        hit.damage = damage;
    }
*/

if (image_alpha <= 0)
    {
        instance_destroy()
        with(obj_StartPoint)
            {
                instance_destroy()
            }
        with(obj_EndPoint)
            {
                instance_destroy()
            }
    }

/* */
/*  */
