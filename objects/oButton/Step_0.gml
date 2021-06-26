/// @description Checks variables and collisions

//checks if oPlayer is colliding and check_hug() returns true
if (place_meeting(x, y, oPlayer) and check_hug()) {

	//checks if button_id doesn't equal button_active from oGame
	if button_id != oGame.button_active  {
	
		//set button_active from oGame to button_id
		oGame.button_active = button_id;
		
		//play soundfx sfxClick
		play_soundfx(sfxClick);
	
	}

}

//checks if button id is currently pressed
if oGame.button_active = button_id {

	//checks if sprite_pressed sprite is set. if not, set sprite_pressed as sprite
	if sprite_index != sprite_pressed sprite_index = sprite_pressed;
	

} else {
	//if button id is not 'pressed'

	//checks if sprite_idle sprite is set. if not, set sprite_idle as sprite
	if sprite_index != sprite_idle sprite_index = sprite_idle;
	
}

//checks if button_id is noone, if so then go to rError
if button_id = noone room_goto(rError);