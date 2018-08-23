if (state_new)
{
path_end();
sprite_index = obj_game_control.monster[type, 6];
image_speed = 0.05;
alarm[2] = room_speed*obj_game_control.monster[type,10];
}

//Death
if (hp <= 0)
state_switch("death");
