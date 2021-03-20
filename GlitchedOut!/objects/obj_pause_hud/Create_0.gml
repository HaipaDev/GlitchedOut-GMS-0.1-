/// @description  Properties
image_xscale = 4;
image_yscale = image_xscale;
image_speed = .2;
image_alpha=.5;
if(room==rm_game){
	instance_deactivate_object(obj_player1);
	instance_deactivate_object(obj_player2);
	instance_deactivate_object(obj_saw);
}