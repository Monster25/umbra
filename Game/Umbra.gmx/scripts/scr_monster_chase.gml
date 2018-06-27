if (state_new)
{

}
 //face player
dir = point_direction(x,y,obj_player.x,obj_player.y);
//move to player
move_towards_point(obj_player.x,obj_player.y,movespeed); 


//Death
if (hp <= 0)
instance_destroy();
