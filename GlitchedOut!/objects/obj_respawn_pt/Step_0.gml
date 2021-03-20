/// @description  Create particles & die
if (speed = 0) {
    instance_destroy();
}

// Create glitch particles
part_particles_create(obj_game.system, x-8+random(16), y-8+random(16), obj_game.pt_respawn, 4);
x+=choose(8, 0, -8);
y+=choose(8, 0, -8);