
function scr_set_def(){
	line_break_pos[0,page_num] = 999;
	line_break_num[page_num] = 0; 
	line_break_offset[page_num] = 0;
	speaker_sprite[page_num] = noone;
	font[page_num] = fntDeterm;
	txtSound[page_num] = sndText;
}

/// @param text
/// @param [character]
function scr_text(_text){
	scr_set_def();
	text[page_num] = _text;
	
	//get NPC info
	if(argument_count > 1){
		switch(argument[1]){
			case "Jac_1":
				speaker_sprite[page_num] = dial_jac_1;
			break;
			case "Jac_2":
				speaker_sprite[page_num] = dial_jac_2;
			break;
			case "Jac_3":
				speaker_sprite[page_num] = dial_jac_3;
			break;
			case "Jac_4":
				speaker_sprite[page_num] = dial_jac_4;
			break;
			
			case "Epict_1":
				speaker_sprite[page_num] = dial_epict_1;
				txtSound[page_num] = sndTxttor;
			break;
			case "Epict_2":
				speaker_sprite[page_num] = dial_epict_2;
				txtSound[page_num] = sndTxttor;
			break;	
			
			case "Xalf_1":
				speaker_sprite[page_num] = dial_xalf_1;
				txtSound[page_num] = sndXal;
			break;
			case "Xalf_2":
				speaker_sprite[page_num] = dial_xalf_2;
				txtSound[page_num] = sndXal;
			break;	
			
			case "Xgas_1":
				speaker_sprite[page_num] = dial_xgas_1;
				txtSound[page_num] = "gaster";
			break;
			case "Xgas_2":
				speaker_sprite[page_num] = dial_xgas_2;
				txtSound[page_num] = "gaster";
			break;	
			
			case "Xmtt_1":
				speaker_sprite[page_num] = dial_xmtt_1;
				txtSound[page_num] = "mtt";
			break;
			case "Xmtt_2":
				speaker_sprite[page_num] = dial_xmtt_2;
				txtSound[page_num] = "mtt";
			break;	
			
			case "Asg_1":
				speaker_sprite[page_num] = dial_asg_1;
				txtSound[page_num] = sndAsgore;
			break;
			case "Asg_2":
				speaker_sprite[page_num] = dial_asg_2;
				txtSound[page_num] = sndAsgore;
			break;	
			
			case "Core_1":
				speaker_sprite[page_num] = dial_core_1;
			break;
			case "Core_2":
				speaker_sprite[page_num] = dial_core_2;
			break;
			
			case "Cross_1":
				speaker_sprite[page_num] = dial_cross_1;
				//font[page_num] = fntSans;
				txtSound[page_num] = sndSans;
			break;
			case "Cross_2":
				speaker_sprite[page_num] = dial_cross_2;
				txtSound[page_num] = sndSans;
				//font[page_num] = fntSans;
			break;
			case "Cross_3":
				speaker_sprite[page_num] = dial_cross_3;
				txtSound[page_num] = sndSans;
				//font[page_num] = fntSans;
			break;
			
			case "Geno_1":
				speaker_sprite[page_num] = dial_geno_1;
				txtSound[page_num] = sndSans;
				//font[page_num] = fntSans;
			break;
			case "Geno_2":
				speaker_sprite[page_num] = dial_geno_2;
				txtSound[page_num] = sndSans;
				//font[page_num] = fntSans;
			break;
			
			case "Ink_1":
				speaker_sprite[page_num] = dial_ink_1;
				txtSound[page_num] = sndInk;
				//font[page_num] = fntPaps;
			break;
			case "Ink_2":
				speaker_sprite[page_num] = dial_ink_2;
				txtSound[page_num] = sndInk;
				//font[page_num] = fntPaps;
			break;
			case "Ink_3":
				speaker_sprite[page_num] = dial_ink_3;
				txtSound[page_num] = sndInk;
				//font[page_num] = fntPaps;
			break;
			case "Ink_4":
				speaker_sprite[page_num] = dial_ink_4;
				txtSound[page_num] = sndInk;
				//font[page_num] = fntPaps;
			break;
			
			case "Und_1":
				speaker_sprite[page_num] = dial_und_1;
				txtSound[page_num] = sndUnd;
			break;
			case "Und_2":
				speaker_sprite[page_num] = dial_und_2;
				txtSound[page_num] = sndUnd;
			break;
			
			case "Xpap_1":
				speaker_sprite[page_num] = dial_xpap_1;
				txtSound[page_num] = sndPap;
				//font[page_num] = fntPaps;
			break;
			case "Xpap_2":
				speaker_sprite[page_num] = dial_xpap_2;
				txtSound[page_num] = sndPap;
				//font[page_num] = fntPaps;
			break;
			case "Xpap_3":
				speaker_sprite[page_num] = dial_xpap_3;
				txtSound[page_num] = sndPap;
				//font[page_num] = fntPaps;
			break;
		}
	}
	page_num++;
}

/// @param option
/// @param link id
function scr_options(_option, _link_id){
	option[option_num] = _option;
	option_link_id[option_num] = _link_id;
	option_num++;
}


function create_textbox(_text_id){
	with(instance_create_depth(0,0,-9999, oTextBox)){
		scr_game_text(_text_id);	
	}
}
