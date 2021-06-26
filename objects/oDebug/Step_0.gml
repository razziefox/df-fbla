///@description Checks games state and keyboard inputs

///Check game status
//if the game isn't in debug mode and oDebug exists, then go to rError
if game_debug != true {

	room_goto(rError);
	instance_deactivate_object(self);

}


///Check keyboard inputs
//if f3 is pressed, restart game
if keyboard_check_pressed(vk_f3) {
    game_reset();
}
	
//if the plus key is pressed, go to next room
if keyboard_check_pressed(vk_add) {
	room_goto_next();
}
	
//if the minus key is pressed, go to previous room
if keyboard_check_pressed(vk_subtract) {
	room_goto_previous();
}