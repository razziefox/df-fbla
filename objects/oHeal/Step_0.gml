/// @description Player collision

//checks if the object is touching oPlayer
if place_meeting(x, y, oPlayer) {

	//destroy itself
	instance_destroy(self);
	
	//add a single live to both players
	if oLives.max_lives > check_lives(1) add_lives(1, 1);
	if oLives.max_lives > check_lives(2) add_lives(2, 1);
	
	//play soundfx sfxHeal
	play_soundfx(sfxHeal);
}