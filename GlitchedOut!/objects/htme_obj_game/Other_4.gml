/// @description  Place start HUD
//timer2 = 10;
if(room==htme_rm_game){
	if(!instance_exists(htme_obj_start_hud)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2, htme_obj_start_hud);
}
if(room==htme_rm_lobbygm){
	if(!instance_exists(htme_obj_startlb_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.68, htme_obj_startlb_button);
}