/// @description  Change value
instance_activate_object(obj_timer_minutes);
with(obj_timer_minutes){
switch(minutes) {
		case 1: {
            minutes = 2;
            instance_deactivate_object(obj_timer_minutes);
            exit;
        }
        case 2: {
            minutes = 3;
            instance_deactivate_object(obj_timer_minutes);
            exit;
        } case 3: {
            minutes = 4;
            instance_deactivate_object(obj_timer_minutes);
            exit;
        } case 4: {
            minutes = 5;
            instance_deactivate_object(obj_timer_minutes);
            exit;
        }
    }
}

