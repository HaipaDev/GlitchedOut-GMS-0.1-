/// @description @function example_on_join_request(_user_id, _user_name, _avatar_index, _user_data)
/// @param _user_id
/// @param  _user_name
/// @param  _avatar_index
/// @param  _user_data
///@desc on join request handler for example object
///@param {String} _user_id      the joining user id
///@param {String} _user_name    the joining user name
///@param {Real} _avatar_index   index in the Avatars array for this user's avatar (todo)
///@param {Real} _user_data      example object inst id
var _user_id = argument[0],
    _user_name = argument[1],
    _avatar = argument[2],
    _user_data = argument[3];

var example_inst = _user_data;
with (example_inst) {
  show_debug_message("Join Request:"); 
  Join_requested = array_create(3);
  Join_requested[@ 0] = _user_id;
  Join_requested[@ 1] = _user_name;
  Join_requested[@ 2] = _avatar;
}
