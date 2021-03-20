//exe_open_init()
/*
    Init the dll for opening external programs
*/

globalvar exe_open_FN;
exe_open_FN = external_define("OpenExe.dll", "OpenExe", dll_cdecl, ty_real, 1, ty_string);
