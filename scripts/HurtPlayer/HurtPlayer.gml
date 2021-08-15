// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HurtPlayer(_damage)
{
	if (oPlayer.invulnerable <= 0)
	{
		global.PlayerHP = max(0, global.PlayerHP - _damage); //max para n passar de 0
		
		if (global.PlayerHP > 0)
		{
			with (oPlayer)
			{
				ScreenShake(3, 10);
				flash = 0;
				invulnerable = 60;
			}
			
			with (oGun)
			{
				flash = 0;
				invulnerable = 60;
			}
		}
		else
		{
			//kill the player
			with (oPlayer) 
			{
				instance_destroy(oGun);
				instance_destroy();
			}
		}
	}
}