//If next level exists
if (obj_game_control.current_level+1>array_height_2d(obj_game_control.level)-1)
{
//Add max level to scoreboard
scr_scoreboard_max_level();
scr_fade_outin(3,"rm_scoreboard");
//room_goto(asset_get_index("rm_scoreboard"));
}
else if (room_get_name(room) != "rm_01")
{
obj_game_control.current_level++;
//Add max level to scoreboard
scr_scoreboard_max_level();
room_goto(asset_get_index("rm_01"));
}
else if (room_get_name(room) != "rm_02")
{
obj_game_control.current_level++;
//Add max level to scoreboard
scr_scoreboard_max_level();
room_goto(asset_get_index("rm_02"));
}
