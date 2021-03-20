/// @description  move_illusion2();
/// @function  move_illusion2
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

if(!htme_isServer()){
if(key_up and !key_left and !key_right) {
    image_angle -= rotation_power;
    y -= vspd+random_range(-2,2);
} else if(key_down and !key_left and !key_right) {
    image_angle += rotation_power;
    y += vspd+random_range(-2,2);
}

if(key_left) {
    image_angle -= rotation_power;
    x -= hspd+random_range(-2,2);
    if(key_up) y -= vspd+random_range(-2,2);
    if(key_down) y += vspd+random_range(-2,2);
} else if(key_right) {
    image_angle += rotation_power;
    x += hspd+random_range(-2,2);
    if(key_up) y -= vspd+random_range(-2,2);
    if(key_down) y += vspd+random_range(-2,2);
}
}