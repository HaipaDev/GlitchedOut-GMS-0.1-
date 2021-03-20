/// @description  Properties
dmg = 3;
sp=2.9;
image_xscale = .4;
image_yscale = image_xscale;
if(instance_exists(obj_player1))move_towards_point(obj_player1.x, obj_player1.y, sp);
if(instance_exists(obj_player2))sprite_index = obj_player2.sprite_index;

