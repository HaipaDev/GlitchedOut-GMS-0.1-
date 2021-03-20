/// @description  Regenerate
if(perkS1==2 or perkS2==2) {
    if(hp<maxhp){
        hp+=1;
        audio_play_sound(snd_heal, 0, false);
    }
    alarm[0] = room_speed*regen_intrvl;
}

