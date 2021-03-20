/// @description Regen perk
if(perkS1==2 or perkS2==2) {
    if(hp<maxhp){
        if(dead==false){
            hp+=1;
            audio_play_sound(snd_heal, 0, false);
        }
    }
    alarm[0] = room_speed*.68;
}