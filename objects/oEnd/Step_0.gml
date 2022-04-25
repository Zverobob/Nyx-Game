if(next_scene == true){
	if(state == 0){
		tempd = duration[scene];
		timer++;
		if(timer >= tempd){
			state = 1;
			scene++;
		}
	}
	else if (state == 1){
		timer--;
		if(timer <=0){
			next_scene = false;
			scene_wait = 150;
			state = 0;
			alpha = 0;
		}
	}
	alpha = timer/tempd;
}
if (!audio_is_playing(musIlayBoterOutro)){
	ttm++;
}
if (ttm >= 60 ){
	room_goto(rStart);	
}
