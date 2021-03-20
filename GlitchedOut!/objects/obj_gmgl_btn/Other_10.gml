/// @description accept update

with(obj_gmgl_btn) {instance_destroy();}
with(obj_gmgl_controller) {
    state_goto(states.update_download);
}

