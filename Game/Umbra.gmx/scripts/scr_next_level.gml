//If next level exists
if (obj_game_control.current_level+1!=array_height_2d(obj_game_control.level))
{
room_restart(); //next level (restart room)
obj_game_control.current_level++; // increase level
}
