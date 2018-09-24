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
scr_fade_outin(3,"rm_scoreboard");
image_index = 0;
image_speed = 0;
visible = 0;
}
