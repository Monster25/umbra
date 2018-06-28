//Run State
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
can_shoot = false;
alarm[0] = room_speed*shoot_cooldown;
scr_shoot_arrow(id);
}
//Death
if (hp<=0)
{
obj_scoreboard.visible = 1;
}
