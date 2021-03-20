/// @description  htme_starting_perks();
/// @function  htme_starting_perks
if(perkS1==1 or perkS2==1) {
    vspd = 2.55;
    hspd = 2.7;
    rotation_power = 13;
    hp = 115;
    maxhp = 115;
} if(perkS1==2 or perkS2==2) {
    alarm[0] = 60*6;
} if(perkS1==3 or perkS2==3) {
    alarm[1] = 60*5.8;
} if(perkS1==4 or perkS2==4) {
    alarm[2] = 60*random_range(6, 8);
} if(htme_obj_player1.perkS1==5 or htme_obj_player1.perkS2==5) {
    if(!instance_exists(htme_obj_shieldP1))instance_create(-1000, -1000, htme_obj_shieldP1);
    with(htme_obj_shieldP1)alarm[0] = room_speed*6.5;
} if(htme_obj_player2.perkS1==5 or htme_obj_player2.perkS2==5) {
    if(!instance_exists(htme_obj_shieldP2))instance_create(-1000, -1000, htme_obj_shieldP2);
    with(htme_obj_shieldP2)alarm[0] = room_speed*6.5;
} if(htme_obj_player1.perkS1==6 or htme_obj_player1.perkS2==6) {
    if(!instance_exists(htme_obj_illusion_P1)){
        with(htme_obj_player1) create_smoke_big(x, y);
        instance_create(htme_obj_player1.x+random_range(30,50), htme_obj_player1.y+random_range(30,50), htme_obj_illusion_P1);
        instance_create(htme_obj_player1.x+random_range(-30,-50), htme_obj_player1.y+random_range(30,50), htme_obj_illusion_P1);
        instance_create(htme_obj_player1.x+random_range(30,50), htme_obj_player1.y+random_range(-30,-50), htme_obj_illusion_P1);
        instance_create(htme_obj_player1.x+random_range(-30,-50), htme_obj_player1.y+random_range(-30,-50), htme_obj_illusion_P1);
        audio_play_sound(snd_illusion, 4, false);
    }
} if(htme_obj_player2.perkS1==6 or htme_obj_player2.perkS2==6) {
    if(!instance_exists(htme_obj_illusion_P2)){
        with(htme_obj_player2) create_smoke_big(x, y);
        instance_create(htme_obj_player2.x+random_range(30,50), htme_obj_player2.y+random_range(30,50), htme_obj_illusion_P2);
        instance_create(htme_obj_player2.x+random_range(-30,-50), htme_obj_player2.y+random_range(30,50), htme_obj_illusion_P2);
        instance_create(htme_obj_player2.x+random_range(30,50), htme_obj_player2.y+random_range(-30,-50), htme_obj_illusion_P2);
        instance_create(htme_obj_player2.x+random_range(-30,-50), htme_obj_player2.y+random_range(-30,-50), htme_obj_illusion_P2);
        audio_play_sound(snd_illusion, 4, false);
    }
}
