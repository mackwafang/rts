///predictedAim(gunAngle,target,projectileSpeed,[randomX],[randomY])
/*
    math used from
    https://stackoverflow.com/questions/2248876/2d-game-fire-at-a-moving-target-by-predicting-intersection-of-projectile-and-u
*/
var angle = argument[0];
var target = argument[1];
if (target == undefined || (target != undefined && !instance_exists(target))) {
    return angle;
}
var spd = argument[2];
var randomX = 0;
var randomY = 0;
if (argument_count >= 4) {
    randomX = irandom_range(-argument[3],argument[3]);
    if (argument_count == 5) {
        randomY = irandom_range(-argument[4],argument[4]);
    }
}
var targetStartX = lerp(target.x,target.x+hspeed,-room_speed);
var targetStartY = lerp(target.y,target.y+vspeed,-room_speed);

var a = sqr(target.hspeed)+sqr(target.vspeed)-sqr(spd);
var b = 2*(target.hspeed*(targetStartX-x))+(target.vspeed*(targetStartY-y));
var c = sqr(targetStartX-x)+sqr(targetStartY-y);
var disc = sqr(b)-(4*a*c);
var t1 = (-b+sqrt(disc))/(2*a);
var t2 = (-b-sqrt(disc))/(2*a);

var t = 0;
if (disc < 0) {
    return angle;
}
else if (disc == 0) {
    t = t1;
}
else {
    if (t1 > 0 && t2 > 0) {
        t = turnary(t1 < t2,t1,t2);
    }
    else if (t1 < 0) {
        t = t2;
    }
    else if (t2 < 0) {
        t = t1;
    }
}
var xx = (t*target.hspeed)+targetStartX+randomX;
var yy = (t*target.vspeed)+targetStartY+randomY;

return point_direction(x,y,xx,yy);
