/// @description  Pause-objects
if(room==rm_game){
	if(image_index > 5.8) {
	    image_speed = 0;
	    if(!instance_exists(obj_resume_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.87, obj_resume_button);
	    if(!instance_exists(obj_restart_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.68, obj_restart_button);
	    if(!instance_exists(obj_menu_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.56, obj_menu_button);
	}
}
if(room==htme_rm_game){
	if(image_index > 5.8) {
	    image_speed = 0;
	    if(!instance_exists(obj_resume_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.87, obj_resume_button);
	    //if(!instance_exists(obj_restart_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.68, obj_restart_button);
	    if(!instance_exists(htme_obj_disconnect_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.56, htme_obj_disconnect_button);
	}
}