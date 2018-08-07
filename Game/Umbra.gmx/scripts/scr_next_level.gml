//If next level is boss level, then go to boss level
if ((obj_game_control.current_level+1)%obj_game_control.boss_counter==0 && room!=3)
{
room_goto(3);
obj_game_control.current_level++;
obj_game_control.current_boss_level++;
}

else if (obj_game_control.current_level+1!=array_height_2d(obj_game_control.level))
{
room_goto(1); //next level (restart room)
obj_game_control.current_level++; // increase level
}
