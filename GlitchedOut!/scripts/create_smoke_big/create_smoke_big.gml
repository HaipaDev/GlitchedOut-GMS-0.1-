/// @description  create_smoke_big(x, y);
/// @function  create_smoke_big
/// @param x
/// @param  y
var xx = argument0;
var yy = argument1;

repeat (2) {
    instance_create(xx-16+random(32), yy-16+random(32), obj_smokeBig_part_creator);
}
