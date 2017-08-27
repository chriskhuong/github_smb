///Instantiate camera position to avoid camera swipe at room entry
shake = 0;
cam_scale = 1;
max_scale = 2;

//cam_distance = 96; //WTF is this even for??
instance_create_depth(x, y, depth, obj_playerTracker);

if (instance_exists(obj_playerTracker))
    {
        x = obj_playerTracker.x;
        y = obj_playerTracker.y;
    }

