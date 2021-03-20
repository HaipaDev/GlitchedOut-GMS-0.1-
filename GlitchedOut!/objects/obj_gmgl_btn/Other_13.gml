/// @description Re-check updates

with(obj_gmgl_btn) {instance_destroy();}
with(obj_gmgl_controller) {
    state_goto(states.check_updates);
}

