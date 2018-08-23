if (state_new)
{
path_end();
sprite_index = obj_game_control.monster[type,9];
image_index = 0;
image_speed = 0.5;
mask_index = spr_placeholder;
}

if (image_index >= image_number - 1)
instance_destroy();
