/// @description  Properties of game
draw_set_colour(c_white);
draw_set_font(fnt_game);

// Variables
global.debugmode=false;
global.sound = 1;
global.music = 0.7;
global.gmversion = "0.1.1";

global.deathOpts=20;
global.deathPpts=5;
global.deathKpts=30;

// Particle system
system = part_system_create();
global.c_rainbow=c_white;

// Particle types
pt_glitch = create_part_type_sprite(spr_glitch, false, pt_shape_square, 25, 25, .6, .59, 0, c_white);
pt_blood = create_part_type_sprite(spr_blood, false, pt_shape_cloud, 25, 30, .25, 0, 360, c_white);
pt_0 = create_part_type_sprite(spr_pt0, false, pt_shape_square, 25, 30, .95, .90, 360, c_white);
pt_1 = create_part_type_sprite(spr_pt1, false, pt_shape_square, 25, 26, .95, .90, 360, c_white);
pt_smoke = create_part_type_sprite(spr_smoke, false, pt_shape_smoke, 25, 30, .25, 0, 360, c_white);
pt_smokeBig = create_part_type_sprite(spr_smokeBig, false, pt_shape_smoke, 25, 30, .25, 0, 360, c_white);
pt_respawn = create_part_type_sprite(spr_glitchblue, false, pt_shape_cloud, 25, 30, .6, .1, 360, c_white);
pt_confetti = create_part_type_sprite(spr_whitepx, false, pt_shape_square, 25, 30, .95, .90, 360, global.c_rainbow);

// Resolution
display_set_gui_size(780, 980);