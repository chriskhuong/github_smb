///scr_backhandState

//image_speed = .5;

movement = ATTACK;
obj_view.shake = 15;

var attack_x = 0;
var attack_y = 0;

switch (facing)    //change facing to image_index
    {
        //Do Something
        case RIGHT:
            image_xscale = -1;
            image_speed = 4;
            attack_x = 32;
            attack_y = 16;
            break;
        
        case UP:
            image_speed = 4;
            attack_y = -32;
            break;

        case LEFT:
            image_xscale = 1;
            image_speed = 4;
            attack_x = -32;
            attack_y = 16;
            break;
                
        case DOWN:
            image_speed = 4;
            attack_y = 40;
            break;
        
    }


if (/*image_index >= 1 &&*/ attacked == false)   //used >= rather than == to avoid jumps in decimals
    {
        var damage = instance_create(x + attack_x, y + attack_y, obj_damage);   //returns the id of the object created, so we assign it to a local variable
                                                                                //now the damage variable is equal to the ID of the damage object
        
        damage.creator = id;    //tells the damage object that the player created the damage object so it doesn't damage them
        damage.damage = ((obj_tempPlayer.dmg)*2);
    }
