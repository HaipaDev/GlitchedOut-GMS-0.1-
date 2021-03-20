/// @description manifest_save()
/*
    Saves the manifest
*/

manifest[? "current_version"] = current_version;
var file = file_text_open_write(working_directory+"manifest.json");
file_text_write_string(file,json_encode(manifest));
file_text_close(file);
