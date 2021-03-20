/// @description  starting_perks();
/// @function  starting_perks
if(perkS1==1 or perkS2==1) {
    vspd = 2.55;
    hspd = 2.7;
    rotation_power = 13;
    hp = 106;
    maxhp = 106;
} if(perkS1==2 or perkS2==2) {
    alarm[0] = room_speed*regen_delayS*2;
} if(perkS1==3 or perkS2==3) {
    alarm[1] = room_speed*5.8;
} if(perkS1==4 or perkS2==4) {
    alarm[2] = room_speed*random_range(6, 8);
} if(obj_player1.perkS1==5 or obj_player1.perkS2==5) {
    if(!instance_exists(obj_shieldP1))instance_create(-1000, -1000, obj_shieldP1);
    with(obj_shieldP1)alarm[0] = room_speed*obj_player1.bubble_time;
} if(obj_player2.perkS1==5 or obj_player2.perkS2==5) {
    if(!instance_exists(obj_shieldP2))instance_create(-1000, -1000, obj_shieldP2);
    with(obj_shieldP2)alarm[0] = room_speed*obj_player2.bubble_time;
} if(obj_player1.perkS1==6 or obj_player1.perkS2==6) {
    if(!instance_exists(obj_illusion_P1)){
        with(obj_player1) create_smoke_big(x, y);
		repeat(4){
			xx=x+choose(random_range(-30,-50),random_range(30,50));
			yy=y+choose(random_range(-30,-50),random_range(30,50));
			instance_create(obj_player1.xx, obj_player1.yy, obj_illusion_P1);
		}
        audio_play_sound(snd_illusion, 4, false);
    }
} if(obj_player2.perkS1==6 or obj_player2.perkS2==6) {
	if(!instance_exists(obj_illusion_P2)){
	    with(obj_player2)create_smoke_big(x, y);
		repeat(4){
			xx=x+choose(random_range(-30,-50),random_range(30,50));
			yy=y+choose(random_range(-30,-50),random_range(30,50));
			instance_create(obj_player2.xx, obj_player2.yy, obj_illusion_P2);
		}
	    audio_play_sound(snd_illusion, 4, false);
	}
}
