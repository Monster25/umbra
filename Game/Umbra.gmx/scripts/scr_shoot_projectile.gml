projectile = instance_create(argument[0].x,argument[0].y,obj_projectile);
with (projectile)
{
creator = argument[0].id;
type = argument[0].projectile_type;
dir = argument[0].dir;
spd = obj_game_control.projectile[type, 1];
damage = obj_game_control.projectile[type, 0];
range = obj_game_control.projectile[type, 6];
light_size = obj_game_control.projectile[type,7];
light_color = obj_game_control.projectile[type, 8];
hit_script = obj_game_control.projectile[type, 10];
///Sound
audio_play_sound_on(creator.emitter,obj_game_control.projectile[type, 4],0,1); //shooting projectile sound
}

