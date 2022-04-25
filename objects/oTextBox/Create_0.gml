//init
textb_spr = sTextbox;
border = 9;
line_sep = 15;
line_width = sprite_get_width(textb_spr) - border * 2;

//txt
page = 0;
page_num = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;

draw_char = 0;
text_spd = 0.8;

//Options
option[0] = "";
option_link_id = -1;
option_pos = 0;
option_num = 0;
pos_select_snd = 0;

setup = false;

//effects
scr_set_def();
last_free_space = 0;

text_pause_timer = 0;	
text_pause_time = 20;	

//exp stuff
snd_wait = 2;
snd_count = snd_wait;

need_box = true;

sndGaster = [snd_wngdng1,snd_wngdng2,snd_wngdng3,snd_wngdng4,snd_wngdng5,snd_wngdng6,snd_wngdng7];
sndMtt = [snd_mtt1,snd_mtt2,snd_mtt3,snd_mtt4,snd_mtt5,snd_mtt6,snd_mtt7,snd_mtt8,snd_mtt9];
