/// @description check updates
if ds_map_find_value(async_load, "id") == http_manifest {
    var status = ds_map_find_value(async_load, "status");
    
    if(status < 0) { //error downloading manifest
        error = errors.manifest_download_failed;
        state_goto(states.error);
    }
    else if(status == 0) { //manifest data downloaded
        if(async_load[? "http_status"] == 200) { 
            ds_map_destroy(manifest);
            manifest = json_decode(ds_map_find_value(async_load,"result"));
            if(current_version != manifest[? "latest_version"]) {
                state_goto(states.update_available);
            }
            else {
                state_goto(states.ready);
            }
        }
        else {
            error = errors.manifest_download_failed;
            state_goto(states.error);
        }
    }
}

///download update
if ds_map_find_value(async_load, "id") == http_download {
    var status = ds_map_find_value(async_load, "status");
    
    if(status < 0) { //error downloading update
        error = errors.download_failed;
        state_goto(states.error);
    }
    else if(status > 0) { //downloading
        download_progress = round(async_load[? "sizeDownloaded"] * 100 / async_load[? "contentLength"]);
    }
    else { //update downloaded
        if(async_load[? "http_status"] == 200) { 
            if(zip_unzip(async_load[? "result"],working_directory+"game_data/")) {
                current_version = manifest[? "latest_version"];
                manifest_save();
                file_delete(async_load[? "result"]);
                state_goto(states.update_installed);
            }
            else {
                error = errors.download_failed;
                state_goto(states.error);
            }
        }
        else {
            error = errors.download_failed;
            state_goto(states.error);
        }
    }
}

