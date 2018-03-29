show_debug_message("Change volume to: "+ string(argument0));


	switch(menu_option[page]){
			case 0: if(!audio_is_playing(snd_charSelect)) audio_play_sound(snd_charSelect,1,false); break;
			case 1: if(!audio_is_playing(snd_charSelect)) audio_play_sound(snd_charSelect,1,false); break;
			case 2: if(!audio_is_playing(snd_Epic_Battle)) audio_play_sound(snd_Epic_Battle,1,false); break;
			};
var type = menu_option[page];

switch(type)
{
	case 0: audio_master_gain(argument0); break;
	case 1: audio_group_set_gain(audiogroup_soundEffects,argument0,0); break;
	case 2: audio_group_set_gain(audiogroup_music,argument0,0); break;
}

/*
if(argument1 == "SOUNDS")
audio_sound_gain(snd_charSelect,argument0,30);

if(argument1 == "MUSIC")
audio_sound_gain(snd_Epic_Battle,argument0,30);

if(argument1 == "MASTER")
{
	audio_sound_gain(snd_charSelect,argument0,30);
	audio_sound_gain(snd_Epic_Battle,argument0,30);
}*/