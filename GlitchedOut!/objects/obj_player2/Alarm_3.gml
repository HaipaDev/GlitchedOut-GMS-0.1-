/// @description  Recreate Illusion
if(!instance_exists(obj_illusion_P2)){
	create_smoke_big(x, y);
	repeat(3){
		xx=x+choose(random_range(-30,-50),random_range(30,50));
		yy=y+choose(random_range(-30,-50),random_range(30,50));
		instance_create(obj_player2.xx, obj_player2.yy, obj_illusion_P2);
	}
	audio_play_sound(snd_illusion, 4, false);
}