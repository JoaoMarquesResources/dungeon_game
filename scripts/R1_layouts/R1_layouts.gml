// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function R1_layout_1(){
	instance_create_layer(32, 48, "Enemys", oNormalEnemy);
	instance_create_layer(56, 56, "Enemys", oNormalEnemy);
	instance_create_layer(80, 64, "Enemys", oNormalEnemy);
	instance_create_layer(104, 56, "Enemys", oNormalEnemy);
	instance_create_layer(128, 48, "Enemys", oNormalEnemy);
}

function R1_layout_2(){
	instance_create_layer(24, 24, "Enemys", oNormalEnemy);
	instance_create_layer(136, 24, "Enemys", oNormalEnemy);
	instance_create_layer(48, 64, "Enemys", oSkeletonEnemy);
	instance_create_layer(112, 64, "Enemys", oSkeletonEnemy);
}