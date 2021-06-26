/// @description Displays lives


//Player one lives

//loops for "i" based on the max amount of lives
for(i=0;i<max_lives;i++) {
	
	//draws empty hearts for player one
	draw_sprite(sHeart_empty_P1, 0, heart_x + (sprite_get_width(sHeart_empty_P1)*i), base_y);
	
}

//loops for "i" based on the amount of lives for player one
for(i=0;i<lives_count;i++) {
	
	//draws hearts for player one based on the amount of lives left
	draw_sprite(sHeart_P1,0, heart_x + (sprite_get_width(sHeart_P1)*i), base_y);
	
}


//checks if co-op is true
if oGame.coop = true {

	//draws sprites for player logos (this helps the player tell whos lives are which)
	draw_sprite(sLogo_P1, 0, 7, base_y+1.5);
	draw_sprite(sLogo_P2, 0, 7, base_y_2+1.5);

	
	//Player two lives

	//loops for "i" based on the max amount of lives
	for(i=0;i<max_lives;i++) {
	
		//draws empty hearts for player two
		draw_sprite(sHeart_empty_P2, 0, heart_x + (sprite_get_width(sHeart_empty_P2)*i), base_y_2);
	
	}

	//loops for "i" based on the amount of lives for player two
	for(i=0;i<lives_count_2;i++) {
		
		//draws hearts for player two based on the amount of lives left
		draw_sprite(sHeart_P2,0, heart_x + (sprite_get_width(sHeart_P2)*i), base_y_2);
		
	}

}