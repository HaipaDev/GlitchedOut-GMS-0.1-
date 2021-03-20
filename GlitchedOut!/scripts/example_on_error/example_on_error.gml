/// @description @funcion example_on_error(_error_code, _msg, _user_data)
/// @param _error_code
/// @param  _msg
/// @param  _user_data
///@desc on ready callback for the example
///@param {Real} _error_code   error code
///@param {String} _msg        error msg
///@param {*} _user_data   the id of the Example object as user data
var _error_code = argument[0],
    _msg = argument[1],
    _user_data = argument[2];
var example_inst = _user_data; // just to prove a point

with (example_inst) {
  var msg = "Discord Error: " + string(_error_code) + " - " + string(_msg);
  show_debug_message(msg);
  Error_msg = msg;
}
