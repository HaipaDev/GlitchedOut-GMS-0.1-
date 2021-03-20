/*
    Requests the download of the latest version to the server
*/

http_download = http_get_file(manifest[? "url"],working_directory+"game_data.zip");
download_progress = 0;

