caster_init_polygon();

caster_add_point(-sprite_get_xoffset(mask_index),-sprite_get_yoffset(mask_index));
caster_add_point(-sprite_get_xoffset(mask_index) + sprite_get_width(mask_index),-sprite_get_yoffset(mask_index));
caster_add_point(-sprite_get_xoffset(mask_index) + sprite_get_width(mask_index),-sprite_get_yoffset(mask_index) + sprite_get_height(mask_index));
caster_add_point(-sprite_get_xoffset(mask_index),-sprite_get_yoffset(mask_index) + sprite_get_height(mask_index));
