if(place_meeting(x,y,oNyx) && !instance_exists(oFade)){
	target_y = target_y == -1 ? oNyx.y : target_y;
	transition(target_room,target_x,target_y,out_direction,duration);
}
