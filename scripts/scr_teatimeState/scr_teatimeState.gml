///scr_teatimeState

if (instance_number(obj_teatime) < 1)
    {
        var teatime = instance_create(x, y, obj_teatime);
        teatime.creator = id;
        
    }
