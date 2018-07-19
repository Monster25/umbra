//Different windup script for different types
switch(type)
{
//Monster 1
case 0:
scr_monster_windup_melee_1();
break;
//Monster 2
case 1:
scr_monster_windup_melee_1();
break;
//Monster 3
case 2:
scr_monster_windup_ranged_1();
break;
default:
break;
}
