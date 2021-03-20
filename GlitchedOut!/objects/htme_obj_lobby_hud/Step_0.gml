/// @description  Lobby HUD
if(image_index > 5.8) {
    image_speed = 0;
    //if(!instance_exists(obj_start_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.87, obj_start_button);
    if(!instance_exists(htme_obj_startlb_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.68, htme_obj_startlb_button);
    if(!instance_exists(htme_obj_backlb_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.56, htme_obj_backlb_button);
}

