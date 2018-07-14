///shootBullet(x,y,speed,direction,[damage],[lifeTime])
var xx = argument[0];
var yy = argument[1];
var spd = argument[2];
var dir = argument[3];
var damage = 1;
var time = 0.3;
if (argument_count == 5) {
    damage = argument[4];
}
if (argument_count == 6) {
    time = argument[5];
}

//audio_play_sound(snd_gun,1,false);
var b = instance_create(xx,yy,obj_bullet);
b.direction = dir;
b.speed = spd;
b.damage = damage;
b.shotFrom = id;
b.bulletLife = time;
b.image_angle = b.direction;
b.image_xscale = spd;
b.alarm[0] = time*60;
