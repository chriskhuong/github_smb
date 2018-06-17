///scr_characterData(character)

//ERROR ONLY 1 or 2 dimensional arrays are supported

/*****************CHARACTER SPECIFIC********************/
argument0 = character;

switch(character){
    case BRITNEY:
        ///////BRITNEY
        
        dmg = 1;
		hp = 8;
        maxSequence = 6;
		
        //moving
        sprite[RIGHT, MOVE] = spr_britney_run_side;
        sprite[UP, MOVE] = spr_britney_run_up;
        sprite[LEFT, MOVE] = spr_britney_run_side;
        sprite[DOWN, MOVE] = spr_britney_run_down;
        
        //idle
        sprite[RIGHT, IDLE] = spr_britney_idle_side;
        sprite[UP, IDLE] = spr_britney_idle_up;
        sprite[LEFT, IDLE] = spr_britney_idle_side;
        sprite[DOWN, IDLE] = spr_britney_idle_down;
		
		//combos
		sCombo[0] = spr_britney_melee_side1;
		sCombo[1] = spr_britney_melee_side2;
		sCombo[2] = spr_britney_melee_side3;
		sCombo[3] = spr_britney_melee_side4;
		sCombo[4] = spr_britney_melee_side5;
		sCombo[5] = spr_britney_melee_side6;
		
		uCombo[0] = spr_britney_melee_up1;
		uCombo[1] = spr_britney_melee_up2;
		uCombo[2] = spr_britney_melee_up3;
		uCombo[3] = spr_britney_melee_up4;
		uCombo[4] = spr_britney_melee_up5;
		uCombo[5] = spr_britney_melee_up6;
		
		dCombo[0] = spr_britney_melee_down1;
		dCombo[1] = spr_britney_melee_down2;
		dCombo[2] = spr_britney_melee_down3;
		dCombo[3] = spr_britney_melee_down4;
		dCombo[4] = spr_britney_melee_down5;
		dCombo[5] = spr_britney_melee_down6;
		
        //attacking
        sprite[RIGHT, ATTACK] = sCombo[attackSequence];
        sprite[UP, ATTACK] = uCombo[attackSequence];
        sprite[LEFT, ATTACK] = sCombo[attackSequence];
        sprite[DOWN, ATTACK] = dCombo[attackSequence];
        
        /*****ON HOLD UNTIL I CAN FIGURE THIS SHIT OUT********* /
        //SPECIAL
        sprite[]
        script[BRITNEY, SPECIAL]
        */
         break;
         
    case JO:
        ///////JO
        
        dmg = 3;
        hp = 8;
		maxSequence = 4;
		
        //moving
        sprite[RIGHT, MOVE] = spr_jo_run_side;
        sprite[UP, MOVE] = spr_jo_run_up;
        sprite[LEFT, MOVE] = spr_jo_run_side;
        sprite[DOWN, MOVE] = spr_jo_run_down;
        
        //idle
        sprite[RIGHT, IDLE] = spr_jo_idle_side;
        sprite[UP, IDLE] = spr_jo_idle_up;
        sprite[LEFT, IDLE] = spr_jo_idle_side;
        sprite[DOWN, IDLE] = spr_jo_idle_down;
		
		//combos
		sCombo[0] = spr_jo_melee_side1;
		sCombo[1] = spr_jo_melee_side2;
		sCombo[2] = spr_jo_melee_side3;
		sCombo[3] = spr_jo_melee_side4;
		
		uCombo[0] = spr_jo_melee_up1;
		uCombo[1] = spr_jo_melee_up2;
		uCombo[2] = spr_jo_melee_up3;
		uCombo[3] = spr_jo_melee_up4;
		
		dCombo[0] = spr_jo_melee_down1;
		dCombo[1] = spr_jo_melee_down2;
		dCombo[2] = spr_jo_melee_down3;
		dCombo[3] = spr_jo_melee_down4;
		
        //attacking
        sprite[RIGHT, ATTACK] = sCombo[attackSequence];
        sprite[UP, ATTACK] = uCombo[attackSequence];
        sprite[LEFT, ATTACK] = sCombo[attackSequence];
        sprite[DOWN, ATTACK] = dCombo[attackSequence];
        
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
        hp = 6;
		maxSequence = 3;
		
        //moving
        sprite[RIGHT, MOVE] = spr_mio_run_side;
        sprite[UP, MOVE] = spr_mio_run_up;
        sprite[LEFT, MOVE] = spr_mio_run_side;
        sprite[DOWN, MOVE] = spr_mio_run_down;
        
        //idle
        sprite[RIGHT, IDLE] = spr_mio_idle_side;
        sprite[UP, IDLE] = spr_mio_idle_up;
        sprite[LEFT, IDLE] = spr_mio_idle_side;
        sprite[DOWN, IDLE] = spr_mio_idle_down;
		
		//combos
		sCombo[0] = spr_mio_melee_side1;
		sCombo[1] = spr_mio_melee_side2;
		sCombo[2] = spr_mio_melee_side3;
		
		uCombo[0] = spr_mio_melee_up1;
		uCombo[1] = spr_mio_melee_up2;
		uCombo[2] = spr_mio_melee_up3;
		
		dCombo[0] = spr_mio_melee_down1;
		dCombo[1] = spr_mio_melee_down2;
		dCombo[2] = spr_mio_melee_down3;
		
        //attacking
        sprite[RIGHT, ATTACK] = sCombo[attackSequence];
        sprite[UP, ATTACK] = uCombo[attackSequence];
        sprite[LEFT, ATTACK] = sCombo[attackSequence];
        sprite[DOWN, ATTACK] = dCombo[attackSequence];
        
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
        hp = 10;
		maxSequence = 3;
		
        //moving
        sprite[RIGHT, MOVE] = spr_anna_run_side;
        sprite[UP, MOVE] = spr_anna_run_up;
        sprite[LEFT, MOVE] = spr_anna_run_side;
        sprite[DOWN, MOVE] = spr_anna_run_down;
        
        //idle
        sprite[RIGHT, IDLE] = spr_anna_idle_side;
        sprite[UP, IDLE] = spr_anna_idle_up;
        sprite[LEFT, IDLE] = spr_anna_idle_side;
        sprite[DOWN, IDLE] = spr_anna_idle_down;
        
        //combos
		sCombo[0] = spr_anna_melee_side1;
		sCombo[1] = spr_anna_melee_side2;
		sCombo[2] = spr_anna_melee_side3;
		
		uCombo[0] = spr_anna_melee_up1;
		uCombo[1] = spr_anna_melee_up2;
		uCombo[2] = spr_anna_melee_up3;
		
		dCombo[0] = spr_anna_melee_down1;
		dCombo[1] = spr_anna_melee_down2;
		dCombo[2] = spr_anna_melee_down3;
        
		//attacking
        sprite[RIGHT, ATTACK] = sCombo[attackSequence];
        sprite[UP, ATTACK] = uCombo[attackSequence];
        sprite[LEFT, ATTACK] = sCombo[attackSequence];
        sprite[DOWN, ATTACK] = dCombo[attackSequence];
		
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
		hp = 8;
        
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
        
		//REALLY STUPID HARDCODE, FIND A FIX
		sprite[RIGHT, STUN] = spr_sebastian_temp;
		sprite[UP, STUN] = spr_sebastian_temp;
		sprite[LEFT, STUN] = spr_sebastian_temp;
		sprite[DOWN, STUN] = spr_sebastian_temp;
		
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
skill[BRITNEY, ABILITY] = scr_teatimeState;  //change to teatime
timer[BRITNEY, ABILITY] = room_speed/3;
//special[BRITNEY, ULTIMATE];
special[BRITNEY, DEAD] = spr_britney_death;
special[BRITNEY, STUN] = spr_britney_hurt;
special[BRITNEY, GHOST] = spr_ghost_britney;
special[BRITNEY, NAME] = "BRITNEY";
special[BRITNEY, FACE] = 0;
special[BRITNEY, ABILITYWINDOW0] = 0;
special[BRITNEY, ABILITYWINDOW1] = 1;

//JO
skill[JO, ABILITY] = scr_dashState;
timer[JO, ABILITY] = room_speed/3;
//special[JO, ULTIMATE];
special[JO, ABILITY] = spr_jo_death;
special[JO, DEAD] = spr_jo_death;
special[JO, STUN] = spr_jo_hurt;
special[JO, GHOST] = spr_ghost_jo;
special[JO, NAME] = "JO";
special[JO, FACE] = 1;
special[JO, ABILITYWINDOW0] = 2;
special[JO, ABILITYWINDOW1] = 3;
//MIO
skill[MIO, ABILITY] = scr_teleportState;
timer[MIO, ABILITY] = 2;
//special[MIO, ULTIMATE]
special[MIO, DEAD] = spr_mio_death;
special[MIO, STUN] = spr_mio_hurt;
special[MIO, GHOST] = spr_ghost_mio;
special[MIO, NAME] = "MIO";
special[MIO, FACE] = 2;
special[MIO, ABILITYWINDOW0] = 4;
special[MIO, ABILITYWINDOW1] = 5;

//ANNA
skill[ANNA, ABILITY] = scr_backhandState;  //change to backhand **TRY FIXING THIS SHIT SO WE DON'T NEED DUPLICATE SCRITPS**
timer[ANNA, ABILITY] = 2;
//special[ANNA, ULTIMATE]
special[ANNA, DEAD] = spr_anna_death;
special[ANNA, STUN] = spr_anna_hurt;
special[ANNA, GHOST] = spr_ghost_anna;
special[ANNA, NAME] = "ANNA";
special[ANNA, FACE] = 3;
special[ANNA, ABILITYWINDOW0] = 6;
special[ANNA, ABILITYWINDOW1] = 7;

//SEBASTIAN
skill[SEBASTIAN, ABILITY] = scr_shieldState;  //change to shield thing
timer[SEBASTIAN, ABILITY] = room_speed/6;
//special[SEBASTIAN, ULTIMATE]
special[SEBASTIAN, DEAD] = 0;
special[SEBASTIAN, NAME] = "SEBASTIAN";
special[SEBASTIAN, FACE] = 4;