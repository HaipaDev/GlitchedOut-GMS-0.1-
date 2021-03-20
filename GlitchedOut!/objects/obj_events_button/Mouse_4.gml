/// @description  Change global.events
instance_activate_object(obj_event_manager);
switch(global.events){
    case 0: {
        global.events = 1;
        str_text = "ON";
        instance_deactivate_object(obj_event_manager);
        exit;
    } case 1: {
        global.events = 0;
        str_text = "OFF";
        instance_deactivate_object(obj_event_manager);
        exit;
    }
}

