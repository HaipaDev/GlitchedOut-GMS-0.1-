/// @description Update
if(result!=global.gmversion){
	//show_message("Update Available!");
	file_delete(dir + "/" + "data.win")
	File = http_get_file("hypergamesdev.cba.pl/GlitchedOut!/data.win", dir);
	instance_destroy();
} else {
	instance_destroy();	
}