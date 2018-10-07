//Flicker light by argument amount

//var z = choose(-(argument[2]*argument[0])/100,(argument[2]*argument[0])/100,0);
var z = choose(-(argument[2]*argument[0]/100/argument[2]),argument[2]*argument[0]/100/argument[2],0);
//var z = choose (-0.0350,0.0350);
argument[1] += z;

argument[1] = clamp(argument[1],argument[0]-((argument[2]*argument[0])/100), argument[0]+((argument[2]*argument[0])/100));

return argument[1];
