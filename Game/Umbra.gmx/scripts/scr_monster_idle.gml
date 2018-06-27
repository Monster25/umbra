if (state_new)
{
state_switch("chase");
}
//Death
if (hp <= 0)
instance_destroy();
