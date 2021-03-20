/// @description @function random_key([_digit_length])
/// @param [_digit_length]
///@desc return a random key
///@returns {String} random hex key
var _digit_length = 10;
if (argument_count > 0)
  digit_length = argument[0];

var rnd_string = "";
for (var j = 0; j < _digit_length; ++j) {
  var rnd = irandom(16); 
  if (rnd > 10) 
    rnd = chr(ord("A") + (rnd - 10));
  rnd_string += string(rnd);
}

return rnd_string;
