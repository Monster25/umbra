//Draw State
//Animations
image_speed = 0;
image_index = 0;
//Get Input
scr_player_input();

//How to move
scr_player_movement();


//Aim Towards mouse position
dir = point_direction (x,y,mouse_x,mouse_y);  

//Switch to run draw if moving
if (moving == true)
state_switch("draw_run");

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
//Fully or near fully drawn shot
if (arrow_damage == arrow_damage_max)
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
scr_screen_shake();
state_switch("idle");
}

//Death
if (hp<=0 && !dead)
{
dead = true;
room_goto(3); //go to scoreboard room
}


