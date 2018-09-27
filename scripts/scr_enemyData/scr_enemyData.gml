argument0 = character;

switch(character)
	{
		case SLIME:
			//moving
			sprite[character, MOVE] = spr_slime_run_side;
			
			//idle
			sprite[character, IDLE] = spr_slime_run_side;
			
			//hurt
			sprite[character, STUN] = spr_slime_hurt_side;
			
			//attacking
			//sprite[RIGHT, ATTACK]	= sCombo[attackSequence];
			//sprite[UP, ATTACK]		= uCombo[attackSequence];
			//sprite[LEFT, ATTACK]	= sCombo[attackSequence];
			//sprite[DOWN, ATTACK]	= dCombo[attackSequence];
			
			break;
			
		case SLIMEHELM:
			//moving
			sprite[character, MOVE] = spr_slimeHelmet_run_side;
			
			//idle
			sprite[character, IDLE] = spr_slimeHelmet_run_side;
			
			//hurt
			sprite[character, STUN] = spr_slimeHelmet_hurt_side;
			
			//attacking
			//sprite[RIGHT, ATTACK]	= sCombo[attackSequence];
			//sprite[UP, ATTACK]		= uCombo[attackSequence];
			//sprite[LEFT, ATTACK]	= sCombo[attackSequence];
			//sprite[DOWN, ATTACK]	= dCombo[attackSequence];
			
			break;
			
		case BEHOLDER:
			//moving
			sprite[character, MOVE] = spr_beholder_side;
			
			//idle
			sprite[character, IDLE] = spr_beholder_side;
			
			//hurt
			sprite[character, STUN] = spr_beholder_side;
			
			//attacking
			//sprite[RIGHT, ATTACK]	= sCombo[attackSequence];
			//sprite[UP, ATTACK]		= uCombo[attackSequence];
			//sprite[LEFT, ATTACK]	= sCombo[attackSequence];
			//sprite[DOWN, ATTACK]	= dCombo[attackSequence];
			
			break;
			
		case ORC:
			//moving
			sprite[character, MOVE] = spr_orc_body_run;
			
			//idle
			sprite[character, IDLE] = spr_orc_body_idle;
			
			//hurt
			sprite[character, STUN] = spr_orc_body_run;
			
			//attacking
			//sprite[RIGHT, ATTACK]	= sCombo[attackSequence];
			//sprite[UP, ATTACK]		= uCombo[attackSequence];
			//sprite[LEFT, ATTACK]	= sCombo[attackSequence];
			//sprite[DOWN, ATTACK]	= dCombo[attackSequence];
			
			break;
			
		case GOBLIN:
			//moving
			sprite[character, MOVE] = spr_goblin1_run;
			
			//idle
			sprite[character, IDLE] = spr_goblin1_idle;
			
			//hurt
			sprite[character, STUN] = spr_goblin1_idle;
			
			//attacking
			//sprite[RIGHT, ATTACK]	= sCombo[attackSequence];
			//sprite[UP, ATTACK]		= uCombo[attackSequence];
			//sprite[LEFT, ATTACK]	= sCombo[attackSequence];
			//sprite[DOWN, ATTACK]	= dCombo[attackSequence];
			
			break;
	}