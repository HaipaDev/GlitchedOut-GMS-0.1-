/// @description Get text
if ds_map_find_value(async_load, "id") == get_bool {
	if ds_map_find_value(async_load, "status") == 0 {
		show = ds_map_find_value(async_load, "result");
	} else {
		show = "false";
   }
}