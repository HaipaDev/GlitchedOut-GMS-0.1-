/// @description  Stop animation
if(image_index > 5.8) {
    image_speed = 0;
    if(!instance_exists(obj_death_text)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/2.22, obj_death_text);
    if(!instance_exists(obj_rematchSS_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.85, obj_rematchSS_button);
    if(!instance_exists(obj_menu_button)) instance_create(__view_get( e__VW.WView, 0 )/2.1, __view_get( e__VW.HView, 0 )/1.63, obj_menu_button);
}

