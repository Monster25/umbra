if (state_new)
{
sprite_index = obj_game_control.monster[type,8];
image_speed = 0.2;
state_switch("chase");
}
//Death
if (hp <= 0)
state_switch("death");
