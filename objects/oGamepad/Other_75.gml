/// @description Gamepad Detection
var gamepad_id = async_load[? "pad_index"];

//checks if a gamepad just got connected
if async_load[?"event_type"] = "gamepad discovered" {
	
	//displays which gamepad has been newely connected
	show_debug_message("Gamepad Connected: " + string(gamepad_id) + " " + gamepad_get_description(gamepad_id));
	
	//sets setzone for newely connected gamepad
	gamepad_set_axis_deadzone(gamepad_id, 0.375);
	
	//checks if gamepad_slot for player one has been set
	if gamepad_slot[1] = noone {
		
		//set gamepad_id for player one from newely connected gamepad
		gamepad_slot[1] = gamepad_id;
	}
	
	//checks if gamepad_slot for player two has been set
	if gamepad_slot[1] != gamepad_id and gamepad_slot[2] = noone {	
		
		//set gamepad_id for player two from newely connected gamepad
		gamepad_slot[2] = gamepad_id;
	}
	
}

//checks if a gamepad has been unplugged
if async_load[?"event_type"] = "gamepad lost" {
	
	//displays which gamepad has been disconnected
	show_debug_message("Gamepad Disconnected: " + string(gamepad_id) + " " + gamepad_get_description(gamepad_id));
	
	//checks if the gamepad id for the gamepad that unplugged is player one
	if gamepad_slot[1] = gamepad_id {
		gamepad_slot[1] = noone;
	}
	
	//checks if the gamepad id for the gamepad that unplugged is player two
	if gamepad_slot[2] = gamepad_id {
		
		//sets gamepad_id to noone (or empty)
		gamepad_slot[2] = noone;
	}
}