/// @description  Synchronize with engine
mp_sync();

/// Properties
depth = -1000;
image_xscale = 6;
image_yscale = image_xscale;
image_speed = .2;
image_index = 5.8;
with(htme_obj_player1){
	x=5000;
    y=5000;
}
with(htme_obj_player2){
	x=-5000;
    y=-5000;
}

with(htme_obj_laser_emitterR)shoot=false;
with(htme_obj_laser_emitterL)shoot=false;
instance_deactivate_object(obj_saw);
/*instance_deactivate_object(htme_obj_laser_emitterR);
instance_deactivate_object(htme_obj_laser_emitterL);
instance_deactivate_object(htme_obj_laserR);
instance_deactivate_object(htme_obj_laserL);
instance_deactivate_object(htme_obj_event_manager);
instance_deactivate_object(htme_obj_healthPack);
instance_deactivate_object(htme_obj_timer_minutes);