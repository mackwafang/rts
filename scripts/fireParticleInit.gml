///fireParticleInit()
global.fireParticleSystem = part_system_create();
global.fireParticleType = part_type_create();

global.smokeParticleType = part_type_create();

part_type_sprite(global.smokeParticleType,spr_particle,false,false,false);
part_type_orientation(global.smokeParticleType,0,360,0,0,0);
part_type_scale(global.smokeParticleType,2,2);
part_type_colour1(global.smokeParticleType,0);
part_type_alpha2(global.smokeParticleType,1,0)
part_type_life(global.smokeParticleType,30,30);

part_type_sprite(global.fireParticleType,spr_particle,false,false,false);
part_type_orientation(global.fireParticleType,0,360,0,0,0);
part_type_scale(global.fireParticleType,2,2);
part_type_colour2(global.fireParticleType,yellow,red);
part_type_life(global.fireParticleType,5,5);
part_type_death(global.fireParticleType,1,global.smokeParticleType);
