/// @description  Draw flash
draw_set_color(c_red);
draw_set_alpha(image_alpha);
draw_rectangle(sprite_width, sprite_height, sprite_width, sprite_height ,false);
draw_set_color(c_white);
draw_set_alpha(1);

// Face
if (image_alpha > 0) {
    image_alpha -= .2;
}

