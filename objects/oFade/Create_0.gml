duration = 0;
color = c_black;
target_room = -1;
target_x = 1;
target_y = 1;
out_direction = -1;

timer = 0;
alpha = 0;
state = 0;

if(instance_exists(oNyx)){
	oNyx.Input_lock = true;
	oNyx.in_magnitude = 0;
}

