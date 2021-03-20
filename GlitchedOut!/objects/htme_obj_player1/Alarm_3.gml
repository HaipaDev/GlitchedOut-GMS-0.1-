/// @description Recreate Illusion
if(!instance_exists(htme_obj_illusion_P1)){
    if(dead==false){
        with(htme_obj_player1) create_smoke_big(x, y);
        audio_play_sound(snd_illusion, 4, false);
        instance_create(htme_obj_player1.x+random_range(30,50), htme_obj_player1.y+random_range(30,50), htme_obj_illusion_P1);
        instance_create(htme_obj_player1.x+random_range(-30,-50), htme_obj_player1.y+random_range(30,50), htme_obj_illusion_P1);
        instance_create(htme_obj_player1.x+random_range(30,50), htme_obj_player1.y+random_range(-30,-50), htme_obj_illusion_P1);
        instance_create(htme_obj_player1.x+random_range(-30,-50), htme_obj_player1.y+random_range(-30,-50), htme_obj_illusion_P1);
    }
}