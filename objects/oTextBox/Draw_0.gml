/// @description desc
//draw textbox
draw_rectangle(x - 1, y - 1, x + boxWidth + 5, y + boxHeight + 2, false);
draw_sprite(sBox, 0, x, y);

//draw text
draw_set_font(fTextBox);

if (charCount < string_length(oMagoNPC.myText[page])) {
	charCount++;
}
textPart = string_copy(oMagoNPC.myText[page], 1, charCount);

//draw the name
draw_set_halign(fa_center);
draw_text(x + boxWidth / 2, y + yBuffer, Name);
draw_set_halign(fa_left);

//draw the text
draw_text_ext(x + xBuffer, y + stringHeight + yBuffer, textPart, stringHeight, boxWidth - (2 * xBuffer));

draw_set_font(-1);