/// @description  Damage
hp -= other.dmg*prot_mult;
create_01(x, y);
add_screenshake(2, room_speed*.112);
audio_play_sound(snd_saw, 1, false);

// Reset regen perk
alarm[0] = room_speed*regen_delayS;