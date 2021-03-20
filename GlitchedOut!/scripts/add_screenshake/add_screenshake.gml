/// add_screenshake(amount, duration)
var amount = argument0;
var duration = argument1;

if (instance_exists(obj_view_controller)) {
    obj_view_controller.screenshake = amount;
    obj_view_controller.alarm[0] = duration;
} else {
    show_error("View controller isn't in room", true);
}