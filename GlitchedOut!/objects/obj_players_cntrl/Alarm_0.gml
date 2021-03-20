/// @description  Respawn Player 1
instance_activate_object(obj_player1);
with(obj_player1){
    x=random(472);
    y=random(592);
	instance_create(x,y,obj_respawn_pt);
	color=c_aqua;
	alpha=0.1;
	image_xscale=0;
	respawning=true;
	audio_stop_sound(snd_death);
	audio_play_sound(snd_respawn,3,false);
    dead=false;
    hp=maxhp;
	defcts=false;
	if(perkS1==5 or perkS2==5)if(!instance_exists(obj_shieldP1))with(instance_create(-1000, -1000, obj_shieldP1))alarm[0]=room_speed*obj_player1.bubble_time;
	if(obj_player1.perkS1==6 or obj_player1.perkS2==6) {
	    if(!instance_exists(obj_illusion_P1)){
	        with(obj_player1)create_smoke_big(x, y);
			repeat(4){
				xx=x+choose(random_range(-30,-50),random_range(30,50));
				yy=y+choose(random_range(-30,-50),random_range(30,50));
				instance_create(obj_player1.xx, obj_player1.yy, obj_illusion_P1);
			}
	        audio_play_sound(snd_illusion, 4, false);
	    }
	}
}