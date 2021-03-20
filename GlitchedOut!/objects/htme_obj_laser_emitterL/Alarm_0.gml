/// @description Shoot Laser
if(htme_isServer()){
	instance_create(x, y, htme_obj_laserL);
	audio_play_sound(snd_lasershoot, 0, false);
	alarm[0] = room_speed*random_range(1, 1.6);
}

randomize();