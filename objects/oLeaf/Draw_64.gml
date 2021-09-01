/// @description desc
if (keyboard_check_pressed(vk_f1)) showUI = !showUI;

if (showUI)
{
	draw_circle_color(x, y, radius, c_red, c_red, true);
}