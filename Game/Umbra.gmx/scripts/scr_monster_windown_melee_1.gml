if (state_new)
{
sprite_index = obj_game_control.monster[type, 8];
image_speed = 0;
if (distance_to_object(obj_player)<=range)
{
obj_player.hp-=damage;
scr_screen_shake();
}
alarm[3] = room_speed*obj_game_control.monster[type,10];
}

//Death
if (hp <= 0)
instance_destroy();
