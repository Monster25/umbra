//Direction
hmove = key_left+key_right;
vmove = key_up+key_down;

//Initiate diagonal variable
diag = false;

//If moving diagonlly, change variable
if (key_up == -1 && key_left == -1) 
diag = true;
if (key_up == -1 && key_right == 1)
diag = true;
if (key_down == 1 && key_right == 1)
diag = true;
if (key_down == 1 && key_left == -1)
diag = true;

//Apply Pythagora if moving diagonally
if (diag)
{
hsp = (movespeed*hmove/sqrt(2));
vsp = (movespeed*vmove/sqrt(2));
}
//Else move normally
else if (!diag)
{
hsp = movespeed*hmove;
vsp = movespeed*vmove;
}
//Movement boolean
if (hsp != 0 || vsp !=0)
moving = true;
else 
moving = false;
