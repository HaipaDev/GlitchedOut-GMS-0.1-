/// @description  create_blood(x, y);
/// @function  create_blood
/// @param x
/// @param  y
var xx = argument0;
var yy = argument1;

repeat (2) {
    instance_create(xx-16+random(32), yy-16+random(32), obj_blood_part_creator);
}
