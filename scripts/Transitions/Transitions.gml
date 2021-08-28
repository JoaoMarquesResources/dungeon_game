global.roomTarget = -1;
global.midTransition = false;

//Called whenever you want to go from one room to another, using any combination of in/out sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	show_debug_message("start transition");
	if (!global.midTransition)
	{
		//show_message("!global.midTransition");
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget)
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false
}

//Places the sequences in the room
function TransitionPlaceSequence(_type)
{
	show_debug_message("Script TransitionPlaceSequence");
	if (layer_exists("transition")) layer_destroy("transition")
	var _lay = layer_create(-9999,"transition")
	layer_sequence_create(_lay,0,0,_type);	
}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom()
{
	show_debug_message("script TransitionChangeRoom");
	room_goto(global.roomTarget);
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished()
{
	show_debug_message("script Transition Finished");
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}