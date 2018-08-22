//Different windown script for different types
switch(type)
{
//Spider
case 0:
scr_monster_windown_melee();
break;
//Snake
case 1:
scr_monster_windown_ranged();
break;
//Dog
case 2:
scr_monster_windown_melee();
break;

//Shadow Boss
case 3:
scr_monster_windown_ranged();
break;

default:
break;
}
