//Draw State
//Animations
if (state_new)
{
sprite_index = spr_draw_run;
image_index = 0;
image_speed = 1/sprite_get_number(sprite_index);
}
if (full_draw)
{
image_speed = 0;
image_index = sprite_get_number(sprite_index)-1;
}
//Get Input
scr_player_input();

//How to move
scr_player_movement();

//Aim Towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);  

//Switch to idle draw if moving
if (!moving)
state_switch("draw_idle");

//Verify collision then move
scr_player_collision();

//Handle bow draw mechanic, increase speed and range the longer you hold on
//Range multiplier
var amount_range = (arrow_range_max-arrow_range_min)/(draw_speed*room_speed);
arrow_range += amount_range;
arrow_range = clamp (arrow_range,arrow_range_min,arrow_range_max);
//Speed multiplier
var amount_speed = (arrow_speed_max-arrow_speed_min)/(draw_speed*room_speed);
arrow_speed += amount_speed;
arrow_speed = clamp (arrow_speed,arrow_speed_min,arrow_speed_max);
//Damage multiplier
var amount_damage = (arrow_damage_max-arrow_damage_min)/(draw_speed*room_speed);
arrow_damage += amount_damage;
arrow_damage = clamp (arrow_damage,arrow_damage_min,arrow_damage_max);
//Drawn percentage
var amount_draw = 1/(draw_speed*room_speed)
draw = draw + amount_draw
draw = clamp(draw,0,1)
//Fully or near fully drawn shot
if (draw == 1)
full_draw = true;
else
full_draw = false;
//Shoot arrow if you release button
if (!lclick)
{

can_shoot = false;
alarm[0] = room_speed*shoot_cooldown;
scr_shoot_arrow(id);

if (full_draw)
{
scr_screen_shake();
full_draw = false;
}
state_switch("run");
}

//Death
if (hp<=0)
{
state_switch("death");
}
