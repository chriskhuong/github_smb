///scr_characterData(character)

//ERROR ONLY 1 or 2 dimensional arrays are supported

/*****************CHARACTER SPECIFIC********************/
argument0 = character;

switch(character){
    case BRITNEY:
        ///////BRITNEY
        
        dmg = 1;
		hp = 4;
        
        //moving
        sprite[RIGHT, MOVE] = spr_maid_run_side;
        sprite[UP, MOVE] = spr_maid_run_up;
        sprite[LEFT, MOVE] = spr_maid_run_side;
        sprite[DOWN, MOVE] = spr_maid_run_down;
        
        //idle
        sprite[RIGHT, IDLE] = spr_britney_idle_side;
        sprite[UP, IDLE] = spr_britney_idle_up;
        sprite[LEFT, IDLE] = spr_britney_idle_side;
        sprite[DOWN, IDLE] = spr_britney_idle_down;
        
        //attacking
        sprite[RIGHT, ATTACK] = spr_maid_attack_side_01;
        sprite[UP, ATTACK] = spr_maid_attack_up_01;
        sprite[LEFT, ATTACK] = spr_maid_attack_side_01;
        sprite[DOWN, ATTACK] = spr_maid_attack_down_01;
        
        /*****ON HOLD UNTIL I CAN FIGURE THIS SHIT OUT********* /
        //SPECIAL
        sprite[]
        script[BRITNEY, SPECIAL]
        */
         break;
         
    case JO:
        ///////JO
        
        dmg = 3;
        hp = 4;
		
        //moving
        sprite[RIGHT, MOVE] = spr_jo_temp;
        sprite[UP, MOVE] = spr_jo_temp;
        sprite[LEFT, MOVE] = spr_jo_temp;
        sprite[DOWN, MOVE] = spr_jo_temp;
        
        //idle
        sprite[RIGHT, IDLE] = spr_jo_temp;
        sprite[UP, IDLE] = spr_jo_temp;
        sprite[LEFT, IDLE] = spr_jo_temp;
        sprite[DOWN, IDLE] = spr_jo_temp;
        
        //attacking
        sprite[RIGHT, ATTACK] = spr_melee_broom;
        sprite[UP, ATTACK] = spr_melee_broom2;
        sprite[LEFT, ATTACK] = spr_melee_broom;
        sprite[DOWN, ATTACK] = spr_melee_broom2;
        
        /*
        /*****ON HOLD UNTIL I CAN FIGURE THIS SHIT OUT********* /
        //SPECIAL
        sprite[]
        script[BRITNEY, SPECIAL]
        */
        break;
        
    case MIO:
        ///////MIO
        
        dmg = 4;
        hp = 3;
		
        //moving
        sprite[RIGHT, MOVE] = spr_mio_temp;
        sprite[UP, MOVE] = spr_mio_temp;
        sprite[LEFT, MOVE] = spr_mio_temp;
        sprite[DOWN, MOVE] = spr_mio_temp;
        
        //idle
        sprite[RIGHT, IDLE] = spr_mio_idle_side;
        sprite[UP, IDLE] = spr_mio_idle_up;
        sprite[LEFT, IDLE] = spr_mio_idle_side;
        sprite[DOWN, IDLE] = spr_mio_idle_down;
        
        //attacking
        sprite[RIGHT, ATTACK] = spr_melee_sword;
        sprite[UP, ATTACK] = spr_melee_sword2;
        sprite[LEFT, ATTACK] = spr_melee_sword;
        sprite[DOWN, ATTACK] = spr_melee_sword2;
        
        /*
        /*****ON HOLD UNTIL I CAN FIGURE THIS SHIT OUT********* /
        //SPECIAL
        sprite[]
        script[BRITNEY, SPECIAL]
        */
        break;
        
    case ANNA:
        ///////ANNA
        
        dmg = 5;
        hp = 5;
		
        //moving
        sprite[RIGHT, MOVE] = spr_anna_temp;
        sprite[UP, MOVE] = spr_anna_temp;
        sprite[LEFT, MOVE] = spr_anna_temp;
        sprite[DOWN, MOVE] = spr_anna_temp;
        
        //idle
        sprite[RIGHT, IDLE] = spr_anna_temp;
        sprite[UP, IDLE] = spr_anna_temp;
        sprite[LEFT, IDLE] = spr_anna_temp;
        sprite[DOWN, IDLE] = spr_anna_temp;
        
        //attacking
        sprite[RIGHT, ATTACK] = spr_melee_fist;
        sprite[UP, ATTACK] = spr_melee_fist2;
        sprite[LEFT, ATTACK] = spr_melee_fist;
        sprite[DOWN, ATTACK] = spr_melee_fist2;
        
        /*
        /*****ON HOLD UNTIL I CAN FIGURE THIS SHIT OUT********* /
        //SPECIAL
        sprite[]
        script[BRITNEY, SPECIAL]
        */
        break;
    
    case SEBASTIAN:
        ///////SEBASTIAN
        
        dmg = 3;
		hp = 4;
        
        //moving
        sprite[RIGHT, MOVE] = spr_sebastian_temp;
        sprite[UP, MOVE] = spr_sebastian_temp;
        sprite[LEFT, MOVE] = spr_sebastian_temp;
        sprite[DOWN, MOVE] = spr_sebastian_temp;
        
        //idle
        sprite[RIGHT, IDLE] = spr_sebastian_temp;
        sprite[UP, IDLE] = spr_sebastian_temp;
        sprite[LEFT, IDLE] = spr_sebastian_temp;
        sprite[DOWN, IDLE] = spr_sebastian_temp;
        
        //attacking
        sprite[RIGHT, ATTACK] = spr_melee_shovel;
        sprite[UP, ATTACK] = spr_melee_shovel2;
        sprite[LEFT, ATTACK] = spr_melee_shovel;
        sprite[DOWN, ATTACK] = spr_melee_shovel2;
        
        /*
        /*****ON HOLD UNTIL I CAN FIGURE THIS SHIT OUT********* /
        //SPECIAL
        sprite[]
        script[BRITNEY, SPECIAL]
        */
        break;
        
    default:
        break;
}


//Character Special Array
//BRITNEY
special[BRITNEY, ABILITY] = scr_teatimeState;  //change to teatime
timer[BRITNEY, ABILITY] = 15;
//special[BRITNEY, ULTIMATE];

//JO
special[JO, ABILITY] = scr_dashState;
timer[JO, ABILITY] = room_speed/6;
//special[JO, ULTIMATE]

//MIO
special[MIO, ABILITY] = scr_teleportState;
timer[MIO, ABILITY] = 2;
//special[MIO, ULTIMATE]

//ANNA
special[ANNA, ABILITY] = scr_backhandState;  //change to backhand **TRY FIXING THIS SHIT SO WE DON'T NEED DUPLICATE SCRITPS**
timer[ANNA, ABILITY] = 2;
//special[ANNA, ULTIMATE]

//SEBASTIAN
special[SEBASTIAN, ABILITY] = scr_shieldState;  //change to shield thing
timer[SEBASTIAN, ABILITY] = room_speed/6;
//special[SEBASTIAN, ULTIMATE]
