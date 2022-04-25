if(ULTRA_SWEEP < 10 && timer >= 100 && image_speed != 50 ){
	image_speed = 50;
	ULTRA_SWEEP = 20;
	timer = 0;
	no_sweep = 120;
}
timer += timer < 100 ? 1 : 0;
if(timer >= 100 && image_speed == 50){
	image_speed = 1;
}
if(no_sweep <= 0){
	ULTRA_SWEEP = irandom(100);
	no_sweep = 120;
}
else
	no_sweep--;
