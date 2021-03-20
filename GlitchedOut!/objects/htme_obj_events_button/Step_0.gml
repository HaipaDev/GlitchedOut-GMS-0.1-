/// @description  Get global.events
if(instance_exists(htme_obj_event_manager)) {
    instance_activate_object(htme_obj_event_manager);
        if(global.events==1) str_text = "ON";
        else if(global.events==0) str_text = "OFF";
    instance_deactivate_object(htme_obj_event_manager);
}

