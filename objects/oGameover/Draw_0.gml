/// @description Displays gameover screen

//sets text to align in the center
draw_set_halign(fa_center);

//displays the text "Gameover"
draw_text_colour(room_width/2, 1*(room_height/3), "Gameover", text_color, text_color, text_color, text_color, 1);

//displays the text "Press the flap button to restart"
draw_text_colour(room_width/2, 2.5*(room_height/3), "Press the flap button to restart", text_color, text_color, text_color, text_color, 1);