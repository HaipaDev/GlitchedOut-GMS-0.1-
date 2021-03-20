/// @description Unstable Perk
if(dead==false){
    random_teleport();
    hp-=random_range(1, 3);
    add_screenshake(5, room_speed*.120);
    audio_play_sound(snd_glitch, 0, false);
    alarm[1]= room_speed*random_range(4, 8);
    // Reset regen perk
    alarm[0] = room_speed*2;
}