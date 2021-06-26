/// @description Draws amount of times the player can flap (jump)
//if the player is not on the ground, display count
if display_flaps = true {
	
	for(i=0;i<max_flaps;i++) {
	
		draw_sprite(sFeather_taken, 0, self.x-(4*max_flaps) + (sprite_get_width(sFeather_taken)*i), self.y-18);
	
	}
	
	// loop through the number of hearts we have
	for(i=0;i<flaps;i++) {
		draw_sprite(sFeather, 0, self.x-(4*max_flaps) + (sprite_get_width(sFeather)*i), self.y-18);					// draw if we have them
	}
	
}