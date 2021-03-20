/// @description  Get percentage of loading & Play music
loadprogress = audio_group_load_progress(audiogroup_music);

if (loadprogress = 100) {
    room_goto(rm_menu);
    audio_play_sound(snd_music_bm, 100, true);
}

