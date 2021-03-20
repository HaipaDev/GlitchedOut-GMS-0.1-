/// @description  Properties
dmg = 3;
sp=2.9;
image_xscale = .4;
image_yscale = image_xscale;
if(instance_exists(obj_player2))move_towards_point(obj_player2.x, obj_player2.y, sp);
if(instance_exists(obj_player1))sprite_index = obj_player1.sprite_index;