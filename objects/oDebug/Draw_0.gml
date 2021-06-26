/// @description Draw Debug Info

//sets text to align the left side
draw_set_halign(fa_left);																								

//sets text color depending on fps
//if fps is above (game_speed-game_speed/4) then set text color to green
if fps >= (game_speed-game_speed/4) draw_set_color(c_lime);						

//if fps is above (game_speed-game_speed/2) then set text color to yellow
else if fps >= (game_speed-game_speed/2) draw_set_color(c_yellow);			

//otherwise, set text color to red
else draw_set_color(c_red);			


//displays fps
draw_text(8.5, 40, "FPS: " + string(fps));	

