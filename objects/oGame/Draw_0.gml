/// @description desc
// Draw life top UI
/*draw_sprite_ext(
	sLifeTopUI,
	image_index,
	floor(2),
	floor(1),
	global.lifeTopXscale + (0.18 * addedLifes) + (0.01 * addedLifes),
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
)
*/

// Draw destroyed life
for (var i = 0; i < global.PlayerHpMax; i++)
{
	draw_sprite(sLifeUI, 1, 8 + (i * 10), 6);
}

// Draw on top of destroyed life the normal life
for (var i = 0; i < global.PlayerHP; i++)
{
	draw_sprite(sLifeUI, 0, 8 + (i * 10), 6);
}

//Draw Coins
var xx, yy;

xx = room_width - 22; //8
yy = 7; //6
draw_sprite(sCoinUI, 0, xx, yy);

//Coin Text
draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
xx += sprite_get_width(sCoinUI) - 10;
yy = 3;
var _str = string(global.playerMoney);
draw_text(xx + 1, yy, _str);
draw_text(xx - 1, yy, _str);
draw_text(xx, yy + 1, _str);
draw_text(xx, yy - 1, _str);
draw_set_color(c_white);
draw_text(xx, yy, _str);

//draw aim
draw_sprite(sAim, 0, mouse_x, mouse_y);