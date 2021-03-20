/// @description Draw self & bubble
if(instance_exists(obj_player1) and instance_exists(obj_shieldP1)){
if(obj_player1.perkS1==5 or obj_player1.perkS2==5){
draw_sprite_ext(spr_shield,0,x,y,1.55,1.55,image_angle,obj_shieldP1.color,1);
}}
draw_self();