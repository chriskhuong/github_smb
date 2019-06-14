///Instantiate camera position to avoid camera swipe at room entry
shake = 0;
cam_scale = 1;
max_scale = 2;
follow = false;

instance_create_depth(x, y, depth, obj_playerTracker);

if (instance_exists(obj_spawnZone))
    {
        x = obj_spawnZone.x;
        y = obj_spawnZone.y;
    }

