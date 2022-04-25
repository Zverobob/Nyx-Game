//Grid resize
var _grd = ds_depth_grid;
var _inst_num = instance_number(oPar_Depth);
ds_grid_resize(_grd,3,_inst_num);

//Add to grid
var _yy = 0;
with(oPar_Depth){ 
	_grd[# 0, _yy] = id;
	_grd[# 1, _yy] = y;
	//_grd[# 2, _yy] = _grd[# 1, _yy] + _grd[# 0, _yy];
	_yy++;
}
//depth sort
ds_grid_sort(_grd,1,true);
var _bb = 0;
repeat (_inst_num){
	var _instID = _grd[# 0, _bb];
	with(_instID){
		event_perform(ev_draw, 0);
	}
	_bb++;
}

