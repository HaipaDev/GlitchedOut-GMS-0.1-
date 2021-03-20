/// @description  Synchronize with engine
mp_sync();

mp_add("blackhole","image_index",buffer_u8,1);
mp_add("blackhole","image_angle",buffer_u16,1);
mp_setType("blackhole",mp_type.SMART);

/// Properties
image_speed = .2;
image_xscale = 2;
image_yscale = image_xscale;

