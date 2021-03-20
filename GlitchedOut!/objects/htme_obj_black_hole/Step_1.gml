/// @description  Step events & SyncIn
if(instance_exists(htme_obj_event_manager)){
    if(image_index > 3.8 and image_index < 4.2 and htme_obj_event_manager.black_hole==true) {
        image_speed = 0;
        image_angle+=1;
    }
}

if(instance_exists(htme_obj_event_manager)){
    if(htme_obj_event_manager.black_hole==false) {
       instance_destroy();
    }
}

// SyncIn
mp_map_syncIn("image_index",self.image_index);
mp_map_syncIn("image_alpha",self.image_alpha);

