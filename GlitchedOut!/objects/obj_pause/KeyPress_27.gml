/// @description  Activate back
if(room==rm_game){
	surface_free(pause_surf);
	with(obj_pause_hud)instance_destroy();
	with(obj_resume_button)instance_destroy();
	with(obj_restart_button)instance_destroy();
	with(obj_menu_button)instance_destroy();
	__background_set( e__BG.VSpeed, 0, 2 );
	instance_create(0, -16, obj_pause_controller);
	instance_activate_all();
	instance_destroy();
}

if(room==htme_rm_game){
	with(obj_pause_hud)instance_destroy();
	with(obj_resume_button)instance_destroy();
	with(obj_restart_button)instance_destroy();
	with(htme_obj_disconnect_button)instance_destroy();
	instance_create(0, -16, obj_pause_controller);
	instance_destroy();
}