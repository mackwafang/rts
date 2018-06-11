///availableSquad()
for (var i = 0; i < global.squadsInCommand; i++) {
    if (global.squad[i] == noone) {
        return i;
    }
}
return -1;
