var _gH = display_get_gui_height();
var _gw = display_get_gui_width();
if(keyboard_check(vk_escape)){
	alpha += 2 / 100;
	alpha = clamp(alpha,0,1);
}
else
	alpha = 0;
		
if(alpha == 1)
	game_end();
draw_set_alpha(alpha);
draw_set_color(c_black);

draw_rectangle(0,0,_gw,_gH,0);

draw_set_alpha(1);
draw_set_color(c_white);

