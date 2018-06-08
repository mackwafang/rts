///seekTarget()
if (instance_exists(engagedSquad)) {
    while(!instance_exists(chaseTarget)) {
        chaseTarget = engagedSquad.squadMember[irandom(engagedSquad.squadSize-1)];
    }
}
else {
    /* enemy squad destroyed */
    engagedSquad = undefined;
    chaseTarget = assignedSquad;
    isEngaged = false;
}
