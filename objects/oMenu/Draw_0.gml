
for ( var _o = 0; _o < op_max; _o++ ){
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_set_font(fntDeterm);
	if (option_num == _o)
		draw_set_color(c_yellow);
	else
		draw_set_color(c_white);
	t_x = 106 + 106 * _o;
	t_y = 140;
	if ( _o = 1 )
		t_y = 100;
	draw_text(t_x,t_y,option[_o])
}

if (sound_op_selected == true ){
	draw_sprite_ext(sOptions,0,112,64,22.33333,13.44444,0,c_white,1);
	for ( var _so = 0; _so < sound_op_max; _so++ ){
		if (sound_op_num == _so)
			draw_set_color(c_yellow);
		else
			draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text(sound_op_x+ 15,sound_op_y + 7.5 + 15 * _so,sound_op[_so]);
		draw_set_halign(fa_right);
		draw_text(sound_op_x+ 154,sound_op_y + 7.5 + 15 * _so,gain[_so]);
	}
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(sound_op_x + 84.5, sound_op_y + 37.5,"---Instructions---");
	draw_set_halign(fa_left);
	draw_text(inst_x + 10, sound_op_y + 52.5,"[Z or Enter] - Confirm");
	draw_text(inst_x + 10, sound_op_y + 67.5,"[F4] - Fullscreen");
	draw_text(inst_x + 10, sound_op_y + 82.5,"[Hold ESC] - Quit");
	draw_set_halign(fa_center);
	draw_text(sound_op_x + 88, sound_op_y + 97.5,"When hp is 0, you lose.");
}

draw_set_halign(fa_left);
var _cr_x = 4;
var _cr_y = 228;
draw_set_color(c_dkgrey);
draw_text_transformed(_cr_x, _cr_y,"Art by",0.5,0.5,0);
draw_text_transformed(_cr_x + 71, _cr_y,"and",0.5,0.5,0);
draw_text_transformed(_cr_x + 177 , _cr_y,"Code by",0.5,0.5,0);
draw_text_transformed(_cr_x + 326 , _cr_y,"Music by",0.5,0.5,0);


draw_set_color(#1DA1F2);

draw_text_transformed(_cr_x + 28, _cr_y,"@CornMayor",0.5,0.5,0);
draw_text_transformed(_cr_x + 87, _cr_y,"@Sunbeez",0.5,0.5,0);
draw_text_transformed(_cr_x + 209 , _cr_y,"@Zver_Dev",0.5,0.5,0);
draw_text_transformed(_cr_x + 362 , _cr_y,"@IlayBoterVA",0.5,0.5,0);





