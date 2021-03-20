/// @description  Always set sounds gain to that of global.sound & music gain to global.music
audio_group_set_gain(audiogroup_sounds, global.sound, 0);
audio_group_set_gain(audiogroup_music, global.music, 0);
if(instance_exists(htme_obj_player1) and instance_exists(htme_obj_player2)) {
    if(htme_obj_player1.hp<=25 or htme_obj_player2.hp<=25) {
        audio_sound_pitch(snd_music_bm, 1.26);
    }
    else if(htme_obj_player1.hp>25 or htme_obj_player2.hp>25) {
        audio_sound_pitch(snd_music_bm, 1);
    }
}
if(instance_exists(obj_player1) and instance_exists(obj_player2)) {
    if(obj_player1.hp<=25 or obj_player2.hp<=25) {
        audio_sound_pitch(snd_music_bm, 1.26);
    }
    else if(obj_player1.hp>25 or obj_player2.hp>25) {
        audio_sound_pitch(snd_music_bm, 1);
    }
}

