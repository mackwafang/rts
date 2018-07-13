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
if (isAlly) {
    global.squad[squadNumber] = s;
}
s.squadNumber = squadNumber;
s.planeType = planeType;
s.squadSize = squadSize;
switch(planeType) {
    case obj_ally_plane: case obj_enemy_plane:
        s.combatRole = 0;
        break;
    case obj_ally_bomber:
        s.combatRole = 2;
        s.speedMultiplier = 0.7;
        s.canEngage = false;
        break;
}
for (var i = 0; i < squadSize; i++) {
    s.squadMember[i] = noone;
}
s.isAlly = isAlly;
s.ai_control = aiControl;
s.takeOffFrom = takeOffFrom;
s.maxAmmo = 40*squadSize;
s.ammo = s.maxAmmo;

if (takeOffFrom == noone) {
    for (var i = 0; i < squadSize; i++) {
        s.squadMember[i] = createPlane(s.x,s.y,irandom(360),planeType,s,isAlly,noone);
    }
}
else {
    s.x = takeOffFrom.x;
    s.y = takeOffFrom.y;
    s.dest_x = xx;
    s.dest_y = yy;
    s.planesTakingOff = true;
    ds_queue_enqueue(takeOffFrom.squadQueue,s);
    takeOffFrom.takeOff = true;
}
return s;
