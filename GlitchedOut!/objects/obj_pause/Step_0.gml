/// @description  Activate back
if(room==rm_game){
	if(global.unpaused == true){
	    with(obj_pause)surface_free(pause_surf);
	    with(obj_pause_hud)instance_destroy();
	    with(obj_menu_button)instance_destroy();
	    with(obj_resume_button)instance_destroy();
	    with(obj_restart_button)instance_destroy();
	    __background_set( e__BG.VSpeed, 0, 2 );
	    instance_create(0, -16, obj_pause_controller);
	    instance_activate_all();
	    instance_destroy();
	}
}