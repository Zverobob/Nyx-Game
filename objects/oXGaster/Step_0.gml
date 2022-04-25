event_inherited();
if (ds_grid_get(oGame.ds_stack_diag,0,7) == 5 && !instance_exists(oTextBox) && oGame.gasterangry == false){
	oGame.gasterangry = true;
	audio_play_sound(sndEyeFlash,3,0);
	if(instance_exists(inst_788FF4BC)){
		instance_destroy(inst_788FF4BC);
	}
	image_index = 0;
	sprite_index = sXGaster_eyes;
	kick_wait = 60;
}
if (instance_exists(oFade) && oGame.gasterangry == true){
	if (oFade.alpha >= 0.9 && !audio_is_playing(sndDoorclose)){
		audio_play_sound(sndDoorclose,4,0);
		audio_group_set_gain(augMusic,oGame.gain_m, 10);
	}
}

if(instance_exists(oGame) && temp_gain == 0){
	temp_gain = oGame.gain_m / 4;
	audio_group_set_gain(augMusic,temp_gain, 10);
}
if(	oGame.gasterangry == true && image_index = 9 ){
	image_index = 0;
	image_speed = 0;
	transition(rSecondFloor,49,404,3,60);
}
