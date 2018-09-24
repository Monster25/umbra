//Fade from one room to another, arg0 - time, arg1 - room to go
var fade = instance_create(0, 0, obj_fade_outin);
fade.timer = argument0/room_speed;
fade.name = argument1;
