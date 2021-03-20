/// @description Properties
get = http_get("http://hypergamesdev.cba.pl/GlitchedOut!/Version.txt");
txt="";
imgc = sprite_add("http://hypergamesdev.cba.pl/GlitchedOut!/Version%20ImgCurrent.png", 1, false, true, 0, 0);
imgu = sprite_add("http://hypergamesdev.cba.pl/GlitchedOut!/Version%20ImgUpdate.png", 1, false, true, 0, 0);
imge = sprite_add("http://hypergamesdev.cba.pl/GlitchedOut!/Version%20ImgError.png", 1, false, true, 0, 0);
img = imgc;
/*text="";
http_get("http://www.phpmyadmin.co/tbl_structure.php?server=1&db=sql7237957&table=glitchedout_text&field=Version");
//if(text=="") text="null"


//x=56 y=32