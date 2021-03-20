/// @description  Fade
if (image_alpha > 0) {
	image_xscale+=scale_power;
	image_yscale=image_xscale;
    image_alpha -= fade_power;
} else if (image_alpha <= 0) {
    instance_destroy();
}