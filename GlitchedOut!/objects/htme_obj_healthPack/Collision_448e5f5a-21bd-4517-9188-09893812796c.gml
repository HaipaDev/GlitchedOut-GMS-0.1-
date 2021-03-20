/// @description  Heal
if(timer0==0){
if(other.hp<other.maxhp) {
        other.hp+=hp_power;
        audio_play_sound(snd_healthPack_collect, 5, false);
		medkit_reset=1;
		htme_globalSet("medkit_reset",1,buffer_u8);
    }
}