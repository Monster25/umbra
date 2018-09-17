switch (mpos)
{
    case 0:
    {
        obj_game_control.current_level++;
        scr_fade_outin(3/room_speed,"rm_01");
        break;
    }
    case 1:
    {
        game_end();
        break;
    }
default: break;
}
