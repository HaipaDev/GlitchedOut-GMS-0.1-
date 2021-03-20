/// @description  Create particles & die
if (speed = 0) {
    instance_destroy();
}

// Create glitch particles
part_particles_create(obj_game.system, x, y, obj_game.pt_smokeBig, 1);

