/// @description Get skin
skinP1 = htme_globalGet("skinP1");
skinP2 = htme_globalGet("skinP2");

if(instance_exists(htme_obj_player2)){
	if(skinP1==1){
		htme_obj_player1.sprite_index=spr_player1;	
	} else if(skinP1==2){
		htme_obj_player1.sprite_index=spr_player2;	
	} else if(skinP1==3){
		htme_obj_player1.sprite_index=spr_player3;	
	} else if(skinP1==4){
		htme_obj_player1.sprite_index=spr_player4;	
	} else if(skinP1==5){
		htme_obj_player1.sprite_index=spr_player5;	
	} else if(skinP1==6){
		htme_obj_player1.sprite_index=spr_player6;	
	} else if(skinP1==7){
		htme_obj_player1.sprite_index=spr_player7;	
	}
}


if(instance_exists(htme_obj_player2)){
	if(skinP2==1){
		htme_obj_player2.sprite_index=spr_player1;	
	} else if(skinP2==2){
		htme_obj_player2.sprite_index=spr_player2;	
	} else if(skinP2==3){
		htme_obj_player2.sprite_index=spr_player3;	
	} else if(skinP2==4){
		htme_obj_player2.sprite_index=spr_player4;	
	} else if(skinP2==5){
		htme_obj_player2.sprite_index=spr_player5;	
	} else if(skinP2==6){
		htme_obj_player2.sprite_index=spr_player6;	
	} else if(skinP2==7){
		htme_obj_player2.sprite_index=spr_player7;	
	}
}