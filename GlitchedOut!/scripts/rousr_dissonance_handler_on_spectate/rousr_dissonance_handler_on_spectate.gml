/// @description @function rousr_dissonance_handler_on_spectate(_script_index, [_user_data])
/// @param _script_index
/// @param  [_user_data]
///@desc calls `_script_index` whenever Discord RPC fires the `spectate` event
///@param {Real:Script} _script_index   Script resource index of script to execuse, takes `(_spectate_secret, [_user_data])`
///@param {*} [_user_data]              Any user data you want to pass along to the script
var _script_index = argument[0],
    _user_data    = undefined;
 
if (argument_count > 1)
  _user_data = argument[1];

with (global.__rousr_dissonance) {
  var handler = array_create(2);
  handler[@ 0] = _script_index;
  handler[@ 1] = _user_data;
  Handlers[@ EDiscordHandlers.Spectate] = handler;  
}
