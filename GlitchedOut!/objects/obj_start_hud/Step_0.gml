/// @description  Before starting
if(image_index > 5.8) {
    image_speed = 0;
    if(!instance_exists(obj_player2choose)) instance_create(room_width/2.1, room_height/2.98, obj_player2choose);
	if(!instance_exists(obj_player2controls)) instance_create(room_width/1.7, room_height/2.74, obj_player2controls);
    if(!instance_exists(obj_player2_perk1)) instance_create(room_width/2.3, room_height/2.52, obj_player2_perk1);
    if(!instance_exists(obj_player2_perk2)) instance_create(room_width/1.9, room_height/2.52, obj_player2_perk2);
    if(!instance_exists(obj_player1choose)) instance_create(room_width/2.1, room_height/2.1, obj_player1choose);
	if(!instance_exists(obj_player1controls)) instance_create(room_width/1.68, room_height/1.98, obj_player1controls);
    if(!instance_exists(obj_player1_perk1)) instance_create(room_width/2.3, room_height/1.85, obj_player1_perk1);
    if(!instance_exists(obj_player1_perk2)) instance_create(room_width/1.9, room_height/1.85, obj_player1_perk2);
    if(!instance_exists(obj_timechoose_text)) instance_create(room_width/2.1, room_height/1.68, obj_timechoose_text);
    //if(!instance_exists(obj_events_button)) instance_create(room_width/2.1, room_height/1.55, obj_events_button);
    if(!instance_exists(obj_start_button)) instance_create(room_width/2.1, room_height/1.44, obj_start_button);
    if(!instance_exists(obj_menu_button)) instance_create(room_width/2.1, room_height/1.34, obj_menu_button);
}