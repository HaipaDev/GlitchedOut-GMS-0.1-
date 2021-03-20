/// @description  create_smoke(x, y);
/// @function  create_smoke
/// @param x
/// @param  y
var xx = argument0;
var yy = argument1;

repeat (4) {
    instance_create(xx-16+random(32), yy-16+random(32), obj_smoke_part_creator);
}
