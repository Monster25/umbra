//Different chase script for different types
if (state_new)
{
}
switch(type)
{
//Monster 1 - Spider
case 0:
scr_monster_chase_melee();
break;
//Monster 2 - Snake
case 1:
scr_monster_chase_ranged();
break;
//Monster 3 - Dog
case 2:
scr_monster_chase_melee();
break;
//Monster 4 - Boss
case 3:
scr_monster_chase_ranged();
break;
default:
break;
}
