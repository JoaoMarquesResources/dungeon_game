/// @description desc
//NPC
if (instance_exists(oPlayer))
{
	var _distNPC = point_distance(x, y, oPlayer.x, oPlayer.y);
	if (_distNPC < radius) {
		if (keyboard_check_pressed(ord("E"))) {
			if (myTextbox == noone) {
				myTextbox = instance_create_layer(x + 9, y - 32, "textBox", oTextBox);
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

/*if (instance_exists(oPlayer)) dist = point_distance(x, y, oPlayer.x, oPlayer.y);
interact = keyboard_check_pressed(ord("E"));
passa = keyboard_check_pressed(ord("E"));

if (!taVisto)
{	
	if (passa) {
		showDialogue = true;
	}

	if ((showDialogue) && dist < radius)
	{
		if (myTextbox == noone)
		{
			myTextbox = instance_create_layer(x + 5, y - 30, "transition", oTextBox);
			myTextbox.text = myText[page];
		}
	
		if (instance_exists(oTextBox)) if (passa) {
			oTextBox.charCount = 0;
			if (page + 1 <= array_length_1d(myText) && oTextBox.charCount == string_length(myText[page]) && oTextBox.charCount != 0) page++;
		}
		if (page + 1 > array_length_1d(myText) && passa)
		{
			taVisto = true;
			instance_destroy(oTextBox);
		}
	}
	else
	{
		if (myTextbox != noone) {
			show_message("DESTROY");
			instance_destroy(myTextbox);
			myTextbox = noone;
		}
		if (showDialogue) showDialogue = false;
	}
}