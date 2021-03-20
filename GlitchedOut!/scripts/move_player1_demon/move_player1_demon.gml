/// @description  move_player1_demon();
/// @function  move_player1_demon
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

if(key_up and !key_left and !key_right) {
    image_angle -= rotation_power;
    vspeed -= vspd;
    audio_play_sound(snd_spin, 0, false);
} else if(key_down and !key_left and !key_right) {
    image_angle += rotation_power;
    vspeed += vspd;
    audio_play_sound(snd_spin, 0, false);
}

if(key_left) {
    image_angle -= rotation_power;
    hspeed -= hspd;
    if(key_up) vspeed -= vspd;
    if(key_down) vspeed += vspd;
    audio_play_sound(snd_spin, 0, false);
} else if(key_right) {
    image_angle += rotation_power;
    hspeed += hspd;
    if(key_up) vspeed -= vspd;
    if(key_down) vspeed += vspd;
    audio_play_sound(snd_spin, 0, false);
}
