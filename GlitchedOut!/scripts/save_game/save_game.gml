/// @description  save_game();
/// @function  save_game
if (file_exists("Save.sav")) file_delete("Save.sav");
ini_open("Save.sav");
var saved_musicvolume = global.music;
var saved_soundvolume = global.sound;
//var saved_perk1_player1 = global.skinP1;
ini_write_real("Options", "Music", saved_musicvolume);
ini_write_real("Options", "Sound", saved_soundvolume);
//ini_write_real("Player1", "PerkS1", saved_perk1_player1);
ini_close();
