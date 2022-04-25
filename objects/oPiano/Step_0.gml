if(place_meeting(x,y,oNyx)){
	if(keyboard_check_pressed(ord("Z"))){
		audio_stop_sound(snd_array[PlaySound]);
		PlaySound = random(10);
		audio_play_sound(snd_array[PlaySound],1,0);
	}
}
