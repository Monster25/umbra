//Different chase script for different types
if (state_new)
{
}
switch(type)
{
//Monster 1
case 0:
scr_monster_chase_melee();
break;
//Monster 2
case 1:
scr_monster_chase_ranged();
break;
//Monster 3
case 2:
scr_monster_chase_ranged();
break;
default:
break;
}
