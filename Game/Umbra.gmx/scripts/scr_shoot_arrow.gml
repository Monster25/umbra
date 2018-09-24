arrow = instance_create(argument[0].x,argument[0].y,obj_arrow);
with (arrow)
{
creator = argument[0].id;
type = argument[0].arrow_type;
dir = argument[0].dir;
spd = argument[0].arrow_speed;
damage = argument[0].arrow_damage;
range = argument[0].arrow_range;
light_size = obj_game_control.arrow[type,3];
light_color = obj_game_control.arrow[type, 2];
argument[0].arrow_range = argument[0].arrow_range_min; //reset range
argument[0].arrow_speed = argument[0].arrow_speed_min; //reset speed
argument[0].arrow_damage = argument[0].arrow_damage_min; //reset damage
if (creator == obj_player.id)
argument[0].draw = 0;
///Sound
scr_play_sound_on(creator,obj_game_control.arrow[type, 7]);//Sound
}

//Scoreboard
scr_scoreboard_arrows_shot();

