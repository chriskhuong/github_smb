///Get the input
scr_getInput(dvc);


//FOR TESTING ONLY
if (keyboard_check_pressed(vk_alt))
    {
        with(obj_enemyParent)
            {
                instance_destroy();
            }
    }

