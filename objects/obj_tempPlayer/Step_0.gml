///Player Controls

//event_inherited();  //allows the object to inherit the create event of the parent

depth = -y;
scr_characterData(character);
//scr_weaponArray(character);

script_execute(state);
script_execute(target_state);

sprite_index = sprite[facing, movement];

