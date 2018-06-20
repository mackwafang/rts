///rectangleCooldown(x1,y1,x2,y2,value,max_value,color,alpha,[reverse])
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var value = argument[4];
var max_value = argument[5];
var color = argument[6];
var alpha = argument[7];
var reverse = false;
if (argument_count == 9) {reverse = argument[8];}

var center_x = lerp(x1,x2,0.5);
var center_y = lerp(y1,y2,0.5);
var ratio = value/max_value;

draw_set_colour(color);
draw_set_alpha(alpha);

draw_primitive_begin(pr_trianglefan);
draw_vertex(center_x+1,center_y);
if (ratio >= 1) {
    draw_rectangle(x1,y1,x2,y2,false);
}
else if (ratio >= 0.75) {
    draw_rectangle(x1,y1,center_x,y2,false);
    draw_rectangle(center_x+1,center_y,x2,y2,false);
    draw_vertex(x2+1,center_y);
    if (ratio > 0.875) {
        draw_vertex(x2+1,y1);
        draw_vertex(lerp(x2,center_x,(ratio-0.875)/0.125)+1,y1);
    }
    else {
        draw_vertex(x2+1,lerp(center_y,y1,(ratio-0.75)/0.125));
    }
}
else if (ratio >= 0.5) {
    draw_rectangle(x1,y1,center_x,y2,false);
    draw_vertex(center_x+1,y2+1);
    if (ratio > 0.625) {
        draw_vertex(x2+1,y2+1);
        draw_vertex(x2+1,lerp(y2,center_y,(ratio-0.625)/0.125));
    }
    else {
        draw_vertex(lerp(center_x,x2,(ratio-0.5)/0.125)+1,y2+1);
    }
}
else if (ratio >= 0.25) {
    draw_rectangle(x1,y1,center_x,center_y,false);
    draw_vertex(x1,center_y+1);
    if (ratio > 0.375) {
        draw_vertex(x1,y2+1);
        draw_vertex(lerp(x1,center_x,(ratio-0.375)/0.125),y2+1);
    }
    else {
        draw_vertex(x1,lerp(center_y,y2,(ratio-0.25)/0.125));
    }
}
else if (ratio >= 0) {
    draw_vertex(center_x+1,y1);
    if (ratio > 0.125) {
        draw_vertex(x1,y1);
        draw_vertex(x1,lerp(y1,center_y,(ratio-0.125)/0.125));
    }
    else {
        draw_vertex(lerp(center_x,x1,(ratio)/0.125),y1);
    }
}
draw_primitive_end();
draw_set_alpha(1);
draw_set_colour(c_white);
