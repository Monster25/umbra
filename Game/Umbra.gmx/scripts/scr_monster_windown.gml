//Different windown script for different types
switch(type)
{
//Monster 1
case 0:
scr_monster_windown_melee();
break;
//Monster 2
case 1:
scr_monster_windown_ranged();
break;
//Monster 3
case 2:
scr_monster_windown_ranged();
break;
default:
break;
}
