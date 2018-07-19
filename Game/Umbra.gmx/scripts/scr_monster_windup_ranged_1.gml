if (state_new)
{
path_end();
sprite_index = obj_game_control.monster[type, 7];
image_speed = 0.2;
alarm[2] = room_speed*obj_game_control.monster[type,9];
}

//Death
if (hp <= 0)
instance_destroy();