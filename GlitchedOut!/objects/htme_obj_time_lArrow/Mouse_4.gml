/// @description  Change value
instance_activate_object(htme_obj_timer_minutes);
with(htme_obj_timer_minutes){
switch(minutes) {
        case 3: {
            minutes = 2;
            instance_deactivate_object(htme_obj_timer_minutes);
            exit;
        } case 4: {
            minutes = 3;
            instance_deactivate_object(htme_obj_timer_minutes);
            exit;
        } case 5: {
            minutes = 4;
            instance_deactivate_object(htme_obj_timer_minutes);
            exit;
        }
    }
}

