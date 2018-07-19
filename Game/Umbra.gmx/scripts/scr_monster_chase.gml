//Different chase script for different types
if (state_new)
{
image_speed = 0.05;
}
switch(type)
{
//Monster 1
case 0:
scr_monster_chase_melee_1();
break;
//Monster 2
case 1:
scr_monster_chase_melee_1();
break;
//Monster 3
case 2:
scr_monster_chase_ranged_1();
break;
default:
break;
}
