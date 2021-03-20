/*
    Actions performed when an error occurs
*/

switch(error) {
    case errors.manifest_download_failed:
        button_create(160,224,3,strings[? "btn_yes"]);
        button_create(320,224,1,strings[? "btn_no"]);
        break;
    case errors.download_failed:
        button_create(160,224,3,strings[? "btn_yes"]);
        button_create(320,224,1,strings[? "btn_no"]);
        break;
    case errors.executable_not_found:
        current_version = ""; //if no game data is available, reset version
        button_create(room_width/2,224,3,strings[? "btn_retry"]);
        break;
}
