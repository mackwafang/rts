///fireShell(x,y,speed,direction,damage)
var xx = argument[0];
var yy = argument[1];
var spd = argument[2];
var dir = argument[3];
var dmg = argument[4];

var o = instance_create(xx,yy,obj_shell);
o.speed = spd;
o.direction = dir;
o.damage = dmg;
o.isAA = isAA;
