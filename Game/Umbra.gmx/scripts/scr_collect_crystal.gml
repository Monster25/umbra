//Set arrow type in collector and other variables
argument[0].arrow_type = type;
argument[0].arrow_damage_min = obj_game_control.arrow[type, 0];
argument[0].arrow_damage_max = obj_game_control.arrow[type, 1];
argument[0].arrow_damage = obj_game_control.arrow[type, 0];

//Scoreboard
scr_scoreboard_picked_crystals();
//Destroy crystal
instance_destroy();
