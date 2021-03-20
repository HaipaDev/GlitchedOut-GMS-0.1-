/// @description init
exe_open_init();

enum states {
    check_updates,
    update_available,
    update_download,
    update_installed,
    ready,
    error
}

enum errors {
    manifest_download_failed,
    download_failed,
    executable_not_found 
}

gmgl_init();

//variables
manifest = -1;
http_manifest = -1; //async request
http_download = -1; //async request
download_progress = -1;
error = -1;

//load local manifest
manifest_load();
current_version = ds_map_find_value(manifest,"current_version");

//if first time running, try to install from local directory
if(current_version == "" && local_game_data != "") {
    local_install();   
}

//start the update process by checking for updates
state_goto(states.check_updates);