/// @description  Synchronize with engine
/*if (!htme_isServer()) {
   instance_destroy();
   exit;
}
mp_sync();

mp_add("time","time",buffer_u8,room_speed);
//mp_add("time","seconds",buffer_u8,room_speed);
//mp_add("time","minutes",buffer_u8,room_speed);
mp_setType("time",mp_type.SMART);

/*mp_addBuiltinBasic("basicDrawing",1);
mp_setType("basicDrawing",mp_type.FAST);*/
/// Set Start Time
depth = -1100;
self.seconds = 05; //Set The Starting Seconds
self.minutes = 0; //Set The Starting minutes
self.time = room_speed;//Set time for one second (room_speed)
delete="false";

/* */
/*  */
