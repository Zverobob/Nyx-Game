if (Input_lock == false ){
	//Inputs
	key_left = keyboard_check(ord("A")) || gamepad_button_check(gamepad_slot, gp_padl);
	key_right = keyboard_check(ord("D")) || gamepad_button_check(gamepad_slot, gp_padr);
	key_up = keyboard_check(ord("W")) || gamepad_button_check(gamepad_slot, gp_padu);
	key_down = keyboard_check(ord("S")) || gamepad_button_check(gamepad_slot, gp_padd);
	
	//Movement
	in_direction = point_direction(0, 0, key_right - key_left, key_down - key_up);
	in_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);
	x_wlk_spd = 2;
	y_wlk_spd = 2;
	h_spd = lengthdir_x(in_magnitude * x_wlk_spd, in_direction);
	y_spd = lengthdir_y(in_magnitude * y_wlk_spd, in_direction);

	//collisions
	collision(oWall);
	if(place_meeting(x,y,oGuitar) and keyboard_check_pressed(ord("Z")))
		if(!audio_is_playing(sndBwaah))
			audio_play_sound(sndBwaah,1,0);
}
	

//Animation
var _old_spr = sprite_index; //Saving sprite
if (in_magnitude){
	direction = in_direction;
	sprite_index = sMove;
}
else
	sprite_index = sIdle;
if ( _old_spr != sprite_index ) local_frame = 0;

sprite_update();

if( Lock_time != -1 ){
	Lock_time--;
	if(Lock_time == 0){
		Input_lock = false;
	}
}

