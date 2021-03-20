/// @description create_part_type_sprite(sprite, blend, shape, min_life, max_life, min_alpha[.25], max_alpha[0], max_angle, color)
/// @param sprite
/// @param blend
/// @param shape
/// @param min_life
/// @param max_life
/// @param min_alpha[.25]
/// @param max_alpha[0]
/// @param max_angle
/// @param color
var sprite = argument0;
var blend = argument1;
var shape = argument2;
var min_life = argument3;
var max_life = argument4;
var min_alpha = argument5;
var max_alpha = argument6;
var max_angle = argument7;
var color = argument8;


var type = part_type_create();
part_type_shape(type, shape);
part_type_alpha2(type, min_alpha, max_alpha);
part_type_sprite(type, sprite, false, true, false);
part_type_colour1(type, color);
part_type_blend(type, blend);
part_type_size(type, 1, 1, 0, 0);
part_type_life(type, min_life, max_life);
part_type_orientation(type, 0, max_angle, 0, 0, 0);

return type;