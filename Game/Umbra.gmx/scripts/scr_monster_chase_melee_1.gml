if (state_new)
{
}
 //face player
dir = point_direction(x,y,obj_player.x,obj_player.y);
//Go to player
if (update_chase)
{
path_end();
update_chase = false;
alarm[1] = update_chase_timer*room_speed;
player_x = obj_player.x;
player_y = obj_player.y;
if (mp_grid_path(grid,path,x,y,player_x,player_y,1))
path_start(path,movespeed,path_action_stop,0)
}

//deal damage to player
if (distance_to_object(obj_player)<range)
{
//Start windup
state_switch("windup");
}

//Death
if (hp <= 0)
instance_destroy();
