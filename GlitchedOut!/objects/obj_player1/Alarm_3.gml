/// @description  Recreate Illusion
if(!instance_exists(obj_illusion_P1)){
	create_smoke_big(x, y);
	repeat(4){
		xx=x+choose(random_range(-30,-50),random_range(30,50));
		yy=y+choose(random_range(-30,-50),random_range(30,50));
		instance_create(obj_player1.xx, obj_player1.yy, obj_illusion_P1);
	}
	audio_play_sound(snd_illusion, 4, false);
}