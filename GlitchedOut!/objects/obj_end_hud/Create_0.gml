/// @description  Properties
image_xscale=4;
image_yscale=image_xscale;
image_speed=.2;
image_alpha=.5;

instance_deactivate_object(obj_saw);
instance_deactivate_object(obj_laser_emitterR);
instance_deactivate_object(obj_laser_emitterL);
instance_deactivate_object(obj_healthPack);
instance_deactivate_object(obj_event_manager);
instance_deactivate_object(obj_timer_minutes);
instance_deactivate_object(obj_illusion_P1);
instance_deactivate_object(obj_illusion_P2);
with(obj_player1){
    alarm[0]=-1;alarm[1]=-1;alarm[2]=-1;alarm[3]=-1;alarm[4]=-1;
}
with(obj_player2){
    alarm[0]=-1;alarm[1]=-1;alarm[2]=-1;alarm[3]=-1;alarm[4]=-1;
}
with(obj_player1) state=idle_player();
with(obj_player2) state=idle_player();

if(instance_exists(obj_player1) and instance_exists(obj_player2)){
if(obj_player1.points > obj_player2.points) {
	with(obj_player1)instance_create(x,y,obj_victory_pt);
	audio_play_sound(snd_victory,3,false);
}
else if(obj_player2.points > obj_player1.points) {
	with(obj_player2)instance_create(x,y,obj_victory_pt);
	audio_play_sound(snd_victory,3,false);
}
}