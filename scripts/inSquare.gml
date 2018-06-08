///inSquare(target_x,target_y,x1,y1,x2,y2,[condition])
var x1, x2, x3, y1, y2, y3;
x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];
x3 = argument[4];
y3 = argument[5];
if (argument_count == 7) {
    var cond = argument[6];
}

if ((x2 <= x1) && (x1 <= x3)) {
    if ((y2 <= y1) && (y1 <= y3)) {
        if (argument_count == 7) {return cond;}
        return true;
    }
}
return false;
