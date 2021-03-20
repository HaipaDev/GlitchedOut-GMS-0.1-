/// @description  death();
/// @function  death
hp = 0;
if(defcts==false){
audio_play_sound(snd_death, 2, false);
instance_create(0,0,obj_glitch_overlay);
repeat(4){instance_create(x,y,obj_glexplosion);}
defcts=true;}
//with(instance_create(x,y, obj_glitch_overlay)){image_xscale=random_range(.14,.29);image_yscale=random_range(.14,.29);image_angle=random_range(10,350);}

with(obj_player1){
    if(dead == true) {
		//state=idle_player();
        instance_deactivate_object(self);
        with(obj_players_cntrl){alarm[0] = room_speed*respawn_time;}
    }
}
with(obj_player2){
    if(dead == true) {
		//state=idle_player();
        instance_deactivate_object(self);
        with(obj_players_cntrl){alarm[1] = room_speed*respawn_time;}
    }
}


/*with(htme_obj_player1){
    if(dead == true) {
        x=-5000;
        y=-5000;
        htme_obj_game.timer0 = 140;
    }
}
with(htme_obj_player2){
    if(dead == true) {
        x=5000;
        y=5000;
        htme_obj_game.timer1 = 140;
    }
}