/// @description Check version
if(global.gmversion==txt and global.gmversion!="null"){
	img = imgc;
}else if(global.gmversion!=txt and global.gmversion!="null"){
	img = imgu;
}else if(global.gmversion=="null"){
	img = imge;
}