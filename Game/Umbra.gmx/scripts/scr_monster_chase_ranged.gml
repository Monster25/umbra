if (state_new)
{
sprite_index = obj_game_control.monster[type,5];
image_speed = 0.05;
    
}
 //face player
dir = point_direction(x,y,obj_player.x,obj_player.y);
//Go to player
vision = collision_line(x,y,obj_player.x,obj_player.y,obj_solid,0,1);
if (update_chase && (distance_to_object(obj_player)>range || vision))
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
if (distance_to_object(obj_player)<=range && !vision)
{
path_end();
//can_attack = false;
//obj_player.hp-=damage;
state_switch("windup");
//alarm[0] = room_speed*attack_cooldown;
//scr_shoot_arrow(id);
}

//Death
if (hp <= 0)
state_switch("death");
