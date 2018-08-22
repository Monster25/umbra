switch (mpos)
{
    case 0:
    {
        obj_game_control.current_level++;
        room_goto_next();
        break;
    }
    case 1:
    {
        game_end();
        break;
    }
default: break;
}
