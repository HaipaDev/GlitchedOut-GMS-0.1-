/// @description gmgl_init()

/*
    General settings of the launcher
*/

//start the game automatically if no update is found or update downloaded successfully
auto_start = true;
//if an update is available, download it automatically, whithou asking the user
auto_update = true;
//if the game is included in the launcher, insert the path and filename here
local_game_data = "GlitchedOut!.exe";

strings = ds_map_create();
//messages
strings[? "msg_"+string(states.check_updates)] = "Checking for updates";
strings[? "msg_"+string(states.update_available)] = "A new update is available, download?";
strings[? "msg_"+string(states.update_download)] = "Downloading update";
strings[? "msg_"+string(states.update_installed)] = "Game updated!";
strings[? "msg_"+string(states.ready)] = "Ready to play!";

//buttons
strings[? "btn_yes"] = "Yes";
strings[? "btn_no"] = "No";
strings[? "btn_play"] = "Play";
strings[? "btn_retry"] = "Retry";

//errors
strings[? "err_"+string(errors.manifest_download_failed)] = "Error checking for updates, retry?";
strings[? "err_"+string(errors.download_failed)] = "Error downloading update, retry?";
strings[? "err_"+string(errors.executable_not_found)] = "Game data not found";

strings_color = make_colour_rgb(219,207,179);
