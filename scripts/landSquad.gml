///landSquad([queued])
var queued = false;
if (argument_count == 1) {
    queued = argument[0];
}
if (!planesTakingOff) {
    var xx = takeOffFrom.x+lengthdir_x(-256,takeOffFrom.direction);
    var yy = takeOffFrom.y+lengthdir_y(-256,takeOffFrom.direction);
    if (queued) {
        ds_list_add(coordinate_queue,xx,yy);
        landingQueued = true;
    }
    else {
        dest_x = xx;
        dest_y = yy;
        planesLanding = true;
    }
}
