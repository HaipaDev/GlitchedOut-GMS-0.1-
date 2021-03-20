/// @description  load_game();
/// @function  load_game
if (file_exists("Save.sav")) {
    ini_open("Save.sav");
    var loaded_musicvolume = ini_read_real("Options", "Music", "1");
    var loaded_soundvolume = ini_read_real("Options", "Sound", "1");
    //var loaded_perk1_player1 = ini_read_real("Player1", "PerkS1", "0");
    ini_close();
    global.music = loaded_musicvolume;
    global.sound = loaded_soundvolume;
    //global.perk1_player1 = loaded_perk1_player1;
} else {} // Do nothing
