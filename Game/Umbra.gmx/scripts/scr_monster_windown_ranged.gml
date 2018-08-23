if (state_new)
{
sprite_index = obj_game_control.monster[type, 7];
image_speed = 0.05;
scr_shoot_projectile(id);
alarm[3] = room_speed*obj_game_control.monster[type,11];
}

//Death
if (hp <= 0)
state_switch("death");
