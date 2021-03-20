/// @description  Damage
hp -= other.dmg*prot_mult;
create_01(x, y);
random_teleport_short();
add_screenshake(3, room_speed*.115);
audio_play_sound(snd_splithit, 1, false);
with(other)instance_destroy();

// Reset regen perk
alarm[0] = room_speed*regen_delay;
alarm[5]=room_speed*assist_timer;