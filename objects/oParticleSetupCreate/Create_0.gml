/// @description desc
particleSystem = part_system_create_layer("Objects", 0);

particleTypeHit = part_type_create();
part_type_sprite(particleTypeHit, sBulletParticle, 0, 0, 0);
part_type_size(particleTypeHit, 0.5, 1, 0.1, 0);
part_type_life(particleTypeHit, 5, 15);
part_type_alpha3(particleTypeHit, 1, 0.6, 0.2);
part_type_orientation(particleTypeHit, 0, 359, 0, 0, 0);

particleTypeSpark = part_type_create();
part_type_sprite(particleTypeSpark, sSpark, 0, 0, 0);
part_type_size(particleTypeSpark, 0.2, 0.3, -0.01, 0);
part_type_life(particleTypeSpark, 5, 8);
part_type_alpha3(particleTypeSpark, 1, 0.8, 0.1);
part_type_orientation(particleTypeSpark, 0, 359, 0, 0, 0);
part_type_speed(particleTypeSpark, 0.2, 0.6, 0.1, 0);
part_type_direction(particleTypeSpark, 0, 359, 0, 0);
part_type_color1(particleTypeSpark, c_white);