//Resolution script

global.displayWidth = argument[0];
global.displayHeight = argument[1];

if (!window_get_fullscreen()) //If you're not in fullscreen
{ 
    window_set_size(global.displayWidth, global.displayHeight) //Change window size
}

surface_resize(application_surface, global.displayWidth, global.displayHeight); //resize application surface
