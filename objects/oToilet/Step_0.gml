if(place_meeting(x,y,oNyx) && flushes < 2){
	if(keyboard_check_pressed(ord("Z")) && !audio_is_playing(sndToilet) && !audio_is_playing(sndDumbWin)){
		audio_play_sound(sndToilet,2,0);
		flushes++;
		ds_grid_set(oGame.ds_stack_diag,0,3,flushes);
		flushing = true;
	}
}

if(flushing == true && !audio_is_playing(sndToilet)){
	audio_play_sound(f_sounds[flushes-1],2,0);
	flushing = false;
}

if(flushes == 2 && keyboard_check_released(ord("Z")) && deactivated == false && !audio_is_playing(sndToilet)){
	oNyx.Input_lock = true;
	oNyx.in_magnitude = 0;
	create_textbox("toil_1");
	deactivated = true;
}


if(!instance_exists(oTextBox) && timer == -1 && deactivated == true){
	timer = 15;
	oNyx.Input_lock = false;
}

if(timer != -1){
	timer--;
	if(timer <= 0)
		deactivated = false;
}


