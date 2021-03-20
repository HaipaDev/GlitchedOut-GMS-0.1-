/// @description  Timer 0 Full
medkit_reset = htme_globalGet("medkit_reset")
//if(htme_isServer()){
if(timer0>0)timer0-=1;
if(timer0==1)audio_play_sound(snd_healthPack_set, 4, false);
//}

if(medkit_reset==1){
	timer0=900;
	medkit_reset=2;
	htme_globalSet("medkit_reset",2,buffer_u8);
}
/// SyncIn
/*mp_map_syncIn("timer0",self.timer0);
mp_map_syncIn("hp_power",self.hp_power);