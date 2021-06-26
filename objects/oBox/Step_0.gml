/// @description Collision

//checks if object is touching oPlayer
if place_meeting(x, y, oPlayer) {

	//destroy itself, oTemp_Collision, and oArrowDown
	instance_destroy(self);
	instance_destroy(oTemp_Collision);
	instance_destroy(oArrowDown);
	
	//resets timer if needed
	oTimer.milli = 0;
	oTimer.seconds = 0;
	oTimer.minutes = 0;
	oTimer.hours = 0;

	//activates and starts timer
	oTimer.active = true;
	oTimer.running = true;
	
	//enables lives display
	oLives.display_lives = true;
	
	//enables timer display
	oTimer.display_timer = true;

	//activates the arrows pointing right
	instance_activate_object(oArrowRight);

	//play soundfx sfxPackage
	play_soundfx(sfxPackage);
}