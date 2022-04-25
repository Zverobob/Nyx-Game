randomize();

fs = false;
//audio_play_sound(musIlayBoterBGM, 0,1);
instance_create_layer(0, 0, layer, oDepth);

gasterangry = false;
Jakei = false;
gain_m = 0;
gain_s = 0;
alpha = 0;
global.lang = "LC_ENG";

ds_stack_diag = ds_grid_create(1,20);
//1Sofa 2Jakei 3Strelok 4Toilet 5birb 6tori 
//7xgast 8xalpy 9pc 10xpaps 11cross 12ink
//13geno 14asgore 15xmtt 16und
for (var _i = 0; _i < 17; _i++)
	ds_grid_add(ds_stack_diag, 0, _i, 0);

