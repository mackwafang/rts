///explosionEffect([object])
var obj = self;
if (argument_count == 1) {
    obj = argument[0];
}
audio_play_sound(snd_explosion,1,false);
var o = instance_create(obj.x,obj.y,obj_explosion_sharpnel);
part_type_scale(o.smokeType,10,10);
o.speed = 0;
for (var i = 0; i < 7; i++) {
    var dir = irandom(360);
    o = instance_create(obj.x+lengthdir_x(sprite_width/2,dir),obj.y+lengthdir_y(sprite_height/2,dir),obj_explosion_sharpnel);
    part_type_size(o.smokeType,0,0,0.1,0.01);
    o.direction = dir;
    o.speed = (sprite_width/20);
}
