if( scene < 6 && scene > 0)
	draw_sprite(credits[scene],0,x_s,y_s);
else
	draw_sprite_ext(credits[scene],0,x_s,y_s,1,1,0,c_black,1);

if( scene != 6 )
	scene_wait--;
if(	scene_wait <= 0 )
	next_scene = true;
	

