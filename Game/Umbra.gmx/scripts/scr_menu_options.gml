switch (mpos)
{
    case 0:
    {
        break;
    }
    case 1:
    {
        instance_create(0,0,obj_menu_main);
        with(obj_resolution_control)
        instance_destroy();
        with(obj_resolution)
        instance_destroy();
        with(obj_back)
        instance_destroy();
        with(obj_menu_arrow)
        instance_destroy();
        with(obj_menu_arrow_left)
        instance_destroy();
        instance_destroy();
        break;
    }
default: break;
}
