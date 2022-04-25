//Update sprite
function sprite_update(){
	var _card_dir = round(direction/90);
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = local_frame + ( _card_dir * _totalFrames );
	local_frame += sprite_get_speed(sprite_index)/60;
	
	//anti-loop
	if( local_frame >= _totalFrames ){
		animationEnd = true;
		local_frame -= _totalFrames;
	}
	else animationEnd = false;
}
function collision(obj){
		if (place_meeting(x + h_spd,y,obj)){
		while(!place_meeting(x+sign(h_spd),y,obj))
			x += sign(h_spd);
		h_spd = 0;
	}
	x += h_spd;
	if (place_meeting(x,y + y_spd,obj)){
		while(!place_meeting(x,y+sign(y_spd),obj))
			y += sign(y_spd);
		y_spd = 0;
	}
	y += y_spd
}
/// @arg Destination
/// @arg x
/// @arg y
/// @arg direction 0-3
/// @arg duration

function transition(room,x,y,odirection,dur){
	var _fade = instance_create_depth(0,0,0, oFade);
	with(_fade) {
		target_room = room;
		target_x = x;
		target_y = y;
		out_direction = odirection;
		duration = dur;
	}
}
