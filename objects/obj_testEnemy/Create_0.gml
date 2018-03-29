/// @description Insert description here
// You can write your code in this editor

//v this should be in a controller object

enum states
	{
		idle	= 0,
		wander	= 1,
		alert	= 2,
		attack	= 3
	}

states_array[states.idle]	= idle_behavior;
states_array[states.wander] = wander_behavior;
states_array[states.alert]	= alert_behavior;
states_array[states.attack] = attack_behavior;

/*
examples of the uses for the state machine
sprites_array[state.idle] = spr_idle;
sprites_array[state.wander] = spr_wander;
sprites_array[state.alert] = spr_alert;
sprites_array[state.attack] = spr_attack;

sprite_index = sprites_array[state];

dialogue_array[states.alert] = ["Hey!", "Stop!"];
dialogue_array[states.idle] = ["*Whistles*", "Hmm..."];

var len = array_length_1d(dialogue_array[state]);
text = dialogue_array[state[irandom_range(0, len - 1)]];
*/

state = states.idle;	//setting our starting state

counter = 0;
spd = .5;

my_dir = irandom_range(0, 359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);