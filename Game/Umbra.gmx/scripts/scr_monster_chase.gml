if (state_new)
{

}
 //face player
dir = point_direction(x,y,obj_player.x,obj_player.y);
//move to player
move_towards_point(obj_player.x,obj_player.y,movespeed); 

//deal damage to player
if (distance_to_object(obj_player)<10 && can_attack)
{
can_attack = false;
obj_player.hp-=damage;
alarm[0] = room_speed*attack_cooldown;
}

//Death
if (hp <= 0)
instance_destroy();
