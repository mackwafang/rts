///createSquad(x,y,squadNumber,squadSize,planeType,isAlly,[aiControlled]);
var xx = argument[0];
var yy = argument[1];
var squadNumber = argument[2];
var squadSize = argument[3];
var planeType = argument[4];
var isAlly = argument[5];
var aiControl = false;
if (argument_count == 7) {
    aiControl = argument[6];
}

var s = instance_create(xx,yy,obj_squad);
s.squadNumber = squadNumber;
s.planeType = planeType;
s.squadSize = squadSize;
s.isAlly = isAlly;
s.ai_control = aiControl;

for (var i = 0; i < squadSize; i++) {
    s.squadMember[i] = instance_create(s.x+irandom_range(-5,5)*20,s.y+irandom_range(-5,5)*20,planeType);
    s.squadMember[i].direction = point_direction(xx,yy,s.squadMember[i].x,s.squadMember[i].y);
    s.squadMember[i].chaseTarget = s;
    s.squadMember[i].assignedSquad = s;
    s.squadMember[i].isAlly = isAlly;
}
return s;
