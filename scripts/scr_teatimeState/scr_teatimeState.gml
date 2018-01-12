///scr_teatimeState

if (instance_number(obj_teatime) < 1)
    {
        var teatime = instance_create_depth(x, y, depth + 200, obj_teatime);
        teatime.creator = id;
        
    }
