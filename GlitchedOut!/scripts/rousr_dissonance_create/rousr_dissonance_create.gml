/// @description @function rousr_dissonance_create(_application_id, [_steam_id])
/// @param _application_id
/// @param  [_steam_id]
///@desc initialize the Discord RPC library, and create the GML Discord management object
///@param {String} _application_id   the application id string from your developer dashboard
///@param {String} [_steamd_id]      your steam ID if you'd like Discord to be able to launch your game through Steam.
gml_pragma("global", "global.__rousr_dissonance = noone;");
enum EDiscordHandlers {
  Ready = 0,
  Disconnected,
  Error,
  Join,
  Spectate,
  JoinRequest,
  
  Num,
};

var _application_id = argument[0];
var _steam_id = "";
if (argument_count > 1) _steam_id = argument[1];

if (!instance_exists(global.__rousr_dissonance)) {
  with(instance_create(0, 0, rousrDissonance)) { 
    global.__rousr_dissonance = id; 
  }
}

with(global.__rousr_dissonance) {
  Is_dirty = false;  
  Is_ready = false;
  Last_error_code = undefined;
  Last_error_msg  = undefined;

  Handlers = array_create(EDiscordHandlers.Num);
  for (var i = 0; i < EDiscordHandlers.Num; ++i) {
    var handler_array = array_create(2);
    handler_array[@ 0] = rousr_dissonance_dummy_function;
    handler_array[@ 1] = undefined;
    Handlers[@ i] = handler_array;
 }
     
  Avatars     = array_create(0);
  Num_avatars = 0;
  
  if (!Discord_initialized) {
    Discord_initialized = discord_init(_application_id, _steam_id) == 1.0;
  }
 
  if (!Discord_initialized) {
    show_debug_message("Discord RPC not initalized!");
    return false;
  }
}

return true;
