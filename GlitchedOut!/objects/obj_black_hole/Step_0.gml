/// @description  Stop animation
if(instance_exists(obj_event_manager)){
    if(image_index > 3.8 and image_index < 4.2 and obj_event_manager.black_hole==true) {
        image_speed = 0;
        image_angle+=1;
    }
}

if(instance_exists(obj_event_manager)){
    if(obj_event_manager.black_hole==false) {
       instance_destroy();
    }
}