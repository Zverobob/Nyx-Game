if ( chosen == false && keyboard_check_released(ord("Z")) ){
	audio_play_sound(sndSelect,4,0);
	chosen = true;
	switch(option[option_num]){
		case "Exit" :
			game_end();
		break;
		case "Play":
			if(!instance_exists(oFade)){
				audio_stop_sound(sndMenuBiribs);
				audio_play_sound(musIlayBoterBGM,0, true);
				transition(rNyxRoom,49,404,3,60);
			}
		break;
		case "Options":
			sound_op_selected = true;
			sound_op_num = 0; 
			pos_select_snd = 0;
		break;
	}
}

if ( chosen == false ){
	pos_select_snd = option_num;
	option_num += keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
	if(option_num != pos_select_snd){
		audio_play_sound(sndMenumove,4,0);
	}
	if( keyboard_check_pressed(ord("W"))){
		option_num = 1;
		audio_play_sound(sndMenumove,4,0);
	}
	if (option_num >= op_max ){
		option_num = 0;
	}
	else if ( option_num < 0 ){
		option_num = op_max - 1;
	}
}
if(keyboard_check_pressed(vk_escape) && sound_op_selected == true){
	sound_op_selected = false;
	chosen = false;
	audio_play_sound(sndSelect,4,0);
}
if ( sound_op_selected == true ){

	pos_select_snd = sound_op_num;
	sound_op_num += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
	if(sound_op_num != pos_select_snd){
		audio_play_sound(sndMenumove,4,0);
	}
	if (sound_op_num >= sound_op_max ){
		sound_op_num = 0;
	}
	else if ( sound_op_num < 0 ){
		sound_op_num = sound_op_max - 1;
	}
	change_gain = (keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A")))/100;
	if(change_gain != 0){
		audio_play_sound( gain_test[sound_op_num],4,0 );
		gain[sound_op_num] += change_gain;
		gain[sound_op_num] = clamp(gain[sound_op_num],0,1);
		if(sound_op_num == 0 && instance_exists(oGame)){
			oGame.gain_m = gain[sound_op_num];
		}
		if(sound_op_num == 1 && instance_exists(oGame)){
			oGame.gain_s = gain[sound_op_num];
		}
		audio_group_set_gain(gain_gp[sound_op_num],gain[sound_op_num],10);
	}
}
