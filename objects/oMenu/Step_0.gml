if (!audio_is_playing(sndMenuBiribs) && set_ost == false){
	audio_play_sound(sndMenuBiribs,0,true);
	 set_ost = true;
}
