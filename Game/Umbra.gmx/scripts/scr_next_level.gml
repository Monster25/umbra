//If next level exists
if (obj_game_control.current_level+1>array_height_2d(obj_game_control.level)-1)
{
room_goto(4);
}
else if (room != 1)
{
obj_game_control.current_level++;
room_goto(1);
}
else if (room != 2)
{
obj_game_control.current_level++;
room_goto(2);
}
