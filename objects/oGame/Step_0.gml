/// @description desc
global.RoomEnemys = instance_number(pEnemy);

if (global.RoomEnemys == 0) instance_create_layer(room_width / 2, room_height / 2, "Enemys", oRoundPortal);

show_debug_message(global.RoomEnemys)