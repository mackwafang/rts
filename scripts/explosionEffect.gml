///explosionEffect([object],[color])
var obj = self;
var color = 0;
if (argument_count > 0) {
    obj = argument[0];
    if (argument_count == 2) {
        color = argument[1];
    }
}
audio_play_sound(snd_explosion,1,false);
var o = instance_create(obj.x,obj.y,obj_explosion_sharpnel);
part_type_scale(o.smokeType,10,10);
part_type_colour1(o.smokeType,color);
o.speed = 0;
for (var i = 0; i < 7; i++) {
    var dir = irandom(360);
    o = instance_create(obj.x+lengthdir_x(obj.sprite_width/2,dir),obj.y+lengthdir_y(obj.sprite_height/2,dir),obj_explosion_sharpnel);
    part_type_size(o.smokeType,0,0,0.1,0.01);
    part_type_colour1(o.smokeType,color);
    o.direction = dir;
    o.speed = (obj.sprite_width/20);
}
