/// @description  Go to menu
htme_globalSet("stopserver",true,buffer_bool);
if(htme_isServer())htme_globalSet("readyst1",false,buffer_bool);
else if(!htme_isServer())htme_globalSet("readyst2",false,buffer_bool);
room_goto(rm_menu);
//htme_serverShutdown();
audio_sound_pitch(snd_music_bm, 1);

