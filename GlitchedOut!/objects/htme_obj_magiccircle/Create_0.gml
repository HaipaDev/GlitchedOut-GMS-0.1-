/// @description  Properties
image_xscale = 1.5;
image_yscale = 1.5;

mp_sync();

mp_addPosition("Pos",1);
mp_setType("Pos",mp_type.FAST);

mp_add("McricleAngle","image_angle",buffer_string,1);
mp_setType("McircleAngle",mp_type.FAST);

mp_addBuiltinBasic("basicDrawing",1);
mp_setType("basicDrawing",mp_type.SMART);