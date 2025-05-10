///Button input

//checks if button "a" is pressed
function input_a(argument0) {
	
	//checks if button A is pressed on the gamepad
	if gamepad_button_check_pressed(oGamepad.gamepad_slot[argument0], gp_face1) return true;

	//checks argument0 value for player slot
	switch (argument0) {
		
		//if argument0 is equal to player slot one
		case 1:
			
			//if space bar is pressed, then return true
			if keyboard_check_pressed(vk_space) return true;
			
			//if lshift is pressed, then return true
			if keyboard_check_pressed(vk_lshift) and window_has_focus() return true;

			// if 'z' key is pressed, then return true
			if keyboard_check_pressed(ord("Z")) return true;
			
			break;
			
		//if argument0 is equal to player slot two
		case 2:
		
			//checks if game is running in browser
			if os_browser != browser_not_a_browser {
				
				//sets key to vk_enter
				var key = vk_enter;
				
			} else {
			
				//sets key to vk_rshift
				var key = vk_rshift;
			
			}
			
			//if key is pressed and window is in focus, then return true
			if keyboard_check_pressed(key) and window_has_focus() return true;
			
			break;
			
			
		//if argument0 is not given or does not equal to a slot
		default:
		
			//go to rError
			room_goto(rError);
			break;
	}
}


///Directional input 

//checks if button "left" is pressed
function input_left(argument0) {
	
	//checks if button "Left" is pressed on the gamepad
	if gamepad_button_check(oGamepad.gamepad_slot[argument0], gp_padl) return true;
	
	//checks if joystick is moved to the left on the gamepad
	if (gamepad_axis_value(oGamepad.gamepad_slot[argument0],gp_axislh) < 0) return true;

	//checks argument0 value for player slot
	switch (argument0) {
		
		//if argument0 is equal to player slot one
		case 1:
		
			//if left key is pressed, then return true
			if keyboard_check(vk_left) return true;
			
			//if "A" key is pressed, then return true
			if keyboard_check(ord("A")) return true;
			break;
			
			
		//if argument0 is equal to player slot two
		case 2:
		
			//if "J" key is pressed, then return true
			if keyboard_check(ord("J")) return true;
			break;
			
			
		//if argument0 is not given or does not equal to a slot
		default:
		
			//go to rError
			room_goto(rError);
			break;
	}
}


//checks if button "right" is pressed
function input_right(argument0) {
	
	//checks if button "Right" is pressed on the gamepad
	if gamepad_button_check(oGamepad.gamepad_slot[argument0],gp_padr) return true;
	
	//checks if joystick is moved to the right on the gamepad
	if (gamepad_axis_value(oGamepad.gamepad_slot[argument0],gp_axislh) > 0) return true;

	//checks argument0 value for player slot
	switch (argument0) {
		
		//if argument0 is equal to player slot one
		case 1:
		
			//if right key is pressed, then return true
			if keyboard_check(vk_right) return true;
			
			//if "D" key is pressed, then return true
			if keyboard_check(ord("D")) return true;
			break;
			
			
		//if argument0 is equal to player slot two
		case 2:
		
			//if "L" key is pressed, then return true
			if keyboard_check(ord("L")) return true;
			break;
			
		
		//if argument0 is not given or does not equal to a slot
		default:
		
			//go to rError
			room_goto(rError);
			break;
	}
}

//checks if button "down" is pressed
function input_down(argument0) {
	
	//checks if button "Down" is pressed on the gamepad
	if gamepad_button_check(oGamepad.gamepad_slot[argument0],gp_padd) return true;
	
	//checks if joystick is moved down on the gamepad
	if (gamepad_axis_value(oGamepad.gamepad_slot[argument0],gp_axislv) > 0) return true;

	//checks argument0 value for player slot
	switch (argument0) {
		
		//if argument0 is equal to player slot one
		case 1:
		
			//if down key is pressed, then return true
			if keyboard_check(vk_down) return true;
			
			//if "S" key is pressed, then return true
			if keyboard_check(ord("S")) return true
			break;
			
			
		//if argument0 is equal to player slot two
		case 2:
		
			//if "K" key is pressed, then return true
			if keyboard_check(ord("K")) return true;
			break;
			
		
		//if argument0 is not given or does not equal to a slot
		default:
		
			//go to rError
			room_goto(rError);
			break;
	}
}