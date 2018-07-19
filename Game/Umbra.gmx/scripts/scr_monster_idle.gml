if (state_new)
{
image_speed = 0;
image_index = 0;
state_switch("chase");
}
//Death
if (hp <= 0)
instance_destroy();
