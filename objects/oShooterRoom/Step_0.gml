if(show_text == 0 && keyboard_check_released(ord("Z")) && place_meeting(x,y,oNyx)){
	oNyx.Input_lock = true;
	oNyx.in_magnitude = 0;
	create_textbox("strelok_1");
	show_text = 1;
	ds_grid_set(oGame.ds_stack_diag,0,2,show_text);
}
if(place_meeting(x,y,oNyx)){
	if(keyboard_check_pressed(ord("Z")) && show_text >= 1){
		audio_stop_sound(snd_array[PlaySound]);
		PlaySound = random(7);
		audio_play_sound(snd_array[PlaySound],1,0);
	}
}

if(!instance_exists(oTextBox) && show_text == 1){
	timer = 15;
	oNyx.Input_lock = false;
	show_text = 2;
}
if(timer != -1){
	timer--;
	if(timer <= 0)
		show_text = 2;
		ds_grid_set(oGame.ds_stack_diag,0,2,show_text);
}

