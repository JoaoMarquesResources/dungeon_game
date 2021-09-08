/// @description desc
//NPC
if (instance_exists(oPlayer))
{
	var _distNPC = point_distance(x, y, oPlayer.x, oPlayer.y);
	if (_distNPC < radius) {
		if (keyboard_check_pressed(ord("E"))) {
			if (myTextbox == noone) {
				myTextbox = instance_create_layer(x + 6, y - 32, "textBox", oTextBox);
				myTextbox.text = myText;
				myTextbox.creator = self;
				myTextbox.Name = myName;
			}
		}
	}
	else
	{	
		if (myTextbox != noone) {
			if (instance_exists(oTextBox)) {
				instance_destroy(myTextbox);
				myTextbox = noone;
			}
		}
	}
}