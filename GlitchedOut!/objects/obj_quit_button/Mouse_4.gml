/// @description  Shutdown effect
with(instance_create(0,0,obj_shutdown_shader)) obj_shutdown_shader.active = true;
alarm[0]=room_speed*1.85;