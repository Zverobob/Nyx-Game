window_set_size(1280,720);
option = ["Exit","Play","Options"];
op_max = array_length(option);
t_x = 0;
t_y = 0;
option_num = 1;
pos_select_snd = 1;
chosen = false;
gain = [0.7,0.4];
gain_gp = [augMusic,augSounds];
gain_test = [sndMenumove2, sndMenumove];
//sound options
sound_op = ["Music", "Sounds"];
sound_op_selected = false;
sound_op_max = array_length(sound_op);
sound_op_num = 0;
sound_op_x = 128;
sound_op_y = 64;
change_gain = 0;
set_ost = false;

inst_x = 112;
if(!instance_exists(oGame)){
	instance_create_layer(0,0,"Stuff",oGame);
	oGame.gain_m = gain[0];
	oGame.gain_s = gain[1];
}
else {
	gain_gp[0] = oGame.gain_m
	
}

#region Key mapping
keyboard_set_map(vk_left, ord("A"));
keyboard_set_map(vk_right, ord("D"));
keyboard_set_map(vk_up, ord("W"));
keyboard_set_map(vk_down, ord("S"));
keyboard_set_map(vk_enter, ord("Z"));
#endregion

audio_group_load(augMusic);
audio_group_load(augSounds);
