/// @description  Create particles & die
if (speed = 0) {
    instance_destroy();
}

// Create glitch particles
part_particles_create(obj_game.system, x-4+random(8), y-4+random(8), obj_game.pt_blood, 1);

