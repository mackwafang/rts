//assignEnemy(enemy)
var enemy = argument[0];
for (var j = 0; j < squadSize; j++) {
    if (squadMember[| j] != undefined) {
        squadMember[| j].chaseTarget = enemy.squadMember[| irandom(ds_list_size(enemy.squadMember)-1)];
        squadMember[| j].isEngaged = true;
        squadMember[| j].engageSquad = enemy;
    }
}
