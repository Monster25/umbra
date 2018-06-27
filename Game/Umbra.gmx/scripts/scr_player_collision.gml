//Vertical and horizontal Collision + Player Movement
if (place_meeting(x,y+vsp,obj_solid))
{
        while (!place_meeting(x,y+sign(vsp),obj_solid))
            y += sign(vsp);
    }
    else
    y += vsp;
if (place_meeting(x+hsp,y,obj_solid))
{
        while (!place_meeting(x+sign(hsp),y,obj_solid))
            x += sign(hsp);
    }
    else
    x += hsp;

