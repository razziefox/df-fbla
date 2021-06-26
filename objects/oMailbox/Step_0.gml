/// @description If player touches mailbox

if place_meeting(x, y, oPlayer) {

	//checks if timer is still running. if so, stop the timer
	if oTimer.running != false oTimer.running = false;
	
	//checks if lives is still being displayed. if so, set display_lives to false
	if oLives.display_lives != false oLives.display_lives = false;
	
	//checks if timer is still being displayed. if so, set display_timer to false
	if oTimer.display_timer != false oTimer.display_timer = false;

	
	//if oEnd doesn't exist yet
	if !instance_exists(oEnd) {
		
		//create oEnd instance
		instance_create_layer(0, 0, "Instances", oEnd);
		
		
		//play soundfx musResult
		play_soundfx(musResults);
		
		//destroy both oPlayer and oArrowDown
		instance_destroy(oPlayer);
		instance_destroy(oArrowDown);
	}
	

}