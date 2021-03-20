/// @description  Synchronize with engine
/*if (!htme_isServer()) {
   instance_destroy();
   exit;
}*/
//mp_sync();

//mp_add("healthpack", "timer0", buffer_u16, 1);
//mp_add("healthpack", "hp_power", buffer_u8, room_speed);
//mp_setType("healthpack",mp_type.SMART);

/*mp_addBuiltinBasic("basicDrawing",1);
mp_setType("basicDrawing",mp_type.FAST);*/

/// Properties
timer0 = 0;
maxtime = 900;
hp_power = 24;
medkit_reset = 0;
image_alpha = .9;