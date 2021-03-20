/// @description Get text
if ds_map_find_value(async_load, "id") == get {
	if ds_map_find_value(async_load, "status") == 0 {
		txt = ds_map_find_value(async_load, "result");
	} else {
		txt = "null";
   }
}