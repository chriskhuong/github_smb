show_debug_message("Change volume to: "+ string(argument0));


if(argument1 == "SOUNDS")
audio_sound_gain(snd_charSelect,argument0,30);

if(argument1 == "MUSIC")
audio_sound_gain(snd_Epic_Battle,argument0,30);

if(argument1 == "MASTER")
{
	audio_sound_gain(snd_charSelect,argument0,30);
	audio_sound_gain(snd_Epic_Battle,argument0,30);
}