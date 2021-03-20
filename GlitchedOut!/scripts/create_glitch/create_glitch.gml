/// @description  create_glitch(x, y);
/// @function  create_glitch
/// @param x
/// @param  y
var xx = argument0;
var yy = argument1;

repeat (10) {
    instance_create(xx-16+random(32), yy-16+random(32), obj_glitch_part_creator);
}
