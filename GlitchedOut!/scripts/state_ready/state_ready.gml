/*
    Update installed
*/

if(file_exists(game_path())) {
    if(auto_start) {game_run();}
    else {
        button_create(room_width/2,224,2,strings[? "btn_play"]);
    }
}
else {
    error = errors.executable_not_found;
    state_goto(states.error);
}

