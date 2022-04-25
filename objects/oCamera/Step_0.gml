
	if(instance_exists(follow)){
		xTo = follow.x;
		yTo = follow.y;
	}
	x += (xTo - x);
	y += (yTo - y);

	//centering
	x = clamp(x, viewWidthHf, room_width - viewWidthHf);
	y = clamp(y, viewHeightHf, room_height - viewHeightHf);

	camera_set_view_pos(cam,x - viewWidthHf,y - viewHeightHf);
