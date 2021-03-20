/// @description  create_glitch_small(x, y);
/// @function  create_glitch_small
/// @param x
/// @param  y
var xx = argument0;
var yy = argument1;

instance_create(xx-16+random(32), yy-16+random(32), obj_glitch_part_creator);
