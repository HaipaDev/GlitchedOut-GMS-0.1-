/// @description  Place start HUD and load game
if(room = rm_game){
    if(!instance_exists(obj_start_hud)) instance_create(room_width/2.1, room_height/2, obj_start_hud);
}
if(room = rm_menu){
    load_game();
    randomize();
}