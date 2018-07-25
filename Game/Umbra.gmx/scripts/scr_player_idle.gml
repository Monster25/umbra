//Idle State
//Animations
if (state_new)
{
sprite_index = spr_idle;
image_index = 0;
image_speed = 0.09;
}
//Get Input
scr_player_input();
//How to move
scr_player_movement();

//Aim towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);
//Switch to run state if moving
if (moving == true)
state_switch("run");
//Start drawing arrow if you keep lclick presset
if (lclick && can_shoot)
{
state_switch("draw_idle");
//can_shoot = false;
//alarm[0] = room_speed*shoot_cooldown;
//scr_shoot_arrow(id);
}
//Death
if (hp<=0)
{
state_switch("death");
}
