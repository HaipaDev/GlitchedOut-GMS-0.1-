/// @description  Damage
hp -= other.dmg*prot_mult;
create_01(x, y);
random_teleport_short();
add_screenshake(5, room_speed*.125);
audio_play_sound(snd_laserhit, 1, false);
with(other)instance_destroy();

// Reset regen perk
alarm[0] = room_speed*regen_delay;