/// @description desc
if (keyboard_check_pressed(vk_f1)) showUI = !showUI;

if (showUI)
{
	with (oMimicChest){
		draw_circle_color(x, y, radius, c_red, c_red, true);	
	}
	with (oSkeletonEnemy){
		draw_circle_color(x, y, radius, c_blue, c_blue, true);
	}
	with (oSquare){
		draw_circle_color(x, y, radius, c_green, c_green, true);
	}
	with (oNormalEnemy){
		draw_circle_color(x, y, radius, c_purple, c_purple, true);
	}
}