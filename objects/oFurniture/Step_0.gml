if (ds_id != -1)
	text_num = ds_grid_get(oGame.ds_stack_diag, 0, ds_id);
var _t_id = text_id[text_num];

if(instance_place(x,y,oNyx) && keyboard_check_released(ord("Z")) && deactivated == false){
	oNyx.Input_lock = true;
	oNyx.in_magnitude = 0;
	deactivated = true;
	create_textbox(_t_id);
}
if(!instance_exists(oTextBox) && deactivated == true && timer == -1){
	timer = 15;
	if(loop == true) looper++;
	if(text_num+1 < text_max){
		text_num++;
		if(text_num >= 1){
			ds_grid_set(oGame.ds_stack_diag,0,ds_id,text_num);
		}
	}
	oNyx.Input_lock = false;
}
if(timer != -1){
	timer--;
	if(timer <= 0)
		deactivated = false;
}
if(loop == true && looper == text_max){
	text_num = loop_start;
	looper = 0;
}

