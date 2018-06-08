///var_wipe(display,actual,max actual,percent, constant)
var fake, actual_min, actual_max, actual, percent_mod;
fake = argument[0];
actual_min = argument[1];
actual_max = argument[2];
percent_mod = argument[3];
constant = argument[4];
if(actual_min < 0) {neg = -1;} else {neg = 1;}
if(constant == 0){
    actual = (actual_min/actual_max)*100 //Get percent
    fake = fake+(actual-fake)*percent_mod // Find Difference
    return fake; //Return in percent
}
else{
    //fake = fake+(((actual-fake)/abs(actual-fake))*constant) // Find Difference
    if (actual_min-fake != 0) {
        var inc = sign(actual_min-fake)*constant;
        if (inc > 0) {
            fake += min(inc,actual_min-fake);
        }
        else if (inc < 0) {
            fake += max(inc,actual_min-fake);
        }
    }
    //if (actual_min-fake > 0) {fake += min(constant,actual_min-constant);}
    return fake; //Return in percent
}
