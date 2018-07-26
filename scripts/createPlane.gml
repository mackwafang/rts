///createPlane(x,y,direction,plane,squad,isAlly,takeOffFrom,planeId)
var xx = argument[0];
var yy = argument[1];
var dir = argument[2];
var planeType = argument[3];
var squad = argument[4];
var isAlly = argument[5];
var takeOffFrom = argument[6];
var planeId = argument[7];

var p = instance_create(xx,yy,planeType);
p.direction = dir;
p.chaseTarget = squad;
p.assignedSquad = squad;
p.isAlly = isAlly;
p.takeOffFrom = takeOffFrom;
p.planeId = planeId;
if (takeOffFrom != noone) {
    p.takeOff = true;
    p.image_xscale = 0.5;
    p.image_yscale = 0.5;
}

return p;
