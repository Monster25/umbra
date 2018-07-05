//Idle State
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
if (hp<=0 && !dead)
{
dead = true;
room_goto(3); //go to scoreboard room
}
