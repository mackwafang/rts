//assignEnemy(enemy)
var enemy = argument[0];
for (var j = 0; j < squadSize; j++) {
    if (instance_exists(squadMember[j])) {
        squadMember[j].chaseTarget = enemy.squadMember[irandom(enemy.squadSize-1)];
        squadMember[j].isEngaged = true;
        squadMember[j].engagedSquad = enemy;
    }
}
