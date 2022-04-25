if(place_meeting(x,y,oNyx) && desided == false){
	oNyx.Input_lock = true;
	oNyx.in_magnitude = 0;
	create_textbox("XKris_1");
	deactivated = true;
	desided = true;
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
