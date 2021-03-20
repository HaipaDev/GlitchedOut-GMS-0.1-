/// @description Go to game
//if(htme_isLocal){
	instance_destroy(htme_obj_lobby_hud);
	instance_destroy(htme_obj_backlb_button);
	instance_destroy(htme_obj_startlb_button);
	instance_destroy(htme_obj_ready1_mark);
	instance_destroy(htme_obj_ready2_mark);
	room_goto(htme_rm_game);
//}