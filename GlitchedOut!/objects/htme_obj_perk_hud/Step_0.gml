/// @description  Show perks and deactivate
instance_deactivate_object(htme_obj_menu_button);
instance_deactivate_object(htme_obj_player1_rArrow);
instance_deactivate_object(htme_obj_player1_lArrow);
instance_deactivate_object(htme_obj_player2_rArrow);
instance_deactivate_object(htme_obj_player2_lArrow);

if(image_index > 5.8) {
    image_speed = 0;
    if(!instance_exists(htme_obj_perk0)) instance_create(__view_get( e__VW.WView, 0 )/4.89, __view_get( e__VW.HView, 0 )/2.61, htme_obj_perk0);
    if(!instance_exists(htme_obj_perk1)) instance_create(__view_get( e__VW.WView, 0 )/2.94, __view_get( e__VW.HView, 0 )/2.61, htme_obj_perk1);
    if(!instance_exists(htme_obj_perk2)) instance_create(__view_get( e__VW.WView, 0 )/2.11, __view_get( e__VW.HView, 0 )/2.61, htme_obj_perk2);
    if(!instance_exists(htme_obj_perk3)) instance_create(__view_get( e__VW.WView, 0 )/1.65, __view_get( e__VW.HView, 0 )/2.61, htme_obj_perk3);
    if(!instance_exists(htme_obj_perk4)) instance_create(__view_get( e__VW.WView, 0 )/1.36, __view_get( e__VW.HView, 0 )/2.61, htme_obj_perk4);
    if(!instance_exists(htme_obj_perk5)) instance_create(__view_get( e__VW.WView, 0 )/4.89, __view_get( e__VW.HView, 0 )/1.9, htme_obj_perk5);
    if(!instance_exists(htme_obj_perk6)) instance_create(__view_get( e__VW.WView, 0 )/2.94, __view_get( e__VW.HView, 0 )/1.9, htme_obj_perk6);
    if(!instance_exists(htme_obj_perk7)) instance_create(__view_get( e__VW.WView, 0 )/2.11, __view_get( e__VW.HView, 0 )/1.9, htme_obj_perk7);
    //if(!instance_exists(htme_obj_perk8)) instance_create(__view_get( e__VW.WView, 0 )/1.65, __view_get( e__VW.HView, 0 )/1.9, htme_obj_perk8);
    //if(!instance_exists(htme_obj_perk9)) instance_create(view_wview[0]/1.36, view_hview[0]/1.9, obj_perk9);
    if(!instance_exists(htme_obj_closePerks_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.42, htme_obj_closePerks_button);
}