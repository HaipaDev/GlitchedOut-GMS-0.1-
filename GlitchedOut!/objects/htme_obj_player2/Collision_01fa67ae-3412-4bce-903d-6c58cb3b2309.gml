/// @description  Damage
dmg = random_range(2, 5);
with(other){
    random_teleport();
    hp -= htme_obj_player2.dmg;
    //if (black_hole_active) hp -= 2;
    
    // Damage effects
    create_01(x, y);
    add_screenshake(6, room_speed*.130);
    audio_play_sound(snd_glitch, 1, false);
    
    // Reset regen perk
    timer0 = room_speed*3.5;
}
// Randomize
randomize();

