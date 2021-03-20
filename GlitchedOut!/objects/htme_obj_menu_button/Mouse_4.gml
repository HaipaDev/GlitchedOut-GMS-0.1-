/// @description  Go to menu
if(htme_isServer())htme_globalSet("ready1",false,buffer_bool);
else if(!htme_isServer())htme_globalSet("ready2",false,buffer_bool);
room_goto(rm_menu);
audio_sound_pitch(snd_music_bm, 1);