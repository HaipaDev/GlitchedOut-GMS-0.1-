/// @description Step events
global.c_rainbow=choose(c_aqua, c_blue, c_orange, c_green, c_lime, c_red, c_maroon, c_olive, c_purple, c_yellow, c_teal);
pt_confetti = create_part_type_sprite(spr_whitepx, false, pt_shape_square, 25, 30, .95, .90, 360, global.c_rainbow);
sprpt01 = choose(spr_pt0, spr_pt1);