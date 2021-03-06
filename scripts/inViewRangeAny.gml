///inViewRangeAny(target,angle,range,[from],[inverse]);
/*
    check if any <target> object is in view range
    return:
        - true if any <target> object is in view range
*/
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
if ((instance_number(target) > 0) && instance_exists(from)) {
    for (var i = 0; i < instance_number(target.object_index); i++) {
        var o = instance_find(target.object_index,i);
        if (point_distance(from.x,from.y,o.x,o.y) <= range) {
            /* Vector from to o */
            var x1 = turnary(inverse,from.x-o.x,o.x-from.x);
            var y1 = turnary(inverse,from.y-o.y,o.y-from.y);
            /* "Normal" vector of o */
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
}
return false;
