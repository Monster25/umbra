//If next level exists
if (obj_game_control.current_level+1!=array_height_2d(obj_game_control.level))
{
if (room_next(room) && room_next(room)!=3)
{
room_goto_next(); //Go to next room
}
else
{
room_goto_previous(); //Go to Previous room (Illusion of next room)
}
obj_game_control.current_level++; // increase level
}
