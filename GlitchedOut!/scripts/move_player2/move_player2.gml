/// @description  move_player2();
/// @function  move_player2
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

if(key_up and !key_left and !key_right) {
    image_angle -= rotation_power;
    y -= vspd;
    audio_play_sound(snd_spin, 0, false);
} else if(key_down and !key_left and !key_right) {
    image_angle += rotation_power;
    y += vspd;
    audio_play_sound(snd_spin, 0, false);
}

if(key_left) {
    image_angle -= rotation_power;
    x -= hspd;
    if(key_up) y -= vspd;
    if(key_down) y += vspd;
    audio_play_sound(snd_spin, 0, false);
} else if(key_right) {
    image_angle += rotation_power;
    x += hspd;
    if(key_up) y -= vspd;
    if(key_down) y += vspd;
    audio_play_sound(snd_spin, 0, false);
}
