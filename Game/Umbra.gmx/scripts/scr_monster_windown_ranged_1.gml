if (state_new)
{
sprite_index = obj_game_control.monster[type, 8];
image_speed = 0.2;
scr_shoot_arrow(id);
alarm[3] = room_speed*obj_game_control.monster[type,10];
}

//Death
if (hp <= 0)
instance_destroy();
