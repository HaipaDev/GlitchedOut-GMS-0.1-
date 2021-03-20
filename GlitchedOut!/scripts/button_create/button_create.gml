/// @description create_button(x,y,action,label)
/// @param x
/// @param y
/// @param action
/// @param label

/*
    Creates a button. Action is the number of the user event called when the btn is pressed
*/

var btn = instance_create(argument0,argument1,obj_gmgl_btn);
btn.label = argument3;
btn.action = argument2;

return btn;
