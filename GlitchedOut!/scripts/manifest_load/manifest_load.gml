/// @description manifest_load
/*
    Loads the manifest
*/

var json_string = "";
var file = file_text_open_read(working_directory+"manifest.json");

if(ds_exists(manifest,ds_type_map)) {ds_map_destroy(manifest);}

while (!file_text_eof(file)) {
    json_string += file_text_read_string(file);
    file_text_readln(file);
}

file_text_close(file);

manifest = json_decode(json_string);

