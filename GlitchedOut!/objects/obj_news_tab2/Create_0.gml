/// @description  Properties
depth=-1002;
image_xscale=.3;
image_yscale=image_xscale;
img = sprite_add("http://hypergamesdev.cba.pl/GlitchedOut!/NewsTab2.png", 1, false, true, 0, 0);
sprite_index = img;
get_title = http_get("http://hypergamesdev.cba.pl/GlitchedOut!/NewsTab2Title.txt");
txt_title="";
get_desc = http_get("http://hypergamesdev.cba.pl/GlitchedOut!/NewsTab2Desc.txt");
txt_desc="";