arrow = instance_create(argument[0].x,argument[0].y,obj_arrow);
with (arrow)
{
dir = argument[0].dir;
spd = argument[0].arrow_speed;
damage = argument[0].arrow_damage;
range = argument[0].arrow_range;
argument[0].arrow_range = argument[0].arrow_range_min; //reset range
argument[0].arrow_speed = argument[0].arrow_speed_min; //reset speed
}

