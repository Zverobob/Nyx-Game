accept_key = keyboard_check_pressed(ord("Z"));

textbox_x = camera_get_view_x(view_camera[0]) + 213;
textbox_y = camera_get_view_y(view_camera[0]);

if(instance_exists(oNyx)){
	need_box = true;
	if (oNyx.y < textbox_y + 122)
		textbox_y += 164;
}
else{
	textbox_y += 164;
	need_box = false;
}
	
if(setup == false){
	setup = true;
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//page_num = array_length(text);
	for ( var p = 0; p < page_num; p++ ){
		draw_set_font(font[p]);
		text_length[p] = string_length(text[p]);
		if(speaker_sprite[p] == noone){
			//x pos without portrait 
			text_x_offset[p] = 144;
			line_width = sprite_get_width(textb_spr) - border * 2;
		}
		else{
			//x pos with portrait
			text_x_offset[p] = 78;
			portrait_x_offset = 131;
			line_width = sprite_get_width(textb_spr) - 75 - border * 2;
		}
		
		
		for (var _c = 0; _c < text_length[p]; _c++){
			var _char_pos = _c + 1;
			//store chars
			char[_c, p] = string_char_at(text[p],_char_pos);
			
			//get width
			var _txt_to_char = string_copy(text[p],	1, _char_pos);
			var _cur_txt_width = string_width(_txt_to_char) - string_width(char[_c, p]);
			
			//get last space
			if (char[_c,p] == " ") {
				last_free_space = _char_pos+1;	
			}
			
			if (_cur_txt_width - line_break_offset[p] > line_width){
				line_break_pos[line_break_num[p],p] = last_free_space;
				line_break_num[p]++;
				var _txt_up_to_last = string_copy( text[p], 1, last_free_space);
				var _last_free_spc_str = string_char_at( text[p], last_free_space);
				line_break_offset[p] = string_width(_txt_up_to_last) - string_width(_last_free_spc_str);
			}
		}
		
		//get char position
		for( var _c = 0; _c < text_length[p]; _c++){
			var _char_pos = _c + 1;
			var _txt_x = textbox_x - text_x_offset[p] + border;
			var _txt_y = textbox_y + border;
			//get cur width
			var _txt_to_char = string_copy(text[p],	1, _char_pos);
			var _cur_txt_width = string_width(_txt_to_char) - string_width(char[_c, p]);
			var _text_line = 0;
			
			for (var _lb = 0; _lb < line_break_num[p]; _lb++){
				if (_char_pos >= line_break_pos[_lb, p]){
					var _str_copy = string_copy(text[p], line_break_pos[_lb, p], _char_pos - line_break_pos[_lb, p]);
					_cur_txt_width = string_width(_str_copy);
					_text_line = _lb + 1;
				}
			}
			// add to x an y 
			char_x[_c,p] = _txt_x + _cur_txt_width;
			char_y[_c,p] = _txt_y + _text_line * line_sep;
		}
	}
}

//typing text
if( text_pause_timer <= 0 ){
	if(draw_char < text_length[page]){
		draw_char += text_spd;
		draw_char = clamp(draw_char,0,text_length[page]);
		draw_char_n = draw_char +1;
		draw_char_n = clamp(draw_char_n,0,text_length[page]);
		var _stringchar = string_char_at( text[page], draw_char);
		var _stringchar_n = string_char_at( text[page], draw_char_n);
		if( (_stringchar == "."  || _stringchar == "!" || _stringchar == "?" || _stringchar == ",") && _stringchar_n == " "){
			text_pause_timer = text_pause_time;
		}
		if(snd_count >= snd_wait){
			switch (txtSound[page]){
				case "gaster":
					audio_play_sound(sndGaster[random(7)],2,0);
				break;	
			
				case "mtt":
					audio_play_sound(sndMtt[random(9)],2,0);
				break;
			
				default:
					audio_play_sound(txtSound[page],2,0);
				break;
			}
			snd_count = 0;
		}
		else
		snd_count++;
	}
}
else {
	text_pause_timer--;
}


//Flip page
if (accept_key){
	//If typing done
	if( draw_char == text_length[page] ){
		//next page
		if( page < page_num-1 ){
			page++;
			draw_char = 0;
		}
		//DESTRUCTION
		else {
			//link_text
			if (option_num > 0){
				audio_play_sound(sndSelect,4,0);
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
	//Still typin
	else{
		draw_char = text_length[page];
	}
}



//draw box
if (need_box){
	draw_sprite_ext(textb_spr,-1,textbox_x,textbox_y,1,1,0,c_white,1);
	if(speaker_sprite[page] != noone){
		sprite_index = speaker_sprite[page];
		if(draw_char == text_length[page]){
			image_index = 3;	
		}
		var _speaker_x = textbox_x - portrait_x_offset;
		draw_sprite_ext(sprite_index, image_index,_speaker_x,textbox_y + 13,1,1,0,c_white,1);
	}
}
//options
if(draw_char == text_length[page] && page == page_num - 1){
	pos_select_snd = option_pos;
	option_pos += keyboard_check_pressed(ord("D")) + keyboard_check_pressed(ord("A"));
	if(option_pos != pos_select_snd && option_num > 0)
		audio_play_sound(sndMenumove,4,0);
	if(option_pos > option_num - 1){
		option_pos = 0;
	}
	if(option_pos < 0){
		option_pos = 1;
	}
	
	
	
	_op_space = 144;
	for (var _op = 0; _op < option_num; _op++){
		draw_set_halign(fa_center);
		if(_op == option_pos){
			draw_set_color(c_yellow);
		}
		draw_text(textbox_x - 72 + _op * _op_space, textbox_y + 38 + line_sep, option[_op] );
		draw_set_color(c_white);
	}
	draw_set_halign(fa_left);
}
//draw text
for(var _c = 0; _c < draw_char; _c++){
	draw_text(char_x[_c,page],char_y[_c,page],char[_c,page]);
}
