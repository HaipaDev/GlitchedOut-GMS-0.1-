/// @description  Rotate and shrink
image_angle -= 5;
image_xscale -= .025;
image_yscale -= .025;

if(image_xscale<.1) {
    instance_destroy();
}

