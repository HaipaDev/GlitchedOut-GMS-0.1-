/// @description Get text
if ds_map_find_value(async_load, "id") == get_title {
	if ds_map_find_value(async_load, "status") == 0 {
		txt_title = ds_map_find_value(async_load, "result");
	} else {
		txt_title = "null";
   }
}
if ds_map_find_value(async_load, "id") == get_desc {
	if ds_map_find_value(async_load, "status") == 0 {
		txt_desc = ds_map_find_value(async_load, "result");
	} else {
		txt_desc = "null";
   }
}