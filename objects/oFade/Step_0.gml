if(state == 0){
	if(target_room == rEnd){
		audio_group_set_gain(augMusic,0,100)
	}
	timer++;
	if(timer >= duration){
		state = 1;
		if(target_room == rEnd){
			audio_stop_all();
		}
		room_goto(target_room);
		if(instance_exists(oNyx)){
			oNyx.x = target_x;
			oNyx.y = target_y;
			if(out_direction != -1){
				oNyx.direction = out_direction * 90;
			}
		}
	}
}
else if (state == 1){
	if(target_room == rEnd){
		audio_group_set_gain(augMusic,oGame.gain_m,100);
	}
	timer--;
	if(timer <=0){
		if(instance_exists(oNyx))
			oNyx.Input_lock = false;
		instance_destroy();
	}
}
alpha = timer/duration;
