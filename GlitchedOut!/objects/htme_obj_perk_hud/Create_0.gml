/// @description  Properties
image_xscale = 7;
image_yscale = 5.5;
image_speed = .2;
depth = -1002;
global.perkS1player1 = -1;
global.perkS2player1 = -1;
global.perkS1player2 = -1;
global.perkS2player2 = -1;
if(htme_isServer()){
	htme_obj_player1_perk1.x = -1000;
	htme_obj_player1_perk2.x = -1000;
} else if(!htme_isServer()){
	htme_obj_player2_perk1.x = -1000;
	htme_obj_player2_perk2.x = -1000;
}
htme_obj_start_button.x = -2000;