with(other) {
    if (isAA) {
        instance_destroy();
    }
    else{
        shellDestroyed = true;
        alarm[0] = 1;
    }
}
