if (instance_exists(obj_scoreboard))
{
    if (obj_game_control.monster[type, 13] == 0)
    obj_scoreboard.scoreboard[1,0]++
    else if (obj_game_control.monster[type, 13] == 1)
    obj_scoreboard.scoreboard[1,3]++
}
