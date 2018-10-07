/// in_view();

// Check if an instance is in view, or if views aren't enabled.

if view_enabled
{
var a_left = x - aura_light_radius;
var a_top = y - aura_light_radius;
var a_right = x + aura_light_radius;
var a_bottom = y + aura_light_radius;
if a_right < view_xview[0] || 
    a_bottom < view_yview[0] || 
        a_left > view_xview[0] + view_wview[0] || 
            a_top > view_yview[0] + view_hview[0]
            {
            return false;
            }
        else return true;
}
else return true;

