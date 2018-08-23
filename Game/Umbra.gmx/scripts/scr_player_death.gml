//Animation
if (state_new)
{
sprite_index = spr_death;
image_index = 0;
image_speed = 0.2;
}
//GO to scoreboard room
if (image_index >= sprite_get_number(sprite_index)-1)
{
room_goto(4);
image_index = 0;
image_speed = 0;
visible = 0;
}
