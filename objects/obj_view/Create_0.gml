///Instantiate camera position to avoid camera swipe at room entry
shake = 0;
cam_scale = 1;
max_scale = 2;

//cam_distance = 96; //WTF is this even for??
if (instance_exists(obj_tempPlayer))
    {
        x = obj_tempPlayer.x;
        y = obj_tempPlayer.y;
    }

