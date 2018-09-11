//If next level exists
if (obj_game_control.current_level+1>array_height_2d(obj_game_control.level)-1)
{
room_goto(6);
}
else if (room_get_name(room) != "rm_01")
{
obj_game_control.current_level++;
room_goto(4);
}
else if (room_get_name(room) != "rm_02")
{
obj_game_control.current_level++;
room_goto(5);
}
