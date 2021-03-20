/*
    Updates available, ask the user or perform the updates directly
*/

if(auto_update) {
    state_goto(states.update_download);
}
else {
    button_create(160,224,0,strings[? "btn_yes"]);
    button_create(320,224,1,strings[? "btn_no"]);
}

