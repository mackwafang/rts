///leadingZero(desiredZero,value)
/*
    return: a string includes desired amount of leading zeros
*/
var desired = argument[0];
var value = argument[1];

var tens = 0;
var temp = value;
if (value == 0) {
    return string_repeat("0",desired);
}
while (temp > 0) {
    temp = temp div 10;
    tens++;
}

if (tens < desired) {
    return string_repeat("0",max(0,desired-tens))+string(value);
}
return string(value);
