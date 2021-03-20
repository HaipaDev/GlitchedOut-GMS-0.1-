/// @description Before starting
if(image_index > 5.8) {
    image_speed = 0;
	if(!htme_isServer()){
    if(!instance_exists(htme_obj_player2choose)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2.98, htme_obj_player2choose);
    if(!instance_exists(htme_obj_player2_perk1)) instance_create(__view_get( e__VW.WView, 0 )/2.3, __view_get( e__VW.HView, 0 )/2.52, htme_obj_player2_perk1);
	if(!instance_exists(htme_obj_player2_perk2)) instance_create(__view_get( e__VW.WView, 0 )/1.9, __view_get( e__VW.HView, 0 )/2.52, htme_obj_player2_perk2);
	} else if(htme_isServer()) {
    if(!instance_exists(htme_obj_player1choose)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2.98, htme_obj_player1choose);
    if(!instance_exists(htme_obj_player1_perk1)) instance_create(__view_get( e__VW.WView, 0 )/2.3, __view_get( e__VW.HView, 0 )/2.52, htme_obj_player1_perk1);
    if(!instance_exists(htme_obj_player1_perk2)) instance_create(__view_get( e__VW.WView, 0 )/1.9, __view_get( e__VW.HView, 0 )/2.52, htme_obj_player1_perk2);
	}
	//if(!instance_exists(htme_obj_timechoose_text)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.68, htme_obj_timechoose_text);
    //if(!instance_exists(htme_obj_events_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.55, htme_obj_events_button);
    if(!instance_exists(htme_obj_start_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.44, htme_obj_start_button);
    if(!instance_exists(htme_obj_disconnect_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.34, htme_obj_disconnect_button);
}

