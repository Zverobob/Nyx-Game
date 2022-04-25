if(audio_group_is_loaded(augMusic)){
	audio_group_set_gain(augMusic,gain[0],10);
}
if(audio_group_is_loaded(augSounds)){
	audio_group_set_gain(augSounds,gain[1],10);
}
