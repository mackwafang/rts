///inViewRange(target,angle,range,[from],[inverse]);
var target = argument[0];
var angle = argument[1];
var range = argument[2];
var from = self;
var inverse = false;
if (argument_count > 3) {
    from = argument[3];
    if (argument_count == 5) {
        inverse = argument[4];
    }
}
if (instance_exists(target) && instance_exists(from)) {
    /* Vector from to target */
    if (point_distance(target.x,target.y,from.x,from.y) <= range) {
        var x1 = turnary(inverse,from.x-target.x,target.x-from.x);
        var y1 = turnary(inverse,from.y-target.y,target.y-from.y);
        /* "Normal" vector of target */
        var x2 = lengthdir_x(1,from.direction);
        var y2 = lengthdir_y(1,from.direction);
        /*  Length of vectors */
        var l1 = sqrt(sqr(x1)+sqr(y1));
        var l2 = sqrt(sqr(x2)+sqr(y2));
        /* angle between two vectors */
        var a = arccos(dot_product(x1,y1,x2,y2) / max(1,l1*l2))*(180/pi);
        if (a <= angle) {
            return true;
        }
    }
}
return false;
