switch (mpos)
{
    case 0:
    {
        obj_game_control.current_level++;
        instance_create(0,0,obj_fade_outin);
        break;
    }
    case 1:
    {
        instance_create(0,0,obj_menu_options);
        instance_create(0,0,obj_resolution_control);
        with(obj_newgame)
        instance_destroy();
        with(obj_options)
        instance_destroy();
        with(obj_quit)
        instance_destroy();
        instance_destroy();
        
        break;
    }
    case 2:
    {
        game_end();
        break;
    }
default: break;
}
