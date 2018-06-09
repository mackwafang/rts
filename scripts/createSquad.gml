///createSquad(x,y,squadNumber,squadSize,planeType,isAlly,[takeOffFrom],[aiControlled]);
var xx = argument[0];
var yy = argument[1];
var squadNumber = argument[2];
var squadSize = argument[3];
var planeType = argument[4];
var isAlly = argument[5];
var takeOffFrom = noone;
if (argument_count >= 7) {
    takeOffFrom = argument[6];
}
var aiControl = false;
if (argument_count >= 8) {
    aiControl = argument[7];
}

var s = instance_create(xx,yy,obj_squad);
s.squadNumber = squadNumber;
s.planeType = planeType;
s.squadSize = squadSize;
for (var i = 0; i < squadSize; i++) {
    s.squadMember[i] = noone;
}
s.isAlly = isAlly;
s.ai_control = aiControl;

if (takeOffFrom == noone) {
    for (var i = 0; i < squadSize; i++) {
        s.squadMember[i] = createPlane(s.x,s.y,irandom(360),planeType,s,isAlly,noone);
    }
}
else {
    s.planesTakingOff = true;
    ds_queue_enqueue(takeOffFrom.squadQueue,s);
    takeOffFrom.takeOff = true;
}
return s;