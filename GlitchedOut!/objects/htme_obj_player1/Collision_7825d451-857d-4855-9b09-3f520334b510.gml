/// @description  Damage
if(dead==false){
    hp -= other.dmg;
    create_01(x, y);
    random_teleport_short();
    add_screenshake(3, room_speed*.115);
    audio_play_sound(snd_splithit, 1, false);
    with(other)instance_destroy();
    
    // Reset regen perk
    alarm[0] = room_speed*3.5;
    
    // Randomize
    randomize();
}

