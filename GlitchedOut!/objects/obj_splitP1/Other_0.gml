/// @description  Destroy
audio_play_sound(snd_splithit, 1, false);
add_screenshake(3, room_speed*.115);
instance_destroy();
with(obj_player1){
    hp-=1;
    alarm[0] = room_speed*regen_delayS;
}

