/// @description @function rousr_dissonance_set_large_image(_image_key, [_image_text])
/// @param _image_key
/// @param  [_image_text]
///@desc set the large image and the tooltip text for it
///@param {String} _image_key    name of the uploaded image for the large profile artwork
///@param {String} [_image_text]   tooltip for the `_image_key`
var _image_key = argument[0];
var _image_text = undefined;

if (argument_count > 1)
    _image_text = argument[1];
    
with (global.__rousr_dissonance) {
  Is_dirty = true;
  
  if (_image_key == undefined) _image_key = "";
  if (_image_text == undefined) _image_text = "";
  
  discord_set_large_image(_image_key, _image_text);
}
