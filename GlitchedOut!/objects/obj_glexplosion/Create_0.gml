/// @description  Initialize explosion
image_angle = random(360);
image_alpha = random_range(.8,1);
fade_power=random_range(0.016,0.018);
//image_xscale=3.33;
image_xscale=random_range(1.3,1.7);
image_yscale=image_xscale;
scale_power=random_range(0.035,0.055);
add_screenshake(9, room_speed*.55);
//audio_play_sound(snd_explode, 7, false);