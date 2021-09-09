/// @description desc
if (instance_exists(oPlayer)) {
	
	if (keyboard_check_pressed(ord("E")))
	{
		if (page + 1 < array_length_1d(text)) {
			page += 1;
			charCount = 0;
		}
		else {
			if (instance_exists(oGame))
			{
				if (oGame.cenaFinal && room == rShopFinal) {
					oGame.stopTalking = true;
					oGame.givePotion = true;
				}
				if (oGame.shop == 5 && oGame.fail == false) global.final = true;
			}
			if (room == Camera0 && !Cam0.stopCreating) Cam0.createPortal = true;
			instance_destroy();
			creator.alarm[1] = 1;
		}
	}
}