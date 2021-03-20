/// @description  Get back perk slots
if(instance_exists(obj_player1_perk1)) {
	obj_player1_perk1.x = __view_get( e__VW.WView, 0 )/2.3;
	obj_player1_perk2.x = __view_get( e__VW.WView, 0 )/1.9;
	obj_player2_perk1.x = __view_get( e__VW.WView, 0 )/2.3;
	obj_player2_perk2.x = __view_get( e__VW.WView, 0 )/1.9;
} else if(instance_exists(htme_obj_player1_perk1) or instance_exists(htme_obj_player2_perk1)) {
	if(instance_exists(htme_obj_player1_perk1)){
		htme_obj_player1_perk1.x = __view_get( e__VW.WView, 0 )/2.3;
		htme_obj_player1_perk2.x = __view_get( e__VW.WView, 0 )/1.9;
	}
	if(instance_exists(htme_obj_player2_perk1)){
		htme_obj_player2_perk1.x = __view_get( e__VW.WView, 0 )/2.3;
		htme_obj_player2_perk2.x = __view_get( e__VW.WView, 0 )/1.9;
	}
	htme_obj_start_button.x = __view_get( e__VW.WView, 0 )/2.1;
}