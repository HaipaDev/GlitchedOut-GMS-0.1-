/// @description  Create particles & die
//if (speed = 0) instance_destroy();}

// Create glitch particles
part_particles_create(obj_game.system, x-32+random(64), y-32+random(64), obj_game.pt_confetti, 3);
part_particles_create(obj_game.system, x-32+random(64), y-32+random(64), obj_game.pt_confetti, 3);
/*x+=choose(8, 0, -8);
y+=choose(8, 0, -8);