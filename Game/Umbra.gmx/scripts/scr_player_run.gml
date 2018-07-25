//Run State
//Animations
if (state_new)
{
sprite_index = spr_run;
image_index = 0;
image_speed = 0.07;
}
//Get Input
scr_player_input();

//How to move
scr_player_movement();

//Aim towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);

//Switch to idle state if not moving
if (moving == false)
state_switch("idle");

//Verify collision then move
scr_player_collision();

//Shoot
if (lclick && can_shoot)
{
state_switch("draw_run");
//can_shoot = false;
//alarm[0] = room_speed*shoot_cooldown;
//scr_shoot_arrow(id);
}
//Death
if (hp<=0)
{
state_switch("death");
}
