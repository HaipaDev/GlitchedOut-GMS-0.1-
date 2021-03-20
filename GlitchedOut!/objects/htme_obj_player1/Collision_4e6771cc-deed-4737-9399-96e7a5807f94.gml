/// @description  Damage
if(dead==false){
    self.hp -= other.dmg;
    //create_01(x, y);
    add_screenshake(3, room_speed*.115);
    audio_play_sound(snd_saw, 1, false);
    
    // Reset regen perk
    alarm[0] = room_speed*3.5;
}

