/// @description  Heal
if(full==true){
    if(other.hp<other.maxhp) {
        other.hp+=hp_power;
        audio_play_sound(snd_healthPack_collect, 5, false);
        alarm[0] = maxtime;
        full = false;
    }
}

