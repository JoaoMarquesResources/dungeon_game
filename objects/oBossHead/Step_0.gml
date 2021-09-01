/// @description desc
switch(state)
{
	case "running":
		delay--;
		
		if (x == 80 && y == 24)
		{
			if (delay <= 0) 
			{
				velh = runningSpeed;
				delay = 60;
			}
		}	
		if (floor(x) == 136 && floor(y) == 24)
		{
			if (delay <= 0) 
			{
				velv = runningSpeed;
				delay = 60;
			}
		}
		if (floor(x) == 136 && floor(y) == 64)
		{
			//show_message("DIAJW")
			if (delay <= 0) 
			{
				velh -= runningSpeed;
				delay = 60;
			}
		}
		if (floor(x) == 23 && floor(y) == 64)
		{
			if (delay <= -30)
			{
				velv -= runningSpeed;
				ReturnToStartPos = false;
				delay = 60;
			}
		}
		if (floor(x) == 23 && floor(y) == 24)
		{
			if (delay <= 0) 
			{
				velh = runningSpeed;
				ReturnToStartPos = true;
				delay = 60;
			}
		}
		if (ReturnToStartPos){
			if (x == xstart && y == ystart){
				velh = 0;
				velv = 0;
				state = "shooting";
			}
		}
		
		break;
		
	case "shooting":
		
		oBossHand.shoot = true;
		
		break;
}
show_debug_message("delay:	" + string(delay));
show_debug_message(x);
show_debug_message(y);