///explosionEffect([object])
var obj = self;
if (argument_count == 1) {
    obj = argument[0];
}
audio_play_sound(snd_explosion,1,false);
repeat(5) effect_create_above(ef_smoke,obj.x,obj.y,(sprite_width/32),0);
for (var i = 0; i < 5; i++) {
    var dir = irandom(360);
    var o = instance_create(obj.x+lengthdir_x(sprite_width/2,dir),obj.y+lengthdir_y(sprite_height/2,dir),obj_explosion_sharpnel);
    o.direction = dir;
    o.speed = (sprite_width/16);
}
