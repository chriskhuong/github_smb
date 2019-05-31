/// @description Insert description here
// You can write your code in this editor

//destroy emitter
audio_emitter_free(myGunAudio);
if (ds_exists(itemCollisionList, ds_type_list))
	{
		ds_list_destroy(itemCollisionList);
		//show_debug_message("LIST DESTROYED");
	}
