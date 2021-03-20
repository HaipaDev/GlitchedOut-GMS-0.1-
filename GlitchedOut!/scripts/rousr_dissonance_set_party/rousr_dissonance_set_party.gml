/// @description @function rousr_dissonance_set_party(_party_size, _party_max, [_party_id])
/// @param _party_size
/// @param  _party_max
/// @param  [_party_id]
///@desc set the player's party information
///@param {Real} _party_size    the current size of the party
///@param {Real} _party_max     the max size of a party
///@param {String} [_party_id]  id of the player's party, lobby, or group
var _party_size = argument[0],
    _party_max  = argument[1],
    _party_id   = "";
if (argument_count > 2)
    _party_id = argument[2];
with (global.__rousr_dissonance) {
  Is_dirty = true;
  if (_party_id == undefined) _party_id = "";
  discord_set_party(_party_id, _party_size, _party_max);
}
