/// @description  Destroy
audio_play_sound(snd_splithit, 1, false);
add_screenshake(3, room_speed*.115);
instance_destroy();
with(htme_obj_player1){
    hp-=1;
    timer0 = 180;
}