/// @description local_install()

/*
    Installs the game from a local included file
*/

if(zip_unzip(working_directory+local_game_data,working_directory+"game_data/")) {
    current_version = manifest[? "latest_version"];
    manifest_save();
    return true;
}
else return false;
