/// @description @function rousr_dissonance_set_timestamps(_secondsFromNowStart, _secondsFromNowEnd)
/// @param _secondsFromNowStart
/// @param  _secondsFromNowEnd
///@desc set the timestamp variables
///@param {Real|undefined} _secondsFromNowStart   the amount of seconds since the game began, can be undefined
///@param {Real|undefined} _secondsFromNowEnd     the amount of seconds until the game ends, can be undefined
var _secondsFromNowStart = argument[0];
var _secondsFromNowEnd   = undefined;
if (argument_count > 1)
    _secondsFromNowEnd = argument[1];
    
with (global.__rousr_dissonance) {
  var startTimeLo = 0;
  var startTimeHi = 0;
  var endTimeLo = 0;
  var endTimeHi = 0;

  if (_secondsFromNowStart != undefined) {
    var startTimeStamp = gmlscripts_unix_timestamp();
    startTimeStamp += _secondsFromNowStart;
  
    startTimeLo = startTimeStamp & $FFFFFFFF;
    startTimeHi = startTimeStamp >> 32;
  }

  if (_secondsFromNowEnd != undefined) {
    var endTimeStamp = gmlscripts_unix_timestamp();
    endTimeStamp += _secondsFromNowEnd;
  
    endTimeLo = endTimeStamp & $FFFFFFFF;
    endTimeHi = endTimeStamp >> 32;  
  
    var test = endTimeLo + (endTimeHi << 32);
  }
  
  Is_dirty = true; 
  discord_set_timestamps(startTimeLo, startTimeHi, endTimeLo, endTimeHi);
}
