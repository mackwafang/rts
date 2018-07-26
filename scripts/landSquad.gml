///landSquad([queued])
var queued = false;
if (argument_count == 1) {
    queued = argument[0];
}
if (!planesTakingOff || !planesLanding) {
    var xx = takeOffFrom.x+lengthdir_x(-256,takeOffFrom.direction);
    var yy = takeOffFrom.y+lengthdir_y(-256,takeOffFrom.direction);
    if (queued) {
        if (!landingQueued) {
            ds_list_add(coordinate_queue,xx,yy);
            ds_list_add(coordinate_queue,takeOffFrom.x,takeOffFrom.y);
            landingQueued = true;
            escortSquad = noone;
        }
    }
    else {
        ds_list_clear(coordinate_queue);
        dest_x = xx;
        dest_y = yy;
        planesLanding = true;
        ds_list_add(coordinate_queue,takeOffFrom.x,takeOffFrom.y);
    }
}
